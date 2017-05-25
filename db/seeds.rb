# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create([
    { username: "lenin",
      password: "password"
    },
]);

Note.create([
    { title: "The dog ate it.",
      content: "I hope it doesnt die. I should take him to the vet.",
      starred: false,
      archived: false,
      user_id: 1
    },
    { title: "The cat ate it.",
      content: "I hope he it dies. Life would be much better.",
      starred: false,
      archived: false,
      user_id: 1
    }
]);
