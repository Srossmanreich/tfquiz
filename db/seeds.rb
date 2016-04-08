# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Environment variables (ENV['...']) can be set in the file .env file.

topic_names = ['inheritance', 'databases / AR', 'hashes', 'complexity', 'general']
topics = topic_names.map{ |tn| Topic.create!(name: tn, domain: 'coding') }
inheritance = topics[0]
databases = topics[1]
hashes = topics[2]
complexity = topics[3]
general = topics[4]


qs =
[
  {
    topic: inheritance,
    t: "You should only use A > B inheritance when it's reasonable to say 'A is a B.'",
    f: "You should only use A > B inheritance when it's reasonable to say 'A has a B.'"
  },
  { 
    topic: databases,
    t: "The purpose of belongs_to and has_many is to set up some methods, just like attr_accessor",
    f: "The purpose of belongs_to and has_many do is to set up the association"
  },
  { 
    topic: databases,
    t: "If A has_many B, the foreign key goes into B.",
    f: "If A has_many B, the foreign key goes into A."
  },
  { 
    topic: hashes,
    t: "Trying to access a hash with a non-existing key returns nil.",
    f: "Trying to access a hash with a non-existing key raises an error."
  },
  { 
    topic: databases,
    t: "Good database design reduces the need to add table columns.",
    f: "Good database design reduces the need to add table rows."
  },
  { 
    topic: databases,
    t: "The start of a migration file name is the snake case version of the class declared in the migration.",
    f: "The start of a migration file name is the camel case version of the class declared in the migration."
  },
  { 
    topic: databases,
    t: "A primary key is optional for join tables",
    f: "A primary key is required for all tables"
  },
  { 
    topic: inheritance,
    t: "super yields up the inheritance lookup chain.",
    f: "super yields down the inheritance lookup chain."
  },
  { 
    topic: databases,
    t: "In a one-one association, it doesn't matter in which table you put the foreign key.",
    f: "In a one-one association, there is a method for correctly deciding in which table to put the foreign key."
  },
  { 
    topic: inheritance,
    t: "A module is a reusable bag of behaviors.",
    f: "A module is a reusable bag of objects."
  },
  { 
    topic: inheritance,
    t: "The purpose of inheritance is modeling systems.",
    f: "The purpose of inheritance is sharing code."
  },
  { 
    topic: inheritance,
    t: "The ability to share code is a side effect of inheritance.",
    f: "The ability to share code is the main purpose of inheritance."
  },
  { 
    topic: complexity,
    t: "Linear search runs in O(n)",
    f: "Linear search runs in O(log n)"
  },
  { 
    topic: hashes,
    t: "{id: 5, first_name: 'John'} == {:id => 5, :first_name => 'John'}",
    f: "{'id' => 5, 'first_name' => 'John'} == {:id => 5, :first_name => 'John'}"
  },
  { 
    topic: databases,
    t: "Foreign keys have names like client_id",
    f: "Foreign keys have names like id_client"
  },
  { 
    topic: databases,
    t: "has_and_belongs_to_many has been deprecated and you should not be used to express many-many associations",
    f: "has_and_belongs_to_many is another perfectly valid way to express many-many associations"
  },
  { 
    topic: databases,
    t: "Primary keys have names like id",
    f: "Foreign keys have names like id"
  },
  { 
    topic: databases,
    t: "There are three ways of relating models/tables: one-one, one-many, many-many",
    f: "There are three ways of relating models/tables: one-one, one-many, many-one"
  },
  { 
    topic: databases,
    t: "In a Rails/Sinatra app, there are three places to validate: database level, model, client side.",
    f: "In a Rails/Sinatra app, there are two places to validate: database level, model."
  },
  { 
    topic: complexity,
    t: "Binary search runs in O(log n)",
    f: "Binary search runs in O(n)"
  },
  { 
    topic: general,
    t: "Premature optimization is the root of all evil.",
    f: "We should always try to optimize our code for future needs."
  }  
]

qs.each{ |q| Question.create(q) }