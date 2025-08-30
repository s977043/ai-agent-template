# AIエージェント仕様駆動テンプレート

このリポジトリは、複数のAIツールを組み合わせた **仕様書駆動開発（Spec-Driven Development、SDD）** と **AI-TDD** 手法に従うプロジェクトの出発点として提供されます。ステアリング文書、機能仕様、タスク一覧といった標準的な構成を定義しています。

## 対応AIツール

このテンプレートは以下のAIツールに対応した設定ファイルを提供します：

- **Claude Code**: 仕様書駆動開発のためのスラッシュコマンド（`CLAUDE.md`、`.claude/commands/`）
- **Gemini CLI**: 対話的な開発支援（`GEMINI.md`、`GEMINI_USAGE.md`、`.gemini/`）
- **GitHub Copilot CLI**: コマンド生成とシェル操作支援（`CODEX.md`、`CODEX_USAGE.md`、`.codex/`）
- **GitHub Copilot**: リアルタイムコード補完・生成（`COPILOT.md`、`COPILOT_USAGE.md`）

詳細は `AGENTS.md` を参照してください。

## 使い方

### 基本セットアップ

1. **このテンプレートから新しいリポジトリを作成** するか、ローカルにクローンします。
2. 使用するAIツールに応じて、対応する設定ファイルを確認してください：
   - Claude Code: `CLAUDE.md` と `.claude/commands/kiro/`
   - Gemini CLI: `GEMINI.md` と `GEMINI_USAGE.md`
   - GitHub Copilot CLI: `CODEX.md` と `CODEX_USAGE.md`
   - GitHub Copilot: `COPILOT.md` と `COPILOT_USAGE.md`

### 仕様書駆動開発の開始

3. **ステアリング文書の作成**: `/kiro:steering` を実行して、製品ビジョンに合わせたステアリング文書を生成します。
4. **機能仕様の定義**: 以下のコマンドを使用して各機能の仕様を定義します：
   - `/kiro:spec-init [プロジェクト説明]` - 仕様書初期化
   - `/kiro:spec-requirements <機能名>` - 要件定義
   - `/kiro:spec-design <機能名>` - 技術設計
   - `/kiro:spec-tasks <機能名>` - タスク分割
5. **実装**: 仕様書を最新に保ちながらAI-TDDでタスクを実装していきます。

文書構造の例として、`steering/product-steering.md` と `specs/feature-template/` 下のテンプレートを参照してください。
