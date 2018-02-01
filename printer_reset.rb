require 'sinatra'

get '/' do
  erb :index
end

post '/reset_printer' do
  # call printer queue reset
  system "lprm -"
  erb :reset, :locals => {:flash => 'Printer Reset Complete.'}
end