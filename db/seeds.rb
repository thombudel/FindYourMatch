User.destroy_all

#Users
user1 = User.create(
name: "Thom",
email: "thom@gmail.com",
password: "hallo123",
admin: true
)

user2 = User.create(
name: "Floris",
email: "floris@gmail.com",
password: "hallo123",
admin: false
)

user3 = User.create(
name: "Mamdouh",
email: "mamdouh@gmail.com",
password: "hallo123",
admin: false,
)

user4 = User.create(
name: "Pieter",
email: "pieter@gmail.com",
password: "hallo123",
admin: false,
)

user5 = User.create(
name: "Johan",
email: "johan@gmail.com",
password: "hallo123",
admin: false,
)

user6 = User.create(
name: "Iris",
email: "iris@gmail.com",
password: "hallo123",
admin: false,
)

user7 = User.create(
name: "Kees",
email: "kees@gmail.com",
password: "hallo123",
admin: false,
)

user8 = User.create(
name: "Arno",
email: "arno@gmail.com",
password: "hallo123",
admin: true,
)

#Matches
match1 = Match.create!(
date: "2017-04-10",
student_1: user5,
student_2: user6,
)

match2 = Match.create!(
date: "2017-04-10",
student_1: user2,
student_2: user3,
)

match3 = Match.create!(
date: "2017-04-10",
student_1: user7,
student_2: user4,
)

match4 = Match.create!(
date: "2017-04-11",
student_1: user2,
student_2: user6,
)

match5 = Match.create!(
date: "2017-04-11",
student_1: user5,
student_2: user4,
)

match6 = Match.create!(
date: "2017-04-11",
student_1: user7,
student_2: user3,
)

match7 = Match.create!(
date: "2017-04-22",
student_1: user7,
student_2: user3,
)
