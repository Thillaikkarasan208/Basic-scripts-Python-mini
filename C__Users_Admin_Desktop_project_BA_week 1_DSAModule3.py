#!/usr/bin/env python
# coding: utf-8

# In[ ]:


y = ax2 + bx + c


# In[ ]:


Algorithm -> y = ax2 + bx + c


# In[ ]:


thinking is like to assign number of variables


# In[4]:


a = 5
b = 6
c = 10
x = 2


# In[2]:


print(a,b,c)


# In[5]:


y = a * x ** 2 + b * x + c


# In[6]:


type(a)  - assign a memory


# In[7]:


type(b)


# In[8]:


type(y)


# In[ ]:


assign memory variable -> 8 digits


# In[9]:


y -> algorithm


# In[10]:


import numpy


# In[ ]:


Efficiently how can i make it


# In[12]:


y = a * numpy.square(x) + b * x  + c


# In[13]:


y


# In[ ]:


numpy - numeric python  = numpy


# In[ ]:





# In[14]:


def algorithm(x,a,b,c):   - storing any momery  , allocation any space , very less
    
    y = a*x**2 + b*x + c  -> parabola
    
    return y


# In[15]:


algorithm(2,5,6,10)


# In[ ]:


distance = sqrt ( x2 - x1) ^ 2 + ( y2 - y1) ^ 2 -> algorithm2


# In[ ]:





# In[ ]:


Eclidian distance  -> eclid's algorithm


# In[17]:


# import math as m
# distance = m.sqrt((x2 - x1)**2 + (y2 - y1)**2)


# In[ ]:





# In[ ]:


output  - result
input   - x1,x2,y1,y2


# In[18]:


x1 = 5
x2 = 10
y1 = 6
y2 = 12


# In[23]:


result = ((x2-x1) ** 2 + (y2-y1) ** 2) ** 0.5


# In[24]:


print(result)


# In[25]:


result = numpy.sqrt( numpy.square(x2-x1) + numpy.square(y2-y1) )


# In[26]:


print(result)


# In[27]:


def eclids(x1,x2,y1,y2):
    result = ((x2-x1) ** 2 + (y2-y1) ** 2) ** 0.5
    return result


# In[28]:


eclids(x1,x2,y1,y2)


# In[ ]:


data structures  or data management or data ops

pandas libraries


# In[29]:


import pandas     -  read & write files and data ops


# In[ ]:


pandas.TAB Button


# In[30]:


data = pandas.read_csv(r'C:\Users\Admin\Desktop\project\BA\week 1\store2.csv')


# In[31]:


path - python

1.C:\\Users\\Admin\\Desktop\\project\\BAweek
2.C:/Users/Admin/Desktop/project/BA/week
3.r'C:\Users\Admin\Desktop\project\BA\week 1\'


# In[32]:


data.columns


# In[33]:


import os
os.chdir(r'C:\Users\Admin\Desktop\project\BA\week 1')


# In[34]:


data = pandas.read_csv('store2.csv')


# In[36]:


data.columns


# In[37]:


data.dtypes - data struture and its types


# In[39]:


data.describe()


# In[41]:


data.columns


# In[ ]:


data['column name']


# In[44]:


str(data['City'])  data type to string


# In[45]:


data['City'].astype(str)


# In[46]:


data.columns


# In[48]:


data['Row ID'].astype(float)


# In[49]:


data['Row ID'].astype(int)


# In[ ]:


binary search   - probability  =  Success or Failure   / Ture or False


# In[ ]:


any image in particular  


# In[ ]:


corpus - all the elements or group of elements or data stored 


# In[ ]:


corpus - cricket player list


# In[ ]:


sachin name is there or not - Binary output   -> search of binary out put


# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[60]:


import bisect

def binary_search_bisect(arr, x):

    i = bisect.bisect_left(arr, x)

    if i != len(arr) and arr[i] == x:

        return i

    else:

        return -1


# In[61]:


# Test array
arr = [2, 3, 4, 9, 40,10]

#        0   1  2  3  4 5

x = 10

  
# Function call

result = binary_search_bisect(arr, x)
 

if result != -1:

    print("Element is present at index", str(result))

else:

    print("Element is not present in array")


# In[62]:


1+1


# In[ ]:


examples  - memory managment / technologies


# In[ ]:





# In[64]:


# how many rows are there in the data frame


len(data)  - Total no of records in the df


# In[71]:


data.shape[1]


# In[69]:


data.shape[0] * data.shape[1]


# In[68]:


print(data)


# In[74]:


data.columns


# In[75]:


data['Sales'][0:4]0,1,2,3   4-1


# In[76]:


data[0:4]


# In[77]:


data.head()


# In[78]:


data.tail()


# In[ ]:


filters - with specific conditions


# In[ ]:


syntax - filters or getting the subset


# In[ ]:


dataframe_name[  1 condition or  many condition ]


# In[80]:


data.columns


# In[81]:


data['City']  , df_name['Column name'].unique()


# In[84]:


data['City'].unique()[0:4]


# In[95]:


data[  data['City'] == 'Akron'   ][[ "Row ID" , 'City' , 'Region'  ]][0:4]


# In[89]:


data.index


# In[98]:


data[[ "City","State",'Region','Sales']][0:4]


# In[103]:


data.groupby(['City'],as_index = False)['Sales'].sum()


# In[101]:


data.groupby(['State'],as_index = False)['Sales'].sum()


# In[148]:


# data2


# In[ ]:





# In[150]:


data2.groupby(['City','State'],as_index = True)['Sales'].sum()


# In[ ]:


city   state   sales
ban     ka       100
ban     kn       200 
che     tn       100
che     tn       300


group by two columns 

ban ka   100
ban kn   200
che tn   100 + 300 = 400


# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:


Local  , global valriable


# In[106]:


data2  = data.copy()


# In[107]:


del data
del df
del codes
del list


# In[117]:


data = pandas.DataFrame()
data


# In[118]:


data = pandas.concat([data2])
analysis


# In[120]:


data = ''


# In[ ]:


unstructured   
dry code

# importing librariries
import pandas
analyse
print

# variablbe creation
x = 5
y = 7

#Addition algorithm
x+y
x-y


# In[127]:


# Dry code to proper

# variablbe creation  - comments to make understand
x = 3
y = 0

# x // y


# In[ ]:


try

dont stop my code in middle between , print a msg - continue

2+2
1000000 laksh
print 
group
.
.
.
6000

except


# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[128]:


# Add comments to docs
# Python code to illustrate
# working of try() 

def divide(x, y):

    try:

        # Floor Division : Gives only Fractional Part as Answer

        result = x // y

        print("Yeah ! Your answer is :", result)

    except ZeroDivisionError:

        print("Sorry ! You are dividing by zero ")


# In[129]:


divide(3,2)


# In[131]:


divide(3,0)


# In[ ]:


try:
    
    6000 lines
    
except:
    print("msg")


# In[ ]:





# In[132]:


import selenium


# In[133]:


# web scrapping  


# In[135]:


# naming convention :

rajini  = 5
kamal = 3

rajini + kamal
    
    


# In[136]:


price  = 5
cost = 3


# In[ ]:


should start with letter or underscore
can not start with number
- , special characters
AGE , age 


# In[141]:


_age = 10
age = 10
# 10city = 0

name-@lname = "thillai murali"


# In[142]:


age


# In[143]:


AGE


# In[ ]:





# In[ ]:




