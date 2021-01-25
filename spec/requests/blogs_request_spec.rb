require 'rails_helper'

RSpec.describe "Blogs", type: :request do
  describe '各ページにアクセスできるか' do
    context "ブログ閲覧ページが正しく表示される" do
      before do
        get blogs_path
      end
      it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200
      end
      it 'ブログ一覧が表示されていること' do
      get blogs_path
        expect(response.body).to include "Blogs"
      end
    end
    context "トップ画面が正しく表示される" do
      before do
        get root_path
      end
      it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200
      end
    end
    context "aboutページが正しく表示される" do
      before do
        get about_path
      end
      it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200
      end
    end
    context "コース一覧ページが正しく表示される" do
      before do
        get fees_path
      end
      it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200
      end
    end
    context "スケジュールカレンダーが正しく表示される" do
      before do
        get schedules_path
      end
      it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200
      end
    end
    context "口コミページが正しく表示される" do
      before do
        get reviews_path
      end
      it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200
      end
    end
    context "お問い合わせページが正しく表示される" do
      before do
        get contacts_path
      end
      it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200
      end
    end
    context "ログインページが正しく表示される" do
      before do
        get director_session_path
      end
      it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200
      end
    end
  end
end