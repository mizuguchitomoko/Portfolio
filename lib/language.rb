require 'base64'
require 'json'
require 'net/https'
module Language
  class << self
    def get_data(text)
      # APIのURL作成
      api_url = "https://language.googleapis.com/v1beta1/documents:analyzeSentiment?key=#{ENV['GOOGLE_API_KEY']}"
      # APIリクエスト用のJSONパラメータ
      params = {
        document: {
          type: 'PLAIN_TEXT',
          content: text
        }
      }.to_json
      # Google Cloud Natural Language APIにリクエスト
      uri = URI.parse(api_url)
      https = Net::HTTP.new(uri.host, uri.port)
      https.use_ssl = true
      request = Net::HTTP::Post.new(uri.request_uri)
      request['Content-Type'] = 'application/json'
      response = https.request(request, params)
      Rails.logger.debug("request: " + text)
      Rails.logger.debug("response: " + response.body)
      # APIレスポンス出力
      score = JSON.parse(response.body)['documentSentiment']['score']
      Rails.logger.debug("score: " + score.to_s)

      score
    end
  end
end