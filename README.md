RutCL
=====
rut_CL is a Chilean RUN/RUT validator and generator.

Very simple gem, and my first one, don't have test or validations so far, so fell free to contribute

##Usage
-----
```ruby
RutCL.generate                    #=> "28.556.792-0"
RutCL.get_dv("28.556.792")        #=> "0"
RutCL.is_valid?("28.556.792-3")   #=> false
RutCL.is_valid?("28.556.792-0")   #=> true
RutCL.format("285567920")         #=> "28.556.792-0"
RutCL.strip_digit("28.556.792-0") #=> "28.556.792"

```

Contributing
------------
Pleas do it if you like, is my first GEM so best practices and help is welcome

Contact
-------
Comments and feedback are welcome. let me a message [web site](http://cotocisternas.cl/projects/rutcl).

License
-------
This code is free to use under the terms of the MIT license.