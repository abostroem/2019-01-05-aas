import numpy as np
import matplotlib.pyplot as plt
from matplotlib import rc
rc('text', usetex=True)
'''
This script is a plotting demo.

It makes a single plot with four panels.
It doesn't need any input data files.
'''
y = np.sin(np.linspace(0, 2*np.pi, 20))
x = np.arange(20)

fig = plt.figure(figsize=(10,10))

ax1 = plt.subplot(221)
ax1.scatter(x, y, c='#FF0000')

ax2 = plt.subplot(222)
z = np.random.random(20) * 200
#print(z)
ax2.scatter(x, y, s=z, alpha=0.5)

ax3 = plt.subplot(223)
ax3.scatter(x, y, c=y, cmap='inferno')
# default colormap is viridis, scaled from min to max of the array of numbers used for color
ax3.set_xlabel('Time (definitely hours)', size=10)
ax3.set_ylabel(r'Amplitude ($\alpha$)', size=10)

ax4 = plt.subplot(224)
ax4.scatter(x, y, label='Sine curve yeah')
ax4.scatter(x, -y, label='Negative whoa')
ax4.legend(loc=4, frameon=False)
ax4.spines['top'].set_visible(False)
ax4.spines['right'].set_visible(False)

# Choose one of these, not both
#plt.show()
plt.savefig('amazing_figure.pdf')
