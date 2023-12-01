#!/usr/bin/env python
# coding: utf-8

# In[1]:


x = 5


# In[2]:


x = 10


# In[3]:


def fucn(a,b):
    return True


# In[ ]:


func(1,2)


# In[4]:


lst = [1,2,3,4]


# In[5]:


lst


# In[ ]:


local variables
enviornment variable


# In[ ]:


for i in range(0,10000000):
    x = i
    y = x+i  
    automatically __null_ , __new__
    
    


# In[6]:


from binarytree import Node 
root = Node(3) 
root.left = Node(6) 
root.right = Node(8) 

# Getting binary tree 
print('Binary tree :', root) 

# Getting list of nodes 
print('List of nodes :', list(root)) 

# Getting inorder of nodes 
print('Inorder of nodes :', root.inorder) 

# Checking tree properties 
print('Size of tree :', root.size) 
print('Height of tree :', root.height) 


# In[7]:


# Getting list of nodes 
print('List of nodes :', list(root)) 


# In[8]:


# Getting inorder of nodes 
print('Inorder of nodes :', root.inorder) 


# In[10]:


# Checking tree properties 
print('Size of tree :', root.size) 
#print('Height of tree :', root.height) 


# In[11]:


# Get all properties at once 
print('Properties of tree : \n', root.properties) 


# In[15]:


# !pip install binarytree

# Creating binary tree 
# from given list 
from binarytree import build 


# List of nodes 
nodes =[3, 6, 8, 2, 11, None, 13] 

# Building the binary tree 
binary_tree = build(nodes) 
print('Binary tree from list :\n', 
	binary_tree) 

# Getting list of nodes from 
# binarytree 
print('\nList from binary tree :', 
	binary_tree.values) 


# In[17]:


from binarytree import tree 


# Create a random binary 
# tree of any height 
root = tree() 
print("Binary tree of any height :") 
print(root) 

# Create a random binary 
# tree of given height 
root2 = tree(height = 2) 
print("Binary tree of given height :") 
print(root2) 

# Create a random perfect 
# binary tree of given height 
root3 = tree(height = 2, 
is_perfect = True) 
print("Perfect binary tree of given height :") 
print(root3) 


# In[ ]:


DRY code - Do not repeat your self


# In[ ]:


filename = 'material'
path = 'c:\users\data\admin\';



def read_data(filename , path):
    return


def rad_data(path):
    return


# In[ ]:


Naming convention in python

1.letter or underscore
2.not start with number
3.contains alpha numeric / characters
4.case sensitive


# In[18]:


var = "ravi"


# In[20]:


var_1 = 'ravi'
_var_1 = 'ravi'
var12_ = 'ravi'


# In[23]:


5var = 'ravi'
var-val = 'ravi'
var value = 'ravi'


# In[ ]:




