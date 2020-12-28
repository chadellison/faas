method1 = "class MyClass; def hello; puts 'hi'; 'yay this is our func'; end; end; MyClass.new.hello"
method2 = "HTTParty.get('https://robohash.org/123')"
method3 = "Faker::Name.name"
method4 = 'def runSomeQuery(params); "the username is #{params[:username]} and the password is #{params[:password]} and some other dynamic args #{params[:dynamic]}"; end; runSomeQuery(params)'

[method1, method2, method3, method4].each_with_index do |method, i|
  Function.create(method: method, guid: (i + 1).to_s)
end
