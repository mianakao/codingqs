# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create name: 'Mike Patterson',
            email: 'mikepatterson77@gmail.com',
            password: 'test1234',
            password_confirmation: 'test1234'
            
threads_locks  = Category.create name: 'Threads and Locks'
databases      = Category.create name: 'Databases'
testing        = Category.create name: 'Testing'
sort_search    = Category.create name: 'Sorting and Searching'
scale_mem      = Category.create name: 'Scalability and Memory Limits'
recurse_dyn    = Category.create name: 'Recursion and Dynamic Programming'
obj_des        = Category.create name: 'Object-Oriented Design'
math_prob      = Category.create name: 'Mathematics and Probability'
brain          = Category.create name: 'Brain Teasers'
bit_manip      = Category.create name: 'Bit Manipulation'
trees_graphs   = Category.create name: 'Trees and Graphs'
stacks_queues  = Category.create name: 'Stacks and Queues'
linked_lists   = Category.create name: 'Linked Lists'
arrays_strings = Category.create name: 'Arrays and Strings'

haskell  = Language.create name: 'Haskell',
                           version: '2010'
ruby     = Language.create name: 'Ruby',
                           version: '1.9.3'
python3  = Language.create name: 'Python',
                           version: '3.0'
cpp      = Language.create name: 'C++'
c        = Language.create name: 'C'
java     = Language.create name: 'Java'
python27 = Language.create name: 'Python',
                           version: '2.7'
                
Question.create qtext: "You are given a class with synchronized method A and a normal method C. If you have two threads in one instance of a program, can they both execute A at the same time? Can they execute A and C at the same time?",
               difficulty: "4",
               category: threads_locks

Question.create qtext: "Write a SQL query to get a list of tenants who are renting more than one apartment.",
               difficulty: "1",
               category: databases

Question.create qtext: "You are given the source to an application which crashes when it is run. After running it ten times in a debugger, you find it never crashes in the same place. The application is single threaded, and uses only the C standard library. What programming errors could be causing this crash? How would you test each one?",
               difficulty: "4",
               category: testing

Question.create qtext: "Given an M x N matrix in which each row and each column is sorted in ascending order, write a method to find an element.",
               difficulty: "2",
               category: sort_search

Question.create qtext: "If you were designing a web crawler, how would you avoid getting into infinite loops?",
               difficulty: "2",
               category: scale_mem

Question.create qtext: "Write a method to return all subsets of a set.",
               difficulty: "4",
               category: recurse_dyn

Question.create qtext: "Design the data structures for a generic deck of cards. Explain how you would subclass the data structures to implement blackjack.",
               difficulty: "2",
               category: obj_des

Question.create qtext: "Given two lines on a Cartesian plane, determine whether the two lines would intersect.",
               difficulty: "1",
               category: math_prob

Question.create qtext: "You have 20 bottles of pills. 19 bottles have 1.0 gram pills, but one has pills of weight 1.1 grams. Given a scale that provides an exact measurement, how would you find the heavy bottle? You can only use the scale once.",
               difficulty: "4",
               category: brain

Question.create qtext: "Write a program to swap odd and even bits in an integer with as few instructions as possible (e.g., bit 0 and bit 1 are swapped, bit 2 and bit 3 are swapped, and so on).",
               difficulty: "2",
               category: bit_manip

Question.create qtext: "Implement a function to check if a binary tree is a binary search tree.",
               difficulty: "3",
               category: trees_graphs

Question.create qtext: "How would you design a stack which, in addition to push and pop, also has a function min which returns the minimum element? Push, pop and min should all operate in O(1) time.",
               difficulty: "3",
               category: stacks_queues

Question.create qtext: "Implement an algorithm to find the kth to last element of a singly linked list.",
               difficulty: "3",
               category: linked_lists

Question.create qtext: "Implement a function void reverse(char* str) in C or C++ which reverses a null-terminated string.",
               difficulty: "2",
               category: arrays_strings,
               language: c



