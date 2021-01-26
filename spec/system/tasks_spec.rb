require 'rails_helper'

RSpec.describe "Tasks", type: :system do
  describe 'マイページ' do
    context 'タスクを作成' do
      it '新規作成したタスクが表示される'
    end
  end

  describe 'ログイン後、タスクの新規登録　編集　削除ができること' do
    context 'タスクを新規登録' do
      it '新規作成したタスクが表示される'
    end

    context 'タスクを編集' do
      it '編集したタスクが表示される'
    end
    context 'タスクを削除' do
      it 'タスクを削除できる'
    end

  end
end
