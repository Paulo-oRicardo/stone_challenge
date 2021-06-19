defmodule Dictionary do
  defstruct person: Person, valueList: Lists

  def divide(people, valueList) do
    count = Enum.count(people)
    _share =  valueList / count
  end
end
