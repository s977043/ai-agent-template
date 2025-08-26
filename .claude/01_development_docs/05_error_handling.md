# エラーハンドリング設計

## 分類
- VALIDATION / AUTH / NOT_FOUND / CONFLICT / RATE_LIMIT / SYSTEM

## UI表示
- ユーザー向け文言と技術詳細ログは分離
- 再試行可能性を明示（再試行/問い合わせ/放置）

## ログ/監視
- PoC段階はconsole中心。将来Sentry実装。

## APIマッピング
- 分類 → HTTPステータス → エラーボディ（`03_api_design.md`参照）
