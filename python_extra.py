def normalize(x):
    return (x - np.min(x)) / (np.max(x) - np.min(x))

def plot_image(arr):
    plt.imshow(arr)
    plt.grid(None) 
    plt.axis('off')
