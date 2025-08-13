このディレクトリは、Claude Code のスラッシュコマンド定義を格穏するためのものです。

このテンプレートにはコマンド定義そのものは含まれていません。あなたのプロジェクトで仕様書験駆動開発 (Spec​‑Driven Development) を実現するには、元の [claude-code-spec](https://github.com/gotalab/claude-code-spec) リポジトリから適切なコマンドファイルをコピーしてください。コマンドはそちらの `.claude/commands/kiro/` 配下にあり、 `/kiro:steering`、`/kiro:spec-init`、`/kiro:spec-requirements`、`/kiro:spec-design`、`/kiro:spec-tasks` などのやりとりを定義しています。

必要なコマンドファイルをこのディレクトリにコピーすると、Claude Code はその中で定義されたスラッシュコマンドを認識し、仕様作成フローを適用できるようになります。
