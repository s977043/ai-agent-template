# AIエージェント向け GitHub Copilot 仕様駆動テンプレート

このファイルは GitHub Copilot（コード補完・生成AI）を使用してAIエージェント開発を行う際のガイドラインと設定を定義します。本テンプレートは **仕様書駆動開発（Spec-Driven Development）** と **AI-TDD** を前提としています。

## 概要

GitHub Copilot は IDE内でリアルタイムにコード補完とコード生成を支援するAIツールです。GitHub Copilot CLI とは異なり、エディタ内でのコーディング体験を向上させることに特化しています。

## セットアップ

### 前提条件

- GitHub Copilot のサブスクリプション（個人・ビジネス・Enterprise）
- 対応IDE（VSCode、Visual Studio、Neovim、JetBrains IDEs など）
- GitHub アカウントでのログイン

### IDEでの設定

#### VSCode の場合

```bash
# GitHub Copilot 拡張機能のインストール
code --install-extension GitHub.copilot
code --install-extension GitHub.copilot-chat
```

## 開発ガイドライン

### 基本方針

- **仕様書駆動開発（SDD）** を前提とした開発プロセス
- **AI-TDD** による反復的な実装アプローチ
- コード品質と可読性を最優先
- セキュリティを考慮したコード生成

### 推奨ワークフロー

1. **仕様書の確認** - `specs/` と `steering/` ディレクトリの内容を理解
2. **テストファースト** - 失敗するテストを先に作成
3. **Copilot支援での実装** - コード補完を活用した最小実装
4. **リファクタリング** - 生成されたコードの品質向上
5. **ドキュメント更新** - 変更内容の記録

### コード生成指針

#### 品質基準
- 可読性を最優先とする
- 関数は小さく、単一責任の原則を守る
- エラーハンドリングは明示的に行う
- テスト可能な設計にする
- セキュリティベストプラクティスに従う

#### Copilot 活用のベストプラクティス

1. **明確なコメント**: 生成したいコードの意図を明確に記述
   ```javascript
   // ユーザー認証を行い、JWTトークンを返す非同期関数
   async function authenticateUser(email, password) {
   ```

2. **型定義の活用**: TypeScript等で型を明確にする
   ```typescript
   interface User {
     id: string;
     email: string;
     role: 'admin' | 'user';
   }
   ```

3. **テストパターンの明示**: テストの意図を明確に示す
   ```javascript
   // 無効なメールアドレスでログインが失敗することをテスト
   test('should fail login with invalid email', async () => {
   ```

### セキュリティ考慮事項

- **機密情報の除外**: APIキー、パスワード等をコードに含めない
- **入力検証**: ユーザー入力の適切なバリデーション
- **エラーハンドリング**: セキュリティ情報を漏洩しないエラー処理
- **生成コードの確認**: Copilot が生成したコードの内容を必ず確認

### コミット規約

```
<type>: <summary>

例:
feat: add user authentication with Copilot assistance
fix: handle null pointer exception in user service
docs: update Copilot usage guidelines
test: add unit tests for authentication flow
```

## 他のAIツールとの連携

このプロジェクトでは複数のAIツールを組み合わせた開発が可能です：

- **Claude Code**: 仕様書作成（`/kiro:spec-*` コマンド）
- **Gemini CLI**: 対話的な設計支援
- **GitHub Copilot CLI**: コマンド生成とシェル操作支援
- **GitHub Copilot**: リアルタイムコード補完・生成

各ツールの詳細は対応する設定ファイル（`CLAUDE.md`, `GEMINI.md`, `CODEX.md`）を参照してください。

## トラブルシューティング

### よくある問題

1. **認証エラー**: VSCode で GitHub アカウントに再ログイン
2. **補完が表示されない**: 拡張機能の有効化状態を確認
3. **低品質な補完**: より具体的なコメントや関数名を使用
4. **ライセンス期限**: GitHub Copilot サブスクリプションの状態を確認

### パフォーマンス最適化

- 大きなファイルでは部分的にコード生成を行う
- 不要な拡張機能を無効化してIDEを軽量化
- ネットワーク接続の安定性を確保

## 注意事項

- GitHub Copilot の使用には有効なサブスクリプションが必要です
- 生成されるコードは必ず内容を理解してから使用してください
- 機密情報を含むコードの生成は避けてください
- 本設定は継続的に更新し、プロジェクトの成長に合わせて調整してください
- 生成されたコードのライセンスと著作権に注意してください