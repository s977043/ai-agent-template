# GitHub Copilot の利用ガイド

このテンプレートでは GitHub Copilot を利用した効率的な開発環境を提供しています。以下の手順で GitHub Copilot を設定し、最適化して利用できます。

## GitHub Copilot のセットアップ

### 前提条件

1. **GitHub Copilot サブスクリプション**
   - 個人アカウント: GitHub Copilot Individual
   - 組織アカウント: GitHub Copilot Business または Enterprise

2. **対応エディタ**
   - Visual Studio Code
   - Visual Studio
   - Neovim
   - JetBrains IDEs (IntelliJ IDEA, PyCharm など)

### VSCode での設定

```bash
# 拡張機能のインストール
code --install-extension GitHub.copilot
code --install-extension GitHub.copilot-chat

# GitHub認証（初回のみ）
# 拡張機能が自動的にブラウザでGitHub認証を要求します
```

### 設定の最適化

VSCode の `settings.json` に以下の設定を追加：

```json
{
  "github.copilot.enable": {
    "*": true,
    "yaml": false,
    "plaintext": false,
    "markdown": true
  },
  "github.copilot.inlineSuggest.enable": true,
  "github.copilot.editor.enableAutoCompletions": true
}
```

## 基本的な使用方法

### コード補完

1. **自動補完**: コードを入力すると自動的に提案が表示されます
2. **手動トリガー**: `Ctrl+Space` (Windows/Linux) または `Cmd+Space` (Mac) で手動実行
3. **受諾**: `Tab` キーで提案を受諾
4. **却下**: `Esc` キーで提案を却下
5. **代替案**: `Alt+]` / `Alt+[` で他の提案を表示

### Copilot Chat

```bash
# Copilot Chat の起動
Ctrl+Shift+P → "GitHub Copilot: Open Chat"
```

#### 有効なプロンプト例

```
# コード解説
このコードの動作を説明してください

# リファクタリング
この関数をより読みやすくリファクタリングしてください

# テスト生成
この関数のユニットテストを作成してください

# バグ修正
このエラーの原因と修正方法を教えてください

# ドキュメント生成
この関数のJSDocコメントを生成してください
```

## プロジェクト固有の活用例

### 仕様書駆動開発での活用

1. **要件からのコード生成**
   ```javascript
   // - セッション管理
   function authenticateUser(email, password) {
     // ここにCopilotが要件に基づいて実装を提案します
   }
   ```

2. **テストファーストでの実装**
   ```javascript
   // 失敗するテストを先に作成
       const user = { email: 'test@example.com', password: 'password123' };
       const result = await authenticateUser(user.email, user.password);
       expect(result).toHaveProperty('token');
       expect(result.token).toMatch(/^eyJ/); // JWTトークンの先頭
     });
   });
   ```

3. **API設計の実装**
   ```typescript
   // specs/user-auth/design.md のAPI仕様に基づく実装
   interface AuthRequest {
     email: string;
     password: string;
   }
   ```

### ディレクトリ構造に基づく最適化

このプロジェクトの構造を理解してより良い提案を得るために：

```bash
# プロジェクト構造をCopilotに認識させる
// プロジェクト: AIエージェントテンプレート
// 構造: specs/ (仕様), steering/ (方針), scripts/ (ツール)
// パターン: 仕様書駆動開発 + AI-TDD
```

## ベストプラクティス

### 効果的なコメント記述

```javascript
// Good: 具体的で明確
// ユーザーの認証状態をチェックし、未認証の場合はログインページにリダイレクト
function checkAuthentication() {

// Bad: 曖昧
// 認証チェック
function auth() {
```

### コンテキストの提供

```typescript
// 型定義を先に記述してコンテキストを提供
interface User {
  id: string;
  email: string;
  role: 'admin' | 'user';
  createdAt: Date;
}

// Copilotがより適切なコードを生成できる
function createUser(userData: Partial<User>): User {
```

### セキュリティ考慮

```javascript
// セキュリティ要件を明示
// セキュア: パスワードハッシュ化、SQL injection対策、XSS対策
async function createUserSecure(email, password) {
```

## トラブルシューティング

### よくある問題

1. **補完が表示されない**
   ```bash
   # 解決策
   - GitHub認証状態の確認
   - 拡張機能の再有効化
   - VSCodeの再起動
   ```

2. **低品質な提案**
   ```bash
   # 改善方法
   - より具体的なコメントを記述
   - 型定義を明確にする
   - コンテキストを提供する
   ```

3. **パフォーマンス問題**
   ```bash
   # 最適化
   - 大きなファイルを分割
   - 不要な拡張機能を無効化
   - ネットワーク接続の確認
   ```

### デバッグとログ

```bash
# Copilot拡張機能のログ確認
Ctrl+Shift+P → "Developer: Show Logs..." → "GitHub Copilot"

# 認証状態の確認
Ctrl+Shift+P → "GitHub Copilot: Show Status"
```

## 更新ポリシー

- GitHub Copilot 拡張機能は自動更新を推奨
- 新機能のリリース時は `COPILOT.md` を更新
- プロジェクト固有の最適化は継続的に改善

## 制限事項

- インターネット接続が必要
- 機密情報を含むプロジェクトでは使用制限あり
- 生成されたコードのライセンス確認が必要
- 大きなファイルでは応答が遅くなる場合あり

---

詳細な設定やガイドラインについては `COPILOT.md` を参照してください。