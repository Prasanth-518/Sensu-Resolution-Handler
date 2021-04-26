#!/usr/bin/env ruby

require 'json'
require 'rubygems'

# Read and parse original event JSON
event = JSON.parse(STDIN.read, symbolize_names: true)

# Extract required values
status = event[:check][:status]
entity_name = event[:entity][:metadata][:name]
namespace = event[:entity][:metadata][:namespace]
api_key = ARGV[0]
url = "http://20.72.151.214:8080"
res_check = event[:check][:labels][:resolution]

if status != 0
puts `curl -X POST \
      -H "Authorization: Key #{api_key}" \
      -H 'Content-Type: application/json' \
      -d '{
        "check": "#{res_check}",
        "subscriptions": [
          "entity:#{entity_name}"
        ]
      }' \
      #{url}/api/core/v2/namespaces/#{namespace}/checks/#{res_check}/execute
      `
end