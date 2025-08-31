# /kiro:steering - プロダクトステアリング文書作成

## Command
`/kiro:steering`

## Description
プロダクトビジョン、原則、意思決定ポリシーを記述するステアリング文書を作成します。

## Usage
```
/kiro:steering
```

## Behavior
1. プロダクトのビジョンと目的を定義
2. 開発原則と制約を明確化
3. 意思決定フレームワークを設定
4. `steering/product-steering.md` ファイルに出力

## Output Format
- ファイルパス: `steering/product-steering.md`
- 構造化されたマークダウン形式
- プロジェクトの基本方針と原則を記述

## Example Output Structure
```markdown
# プロダクトステアリング文書

## ビジョン
[プロダクトの目的と長期的な目標]

## 原則
[開発・設計における基本原則]

## 意思決定フレームワーク
[判断基準と優先順位]

## 制約
[技術的・ビジネス的制約]
```