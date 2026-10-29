# Лабораторна робота 2. Пуха Софія, ТК-31

## Посилання на відео: https://youtu.be/hmihoRKJxy8?feature=shared
## Програма
`dot.cpp`: скалярний добуток двох масивів по 50 млн `float` (C++).
Є дві функції, `fill_arrays` і `scalar_product`. Збірка:

    clang++ -O0 -g -fno-omit-frame-pointer dot.cpp -o dot_O0
    clang++ -O3 -ffast-math -g -fno-omit-frame-pointer dot.cpp -o dot_O3

Без `-ffast-math` компілятор не векторизує суму float. Спочатку O3 рахував
підозріло швидко, бо виніс `scalar_product` з циклу, тому я додала `a[0] = r;`.

Працювала на MacBook Air (Apple Silicon).
Замість Linux-інструментів використала аналоги:

- FlameGraph: sample + скрипти FlameGraph
- time --verbose: /usr/bin/time -l
- perf stat: Instruments, CPU Counters
- perf record/report: xctrace, Time Profiler
- енергія: powermetrics
- AVX: ARM NEON (AVX2 дивилась у Godbolt)

## Результати

- O0: 8.48 с, IPC 3.55, енергія на 1 повтор 1.3 Дж
- O3: 0.40 с, IPC 1.84, енергія на 1 повтор 0.043 Дж

Прискорення ~21 раз. IPC в O3 нижчий, бо програма впирається в пам'ять.
Енергію міряла через `powermetrics` (тільки CPU+GPU+ANE), віднімала базу
25.7 мВт. O3 запускала з 1000 повторів, щоб вистачило семплів, тому
порівнюю енергію на один повтор.

## Файли в `results/`
- `flame_O0.svg`, `flame_O3.svg`: FlameGraph. В O3 зник блок `operator[]`.
- `time_*.txt`, `power_*.txt`: сирі виміри.
- `timeprofiler_*.png`, `*.trace`: Time Profiler і CPU Counters.
- `dot_O0.s`, `dot_O3.s`: асемблер. В O3 цикл з `fmla.4s` (NEON, 16 float
  за ітерацію), в O0 скалярний код і виклики `operator[]`.
- `godbolt_compare.png`: NEON (`fmla`, 128 біт) проти AVX2
  (`vfmadd231ps ymm`, 256 біт).

## Висновок
`-O3` прискорив програму в ~21 раз і зменшив енергію на ту саму роботу.
Миттєва потужність зросла, але час впав сильніше. Після оптимізації вузьке
місце стало пам'ять.
