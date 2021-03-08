defmodule SpellbuffWeb.UsersController do
  use SpellbuffWeb, :controller

  alias Spellbuff.User
  alias Spellbuff.Guardian

  #action_fallback SpellbuffWeb.FallbackController

  def create(conn, params) do
    with {:ok, %User{} = user} <- Spellbuff.create_user(params),
         {:ok, token, _claims} <- Guardian.encode_and_sign(user)do
      conn
      |> put_status(:created)
      |> render("create.json", token: token)
    end
  end

  def update(conn, params) do

  end
end
