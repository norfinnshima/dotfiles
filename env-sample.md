# 環境変数の管理

* APIキーなどは、コードに直接書かないでください
* .gitignore に .env を追加してください

## .env ファイル

### 書き方の例
```
GEMINI_API_KEY=XXXXXXXXXXXXXXX
```

### プログラム内での使用方法(例)
```JavaScript
const apiKey = import.meta.env.GEMINI_API_KEY;
```

```
import dotenv from 'dotenv';
dotenv.config();
const apiKey = process.env.GEMINI_API_KEY;
```
