'''
Code to plot the cross-dispersion profile of a STIS spectrum
'''
import numpy as np
from matplotlib import pyplot as plt
from astropy.io import fits

filename = 'obrc060o0_flt.fits'
columns = [20, 200, 800]

def plot_cross_dispersion(image, column):
    '''
    Plot the cross dispersion profile (a column)
    Parameters:
    -----------
    image: 2D array
        the image whose column you want to plot
    column: int
        the index of the column to display

    Returns:
    ----------
    Plots of cross-dispersion profile
    '''
    column_values = image[:,column]
    y_pixels = np.arange(len(column_values))
    mean_value = np.mean(column_values)
    plt.figure()
    plt.plot(y_pixels, column_values, color='k')
    plt.axhline(mean_value)
    plt.legend(['Column {}'.format(column), 'Mean'])
    plt.title('Plot of Column {} Values and Mean'.format(column))
    plt.xlabel('Pixels')
    plt.ylabel('Intensity')


image = fits.getdata(filename)
for icolumn in columns:
    plot_cross_dispersion(image, icolumn)
