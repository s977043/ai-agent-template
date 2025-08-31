# Codex CLI Project Configuration

このプロジェクト固有の GitHub Copilot CLI 設定です。

## プロジェクト構造理解

```
.
├── .codex/              # Codex CLI 設定ファイル
├── .claude/commands/    # Claude Code スラッシュコマンド定義
├── .gemini/             # Gemini CLI 設定
├── specs/               # 機能仕様書
├── steering/            # プロダクトステアリング文書
├── scripts/             # ビルド・ユーティリティスクリプト
└── docs/                # 開発ガイドライン
```

## このプロジェクトでの作業方針

### 仕様参照の優先順位
1. `steering/product-steering.md` - プロダクトビジョンと原則
2. `specs/` - 機能要件と技術設計
3. `docs/DEVELOPMENT_GUIDELINES.md` - 開発標準

### 推奨ワークフロー
1. 既存コードパターンの学習（類似機能を3つ見つける）
2. 仕様書の確認と理解
3. テスト駆動での実装
4. 段階的コミット

### ファイル変更指針
- 最小限の変更に留める
- 既存のテストを破壊しない
- 新機能には必ずテストを追加
- コミットメッセージは変更理由を明記

## 利用可能なツール
- Shell スクリプト（POSIX 準拠）
- AI エージェント連携（Claude, Gemini）
- 仕様書テンプレート（feature-template/）

## コードレビューガイドライン
GitHub Copilot CLI を使用したコードレビューの詳細手法については、`code-review-guidelines.md` を参照してください。対話的で安全性を重視したレビューアプローチを提供しています。