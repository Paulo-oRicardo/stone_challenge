defmodule Lists do
  @lists "lists.txt"

  defstruct itenName: nil, amount: nil, pricePer: nil, totalItens: 0

  def new_iten(itenName, amount, pricePer) do
    list = %__MODULE__{itenName: itenName, amount: amount, pricePer: pricePer}
    cond do
      search_list() == nil ->
        totalItens =  [%Lists{list | totalItens: list.amount * list.pricePer}]
        |> :erlang.term_to_binary()
        write_file(totalItens)
        true->
        totalItens = [%Lists{list | totalItens: list.amount * list.pricePer}] ++ search_list()
        |> :erlang.term_to_binary()
        write_file(totalItens)
    end
  end

  def write_file(total_itens) do
    File.write(@lists, total_itens)
    search_completed_list()
  end

  def search_list do
    cond do
      File.read(@lists) == {:ok, ""} -> nil
      true ->
      {:ok, list} = File.read(@lists)
       :erlang.binary_to_term(list)
    end
  end

  def search_completed_list do
    search_list() ++ "O valor total do pediddo: R$#{final_price()}"
  end

  def final_price() do
    lista = Enum.map(search_list(), fn l -> l.totalItens end)
    _result = Enum.sum(lista)
  end
end
