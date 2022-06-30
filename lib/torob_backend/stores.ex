defmodule TorobBackend.Stores do
  @moduledoc """
  The Stores context.
  """

  import Ecto.Query, warn: false
  alias TorobBackend.Repo

  alias TorobBackend.Stores.Shop

  @doc """
  Returns the list of shops.

  ## Examples

      iex> list_shops()
      [%Shop{}, ...]

  """
  def list_shops do
    Repo.all(Shop)
  end

  @doc """
  Gets a single shop.

  Raises `Ecto.NoResultsError` if the Shop does not exist.

  ## Examples

      iex> get_shop!(123)
      %Shop{}

      iex> get_shop!(456)
      ** (Ecto.NoResultsError)

  """
  def get_shop!(id), do: Repo.get!(Shop, id)
  def get_shop(id), do: Repo.get(Shop, id)

  @doc """
  Creates a shop.

  ## Examples

      iex> create_shop(%{field: value})
      {:ok, %Shop{}}

      iex> create_shop(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_shop(attrs \\ %{}) do
    %Shop{}
    |> Shop.changeset(attrs)
    |> Repo.insert()
  end
  def create_shop2(attrs \\ %{},maybe_user) do
    maybe_user
    |> Ecto.build_assoc(:shops)
    |> Shop.changeset(attrs)
    |> Repo.insert()
  end


  @doc """
  Updates a shop.

  ## Examples

      iex> update_shop(shop, %{field: new_value})
      {:ok, %Shop{}}

      iex> update_shop(shop, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_shop(%Shop{} = shop, attrs) do
    shop
    |> Shop.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a shop.

  ## Examples

      iex> delete_shop(shop)
      {:ok, %Shop{}}

      iex> delete_shop(shop)
      {:error, %Ecto.Changeset{}}

  """
  def delete_shop(%Shop{} = shop) do
    Repo.delete(shop)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking shop changes.

  ## Examples

      iex> change_shop(shop)
      %Ecto.Changeset{data: %Shop{}}

  """
  def change_shop(%Shop{} = shop, attrs \\ %{}) do
    Shop.changeset(shop, attrs)
  end

  alias TorobBackend.Stores.Model

  @doc """
  Returns the list of models.

  ## Examples

      iex> list_models()
      [%Model{}, ...]

  """
  def list_models do
    Repo.all(Model)
  end

  @doc """
  Gets a single model.

  Raises `Ecto.NoResultsError` if the Model does not exist.

  ## Examples

      iex> get_model!(123)
      %Model{}

      iex> get_model!(456)
      ** (Ecto.NoResultsError)

  """
  def get_model!(id), do: Repo.get!(Model, id)

  @doc """
  Creates a model.

  ## Examples

      iex> create_model(%{field: value})
      {:ok, %Model{}}

      iex> create_model(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_model(attrs \\ %{}) do
    %Model{}
    |> Model.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a model.

  ## Examples

      iex> update_model(model, %{field: new_value})
      {:ok, %Model{}}

      iex> update_model(model, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_model(%Model{} = model, attrs) do
    model
    |> Model.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a model.

  ## Examples

      iex> delete_model(model)
      {:ok, %Model{}}

      iex> delete_model(model)
      {:error, %Ecto.Changeset{}}

  """
  def delete_model(%Model{} = model) do
    Repo.delete(model)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking model changes.

  ## Examples

      iex> change_model(model)
      %Ecto.Changeset{data: %Model{}}

  """
  def change_model(%Model{} = model, attrs \\ %{}) do
    Model.changeset(model, attrs)
  end

  alias TorobBackend.Stores.Product

  @doc """
  Returns the list of products.

  ## Examples

      iex> list_products()
      [%Product{}, ...]

  """
  def list_products do
    Repo.all(Product)
  end

  @doc """
  Gets a single product.

  Raises `Ecto.NoResultsError` if the Product does not exist.

  ## Examples

      iex> get_product!(123)
      %Product{}

      iex> get_product!(456)
      ** (Ecto.NoResultsError)

  """
  def get_product!(id), do: Repo.get!(Product, id)

  @doc """
  Creates a product.

  ## Examples

      iex> create_product(%{field: value})
      {:ok, %Product{}}

      iex> create_product(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_product(attrs \\ %{}) do
    %Product{}
    |> Product.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a product.

  ## Examples

      iex> update_product(product, %{field: new_value})
      {:ok, %Product{}}

      iex> update_product(product, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_product(%Product{} = product, attrs) do
    product
    |> Product.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a product.

  ## Examples

      iex> delete_product(product)
      {:ok, %Product{}}

      iex> delete_product(product)
      {:error, %Ecto.Changeset{}}

  """
  def delete_product(%Product{} = product) do
    Repo.delete(product)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking product changes.

  ## Examples

      iex> change_product(product)
      %Ecto.Changeset{data: %Product{}}

  """
  def change_product(%Product{} = product, attrs \\ %{}) do
    Product.changeset(product, attrs)
  end
end