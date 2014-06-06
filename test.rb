
  class MessageCatcher
    def caught?
      true
    end
  end

  def test_methods_can_be_called_directly
    mc = MessageCatcher.new

    assert mc.caught?
  end

  def test_methods_can_be_invoked_by_sending_the_message
    mc = MessageCatcher.new

    assert mc.send(:caught?)
  end

  def test_methods_can_be_invoked_more_dynamically
    mc = MessageCatcher.new

    p mc.send("caught?")
    p mc.send("caught" + "?" )    # What do you need to add to the first string?
    p mc.send("CAUGHT?" )      # What would you need to do to the string?
  end

test_methods_can_be_invoked_more_dynamically



=begin

  class Dog
  end

  fido = Dog.new
  def fido.wag
    :fidos_wag
  end
  p fido.wag

=begin

  class Dog
  end

p Dog.is_a?(Object)

  def test_objects_have_methods
    fido = Dog.new
    p fido.methods.size
  end

test_objects_have_methods

  def test_classes_have_methods
    p Dog.methods.size
  end

test_classes_have_methods

=begin



class AboutScope < Neo::Koan
  module Jims
    class Dog
      def identify
        :jims_dog
      end
    end
  end

  module Joes
    class Dog
      def identify
        :joes_dog
      end
    end
  end

  def test_dog_is_not_available_in_the_current_scope
    assert_raise(NameError) do
      Dog.new
    end
  end


p Jims.constants
p Object.constants.size > _n_

end




=begin


  class String
  end


p  String
p  ::String
p  "HI".class
p  String == "HI".class
p  ::String == "HI".class
p  ::String == String


=begin

p (1..5).map{ rand(6) +1 }



=begin


  attr_reader :values
  # NOTE: Here, continuing from the previous module about_classes.rb,
  # I set an attr_reader.
  # attr_reader / attr_accessor is always a symbol.

  # roll(x) is the only function to be defined.
  # it takes in the number of dice to be rolled,
  # and assigns a random value (from 1 - 6) to each die.
  def roll(x)
    @values = (1..x).map{ rand(6) + 1 }
  end
  # NOTE: An @ before a value is an instance variable.
  # "values" is the instance variable, and it becomes an array during the roll()
  # function, since it is not typed initially.

end






=begin



  class Dog
    def bark
      "WOOF"
    end
  end

  def test_as_defined_dogs_do_bark
    fido = Dog.new
    p fido
    p fido.bark
  end

test_as_defined_dogs_do_bark

=begin




  class Dog7
    attr_reader :name

    def initialize(initial_name)
      @name = initial_name
    end

    def get_self
      self
    end

    def to_s
      @name
    end

    def inspect
      "<Dog named '#{name}'>"
    end
  end

  def test_inside_a_method_self_refers_to_the_containing_object
    fido = Dog7.new("Fido")

    fidos_self = fido.get_self
  end



  def test_to_s_provides_a_string_version_of_the_object
    fido = Dog7.new("Fido")
    assert_equal __, fido.to_s
  end

  def test_to_s_is_used_in_string_interpolation
    fido = Dog7.new("Fido")
    assert_equal __, "My dog is #{fido}"
  end

  def test_inspect_provides_a_more_complete_string_version
    fido = Dog7.new("Fido")
    assert_equal __, fido.inspect
  end

  def test_all_objects_support_to_s_and_inspect
    array = [1,2,3]

    p array.to_s
    p array.inspect

    p "STRING".to_s
    p "STRING".inspect
  end

test_all_objects_support_to_s_and_inspect



=begin




  def file_sandwich(file_name)
    file = open(file_name)
    yield(file)
  ensure
    file.close if file
  end



 def find_line2(file_name)
    # Rewrite find_line using the file_sandwich library function.
    file_sandwich(file_name) do |file|
      while line = file.gets
        print line
        return line if line.match(/e/)
      end
    end

  end

  def test_finding_lines2
    p find_line2("example_file.txt")
  end

test_finding_lines2



=begin


def triangle(a, b, c)

    sides = [a, b, c].sort
    return :false if sides[0] <= 0 or sides[0] + sides[1] <= sides[2]
    case sides.uniq.size
    when 1
        :equilateral
    when 2
        :isosceles
    else
        :scalene
    end

end

=begin
p triangle(2, 2, 2)
p triangle(10, 10, 10)

