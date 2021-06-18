defmodule Dictionary do
  defstruct person: Person, valueList: Listen

  def divide(people, valueList) do
    count = Enum.count(people)
    _share =  valueList / count
  end
end
