# AIエージェント仕機駆動テンプレート

このリポジトリは、Claude Codeを用いた **仕機書駆動開発（Spec-Driven Development、SDD）** 手法に従うプロジェクトの出発点として提供されます。ステアリング文書、機能仕機、タスク一覧といった標準的な構成を定義しています。

## 使い方

1. **このテンプレートから新しいリポジトリを作成** するか、ローカルにクローンします。
2. `.claude/commands` ディレクトリ（スラッシュコマンド定義を含む）と `CLAUDE.md` をあなたのプロジェクトにコピーします。
3. `/kiro:steering` を実行して、製品ビジョンに合わせたステアリング文書を生成します。
4. `/kiro:spec-init`、`/kiro:spec-requirements`、`/kiro:spec-design`、`/kiro:spec-tasks` を使用して各機能の仕機を定義します。
5. 仕機書を最新に保ちながらタスクを実装していきます。

文書構造の例として、`steering/product-steering.md` と `specs/feature-template/` 下のテンプレートを参照してください。
