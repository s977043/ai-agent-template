# アーキテクチャ設計（PoC）

## 採用スタイル
- DDDライト + クリーンアーキテクチャ（責加境界だけ明確に）

## 層と責加
- domain: エンティティ/値オブジェクト/ドメインサービス
- application: usecase（入出力の調停）
- infrastructure: DB/外部API（永続化・I/O）
- presentation: UI/Route/Controller（Next.js）

## 配置/命名
- `src/domain/**`, `src/application/**`, `src/infrastructure/**`, `src/app/**`

## 依存ルール
- presentation → application → domain
- infrastructure は interface を実装し注入する

## データフロー（概念）
- UI → usecase → domain → repo(interface) → infra(impl) → DB/API

## 実装ガイド
- 1ユースケース=1PR、ユニット/結合テストを最小1つずつ
- Server Components を優先、状態/イベントのみ Clientで
