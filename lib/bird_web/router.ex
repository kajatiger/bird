defmodule BirdWeb.Router do
  use BirdWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", BirdWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/bird", BirdController, :index
    get "/bird/:messenger", BirdController, :show
  end

  # Other scopes may use custom stacks.
  # scope "/api", BirdWeb do
  #   pipe_through :api
  # end
end
