# API設計（契約）

## 命名/ルーティング方針
- REST（例：/api/v1/items）・HTTPメソッド準拠

## 共通レスポンス
成功:
    { "success": true, "data": {}, "error": null }
失敗:
    { "success": false, "data": null, "error": { "code": "VALIDATION", "message": "...", "details": {} } }

## バリデーション
- ZodでI/Oスキーマを定義し、UI/サーバで共有

## 例外→HTTPマッピング
- VALIDATION(400), AUTH(401/403), NOT_FOUND(404), CONFLICT(409), SYSTEM(500)
- 分類は `05_error_handling.md`
