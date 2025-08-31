# Kiro Commands - 仕様書駆動開発コマンド

このディレクトリには、Claude Code で使用する仕様書駆動開発（Spec-Driven Development）のためのスラッシュコマンド定義が含まれています。

## 利用可能なコマンド

### プロダクト計画
- **`/kiro:steering`** - プロダクトステアリング文書作成
  - プロダクトビジョン、原則、意思決定ポリシーを定義

### 仕様書作成
- **`/kiro:spec-init [プロジェクト説明]`** - 仕様書初期化
  - 新しいプロジェクト/機能の仕様書構造を作成

- **`/kiro:spec-requirements <機能名>`** - 要件定義
  - 機能要件、非機能要件、受け入れ基準を詳細に定義

- **`/kiro:spec-design <機能名>`** - 技術設計
  - アーキテクチャ、コンポーネント、API設計を作成

- **`/kiro:spec-tasks <機能名>`** - タスク分割
  - 実装タスクの分割、優先順位、依存関係を定義

## 基本ワークフロー

1. **プロダクト計画**: `/kiro:steering` でビジョンと原則を定義
2. **仕様初期化**: `/kiro:spec-init "機能説明"` で基本構造を作成
3. **要件定義**: `/kiro:spec-requirements <機能名>` で詳細要件を定義
4. **技術設計**: `/kiro:spec-design <機能名>` で実装方針を決定
5. **タスク化**: `/kiro:spec-tasks <機能名>` で作業を具体化

## ファイル構造

```
.claude/commands/kiro/
├── README.md           # このファイル
├── steering.md         # ステアリング文書作成コマンド
├── spec-init.md        # 仕様書初期化コマンド
├── spec-requirements.md # 要件定義コマンド
├── spec-design.md      # 技術設計コマンド
└── spec-tasks.md       # タスク分割コマンド
```

## 使用例

```
# 新しいプロジェクトの開始
/kiro:steering
/kiro:spec-init "ユーザー認証システム"

# 機能開発
/kiro:spec-requirements user-authentication
/kiro:spec-design user-authentication
/kiro:spec-tasks user-authentication
```

これらのコマンドにより、体系的かつ段階的な仕様書駆動開発が実現できます。