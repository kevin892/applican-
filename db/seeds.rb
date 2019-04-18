# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Practice.create(
  question: "What is a class?",
  answer: "A text-book answer: classes are a blue-print for constructing computer models for real or virtual objects... boring.

In reality: classes hold data, have methods that interact with that data, and are used to instantiate objects.

Like this.

class WhatAreClasses
  def initialize
    @data = 'instance data of this object. Hello.'
  end

  def method
    puts @data.gsub('instance', 'altered')
  end
end

object = WhatAreClasses.new
object.method"
)




Practice.create(
  question: "What are blocks and procs?",
  answer: "A block is basically Ruby’s version of a closure—a block of code that can be wrapped up into a proc (a type of function) that can then be stored in a variable or passed to a method and run when desired. Blocks can syntactically be written as blocks of code between { } or the do and end keywords. The standard way to create a proc is depicted in the code block below."
)

Practice.create(
  question: "What are some advantages of using Ruby?",
  answer: "Pure Object-Oriented Language: Everything in Ruby is an object—even methods, classes, and booleans. This greatly simplifies things from the coder’s perspective and opens up a range of possibilities.
Open-Source: Ruby is 100% free and open-source, with a large and enthusiastic community that can be tapped into as a resource.
Metaprogramming: Ruby is widely considered to be one of the best programming languages out there for metaprogramming, or the ability to write code that can act on other code instead of data.
Clean and Simple Syntax: The syntax is simple and concise, which allows developers to solve complex programs with fewer lines of code. It also helps that the code is human readable, and easy to follow."
)
