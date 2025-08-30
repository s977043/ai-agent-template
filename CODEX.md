# AIエージェント向け GitHub Copilot CLI（Codex）仕様駆動テンプレート

このファイルは GitHub Copilot CLI（旧 OpenAI Codex CLI）を使用してAIエージェント開発を行う際のガイドラインと設定を定義します。本テンプレートは **仕様書駆動開発（Spec-Driven Development）** と **AI-TDD** を前提としています。

## 概要

GitHub Copilot CLI は自然言語でコマンドを生成し、AIの支援を受けながら効率的な開発を可能にします。このテンプレートでは以下のワークフローを推奨します：

1. **仕様書の作成** - `steering/` と `specs/` での要件定義
2. **AI-TDD** - テスト先行による反復開発
3. **段階的実装** - 小さなコミットでの安全な進行

## セットアップ

### 前提条件

```bash
# GitHub Copilot CLI のインストール
npm install -g @githubnext/github-copilot-cli

# または GitHub CLI 拡張として
gh extension install github/gh-copilot
```

### プロジェクト設定

1. **このテンプレートをクローン** または新規プロジェクトで利用
2. `.codex/` ディレクトリの設定ファイルをプロジェクトに合わせて調整
3. `CODEX_USAGE.md` を参照してビルドプロセスを実行

## 基本的な使い方

### コマンド生成例

```bash
# GitHub Copilot CLI を使用したコマンド提案
gh copilot suggest "ファイルを圧縮する"
# または
copilot suggest "find all JavaScript files modified in last week"

# 実行可能なコマンドに変換
gh copilot explain "tar -czf archive.tar.gz *.js"
```

### 開発ワークフロー

1. **要件の理解**: `specs/` ディレクトリの仕様書を確認
2. **テストの作成**: AI-TDD に従いテストケースを先に実装
3. **実装**: GitHub Copilot CLI でコード生成を支援
4. **検証**: テスト実行とコードレビュー
5. **文書化**: 変更内容の記録

## プロジェクト構造

```
.
├── .codex/                  # GitHub Copilot CLI 設定
│   ├── Codex.core.md       # 共通設定
│   ├── Codex.project.md    # プロジェクト固有設定
│   └── Codex.local.md      # 開発者個人設定（Git管理外）
├── CODEX.md                # このファイル
├── CODEX_USAGE.md          # 詳細な使用方法
├── steering/               # プロダクトステアリング文書
├── specs/                  # 機能仕様書
└── scripts/                # ビルド・ユーティリティスクリプト
```

## コーディング規約

### AI 支援開発での注意点

- **生成コードの検証**: AI が生成したコードは必ず理解してから使用
- **セキュリティチェック**: 機密情報の漏洩を防ぐため生成内容を確認
- **テストの重要性**: AI 生成コードにも適切なテストを作成
- **段階的適用**: 大きな変更は小さく分割して実装

### 品質基準

- 可読性を最優先とする
- 単一責任の原則を守る
- エラーハンドリングは明示的に行う
- ドキュメントは変更と同時に更新

## 他のAIツールとの連携

このプロジェクトでは複数のAIツールを組み合わせた開発が可能です：

- **Claude Code**: 仕様書作成（`/kiro:spec-*` コマンド）
- **Gemini CLI**: 対話的な設計支援
- **GitHub Copilot CLI**: コマンド生成とコード支援

各ツールの詳細は対応する設定ファイル（`CLAUDE.md`, `GEMINI.md`）を参照してください。

## 注意事項

- GitHub Copilot CLI の使用には GitHub Copilot のサブスクリプションが必要です
- 生成されるコードやコマンドは必ず内容を理解してから実行してください
- 機密情報を含むプロンプトの使用は避けてください
- 本設定は継続的に更新し、プロジェクトの成長に合わせて調整してください