import random
import sys

n = int(sys.argv[1])
inside = 0
for _ in range(n):
    x, y = random.random(), random.random()
    if x*x + y*y <= 1:
        inside += 1
print(f"Pi ≈ {4 * inside / n}")

