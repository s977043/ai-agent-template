# Copilot Instructions (Repository-wide)
このリポジトリは **AIエージェント×SDD【仕様書駆動】×AI-TDD** を前提にします。以下を常に考慮して提案・修正・コード生成を行ってください。

## 共通方針
- 日本語で簡潔に回答。必要ならコード例と最小再現を提示。
- まず仕様は (`steering/`, `specs/`) を参照し、**要件→設計→タスク**の順で整合性をチェックした上でコードを出す。
- 仕様に不整合や不足がある場合は、**質問→追記案→差分パッチ**の順で提案。

## 開発プロセス
- **AI-TDD**: 先にテスト（ユニット/スモーク）→最小実装→リファクタの順で反復する。
- 仕様テンプレ: `specs/feature-template/` を基準に、要件→設計→タスク→受け入れ基準を満たす実装とテストを生成。
- タスク駆動: コミットは小さく、コミットメッセージは `<type>: <summary>`（例: `feat: add agent bootstrap script`）。

## ツールと制約
- AI支援: Claude Code / Gemini CLI を前提に自動生成コマンドやスクリプトを提示してよい（ただし**実行前に差分を明示**）。
- スクリプトは POSIX 準拠の Shell を優先（このリポジトリは Shell 構成が中心）。
- 追加ファイルは原則 `scripts/` 配下。設定は `.github/` またはルートに置く。

## コード規約（最低限）
- 可読性重視。関数は小さく、I/Oとロジックを分離。
- エラーハンドリングは明示的に（終了コード・ログメッセージ）。
- ドキュメント更新を伴う変更では、`README.md` / 関連ガイドの差分も提示。

## テスト
- 可能なら Shell のユニットテスト（bats 等）を提案。なければスモークテスト用スクリプトを生成。
- CI での実行例（GitHub Actions）を提示。

## 出力フォーマット
- 変更提案は **パッチ形式（unified diff）** または **追記ファイル全文** で示す。
- 複数案がある場合は「保守性」「実行時間」「依存」の観点で比較する。

## レビュー指針（Copilot Code Review適用）
- 仕様との不合り・副作用・エラーパス・境界条件を重点確認する。
- 代替案がある場合は、**なぜ**その案を推すかを短く述べる。
- **詳細なレビューガイドライン**: `.github/ai-agent-code-review-guidelines.md` を参照。
- **AI ツール別の専用レビュー設定**:
  - Claude Code: `.claude/code-review-guidelines.md`
  - GitHub Copilot CLI: `.codex/code-review-guidelines.md`  
  - Gemini CLI: `.gemini/code-review-guidelines.md`