p triangle(3, 4, 4)
p triangle(4, 3, 4)
p triangle(4, 4, 3)
p triangle(10, 10, 2)

p triangle(3, 4, 5)
p triangle(10, 11, 12)
p triangle(5, 4, 2)




=begin

 def test_times_statement
    sum = 0
    10.times do
      p sum += 1
    end
    sum
  end

test_times_statement

=begin

  def test_break_statement_returns_values
    i = 1
    result = while i <= 10
      break i if i % 2 == 0
      i += 1
    end

     result
  end

p test_break_statement_returns_values


=begin


  def test_break_statement
    i = 1
    result = 1
    while true
      break unless i <= 10
      p result = result * i
      i += 1
    end
    result
  end

p test_break_statement

=begin

  def test_while_statement
    i = 1
    result = 1
    while i <= 10
      result = result * i
      i += 1
    end
    p result
  end

test_while_statement




  class Animal
    LEGS = 4
    def legs_in_animal
      LEGS
    end

    class NestedAnimal
      def legs_in_nested_animal
        LEGS
      end
    end
  end

  def test_nested_classes_inherit_constants_from_enclosing_classes
    Animal::NestedAnimal.new.legs_in_nested_animal
  end

p test_nested_classes_inherit_constants_from_enclosing_classes


=begin




C = "top level"
class AboutConstants
  C = "nested"

  def test_nested_constants_may_also_be_referenced_with_relative_paths
    C
  end

  def test_top_level_constants_are_referenced_by_double_colons
    ::C
  end
end

xxx = AboutConstants.new
p xxx.test_nested_constants_may_also_be_referenced_with_relative_paths
p xxx.test_top_level_constants_are_referenced_by_double_colons
p xxx.C

=begin

xxx = AboutConstants.new
p xxx.test_nested_constants_may_also_be_referenced_with_relative_paths
uuu = AboutConstants.new
p uuu.test_top_level_constants_are_referenced_by_double_colons


=begin



  def my_private_method
    "a secret"
  end
  private :my_private_method

  def test_calling_private_methods_without_receiver
    p my_private_method
  end

  def test_calling_private_methods_with_an_explicit_receiver
    exception = assert_raise(___) do
      self.my_private_method
    end
    assert_match /__/, exception.message
  end

test_calling_private_methods_without_receiver


=begin


  def m2
    p mrth1(3,4)
  end

  def m3
    def mrth1(a, b)
        a * b
    end
    p self.mrth1(3,4)
  end


# p mrth1(3,4)
# p m2
m3




=begin


  def method_with_var_args(*args)
    args
  end

  def test_calling_with_variable_arguments
    assert_equal Args, method_with_var_args.class
    assert_equal __, method_with_var_args
    assert_equal __, method_with_var_args(:one)
    assert_equal __, method_with_var_args(:one, :two)
  end

p method_with_var_args.class

=begin

  def method_with_defaults(a, b=:default_value)
    p [a, b]
  end

aa =1
bb =1

p method_with_defaults(aa, bb=:default_value)



=begin

p "one to to two-three".sub(/(t\w)/) { $1[0, 1] }

p "one to to two-three".gsub(/(t\w*)/) { $1[0, 1] }

=begin

p "one two--p_==r=!@#$&-three".scan(/\w+/)


    grays = /(James|Dana|Summer) Gray/
p  "Jim Gray"[grays, 1]



p "bovine vines"[/\bvine./]
p "bovine vines"[/vine./]

p "bovine vines"[/\bvi./]
p "bovine vines"[/vi    grays = /(James|Dana|Summer) Gray/
    assert_equal "James Gray", "James Gray"[grays]
    assert_equal "Summer", "Summer Gray"[grays, 1]
    assert_equal "Gray", "Jim Gray"[grays, 1]./]


=begin
p "bovine vines"[/\bv./]
p "bovine vines"[/v./]

p "bovine vines"[/\b./]
p "bovine vines"[/./]

=begin

p "bovine vines"[/\bvine./]
p "bovine vines"[/vine./]

p "bovine vines"[/vine./]
p "bovine vines"[/v./]
p "bovine vines"[/./]

=begin

p "num 42\n2222 lines"[/^\d+/]
p "12"[/^\d+/]
p "a \n12"[/^\d+/]



=begin

p "startr end"[/\Astart/]
p "start end"[/\Aend/]


