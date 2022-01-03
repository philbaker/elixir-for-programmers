defmodule B2Web.Router do
  use B2Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {B2Web.LayoutView, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/hangman", B2Web do
    pipe_through :browser

    get "/", HangmanController, :index
    post "/", HangmanController, :new
    put "/", HangmanController, :update
  end

  # Other scopes may use custom stacks.
  # scope "/api", B2Web do
  #   pipe_through :api
  # end
end
