# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# Name
 "Minima ToDo"
 
 ＊ToDoの一覧表示、新規登録、編集、更新、詳細表示、削除、検索、画像添付、期限日の指定
 ＊ユーザーのログイン、新規登録、一覧表示、編集、更新、詳細表示、削除
 ＊ToDoを完了、未完了で分けることが出来る

 
# URL
 https://todo-app-ver-11.herokuapp.com/

# Test account
メールアドレス "test@mail.com"/password "test"/ユーザーネーム "ゲスト"
# GIF & Explanation

まず、テスト用アカウントでログインしてください。（自分用のアカウントを作りたい方は右ッダー部分にusersというタグがあるのでクリックして頂き、そこから新規登録ができます）
その後、タスクの新規登録タブをクリックすると入力してフォームに飛ぶのでそこから予定を入れます。
各フォームに入力が済んだら登録ボタンを押してください。（必ず全ての項目を入力して下さい。画像のみ挿入しなくても問題ありません）タスク一覧画面に遷移されます。
タスクが完了した場合はタスクの編集にてチェックを入れて再登録すると振り分けることができます。

# Persona

対象者 "自分またはシンプルなToDoリストを使いたい人"

課題 "既存のTODOアプリは機能がありすぎてわかりづらく、逆に整理がしづらい"

解決策 "必要最低限の機能のみ実装し、整理も完了か未完了のみにする"

# テーブル設計

## users テーブル

| Column         | Type   | Options     |
| --------       | ------ | ----------- |
| name           | string | null: false |
| email          | string | null: false |
| password       | string | null: false |


 ### Association

- has_many :tasks

## tasks テーブル

| Column              | Type       | Options                        |
| ------              | ------     | -----------                    |
| title               | string     | null: false                    |
| description         | text       | null: false                    |
| user                | references | null: false, foreign_key: true |
| done                | boolean    | default: false, null: false    |
| deadline            | date       | null: false                    |


### Association

- belongs_to :user
- has_one_attached :image

# 要件定義
https://docs.google.com/spreadsheets/d/107NbEIEuYDVWR3PtmPB1vJHfzyITysngYkEB9VY-hUI/edit#gid=60957725

# GIF & 説明文
ユーザーのログイン機能
https://gyazo.com/7c50618a5c1909edf4e9e2247237fd54

ログアウト機能
https://gyazo.com/f1050a0a16e06f0ca564175de432a166

新規登録
https://gyazo.com/0121c0995dc73e482ca5483e290f1012

一覧表示機能
https://gyazo.com/2922910ba0bf362762f928d0328c5230

編集機能
https://gyazo.com/053aee08752fbbd73762a6a87efc1077


削除機能
https://gyazo.com/be2528eba8bf5eda55319307a5c9b2b0
 
-------------------------------------------------- 
タスクの新規登録
https://gyazo.com/3daf6b278b0a52d807a0ec08a4a4ac48

一覧表示機能
https://gyazo.com/cdc425e63c3574acf4b1f7a77fe9e85e

編集機能
https://gyazo.com/cba3a6212bfdff6e3721d964c94f3920

削除機能
https://gyazo.com/8515a65a86059ceaa2b660c394603e85

検索機能
https://gyazo.com/4564067423878195b749d53515dac375



タスクの振り分け機能
https://gyazo.com/ade17fbac0c7522f0165fd78bb5fe53f



# ER図
https://gyazo.com/25410d80e1ad44f33d11ec56b050aeac

# Development environment
* Ruby  2.6.5
* Rails 6.0.0

 


 