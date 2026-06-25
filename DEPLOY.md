# 公開手順（GitHub Pages）

スマホ・PC どちらからも URL で開けるようにする手順です。  
**無料**で使えます。

## 公開後の URL イメージ

```
https://あなたのGitHubユーザー名.github.io/kyusei-maya-fortune/
```

---

## 手順（初回のみ・約5分）

### 1. GitHub でリポジトリを作る

1. https://github.com/new を開く
2. Repository name: `kyusei-maya-fortune`（任意）
3. **Public** を選択
4. 「Create repository」をクリック

### 2. Terminal でアップロード

```bash
cd ~/マヤ×九星カウンセリング/fortune-site

git init
git add .
git commit -m "公開: 今日の運勢診断"

git branch -M main
git remote add origin https://github.com/あなたのユーザー名/kyusei-maya-fortune.git
git push -u origin main
```

※ `あなたのユーザー名` は自分の GitHub アカウント名に置き換えてください。

### 3. GitHub Pages を有効化

1. リポジトリの **Settings** → 左メニュー **Pages**
2. Source: **Deploy from a branch**
3. Branch: **main** / **/ (root)** → **Save**
4. 1〜2分待つと URL が表示されます

---

## 更新するとき

`ikumou-type-tool/fortune.html` を直したあと、公開フォルダに反映：

```bash
cd ~/マヤ×九星カウンセリング/fortune-site
cp ../ikumou-type-tool/fortune.html ./index.html
git add .
git commit -m "更新: 運勢診断"
git push
```

タロット画像を変えた場合は `tarot-img/` もコピーし直してください。

---

## スマホでの使い方

- 公開 URL をブラウザで開く
- ホーム画面に追加（Safari: 共有 → ホーム画面に追加）
- その URL を LINE などで共有すれば、誰でも使えます

---

## 注意

- 接客タイプ診断（`index.html` 業務用）は **このフォルダには含めていません**
- 公開されるのは「今日の運勢診断」だけです
