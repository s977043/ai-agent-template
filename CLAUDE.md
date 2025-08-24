# AIエージェント向け Claude Code 仕様駆動テンプレート

このリポジトリは、仕様駆動開発（Spec-Driven Development、SDD）プロセスを用いてAIエージェントを構築するためのテンプレートを提供します。Kiroの Claude Code 向け仕様駆動ワークフローからインスピレーションを得ています。

## 使い方

1. **このテンプレートをクローン** するか、GitHubでテンプレートとして直接使用します。
2. 新しいAIエージェントを開始する際は、`.claude/commands` ディレクトリとこの `CLAUDE.md` をあなたのプロジェクトにコピーします。これらのファイルは Claude Code で使用されるスラッシュコマンドとガードレールを定義します。
3. Claude Code で `/kiro:steering` を実行して、プロダクトビジョン、原則、意思決定ポリシーを記述するステアリング文書を作成します。
4. `/kiro:spec-init "プロジェクトの説明"` で最初の仕様を初期化します。
5. 各機能について、`/kiro:spec-requirements <機能名>` で要件を定義し、`/kiro:spec-design <機能名>` で実装を設計し、`/kiro:spec-tasks <機能名>` で作業をタスクに分割します。
6. タスクを順番に実装し、可能な限りテストを先に書きます。要件や設計が変更された場合は、仕様を最新に保ちます。

## リポジトリ構造

```
.
├── .claude/commands/      # スラッシュコマンド定義（Kiroからコピーする）
├── CLAUDE.md              # このファイル；高レベルな仕様駆動ガイドラインを定義
├── steering/
│   └── product‑steering.md # プロダクト用ステアリング文書テンプレート
└── specs/
    └── feature‑template/
        ├── requirements.md # 要件仕様テンプレート
        ├── design.md       # 技術設計テンプレート
        └── tasks.md        # 実装タスクリストテンプレート
```

## 注意事項

このテンプレートには実際のスラッシュコマンド定義は **含まれていません**。これらは元の Kiro リポジトリ（https://github.com/gotalab/claude-code-spec）で入手できます。取得方法については `.claude/commands/README.md` を参照してください。