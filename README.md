# テーブル設計

## users テーブル

| Column               | Type    | Options                 |
| -------------------- | ------- | ----------------------- |
| nickname             | string  | null: false             |
| email                | string  | null: false,unique:true |
| encrypted_password   | string  | null: false             |
| profile              | text    | null: false             |

### Association

- has_many :smoothies

## smoothies テーブル

| Column        | Type         | Options                        |
| ------------- |  ------------| ------------------------------ |
| title         | string       | null: false                    |
| content       | string       | null: false                    |
| efficacy_a_id | integer      |                                |
| efficacy_b_id | integer      |                                |
| season_id     | integer      | null: false                    |
| user          | references   | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :foodstuffs

## foodstuffs テーブル

| Column        | Type         | Options                        |
| ------------- |  ------------| ------------------------------ |
| foodstuff     | string       | null: false                    |
| quantity      | string       |                                |
| smoothie_id   | references   | null: false, foreign_key: true |

### Association

- belongs_to :smoothie
