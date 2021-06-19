defmodule Lists do
  @lists "lists.txt"

  defstruct itenName: nil, amount: nil, pricePer: nil, totalItens: 0

  def new_iten(itenName, amount, pricePer) do
    list = %__MODULE__{itenName: itenName, amount: amount, pricePer: pricePer}
    totalItens =  [%Lists{list | totalItens: list.amount * list.pricePer}] ++ search_list()
    |> :erlang.term_to_binary()
    File.write(@lists, totalItens)
    final_list = [search_list()] ++ "O valor total do pediddo: R$#{final_price()}"
    final_list
    end

  def search_list do
    {:ok, list} = File.read(@lists)
     :erlang.binary_to_term(list)
  end
  def search_completed_list do
    search_list() ++ "O valor total do pediddo: R$#{final_price()}"
  end

  def final_price() do
    lista = Enum.map(search_list(), fn l -> l.totalItens end)
    result = Enum.sum(lista)
    result

  end
end
