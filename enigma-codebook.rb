# Copyright 2009 Michael D. Ivey <ivey@gweezlebur.com>
# Please don't use this for real crypto, it's a bad call.
# See LICENSE for details, but it's MIT
require 'rubygems'
require 'sinatra'

helpers do
  def randl
    (rand(26) + 65).chr
  end

  def roman(n)
    case n
    when 1: "I"
    when 2: "II"
    when 3: "III"
    when 4: "IV"
    when 5: "V"
    when 6: "VI"
    when 7: "VII"
    when 8: "VIII"
    else n
    end
  end
end

get '/' do
  params[:rotors] ||= 5
  params[:reflectors] ||= 3
  params[:days] ||= 31

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
    while(p1[0] == p1[1]) do p1[1] = randl ; end
    p2 = [randl,randl]
    while(p2[0] == p2[1]) do p2[1] = randl ; end
    p3 = [randl,randl]
    while(p3[0] == p3[1]) do p3[1] = randl ; end
    @days << [i,ro1,ro2,ro3,ri1,ri2,ri3,rf,p1,p2,p3]
  end
  haml :index
end
