```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def method_missing(method_name, *args, &block)
    # Handle method calls dynamically
    puts "Method '#{method_name}' called with args: #{args.inspect}"
  end

end

object = MyClass.new(10)
object.non_existent_method(1, 2, 3) # This will work, but it may mask other errors
```