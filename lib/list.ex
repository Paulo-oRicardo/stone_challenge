defmodule Listen do
  defstruct itenName: nil, amount: nil, pricePer: nil
  def newList(itenName, amount, pricePer) do
    %__MODULE__{itenName: itenName, amount: amount, pricePer: pricePer}
  end

  def finalPrice(lists) do
    result = Enum.map(lists, fn list -> list.amount * list.pricePer end)

    resultado = Enum.sum(result)
    [result, "O valor final é de: R$#{resultado}"]
  end
end
