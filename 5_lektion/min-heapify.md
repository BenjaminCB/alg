```
minHeapify(A, i)
    l = left(i)
    r = right(i)
    if l <= A.heapSize and A[i] > A[l]
        smallest = l
    else
        smallest = i
    if r <= A.heapSize and A[smallest] > A[r]
        smallest = r
    if smallest != i
        swap(A[i], A[smallest])
        minHeapify(A, smallest);
```
