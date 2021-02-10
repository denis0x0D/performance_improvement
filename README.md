List of optimizations:
======================

* BM_FOO_Default - Default.
* BM_Foo_1 - Eliminate call for bar function since it returns input parameter in our case.
* BM_Foo_2 - Use 'and' to check if value eve or odd.
* BM_Foo_3 - Remove emitted data for unwind tables.
* BM_Foo_4 - Eliminate registers spilling on the stack. Eliminate stack memory allocation. Eliminate frame pointer usage.
* BM_Foo_5 - Improve register usage by eliminating temporal moving. Use 'inc' for loop counter instead of 'add'.
* BM_Foo_6 - Eliminate useless basic block.
* BM_Foo_7 - Eliminate branch inside loop by hoisting odd/even logic outside loop body and increment loop iterator by 2 while iterating.


Benchmarks:
===========

|  Benchmark | Time  |  CPU  | Iterations  |
|---|---|---|---|
| BM_Foo_Default/4096  | 17061 ns |   17061 ns |    40652|
| BM_Foo_1/4096        | 10949 ns |   10949 ns |    64065|
| BM_Foo_2/4096        |  6708 ns |    6707 ns |   104378|
| BM_Foo_3/4096        |  6181 ns |    6181 ns |   112990|
| BM_Foo_4/4096        |  6775 ns |    6775 ns |   103832|
| BM_Foo_5/4096        |  5549 ns |    5549 ns |   116146|
| BM_Foo_6/4096        |  3615 ns |    3615 ns |   193797|
| BM_Foo_7/4096        |  1295 ns |    1295 ns |   540523|


How to build:
=============

* Required Google benchmark tool, clang.
For Ubuntu:
$apt-get install libbenchmark-dev
$apt-get install clang
$./build
* How to run:
$./bin/main
