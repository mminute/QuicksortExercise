Quicksort
-Divides large array  into two sub-arrays
  -low elements and high elements
-Quicksort then recursively sorts the sub-arrays

Steps:
-Pick: select the pivot element
-Partition: reorder array so that all elements less than the pivot come before it and all elements greater than the pivot come after
-Recursively apply above steps to sub-array of elements with smaller values and seperately to sub-arrays of elements with greater values

Pivot selection and partitioning can be done in many ways.  Implementation choices greatly affect the algorithm's performance.

Partition schemes:
Lomuto---
-chooses last element of array as pivot
-Maintains pivot at some index `i`.  each time an element is less than/eql to the pivot the index of the pivot is incremented by 1 `i+1` and the lesser element is placed at `i`
-Less efficient than Hoare's scheme though easier to understand

Hoare---
-2 indices that start at the ends of the array being partitioned, then move toward each other until they detect an inversion -- a pair of elements, one greater than th pivot, one smaller, that are in the wrong order relative to each other.  inverted elements are then swapped.  when the indices meet the algorithm stops and returns the final index
-on Avg 3x fewer swaps than lomuto
-creates efficient partitions even when all values are equal


Optimizations--
-recurese first into smaller side of partition
-when num of elems in partition is below some threshold (ex 10 elements) switch to non-recursive sorting algorithms s.a. insertion sort to perform fewer swaps, comparisons, or other operations on such small arrays
-Repeated elements-
  seperate values into three groups - 1. less than pivot, 2. equal to pivot, 3. greater than pivot ("Fat Partition")


Best/Worst/Average case analysis:
Worst- O(n²) time
Best- O(n log n) time
Avg-

Sources:
https://en.wikipedia.org/wiki/Quicksort

http://www.computerhistory.org/fellowawards/hall/bios/Antony,Hoare/

https://en.wikipedia.org/wiki/Tony_Hoare

http://dl.acm.org/citation.cfm?doid=366622.366644

http://anothercasualcoder.blogspot.com/2015/03/my-quickshort-interview-with-sir-tony.html

http://cs.stackexchange.com/questions/11458/quicksort-partitioning-hoare-vs-lomuto/11550#11550

http://www.sorting-algorithms.com/

https://www.khanacademy.org/computing/computer-science/algorithms/quick-sort/a/overview-of-quicksort

http://algs4.cs.princeton.edu/23quicksort/

https://www.cs.auckland.ac.nz/software/AlgAnim/qsort.html



My Example - Lomuto
[4,2,5,1,3]
         .
     .---. 5 > 3 so swap.  point of inspection remains at idx=4
[4,2,3,1,5]
         . Done with this round
[4,2,3,1]5
      .. 1 and 3 swap
[4,2,1,3]5
 .-----. 4 and 3 swap
[3,2,1,4]5 Done with this round
[3,2,1]4,5
   .-. 1 and 2 swap
[3,1,2]4,5
 .---. 2 and 3 swap
[2,1,3]4,5 Done with this round
[2,1]3,4,5
 .-. 2 and 1 swap
[1,2]3,4,5 Done with this round
pivot_idx now = 0 so sorting is done