defmodule Dictionary do
  defstruct person: Person

  def divide(people) do
    cond do
     length(people) == 0 -> {:error, "Insira um cliente"}
      true ->
        count = Enum.count(people)
        share = div(Lists.final_price(),count)
        result = Enum.map(people, fn p -> %Person{p | amountToPay: share }end)
          if Lists.final_price() - (share * count) > 0 do
            rest =  Lists.final_price() - (share * count)
            List.replace_at(result, -1, %Person{List.last(result) | amountToPay: List.last(result).amountToPay + rest})
            else
              result
          end
    end
  end
end
