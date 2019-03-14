# defmodule Chop do
#   def guess(actual, range) do
#     IO.puts "Is it #{midway(range)} ?"
#     guess(actual, midway(range), range)
#   end

#   defp guess(actual, actual, _) do
#     IO.puts "THE ANSWER: #{actual}"
#   end

#   defp guess(actual, guess, _..upper) when guess < actual do
#     guess(actual, (guess+1)..upper)
#   end

#   defp guess(actual, guess, lower.._) when guess > actual do
#     guess(actual, lower..(guess-1))
#   end

#   defp midway(lower..upper) do
#     lower + div(upper - lower, 2)
#   end
# end

defmodule Chop do
  def guess(actual, range = min..max) do
    guess = div(min + max, 2)
    IO.puts "Is it #{guess}?"
    guess(actual, guess, range)
  end

  defp guess(actual, actual, _), do: IO.puts "Yes, it's #{actual}"
  defp guess(actual, guess, _..max) when guess < actual, do: guess(actual, guess+1..max)
  defp guess(actual, guess, min.._) when guess > actual, do: guess(actual, min..guess-1)
end

Chop.guess(273, 1..1000)

# Is it 500 ?
# Is it 250 ?
# Is it 375 ?
# Is it 312 ?
# Is it 281 ?
# Is it 265 ?
# Is it 273 ?
# THE ANSWER: 273
