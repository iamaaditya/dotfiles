import numpy as np
from matplotlib import pyplot as plt

def normalize(x):
    return (x - np.min(x)) / (np.max(x) - np.min(x))

def plot_image(arr, size=5):
    plt.figure(figsize=(size,size))
    plt.imshow(arr, cmap='gray')
    plt.grid(None) 
    plt.axis('off')

def plot(im, size=(6,6), title=''):
    plt.figure(figsize = size)
    if im.shape[-1] != 3:
        plt.imshow(im, cmap='gray')
    else:
        plt.imshow(im)
    plt.axis('off')
    plt.title(title)

def plot_multiple_images(images, size=10, labels=[], title='', cmap=None) -> None:
    n: int = len(images)
    f = plt.figure(figsize=(n*size, size))
    plt.suptitle(title)
    for i in range(n):
        # Debug, plot figure
        ax = f.add_subplot(1, n, i + 1)
        if labels:
            #print(i, labels[i])
            ax.title.set_text(str(labels[i]))
        if cmap is None:
            cmap = 'gray' if images[i].shape[-1] == 1 or len(images[i].shape) == 2 else None
        plt.imshow(images[i], cmap=cmap)
        plt.axis('off')


def plot_center(im, size=(6, 6), ccell=None, ncell=None, title='', ncellxy=None):
    plt.figure(figsize=size)
    if im.shape[-1] != 3:
        plt.imshow(im, cmap='gray')
    else:
        plt.imshow(im)

    cx, cy = im.shape[0] // 2, im.shape[1] // 2

    # plt.scatter(cx, cy, c='blue', marker='o', s=80)
    plt.annotate(f'* Center:{ccell}', (cx, cy), c='gold', fontsize=14)
    plt.annotate(f'*\nNearest_Cell:{ncell}', ncellxy, c='Brown', fontsize=14)

    # plt.scatter(x, y, c='red', marker='*', s=80)
    plt.axis('off')
    plt.title(title)