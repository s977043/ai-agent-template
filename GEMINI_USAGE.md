# Gemini CLI の利用ガイド

このテンプレートでは Gemini CLI を利用するためのレイヤー構成と実行手順を用意しています。以下の手順で `.gemini/system.md` を生成し、Gemini CLI を起動できます。

## system.md の生成

プロジェクトルートの `scripts/build-gemini-system-md.sh` は `.gemini/Gemini.core.md`、`.gemini/Gemini.project.md`、`.gemini/Gemini.local.md` を結合し、`./.gemini/system.md` を生成します。次の npm スクリプトを実行してください。

```bash
# system.md を生成の教程本のコード。Core, Project, Local の順に読み込んで後勝ちで上書き
npm run gemini:build
```

## Gemini CLI の起動

生成された `system.md` を読み込んで Gemini CLI を起動するには以下のコマンドを実行します。

```bash
npm run gemini:start
```

このスクリプトは `GEMINI_SYSTEM_MD=1` を設定して `gemini` コマンドを起動します。`GEMINI_SYSTEM_MD` に 1 またはファイルパスを指定すると、Gemini CLI は `.gemini/system.md` を自動で読み込みます。

## API キーの設定

Gemini CLI を利用するには API キーが必要です。`.env` ファイルに以下の環境変数のいずれかを設定してください。サンプルは `.env.example` に記述されています。

```
GEMINI_API_KEY=あなたのGemini API キー
# または
GOOGLE_API_KEY=あなたのGoogle API キー
```

両方設定した場合は `GOOGLE_API_KEY` が優先されます。

## ローカル上書き (`Gemini.local.md`)

開発者固有の設定は `.gemini/Gemini.local.md` に記述できます。このファイルは `.gitignore` によりコミット対象から除外されます。チーム全体に影響を与えない個人的なメモや一時的なオプションを記述します。

## 更新ポリシー

本テンプレートで提供する `GEMINI.md` はプロジェクト全体のガイドラインです。リポジトリ固有の設定や仕様を反映して継続的にアップデートしてください。
