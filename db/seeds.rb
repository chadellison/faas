method1 = "class MyClass; def hello; puts 'hi'; 'yay this is our func'; end; end; MyClass.new.hello"
method2 = "HTTParty.get('https://robohash.org/123')"
method3 = 'Faker::Name.name'

[method1, method2, method3].each do |method|
  Function.create(method: method)
end