=begin

p "the number is 42"[/\d+/]
p "the number is 42"[/\D+/]
p "the number is 42"[/[^0-9]+/]

=begin

p "variable_1 = 42"[/\w/]
p "variable_1 = 42"[/\w./]
p "variable_1 = 42"[/\w.*/]
p "variable_1 = 42"[/\w+/]
p "variable_1 = 42"[/\w*/]
p "variable_1 = 42"[/\w?/]

=begin
p "variable_1 = 42"[/[a-zA-Z0-9_]+/]
p  "space: \t\n"[/\s+/]


p "the number is 42"[/\d+/]





p "abbccc a"[/az/]
p "abbccc a"[/az*/]
p "abbccc a"[/az?/]
p "abbccc a"[/az+/]
=begin
p   "abbcccddddeeeee"[/a.*/]




p   "abbcccddddeeeee"[/ab?/]
p   "abbcccddddeeeee"[/ab*/]


p   "abbcccddddeeeee"[/bc?/]
p   "abbcccddddeeeee"[/bc*/]

# p   "abbcccddddeeeee"[/ac?/]
# p   "abbcccddddeeeee"[/ac*/]

p   "abbcccddddeeeee"[/az?/]
p   "abbcccddddeeeee"[/az*/]

=begin

p   symbol = :cats
p   string = "It is raining #{symbol} and dogs."
p   string = "#{symbol}"

p    "It is raining cats and dogs."


=begin


symbol1 = :"cats and dogs"
p symbol1

symbol2 = "cats and dogs"
p symbol2.to_sym



=begin

p Symbol.all_symbols.map { |x| x.to_s }


symbols_as_strings = Symbol.all_symbols.map { |x| x.to_s }
p symbols_as_strings.include?("test_method_names_become_symbols")


=begin

 symbol1 = :a_symbol
    symbol2 = :a_symbol

p symbol1
p symbol2
p symbol1.object_id
p symbol2.object_id

p symbol1           == symbol2
p symbol1.object_id == symbol2.object_id



=begin

    string = "the:rain:in:spain"
    words = string.split(/:/)
    # assert_equal ["the", "rain", "in", "spain"], words
p %w(the rain in spain)
p %w[the rain in spain]
p %w{the rain in spain}
p words

=begin

 p ?a

p ?a == 97

=begin

    string = "Bacon, lettuce and tomato"
 p  string[7..10]

=begin
 p  string = "The square root of 5 is #{Math.sqrt(5)}"

    string = '\''
p  string.size
p  string

=begin

    long_string = %{
It was the best of times,
It was the worst of times.
}
p long_string.length
p long_string.lines.count
p long_string[0,2]

    long_string = <<EOS
It was the best of times,
It was the worst of times.
EOS
p long_string.length
p long_string.lines.count
p long_string[0,1]


=begin
    a = "He said, \"Don't\""
    b = 'He said, "Don\'t"'
p a
p b

=begin

a =1
p is_a?(1)



=begin

    hash = Hash.new {|hash, key| hash[key] = [] }

    hash[:one] << "uno"
    hash[:two] << "dos"

p hash
p hash[:one]
p hash[:two]
p hash[:three]


=begin
    hash = Hash.new([])

    hash[:one] << "uno"
    hash[:two] << "dos"

p hash
p hash[1]
p hash[:one]
p hash[:two]
p hash[:three]

=begin

  hash = { :one => "uno", :two => "dos" }
p hash.keys
p hash.keys.include?(:one)
p hash.keys.include?(:two)
p hash.keys.class

=begin

    hash = { :one => "uno", :two => "dos" }
    hash[:one] = "eins"
p hash


    array = [:peanut, :butter, :and, :jelly]

 p array[2..-2]
 p array[2..-1]
 p array[2..0]
 p array[2..1]
 p array[2..2]
 p array[2..3]


p (1..5).class


array = [:peanut, :butter, :and, :jelly]

p array[1,3]
p array[2,20]
p array[4,0]
p array[4,100]
p array[5,0]


    obj = Object.new
    copy = obj.clone

p obj           != copy
p obj.object_id != copy.object_id



p nil.inspect

obj = Object.new
p obj
p obj.object_id
p obj.object_id.class

p 0.object_id
p 1.object_id
p 2.object_id
p 3.object_id
p 100.object_id

=end

