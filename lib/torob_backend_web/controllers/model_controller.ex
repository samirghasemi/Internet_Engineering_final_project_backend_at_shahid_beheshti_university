defmodule TorobBackendWeb.ModelController do
  use TorobBackendWeb, :controller

  alias TorobBackend.Stores
  alias TorobBackend.Stores.Model

  action_fallback TorobBackendWeb.FallbackController

  def index(conn, _params) do
    models = Stores.list_models()
    render(conn, "index.json", models: models)
  end

  def create(conn, %{"model" => model_params}) do
    with {:ok, %Model{} = model} <- Stores.create_model(model_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", Routes.model_path(conn, :show, model))
      |> render("show.json", model: model)
    end
  end

  def show(conn, %{"id" => id}) do
    model = Stores.get_model!(id)
    render(conn, "show.json", model: model)
  end

  def update(conn, %{"id" => id, "model" => model_params}) do
    model = Stores.get_model!(id)

    with {:ok, %Model{} = model} <- Stores.update_model(model, model_params) do
      render(conn, "show.json", model: model)
    end
  end

  def delete(conn, %{"id" => id}) do
    model = Stores.get_model!(id)

    with {:ok, %Model{}} <- Stores.delete_model(model) do
      send_resp(conn, :no_content, "")
    end
  end
end