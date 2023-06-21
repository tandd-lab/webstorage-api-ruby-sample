#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

require 'ondotori-ruby-client'
require 'json'  # Use to format and output

params = {
  "api-key" => "apikeyapikeyapikeyapikeyapikeyapikey", # Enter the obtained API KEY
  "login-id" => "your-login-id",                       # Enter the User ID
  "login-pass" => "your-login-password"                # Enter the password for the User ID
  }

begin
  client = Ondotori::WebAPI::Client.new(params)
  response = client.current
  puts "#{JSON.pretty_generate(response)}"  # Format and output
rescue Ondotori::WebAPI::Api::Errors::Error => e
  puts "An error has occurred. #{e.message} #{e.code}"
end

