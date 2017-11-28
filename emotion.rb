require 'net/http'

uri = URI('https://westus.api.cognitive.microsoft.com/emotion/v1.0/recognize')
uri.query = URI.encode_www_form({
})

request = Net::HTTP::Post.new(uri.request_uri)
request['Content-Type'] = 'application/json'
request['Ocp-Apim-Subscription-Key'] = ENV['EMOTION_API_KEY']
image_url = ""
request.body = "{\"url\":\"#{image_url}\"}"

response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
    http.request(request)
end

puts response.body
