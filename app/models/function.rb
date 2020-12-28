class Function < ApplicationRecord
  def self.register(function_string, request)
    function = Function.create(method: function_string, guid: SecureRandom.hex)
    "https://#{request.host}#{request.path}/#{function.id}?guid=#{function.guid}"
  end
end
