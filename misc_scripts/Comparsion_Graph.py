#!/usr/bin/env python
# coding: utf-8

# In[244]:


import matplotlib.pyplot as plt
import pandas as pd

tb = pd.read_csv('/Users/yuwenchen/Desktop/CS540/Final_Datasets/tobacco_revised.csv')
re = pd.read_csv('/Users/yuwenchen/Desktop/access.csv')
mu = pd.read_csv('/Users/yuwenchen/Desktop/test.csv')
pe = pd.read_csv('/Users/yuwenchen/Desktop/pertussis.csv')
th = pd.read_csv('/Users/yuwenchen/Desktop/Tobocco_HC.csv')
b3 = pd.read_csv('/Users/yuwenchen/Desktop/Bottom3_Mortality.csv')
t3 = pd.read_csv('/Users/yuwenchen/Desktop/TOP3_Mortality.csv')


# In[113]:


#access.csv adjustment
re1 = re[re.Condition != 'Adults aged 18-64 who have any kind of health care coverage']
re1.to_csv('/Users/yuwenchen/Desktop/access2.csv')


# In[242]:


fig = plt.figure(figsize = (12,8))


# Top 3 Disease with higest mortality
fS = t3[(t3.State == 'West Virginia')]
fS['H_Rate'] = fS.apply(lambda x: x.Have_health_care_coverage * 100000, axis = 1)


sS = t3[(t3.State == 'Pennsylvania')]
sS['H_Rate'] = sS.apply(lambda x: x.Have_health_care_coverage * 100000, axis = 1)


tS = t3[(t3.State == 'Arkansas')]
tS['H_Rate'] = tS.apply(lambda x: x.Have_health_care_coverage * 100000, axis = 1)



# nomalization function
def nomalization(x, key):
    return (x[key] - x[key].min()) / (x[key].max() - x[key].min())

fS['H_Rate']     = nomalization(fS, 'H_Rate')
fS['Crude_Rate'] = nomalization(fS, 'Crude_Rate')
sS['H_Rate']     = nomalization(sS, 'H_Rate')
sS['Crude_Rate'] = nomalization(sS, 'Crude_Rate')
tS['H_Rate']     = nomalization(tS, 'H_Rate')
tS['Crude_Rate'] = nomalization(tS, 'Crude_Rate')



# graph
plt.title('Top 3 Mortality and their Healh Care Coverage')

# West Virginia
plt.plot(fS.Year,
         fS.Crude_Rate,
         linestyle = '-',
         linewidth = 2,
         color = "r",
         label = "WV Mortality",
         )
plt.plot(fS.Year,
         fS.H_Rate,
         linestyle = '--',
         linewidth = 2,
         color = "r",
         label = "WV Health Care Coverage Rate",
         )
# Pennsylvania
plt.plot(sS.Year,
         sS.Crude_Rate,
         linestyle = '-',
         linewidth = 2,
         color = "b",
         label = "PA Mortality",
         )
plt.plot(sS.Year,
         sS.H_Rate,
         linestyle = '--',
         linewidth = 2,
         color = "b",
         label = "PA Health Care Coverage Rate",
         )

# Arkansas
plt.plot(tS.Year,
         tS.Crude_Rate,
         linestyle = '-',
         linewidth = 2,
         color = "g",
         label = "AR Mortality",
         )
plt.plot(tS.Year,
         tS.H_Rate,
         linestyle = '--',
         linewidth = 2,
         color = "g",
         label = "AR Health Care Coverage Rate",
         )

plt.xlabel('Year')
plt.ylabel('Level')
plt.legend(loc = 3)
plt.show()


# In[245]:


fig = plt.figure(figsize = (12,8))

# Bottom 3 Disease with higest mortality
fS = b3[(b3.State == 'Colorado')]
fS['H_Rate'] = fS.apply(lambda x: x.Have_health_care_coverage * 100000, axis = 1)

sS = b3[(b3.State == 'Utah')]
sS['H_Rate'] = sS.apply(lambda x: x.Have_health_care_coverage * 100000, axis = 1)

tS = b3[(b3.State == 'Alaska')]
tS['H_Rate'] = tS.apply(lambda x: x.Have_health_care_coverage * 100000, axis = 1)



# normalization
# nomalization function
def nomalization(x, key):
    return (x[key] - x[key].min()) / (x[key].max() - x[key].min())

fS['H_Rate']     = nomalization(fS, 'H_Rate')
fS['Crude_Rate'] = nomalization(fS, 'Crude_Rate')
sS['H_Rate']     = nomalization(sS, 'H_Rate')
sS['Crude_Rate'] = nomalization(sS, 'Crude_Rate')
tS['H_Rate']     = nomalization(tS, 'H_Rate')
tS['Crude_Rate'] = nomalization(tS, 'Crude_Rate')


# graph
plt.title('Bottom 3 Mortality and their Healh Care Coverage')

# Colorado
plt.plot(fS.Year,
         fS.Crude_Rate,
         linestyle = '-',
         linewidth = 2,
         color = "r",
         label = "CO Mortality",
         )
plt.plot(fS.Year,
         fS.H_Rate,
         linestyle = '--',
         linewidth = 2,
         color = "r",
         label = "CO Health Care Coverage Rate",
         )
# Utah
plt.plot(sS.Year,
         sS.Crude_Rate,
         linestyle = '-',
         linewidth = 2,
         color = "b",
         label = "UT Mortality",
         )
plt.plot(sS.Year,
         sS.H_Rate,
         linestyle = '--',
         linewidth = 2,
         color = "b",
         label = "UT Health Care Coverage Rate",
         )

# Alaska
plt.plot(tS.Year,
         tS.Crude_Rate,
         linestyle = '-',
         linewidth = 2,
         color = "g",
         label = "AK Mortality",
         )
plt.plot(tS.Year,
         tS.H_Rate,
         linestyle = '--',
         linewidth = 2,
         color = "g",
         label = "AK Health Care Coverage Rate",
         )

plt.xlabel('Year')
plt.ylabel('Level')
plt.legend(loc = 3)
plt.show()


# In[ ]:




