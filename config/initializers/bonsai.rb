require 'elasticsearch/model'

ENV['ELASTICSEARCH_URL'] = ENV['BONSAI_URL']

if ENV['BONSAI_URL']
  Elasticsearch::Model.client = Elasticsearch::Client.new({url: ENV['BONSAI_URL'], logs: true})
end
