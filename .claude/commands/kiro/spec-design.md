# /kiro:spec-design - 技術設計

## Command
`/kiro:spec-design <機能名>`

## Description
指定された機能の技術設計を作成し、実装の詳細を定義します。

## Usage
```
/kiro:spec-design <機能名>
```

## Parameters
- `機能名`: 設計を作成する機能の名前

## Behavior
1. 要件仕様を参照して設計方針を決定
2. アーキテクチャとコンポーネント設計を作成
3. データモデルとAPI設計を定義
4. `specs/[機能名]/design.md` に出力

## Output Format
```markdown
# [機能名] 技術設計

## アーキテクチャ概要
[システム全体の構成と主要コンポーネント]

## コンポーネント設計
### [コンポーネント1]
- 責務: [役割と責任]
- インターフェース: [API/メソッド定義]
- 実装方針: [技術選択と理由]

## データモデル
### [エンティティ1]
```typescript
interface EntityName {
  id: string;
  // その他のプロパティ
}
```

## API設計
### エンドポイント
- `GET /api/endpoint` - [説明]
- `POST /api/endpoint` - [説明]

## セキュリティ考慮事項
[認証、認可、データ保護等]

## パフォーマンス考慮事項
[最適化の方針と実装案]

## 実装手順
1. [ステップ1]
2. [ステップ2]
```

## Example
```
/kiro:spec-design user-authentication
```