# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Budgie.Repo.insert!(%Budgie.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Budgie.Accounts

names = [
  "Admin",
  "User-1"
]

pw = "SuperSecret1"

for name <- names do
  email = (name |> String.downcase()) <> "@budgie.me"

  Accounts.register_user(%{
    email: email,
    name: String.downcase(name),
    password: pw,
    password_confirmation: pw
  })
end
