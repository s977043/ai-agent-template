# /kiro:spec-init - 仕様書初期化

## Command
`/kiro:spec-init [プロジェクト説明]`

## Description
新しいプロジェクトや機能の仕様書構造を初期化します。

## Usage
```
/kiro:spec-init "プロジェクトの説明"
```

## Parameters
- `プロジェクト説明`: プロジェクトまたは機能の簡潔な説明

## Behavior
1. プロジェクト概要を解析
2. 基本的な仕様書テンプレートを生成
3. `specs/` ディレクトリに初期構造を作成
4. 要件、設計、タスクの基本フレームワークを設定

## Output Structure
```
specs/
├── [feature-name]/
│   ├── requirements.md  # 要件仕様
│   ├── design.md       # 技術設計
│   └── tasks.md        # 実装タスク
```

## Example
```
/kiro:spec-init "ユーザー認証システム"
```

この例では、ユーザー認証システムに関する基本的な仕様書構造が作成されます。