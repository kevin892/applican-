# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Note.destroy_all
JobTracker.destroy_all
Practice.destroy_all
Resume.destroy_all
User.destroy_all

Practice.create(
  question: "Explain what is class libraries in Ruby?",
  answer: "Class libraries in Ruby consist of a variety of domains, such as data types, thread programming, various domains, etc.")

Practice.create(
  question: "What are blocks and procs?",
  answer: "A block is basically Ruby’s version of a closure—a block of code that can be wrapped up into a proc (a type of function) that can then be stored in a variable or passed to a method and run when desired. Blocks can syntactically be written as blocks of code between { } or the do and end keywords. The standard way to create a proc is depicted in the code block below."
)

Practice.create(
  question: "Explain what is “Yield” in Ruby on Rails?",
  answer: "A Ruby method that receives a code block invokes it by calling it with the 'Yield'."
)
Practice.create(
  question: "Explain what is ORM (Object-Relationship-Model) in Rails?",
  answer: "ORM or Object Relationship Model in Rails indicate that your classes are mapped to the table in the database, and objects are directly mapped to the rows in the table."
)
Practice.create(
  question: "What is the difference between false and nil in Ruby?",
  answer: "In Ruby False indicates a Boolean datatype, while Nil is not a data type, it have an object_id 4."
)
Practice.create(
  question: "What is Rails Migration?",
  answer: "Rails Migration enables Ruby to make changes to the database schema, making it possible to use a version control system to leave things synchronized with the actual code."
)
Practice.create(
  question: " Explain what is rake in Rails?",
  answer: "Rake is a Ruby Make; it is a Ruby utility that substitutes the Unix utility ‘make’, and uses a ‘Rakefile’ and ‘.rake files’ to build up a list of tasks. In Rails, Rake is used for normal administration tasks like migrating the database through scripts, loading a schema into the database, etc."
)

Practice.create(
  question: "Explain how you can list all routes for an application?",
  answer: "To list out all routes for an application you can write rake routes in the terminal."
)

Practice.create(
  question: "Explain how can we define Ruby regular expressions?",
  answer: "Ruby regular expression is a special sequence of characters that helps you match or find other strings. A regular expression literal is a pattern between arbitrary delimiters or slashes followed by %r."
)

Practice.create(
  question: "Explain what is Interpolation in Ruby?",
  answer: "Ruby Interpolation is the process of inserting a string into a literal.  By placing a Hash (#) within {} open and close brackets, one can interpolate a string into the literal."
)
