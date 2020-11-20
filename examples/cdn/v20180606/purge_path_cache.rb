# frozen_string_literal: true

require 'bundler/setup'
require 'tencent_cloud'
require 'tencent_cloud/cdn/v20180606/cdn_client'
# replace secret_id secret_key
secret_id = 'xxxx'
secret_key = 'xxxx'
credential = TencentCloud::Common::Credential.new(secret_id, secret_key)
payload = {
  'Paths' => %w(https://cdn.xxx.com/assets),
  'FlushType' => 'flush'
}
resp = TencentCloud::CdnClient.new(credential, nil).purge_path_cache(payload)
puts resp.body
