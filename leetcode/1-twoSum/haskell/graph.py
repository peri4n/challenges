import matplotlib.pyplot as plt
import numpy as np
import pandas as pd

df = pd.read_csv("performance.csv")

fig, ax = plt.subplots()

ax.plot(["10", "100", "1000", "10000", "100000"], df.Mean[0:5], label = "Solution 1")
ax.plot(["10", "100", "1000", "10000", "100000"], df.Mean[5:10], label = "Solution 2")
ax.plot(["10", "100", "1000", "10000", "100000"], df.Mean[10:15], label = "Solution 3")
ax.legend()
#ax.set_yscale("log")

plt.savefig("performance.png")
