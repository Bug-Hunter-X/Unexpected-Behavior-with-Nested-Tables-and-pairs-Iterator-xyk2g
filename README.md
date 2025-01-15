# Lua Nested Table Iteration Bug

This repository demonstrates a subtle bug related to iterating over nested tables in Lua using the `pairs` iterator.  The issue stems from modifying a table while iterating over it using `pairs`, which doesn't guarantee a specific order of iteration.  This can lead to elements being skipped or unexpected behavior.

## The Bug

The `bug.lua` file contains a function `foo` that recursively iterates over a nested table. The intention is to process all elements within the nested tables. However, due to the unpredictable order of `pairs`, modifying a table during iteration can cause the function to miss certain elements.

## The Solution

The `bugSolution.lua` file demonstrates a solution using a different iteration approach that avoids this problem. We use a depth-first traversal which does not alter the table during iteration, ensuring correct processing of all elements.

## How to Reproduce

1. Clone this repository.
2. Run `lua bug.lua`. You'll observe that the output is not what is expected.
3. Run `lua bugSolution.lua`. You'll see the correct, expected output.

This example highlights the importance of understanding the limitations and behavior of Lua's iterators, especially when dealing with nested tables and modifications within iterations.  Always consider using alternative approaches to ensure reliable and predictable results when such operations are performed.