defmodule Spellbuff do
  alias Spellbuff.User.Create, as: UserCreate

  defdelegate create_user(params), to: UserCreate, as: :call
end
