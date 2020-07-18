# Rails6 & Vue.ts starter

## システム要件

- Ruby v.2.7.1
- Rails 6.0.3

## 開発環境構築

### with Docker Compose

- `docker-compose up [--build]`
- `yarn` // ホスト環境にも node module を導入すると開発が楽です

### on macOS

- `yarn`
- `bundle install`
- `bundle exec rails db:migrate`
- `bundle exec rails s -p 3000`

#### macOS で`libv8` gem でエラーになる場合

- `brew install v8-315`
- `gem install libv8 -v '3.16.14.19' -- --with-system-v8`

## Linter & formatter

- [EditorConfig](https://editorconfig.org/)
- [Prettier](https://prettier.io/)
- [ESLint](https://eslint.org/)
- rubocop

### VSCode 拡張機能

- [EditorConfig for VSCode](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig)
- [Prettier - Code formatter](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
- [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
- [Vetur](https://marketplace.visualstudio.com/items?itemName=octref.vetur)
- rubocop

#### recommended setting

```json
// vscode - setting.json
{
  "[typescript]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode",
    "editor.codeActionsOnSave": {
      "source.organizeImports": false,
      "source.fixAll.tslint": false,
      "source.fixAll.eslint": true
    }
  },
  "[vue]": {
    "editor.defaultFormatter": "octref.vetur"
  },
  "vetur.useWorkspaceDependencies": true,
  "ruby.lint": {
    "rubocop": true
  },
  "ruby.format": "rubocop"
}
```
