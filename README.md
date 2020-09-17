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
 "First_ToDo"
 
 ＊ToDoの一覧表示、新規登録、編集、更新、詳細表示、削除、検索、画像添付、期限日の指定
 ＊ユーザーのログイン、新規登録、一覧表示、編集、更新、詳細表示、削除
 ＊ToDoを完了、未完了で分けることが出来る

 
# URL
 https://todo-app-ver-10.herokuapp.com/

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

# Requirement
 
動かすのに必要なライブラリなどを列挙する
 
* huga 3.5.2
* hogehuga 1.0.2
 
# Installation
 
Requirementで列挙したライブラリなどのインストール方法を説明する
 
```bash
pip install huga_package
```
 


 