require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    @reversed_name = @name.reverse
    "#{@reversed_name}"
  end

  get '/square/:number' do
    @number = params[:number]
    @square = (@number.to_i * @number.to_i)
    "#{@square.to_s}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]

    @phrase * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    if params[:operation] == "add"
      @result = @num1 + @num2
    end

    if params[:operation] == "subtract"
      @result = @num1 - @num2
    end

    if params[:operation] == "multiply"
      @result = @num1 * @num2
    end

    if params[:operation] == "divide"
      @result = @num1 / @num2
    end

    "#{@result}"

  end



end