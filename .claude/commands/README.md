このディレクトリは、Claude Code のスラッシュコマンド定義を格納するためのものです。

## 利用可能なコマンド

### Kiro 仕様書駆動開発コマンド
`kiro/` ディレクトリには、仕様書駆動開発 (Spec-Driven Development) のための基本的なコマンド定義が含まれています：

- `/kiro:steering` - プロダクトステアリング文書作成
- `/kiro:spec-init [プロジェクト説明]` - 仕様書初期化
- `/kiro:spec-requirements <機能名>` - 要件定義
- `/kiro:spec-design <機能名>` - 技術設計
- `/kiro:spec-tasks <機能名>` - タスク分割

詳細な使用方法については `kiro/README.md` を参照してください。

## 拡張について

このテンプレートには基本的なコマンド定義が含まれています。より高度な機能や追加のコマンドが必要な場合は、元の [claude-code-spec](https://github.com/gotalab/claude-code-spec) リポジトリから追加のコマンドファイルをコピーして拡張することができます。

Claude Code はこのディレクトリ内で定義されたスラッシュコマンドを自動的に認識し、仕様作成フローを適用できるようになります。
