class HomeController < ApplicationController
  def index
    require 'net/http'
    require 'json'

    @url = 'https://min-api.cryptocompare.com/data/v2/news/?lang=EN'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @news = JSON.parse(@response)


    @prices_url = 'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,XRP,BCH,EOS,LTC,ADA,XLM,MIOTA,USDT,TRX&tsyms=USD'
    @prices_uri = URI(@prices_url)
    @prices_response = Net::HTTP.get(@prices_uri)
    @prices = JSON.parse(@prices_response)




  end

  def prices
    require 'net/http'
    require 'json'
    @symbol = params[:sym]

   


    @quote_url = 'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=XRP&tsyms=USD'
    @quote_uri = URI(@quote_url)
    @quote_response = Net::HTTP.get(@quote_uri)
    @quote = JSON.parse(@quote_response)

    end


end
