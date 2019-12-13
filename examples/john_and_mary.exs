defmodule Person do
  def ask(who, to, what) do
    "#{who.name} asks #{to.name}:\n  - #{what}?"
  end

  def answer(who, to, what) do
    "#{who.name} answers #{to.name}:\n  - #{what}."
  end

  def say(who, to, what) do
    "#{who.name} says to #{to.name}:\n  - #{what}"
  end
end

john = %{name: "John"}
mary = %{name: "Mary"}

Person.ask(john, mary, "What's you name")
|> IO.puts()

Person.answer(mary, john, "My name is #{mary.name}")
|> IO.puts()

Person.ask(mary, john, "And what's you name")
|> IO.puts()

Person.answer(john, mary, "My name is #{john.name}")
|> IO.puts()

Person.say(mary, john, "Nice to meet you, #{john.name}!")
|> IO.puts()

Person.say(john, mary, "Nice to meet you, #{mary.name}!")
|> IO.puts()
