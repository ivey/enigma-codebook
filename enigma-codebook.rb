require 'rubygems'
require 'sinatra'

helpers do
  def randl
    (rand(26) + 65).chr
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
    ro1 = rand(nr)+1
    ro2 = rand(nr)+1
    ro3 = rand(nr)+1
    ri1 = randl
    ri2 = randl
    ri3 = randl
    rf = rand(ref)+1
    p1 = [randl,randl]
    p2 = [randl,randl]
    p3 = [randl,randl]
    @days << [i,ro1,ro2,ro3,ri1,ri2,ri3,rf,p1,p2,p3]
  end
  haml :index
end
