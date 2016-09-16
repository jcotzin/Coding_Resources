require 'elasticsearch/model'

if ENV['https://tgfeixqj:zsikn2fpr3wj188b@rowan-4032356.us-east-1.bonsai.io']
  Elasticsearch::Model.client = Elasticsearch::Client.new({url: ENV['https://tgfeixqj:zsikn2fpr3wj188b@rowan-4032356.us-east-1.bonsai.io'], logs: true})
end
