# Codex CLI Core Configuration

このファイルは GitHub Copilot CLI（旧 Codex CLI）の基本動作を定義します。

## 基本方針

- **仕様書駆動開発（SDD）** を前提とした開発プロセス
- **AI-TDD** による反復的な実装アプローチ
- 最小限の変更で最大の効果を目指す

## コード生成指針

### 品質基準
- 可読性を最優先とする
- 関数は小さく、単一責任の原則を守る
- エラーハンドリングは明示的に行う
- テスト可能な設計にする

### 実装プロセス
1. 仕様書（`specs/`）を参照して要件を理解
2. テストを先に作成（AI-TDD）
3. 最小実装を行う
4. リファクタリングで品質向上
5. ドキュメント更新

## コミット規約

```
<type>: <summary>

例:
feat: add user authentication
fix: handle null pointer exception
docs: update API documentation
test: add unit tests for user service
```

## セキュリティ

- 機密情報をコードに含めない
- 入力検証を必ず実装する
- エラーメッセージに機密情報を含めない