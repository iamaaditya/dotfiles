def normalize(x):
    return (x - np.min(x)) / (np.max(x) - np.min(x))

def plot_image(arr, size=5):
    plt.figure(figsize=(size,size))
    plt.imshow(arr)
    plt.grid(None) 
    plt.axis('off')