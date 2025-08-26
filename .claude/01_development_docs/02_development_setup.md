# 開発セットアップ

## 前提ツール
- Node 20+, pnpm, GitHub CLI(任意), Docker(任意)

## 初期化
    pnpm i
    cp .env.example .env.local
    pnpm dev

## ENV 方針
- `.env.example` を常に最新化
- `NEXT_PUBLIC_` はクライアント露出前提。秘密はサーバのみ。

## スクリプト(例)
- `pnpm lint`, `pnpm typecheck`, `pnpm test`, `pnpm build`, `pnpm e2e`

## モック/データ
- 必要時にMSW実装。最初はユニットテスト重角。
