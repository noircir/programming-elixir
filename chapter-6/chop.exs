defmodule Chop do
  def guess(actual, range) do
    IO.puts "Is it #{midway(range)} ?"
    go_guess(actual, midway(range), range)
  end

  defp go_guess(actual, guess, _) when guess == actual do
    IO.puts "THE ANSWER: #{actual}"
  end

  defp go_guess(actual, guess, _..upper) when guess < actual do
    guess(actual, (guess+1)..upper)
  end

  defp go_guess(actual, guess, lower.._) when guess > actual do
    guess(actual, lower..(guess-1))
  end

  defp midway(lower..upper) do
    lower + div(upper - lower, 2)
  end
end

# iex(4)> Chop.guess(273, 1..1000)
# Is it 500 ?
# Is it 250 ?
# Is it 375 ?
# Is it 312 ?
# Is it 281 ?
# Is it 265 ?
# Is it 273 ?
# THE ANSWER: 273
