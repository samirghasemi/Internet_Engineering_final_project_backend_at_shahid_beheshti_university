
defmodule TorobBackendWeb.UserView do
  use TorobBackendWeb, :view
  alias TorobBackendWeb.UserView

  def render("index.json", %{users: users}) do
    %{data: render_many(users, UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{
      id: user.id,
      username: user.username,
      email: user.email,
      avatar: user.avatar
    }
  end
  def render("jwt.json", %{jwt: jwt}) do
    %{jwt: jwt}
  end
end
