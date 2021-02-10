#include <bits/stdc++.h>
#include <benchmark/benchmark.h>

using namespace std;

extern "C" {
void foo(int *, int);
void foo_1(int *, int);
void foo_2(int *, int);
void foo_3(int *, int);
void foo_4(int *, int);
void foo_5(int *, int);
void foo_6(int *, int);
void foo_7(int *, int);
}

static void BM_Foo_Default(benchmark::State &state) {
  const int size = state.range(0);
  int *data = new int[size];
  for (auto _ : state) {
    foo(data, size);
  }
  delete[] data;
}

static void BM_Foo_1(benchmark::State &state) {
  const int size = state.range(0);
  int *data = new int[size];
  for (auto _ : state) {
    foo_1(data, size);
  }
  delete[] data;
}

static void BM_Foo_2(benchmark::State &state) {
  const int size = state.range(0);
  int *data = new int[size];
  for (auto _ : state) {
    foo_2(data, size);
  }
  delete[] data;
}

static void BM_Foo_3(benchmark::State &state) {
  const int size = state.range(0);
  int *data = new int[size];
  for (auto _ : state) {
    foo_3(data, size);
  }
  delete[] data;
}

static void BM_Foo_4(benchmark::State &state) {
  const int size = state.range(0);
  int *data = new int[size];
  for (auto _ : state) {
    foo_4(data, size);
  }
  delete[] data;
}

static void BM_Foo_5(benchmark::State &state) {
  const int size = state.range(0);
  int *data = new int[size];
  for (auto _ : state) {
    foo_5(data, size);
  }
  delete[] data;
}

static void BM_Foo_6(benchmark::State &state) {
  const int size = state.range(0);
  int *data = new int[size];
  for (auto _ : state) {
    foo_6(data, size);
  }
  delete[] data;
}

static void BM_Foo_7(benchmark::State &state) {
  const int size = state.range(0);
  int *data = new int[size];
  for (auto _ : state) {
    foo_7(data, size);
  }
  delete[] data;
}

#ifdef FULL
BENCHMARK(BM_Foo_Default)
    ->Args({1024})
    ->Args({1023})
    ->Args({2048})
    ->Args({2047})
    ->Args({4096})
    ->Args({4095});
BENCHMARK(BM_Foo_1)
    ->Args({1024})
    ->Args({1023})
    ->Args({2048})
    ->Args({2047})
    ->Args({4096})
    ->Args({4095});
BENCHMARK(BM_Foo_2)
    ->Args({1024})
    ->Args({1023})
    ->Args({2048})
    ->Args({2047})
    ->Args({4096})
    ->Args({4095});
BENCHMARK(BM_Foo_3)
    ->Args({1024})
    ->Args({1023})
    ->Args({2048})
    ->Args({2047})
    ->Args({4096})
    ->Args({4095});
BENCHMARK(BM_Foo_4)
    ->Args({1024})
    ->Args({1023})
    ->Args({2048})
    ->Args({2047})
    ->Args({4096})
    ->Args({4095});
BENCHMARK(BM_Foo_5)
    ->Args({1024})
    ->Args({1023})
    ->Args({2048})
    ->Args({2047})
    ->Args({4096})
    ->Args({4095});
BENCHMARK(BM_Foo_6)
    ->Args({1024})
    ->Args({1023})
    ->Args({2048})
    ->Args({2047})
    ->Args({4096})
    ->Args({4095});
BENCHMARK(BM_Foo_7)
    ->Args({1024})
    ->Args({1023})
    ->Args({2048})
    ->Args({2047})
    ->Args({4096})
    ->Args({4095});
#else
BENCHMARK(BM_Foo_Default)->Args({4096});
BENCHMARK(BM_Foo_1)->Args({4096});
BENCHMARK(BM_Foo_2)->Args({4096});
BENCHMARK(BM_Foo_3)->Args({4096});
BENCHMARK(BM_Foo_4)->Args({4096});
BENCHMARK(BM_Foo_5)->Args({4096});
BENCHMARK(BM_Foo_6)->Args({4096});
BENCHMARK(BM_Foo_7)->Args({4096});
#endif

BENCHMARK_MAIN();
