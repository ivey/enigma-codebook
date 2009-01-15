Enigma Codebook Generator
========================

Sinatra app to generate Enigma codebooks

Sample Output:

![sample output](http://github.com/ivey/enigma-codebook/raw/44012531bc262a2b42a7edc69643b3fc6d3b66ed/sample.jpg)


Steps to doing WWII cryptography
------------------------

1. Download enigma-codebook.rb
2. Make sure you have Ruby installed (http://ruby-lang.org)
3. "sudo gem install sinatra"
4. ruby enigma-codebook.rb
5. Visit http://localhost:4567 in your browser
6. Tweak settings if you like, or hit generate
7. Send a copy of the codebook to your partner via a secure channel
8. Get an Enigma machine
9. Fail at step 8, and get an emulator. [Here's one for OS X](http://www.terrylong.org/)
10. Enter today's settings from the codebook into your emulator.
11. Select a random start position for your message, for instance, WZA.
12. Move the rotors to the WZA start position.
13. Select a message key, say SXT.
14. Encode "SXT" and save the result, pretend it's UHL but it won't be.
15. Move the rotors to SXT.
16. Encode your message.
17. Now, transmit start position (WZA), encoded message key (SXT),
    followed by your encoded message.
18. Wait for Bletchley Park to read it.


Don't use this
-----------------

Seriously, don't use this codebook for anything important. Not that
you'd be using an Enigma to do real crypto, but if you were thinking
about it, stop. These codebooks use Ruby's built-in pseudo random
number generator, which means they're pretty hackable. This is for
fun, and by using this code you waive any rights to sue me if you're
an idiot and someone steals your secrets.


More Info
----------------

* [Wikipedia article](http://en.wikipedia.org/wiki/Enigma_machine)
* [Enigma Procedure](http://users.telenet.be/d.rijmenants/en/enigmaproc.htm)


License
-------------
MIT
