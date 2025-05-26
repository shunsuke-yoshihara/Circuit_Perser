#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
verilog_cleaner.py  ―― ルールを５つ適用して Verilog を整形
  1. “module … ;” を削除
  2. “endmodule” を削除
  3. “assign … ;” を削除
  4. “[x:y] name” を name[y], …, name[x] に展開
  5. “1'b0” → CONST_1b0, “1'b1” → CONST_1b1     ←★New!
"""

import argparse
import re
from pathlib import Path


# ───────────────────────────────────────────────────────────
# 変換処理
# ───────────────────────────────────────────────────────────
def transform(text: str) -> str:
    """文字列 text に５つのルールを順番に適用して返す。"""

    # 1) module 〜 ; を削除
    text = re.sub(r"\bmodule\b.*?;", "", text, flags=re.DOTALL)

    # 2) endmodule を削除
    text = re.sub(r"\bendmodule\b", "", text)

    # 3) assign 〜 ; を削除
    text = re.sub(r"\bassign\b.*?;", "", text, flags=re.DOTALL)

    # 4) [x:y] name → name[y], name[y+1], …, name[x]
    def expand(match) -> str:
        high = int(match.group(1))       # x
        low  = int(match.group(2))       # y
        name = match.group(3)            # name
        rng  = range(low, high + 1) if high >= low else range(low, high - 1, -1)
        return " " + ", ".join(f"{name}[{i}]" for i in rng)

    text = re.sub(r"\[\s*(\d+)\s*:\s*(\d+)\s*\]\s*(\w+)", expand, text)

    # 5) “1'b0” と “1'b1” を定数名に変換
    #    \b は英数字・アンダーバーとの境界を示し、余計な部分を巻き込まないようにしている
    text = re.sub(r"\b1'b0\b", "CONST_1b0", text)
    text = re.sub(r"\b1'b1\b", "CONST_1b1", text)

    # 仕上げ：空行が増えすぎたら 2 行まで圧縮（任意）
    text = re.sub(r"\n{3,}", "\n\n", text)

    return text


# ───────────────────────────────────────────────────────────
# メイン処理
# ───────────────────────────────────────────────────────────
def main() -> None:
    parser = argparse.ArgumentParser(
        description="Verilog ファイルをルールに従って編集し、結果を保存します。",
        epilog="例: python verilog_cleaner.py input.v output.v",
    )
    parser.add_argument("input",  help="入力ファイル (例: original.v)")
    parser.add_argument("output", help="出力ファイル (例: cleaned.v)")
    args = parser.parse_args()

    in_path  = Path(args.input)
    out_path = Path(args.output)

    if not in_path.is_file():
        parser.error(f"入力ファイルが見つかりません: {in_path}")

    with in_path.open(encoding="utf-8") as f:
        original_text = f.read()

    cleaned_text = transform(original_text)

    with out_path.open("w", encoding="utf-8") as f:
        f.write(cleaned_text)

    print(f"Netlist Editing Completed \n→ {out_path}")


if __name__ == "__main__":
    main()

