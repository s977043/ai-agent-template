# AI Agent Code Review Usage Examples

このファイルは、実装されたコードレビューガイドラインの使用例を示します。

## 📝 Claude Code でのレビュー例

```markdown
# 仕様書整合性チェック
1. `steering/product-steering.md` の確認
2. `specs/user-authentication/requirements.md` との照合
3. 受け入れ基準の充足確認

# レビューコマンド例
/kiro:spec-requirements を確認し、この実装が要件を満たしているか評価してください。
```

## 🤖 GitHub Copilot CLI でのレビュー例

```bash
# 基本的なレビューコマンド
gh copilot ask "このPRの変更内容をレビューして、セキュリティとパフォーマンスの観点で問題を指摘してください"

# セキュリティ特化レビュー
gh copilot ask "このコードにセキュリティ上の脆弱性はありませんか？特にSQLインジェクション、XSS、認証・認可の問題について確認してください"

# パフォーマンスレビュー
gh copilot ask "このコードのパフォーマンスボトルネックを特定し、最適化の提案をしてください"
```

## 🧠 Gemini CLI でのレビュー例

```markdown
# 探索的質問アプローチ
1. "この実装の核心的なアイデアは何ですか？"
2. "なぜこの手法が最適だと判断されましたか？"
3. "他にどのような実装方法が考えられますか？"
4. "この変更に伴うリスクは何ですか？"

# 多角的分析
- アルゴリズム評価
- データ構造設計確認
- 依存関係分析
- 将来への影響予測
```

## 🎯 実際のワークフロー例

### Step 1: 事前準備
```bash
# 仕様書の確認
ls steering/ specs/

# 関連する変更ファイルの確認
git diff --name-only HEAD~1
```

### Step 2: AI ツール選択とレビュー実行
```bash
# Copilot CLI の場合
gh copilot ask "このPRをレビューして、品質とセキュリティの観点で評価してください"

# Gemini CLI の場合（対話的）
# より深い分析と複数の観点での評価

# Claude Code の場合
# 仕様書との整合性を重視した段階的レビュー
```

### Step 3: 結果の統合と次ステップ決定
```markdown
## レビュー結果サマリー
- **Critical Issues**: [セキュリティ・機能問題]
- **High Priority**: [品質・保守性問題]
- **Medium Priority**: [最適化・改善提案]

## 推奨アクション
1. 即座に対応: [Critical Issues]
2. 次回iteration: [High Priority]
3. 将来検討: [Medium Priority]
```

## 🔧 カスタマイズ例

### プロジェクト固有のレビュー基準追加
```markdown
# 例: React プロジェクトの場合
## React 特有のチェック項目
- [ ] Hooks の適切な使用
- [ ] Component の責務分離
- [ ] Performance 最適化（memo, useMemo, useCallback）
- [ ] Accessibility 対応
```

### 業界別セキュリティ要件
```markdown
# 例: 金融系システムの場合
## 金融業界特有のセキュリティチェック
- [ ] PCI DSS 準拠
- [ ] 個人情報保護法対応
- [ ] 監査ログ要件
- [ ] 暗号化基準
```

## 📊 効果測定例

```bash
# レビュー効果の測定コマンド例
npm run validate:code-review

# 品質指標の確認
git log --oneline --grep="review" | wc -l  # レビュー関連コミット数
```

## 🚀 進化的改善

### 定期的見直しスケジュール
- **週次**: 新しい問題パターンの特定
- **月次**: ガイドライン効果の評価
- **四半期**: 大幅なアップデート検討

このように、各AI ツールの特性を活かした効果的なコードレビューを実現できます。