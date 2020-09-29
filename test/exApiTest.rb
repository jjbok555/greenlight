#class ExApiTestController < ApplcationController
   # def externalApiTEst?
    #  url= 'https://jsonplaceholder.typicode.com/todos/1';
   #   response = RestClient::Request.execute :method =>'GET', :url => url
  #    logger.info(response);
 #   end
#end

uri = URI('https://jsonplaceholder.typicode.com/todos/1')
http = Net::HTTP.new(uri.host, uri.port)
http.use_ssl = true

request = Net::HTTP::get.new(uri.path, {'Content-Type' => 'application/json'})

request.body = {} # SOME JSON DATA e.g {msg: 'Why'}.to_json

response = http.request(request)

body = JSON.parse(response.body) # e.g {answer: 'because it was there'}

console.log(body);
puts body;