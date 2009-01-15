require 'rubygems'
require 'sinatra'

helpers do
  def randl
    (rand(26) + 65).chr
  end

  def roman(n)
    case n
    when 1
      "I"
    when 2
      "II"
    when 3
      "III"
    when 4
      "IV"
    when 5
      "V"
    when 6
      "VI"
    when 7
      "VII"
    when 8
      "VIII"
    else
      n
    end
  end
end

get '/' do
  haml :index
end

post '/' do
  puts params.inspect
  nr = params[:rotors].to_i
  ref = params[:reflectors].to_i
  
  @days = []
  1.upto(params[:days].to_i) do |i|
    ro1 = roman(rand(nr)+1)
    ro2 = roman(rand(nr)+1)
    ro3 = roman(rand(nr)+1)
    ri1 = randl
    ri2 = randl
    ri3 = randl
    rf = (rand(ref)+65).chr
    p1 = [randl,randl]
    p2 = [randl,randl]
    p3 = [randl,randl]
    @days << [i,ro1,ro2,ro3,ri1,ri2,ri3,rf,p1,p2,p3]
  end
  haml :index
end
