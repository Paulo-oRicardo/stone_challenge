defmodule Dictionary do
  defstruct person: Person

  def divide(people) do
    cond do
     length(people) == 0 -> {:error, "Insira um cliente"}
      true ->
        count = Enum.count(people)
        share = Lists.final_price()/count
        _share = Enum.map(people, fn person -> %Person{ person | amountToPay: share} end)

    end
  end
end
