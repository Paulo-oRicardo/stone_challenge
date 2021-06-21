defmodule DesafioStone do
  def exec do
    people = [
      %Person{email: "email@gmail.com"},
      %Person{email: "email2@gmail.com"},
      %Person{email: "email3@gmail.com"}
    ]
    lists = Lists.search_completed_list()
    map = Dictionary.divide(people)
  [lists, map]
  end

end
