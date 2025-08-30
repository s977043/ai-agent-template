# /kiro:spec-requirements - 要件定義

## Command
`/kiro:spec-requirements <機能名>`

## Description
指定された機能の詳細な要件を定義し、仕様書を作成します。

## Usage
```
/kiro:spec-requirements <機能名>
```

## Parameters
- `機能名`: 要件を定義する機能の名前

## Behavior
1. 機能の目的と背景を明確化
2. 機能要件と非機能要件を詳細に定義
3. ユーザーストーリーと受け入れ基準を作成
4. `specs/[機能名]/requirements.md` に出力

## Output Format
```markdown
# [機能名] 要件仕様

## 概要
[機能の目的と背景]

## 機能要件
### 主要機能
- [機能1の詳細]
- [機能2の詳細]

### ユーザーストーリー
- As a [ユーザータイプ], I want [機能], so that [目的]

## 非機能要件
- パフォーマンス要件
- セキュリティ要件
- 可用性要件

## 受け入れ基準
- [検証可能な基準1]
- [検証可能な基準2]

## 制約・前提条件
[技術的・ビジネス的制約]
```

## Example
```
/kiro:spec-requirements user-authentication
```