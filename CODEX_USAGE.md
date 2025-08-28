# GitHub Copilot CLI（Codex）の利用ガイド

このテンプレートでは GitHub Copilot CLI を利用するためのレイヤー構成と実行手順を用意しています。以下の手順で `.codex/system.md` を生成し、GitHub Copilot CLI を最適化して利用できます。

## system.md の生成

プロジェクトルートの `scripts/build-codex-system-md.sh` は `.codex/Codex.core.md`、`.codex/Codex.project.md`、`.codex/Codex.local.md` を結合し、`./.codex/system.md` を生成します。次の npm スクリプトを実行してください。

```bash
# system.md を生成。Core, Project, Local の順に読み込んで後勝ちで上書き
npm run codex:build
```

## GitHub Copilot CLI のセットアップ

### インストール

```bash
# 方法1: npm でグローバルインストール
npm install -g @githubnext/github-copilot-cli

# 方法2: GitHub CLI 拡張として
gh extension install github/gh-copilot
```

### 認証設定

```bash
# GitHub にログイン（GitHub CLI を使用）
gh auth login

# GitHub Copilot CLI の認証確認
gh copilot auth
```

## GitHub Copilot CLI の起動

生成された設定を利用して GitHub Copilot CLI を起動するには以下のコマンドを実行します。

```bash
npm run codex:start
```

このスクリプトは環境変数を設定して `gh copilot` コマンドを起動します。設定ファイルが自動で読み込まれます。

## 基本的な使用方法

### コマンド提案

```bash
# 自然言語でコマンドを提案してもらう
gh copilot suggest "すべての JavaScript ファイルを見つけて圧縮する"

# Git 操作のヘルプ
gh copilot suggest "過去1週間のコミット履歴を表示"

# ファイル操作
gh copilot suggest "重複ファイルを見つけて削除"
```

### コマンド説明

```bash
# 複雑なコマンドの説明を求める
gh copilot explain "find . -name '*.js' -mtime -7 | xargs tar -czf recent-js.tar.gz"

# ワンライナーの解説
gh copilot explain "grep -r 'TODO' --include='*.js' . | wc -l"
```

### 対話モード

```bash
# 対話的なセッションを開始
gh copilot ask

# 特定のトピックについて質問
gh copilot ask "TypeScript でのエラーハンドリングのベストプラクティスは？"
```

## API キーの設定

GitHub Copilot CLI は GitHub アカウントの Copilot サブスクリプションを使用します。個別の API キー設定は不要ですが、環境によっては以下の設定が必要な場合があります：

```bash
# GitHub トークンの設定（必要に応じて）
export GITHUB_TOKEN="your_github_token"

# プロキシ環境での設定例
export HTTP_PROXY="http://proxy.example.com:8080"
export HTTPS_PROXY="http://proxy.example.com:8080"
```

## ローカル上書き（`Codex.local.md`）

開発者固有の設定は `.codex/Codex.local.md` に記述できます。このファイルは `.gitignore` によりコミット対象から除外されます。チーム全体に影響を与えない個人的なメモや一時的なオプションを記述します。

```markdown
# 個人的な開発設定例
- 使用エディタ: VSCode with Copilot extension
- よく使うエイリアス: alias gc='gh copilot'
- 開発環境: macOS + Homebrew
```

## プロジェクト固有の活用例

### 仕様書駆動開発での利用

```bash
# 要件から実装タスクを生成
gh copilot suggest "ユーザー認証APIの要件書から必要なテストケースを作成"

# 設計書からコード生成
gh copilot ask "REST API の設計書に基づいて Express.js のルーター実装を作成して"
```

### テスト駆動開発での支援

```bash
# テストケース生成
gh copilot suggest "Jest を使って非同期関数のユニットテストを作成"

# モックオブジェクト生成
gh copilot ask "データベース接続をモックするテストヘルパーを作成"
```

## 更新ポリシー

本テンプレートで提供する `CODEX.md` はプロジェクト全体のガイドラインです。GitHub Copilot CLI の機能追加や変更に合わせて継続的にアップデートしてください。

### 定期メンテナンス

- GitHub Copilot CLI のバージョン確認: `gh copilot version`
- 拡張機能の更新: `gh extension upgrade gh-copilot`
- 設定ファイルの見直し（月次推奨）

## トラブルシューティング

### よくある問題

1. **認証エラー**: `gh auth status` で GitHub ログイン状態を確認
2. **Copilot 未契約**: GitHub アカウントでCopilot サブスクリプションを確認
3. **ネットワークエラー**: プロキシ設定やファイアウォール設定を確認

### ログとデバッグ

```bash
# デバッグモードでの実行
gh copilot suggest --debug "コマンド例"

# ログファイルの確認（OS依存）
# macOS: ~/Library/Application Support/github-copilot-cli/logs/
# Linux: ~/.config/github-copilot-cli/logs/
```