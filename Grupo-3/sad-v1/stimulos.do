tem que colocar em um .do
force /clk 0 0 ns, 1 5 ns -repeat 10 ns
force /reset 1 0 ns, 0 10 ns
force /enable 0 0 ns, 1 10 ns
force /sample_ori 00000000 0 ns, 11111111 1980 ns, 10101010 2970 ns, 10000000 3940 ns
force /sample_can 11111111 0 ns, 11111111 1980 ns, 10101010 2970 ns, 00100000 3940 ns