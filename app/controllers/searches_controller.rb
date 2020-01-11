class SearchesController < ApplicationController
  def search
  end

  def foursquare
    @resp = Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
      req.params['client_id'] = '2GU1DYZ5K5PZD1OG2OVGT24B4D2OQYWEJAQF3QE4QCOSBCS0'
      req.params['client_secret'] = '5IN4QC15GHSI5GQ45F121MUAA140OXG4S31DINBXJQXLJQYA'
      req.params['v'] = '20160201'
      req.params['near'] = params[:zipcode]
      req.params['query'] = 'coffee shop'
    end
    body = JSON.parse(@resp.body)
   if @resp.success?
     @venues = body["response"]["venues"]
   else
     @error = body["meta"]["errorDetail"]
   end

   render 'search'
 end
end
