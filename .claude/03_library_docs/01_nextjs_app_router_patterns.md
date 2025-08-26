# Next.js App Router パターン（要点）

## Server / Client 分離
- 可能な限りServer Components。状態/イベントのみClientで。

## データ取得
- `async` Server Component の `fetch`。キャッシュは revalidate=0/60/600 を使い分け。

## エラーバウンダリ
- `error.tsx` / `not-found.tsx` を活用。throwの整合は `05_error_handling.md`。

## ルーティング
- route handlersでAPI、layoutで骨格、loadingで体感を改善。

## よくある落とし穴
- クライアントでENVを直接読まない（`NEXT_PUBLIC_`のみ）。
