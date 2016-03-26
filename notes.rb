irb(main):247:0> def some_method(x: 10, y: 30, z: 39)
irb(main):248:1> p x,y,z
irb(main):249:1> end
=> :some_method
irb(main):250:0> some_method x:1, y: 2
1
2
39
=> [1, 2, 39]
