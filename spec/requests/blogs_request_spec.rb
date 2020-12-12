require 'rails_helper'

RSpec.describe "Blogs", type: :request do
  describe 'ブログ一覧ページ' do
    context "ブログ閲覧ページが正しく表示される" do
      before do
        get blogs_path
      end
      it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200
      end
    end
  end
end