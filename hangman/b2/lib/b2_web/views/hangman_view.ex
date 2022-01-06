defmodule B2Web.HangmanView do
  use B2Web, :view

  def continue_or_try_again(conn, status) when status in [ :won, :lost ] do
    button("Try again", to: Routes.hangman_path(conn, :new))
  end

  def continue_or_try_again(conn, _) do
    form_for(conn, Routes.hangman_path(conn, :update), [ as: "make_move", method: :put ], fn f->
      [
        text_input(f, :guess),
        submit("Make a guess"),
      ]
    end)
  end 

  @status_fields %{
    initializing: { "status-initializing", "Guess the word, one letter at a time" },
    good_guess: { "status-good-guess", "Good guess!" },
    bad_guess: { "status-bad-guess", "Sorry, that's a bad guess" },
    won: { "status-won", "You won!" },
    lost: { "status-lost", "Sorry, you lost" },
    already_used: { "status-already-used", "You already used that letter" }
  }

  def move_status(status) do
    { class, msg } = @status_fields[status]
    "<div class='status #{class}'>#{msg}</div>"
  end

  defdelegate figure_for(turns_left), to: B2Web.HangmanView.Helpers.FigureFor
end
