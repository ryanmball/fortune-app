class MyExamplesController < ApplicationController
  def fortune_method
    fortunes = ["This month will bring happiness in an unexpected form.", "You will soon find clarity on a question that has been weighing on you.", "Success will come your way in an area that you least expect.", "A new relationship will bring much needed growth and perspective", "Stay motivated towards achieving your goals. Setbacks are only temporary."]
    
    render json: {message: "Hello friend, I have looked into your future and have determined your fortune.", fortune: fortunes.sample}
  end

  def lotto_method
    lotto_numbers = Array.new(6) {[*"1".."60"].sample}.join(" ")
    render json: {numbers: "I have predicted that the upcoming lotto numbers will be: #{lotto_numbers}"}
  end

  def lyrics_method
    num_bottles = 99
    lyrics = []
    100.times do
      if num_bottles > 2
        lyrics << "#{num_bottles} bottles of beer on the wall, #{num_bottles} bottles of beer"
        num_bottles = num_bottles - 1
        lyrics << "Take one down and pass it around, #{num_bottles} bottles of beer on the wall"
      elsif num_bottles == 2
        lyrics << "#{num_bottles} bottles of beer on the wall, #{num_bottles} bottles of beer"
        num_bottles = num_bottles - 1
        lyrics << "Take one down and pass it around, #{num_bottles} bottle of beer on the wall"
      elsif num_bottles == 1
        lyrics << "#{num_bottles} bottle of beer on the wall, #{num_bottles} bottle of beer"
        num_bottles = num_bottles - 1
        lyrics << "Take one down and pass it around, no more bottles of beer on the wall"
      else
        lyrics << "No more bottles of beer on the wall, no more bottles of beer"
        num_bottles = 99
        lyrics << "Go to the store and buy some more, #{num_bottles} bottles of beer on the wall"
      end
    end
    render json: {lyrics: lyrics}
    # render json: {lyrics: "99 Bottles of Beer"}
  end
end
