User.destroy_all

#Users
user1 = User.create(
email: "thom@gmail.com",
password: "hallo123",
admin: true
)

user2 = User.create(
email: "floris@gmail.com",
password: "hallo123",
admin: false
)

user3 = User.create(
email: "mamdouh@gmail.com",
password: "hallo123",
admin: false,
)

user4 = User.create(
email: "pieter@gmail.com",
password: "hallo123",
admin: false,
)

user5 = User.create(
email: "johan@gmail.com",
password: "hallo123",
admin: false,
)

user6 = User.create(
email: "iris@gmail.com",
password: "hallo123",
admin: false,
)

user7 = User.create(
email: "kees@gmail.com",
password: "hallo123",
admin: false,
)

user8 = User.create(
email: "arno@gmail.com",
password: "hallo123",
admin: true,
)
