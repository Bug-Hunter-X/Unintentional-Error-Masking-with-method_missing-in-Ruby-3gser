```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def method_missing(method_name, *args, &block)
    # Check if method_name is a valid candidate for dynamic handling
    # If not, raise a NoMethodError to prevent masking other errors
    raise NoMethodError, "Undefined method '#{method_name}' for #{self.class}" unless method_name.to_s.start_with?('dynamic')
    puts "Method '#{method_name}' called with args: #{args.inspect}"
  end
end

object = MyClass.new(10)
#object.non_existent_method(1, 2, 3) # This will now raise a NoMethodError
object.dynamic_method(1,2,3) #This will print to console
```