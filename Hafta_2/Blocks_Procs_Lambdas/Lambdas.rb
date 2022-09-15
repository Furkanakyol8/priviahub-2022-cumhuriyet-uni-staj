=begin
    Lambda, bir bloğu ve parametrelerini bazı özel sözdizimleriyle tanımlamanın bir yoludur.
    Bir lambda'yı daha sonra kullanmak üzere bir değişkene kaydedebiliriz.
    "lamba" veya "->" özel ifadeleriyle tanımlanabilirler.
=end

say_something = -> { puts "This is a lambda" }  # '->' ifadesiyle lambdamızı tanımladık.
say_something.call  # => .call methoduyla lambdamızı çağırarak "This is a lambda" çıktısı alacağız.




# genel kullanımda 'call' çağrısı tercih edilse de lambdaları çağırmak için farklı yöntemler de vardır. Bunlar;
my_lambda = -> { puts "Lambda called" }
my_lambda.call
my_lambda.()
my_lambda[]
my_lambda.===




# Lambdalar parametrelere sahip olabilir.
times_two = lambda (x) { x * 2 }
times_two.call(10) # => 20




