# frozen_string_literal: true

puts "Seeding sample data..."
Task.destroy_all
List.destroy_all

list = List.create!(title: "Teacher real", description: "I country much since sure. International network one keep reality race opportunity.")
list.tasks.create!(title: "Role six who table", description: "Effort thing bad hospital through next area leave.", completed: true, priority: "low")
list.tasks.create!(title: "New available like", description: "Hold movie knowledge seek cold there cup.", completed: true, priority: "low")
list.tasks.create!(title: "Goal physical ten charge", description: "Customer say travel cut hour medical.", completed: false, priority: "low")

list = List.create!(title: "Experience bill", description: "Second series perhaps.")
list.tasks.create!(title: "Down begin", description: "Join Democrat share apply difference meet.", completed: false, priority: "medium")
list.tasks.create!(title: "Action maintain agreement smile event", description: "Difference education down our list eight only.", completed: true, priority: "low")
list.tasks.create!(title: "Culture miss", description: "Where despite nature we within.", completed: true, priority: "low")
list.tasks.create!(title: "Know food my throughout", description: "Generation along appear people everybody attention.", completed: false, priority: "medium")

list = List.create!(title: "Wish tree", description: "Result down give town.")
list.tasks.create!(title: "Ever fast forget series", description: "Wish different together station training data.", completed: true, priority: "medium")
list.tasks.create!(title: "Catch almost today size", description: "Goal whom our include key.", completed: true, priority: "medium")
list.tasks.create!(title: "Father cell", description: "Whom campaign structure travel human safe.", completed: true, priority: "low")
list.tasks.create!(title: "Cultural hot include effect", description: "Light probably often suffer another over anything.", completed: true, priority: "low")
list.tasks.create!(title: "Write bill father national", description: "Own term reason arm couple.", completed: true, priority: "high")
list.tasks.create!(title: "Law wall spend", description: "Worry still pass.", completed: false, priority: "medium")
list.tasks.create!(title: "Success head wait", description: "A pressure read same where mother.", completed: false, priority: "low")

list = List.create!(title: "Clearly pass which his", description: "Never cost national bar dark drop wish. Force attorney condition I why fine especially seem.")
list.tasks.create!(title: "Include act west write", description: "Record friend teacher traditional star.", completed: false, priority: "medium")
list.tasks.create!(title: "Feeling cultural", description: "Church not high almost drug inside property experience.", completed: true, priority: "medium")
list.tasks.create!(title: "Heavy good author", description: "Spend event expect assume present local save.", completed: false, priority: "high")
list.tasks.create!(title: "Particularly their story trade", description: "Care game light call leg deep article.", completed: false, priority: "medium")

list = List.create!(title: "Forget test wrong", description: "Reach nothing institution behind low half. Film center again.")
list.tasks.create!(title: "Step good", description: "Around job network could season wind television.", completed: false, priority: "medium")
list.tasks.create!(title: "Sound where from", description: "Pull production rate matter consumer.", completed: false, priority: "high")
list.tasks.create!(title: "Budget amount option hard situation", description: "Seat almost effect position.", completed: false, priority: "medium")

puts "Seeding complete!"