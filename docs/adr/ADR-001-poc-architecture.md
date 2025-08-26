# ADR-001: PoC 基本アーキテクチャ選定

## 背景
- 個人開発PoCを最速で成立させるための構成を決める。

## 決定
- Next.js(App Router) + Supabase(Postgres/Auth/Storage) + Vercel
- CIはGitHub Actions（lint/typecheck/test/build/preview）
- テストはVitest中心＋E2E最小（Playwright）

## 代換案の検討（却下理由の要点）
- Firebase: SQL/移行性の観点で今回は見送り
- PlanetScale: 認証/Storageの統合性でSupabase優先
- Prisma + SQLite: 成長時の移行手当が必要

## 将来の置き換えポイント
- DB/認証/ホスティングの差し換えを想定（infra層に閉じ込める）
