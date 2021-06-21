defmodule Person do
  defstruct email: nil, amountToPay: 0
  def new_person(email) do
    %__MODULE__{email: email}

  end
end
