#!/usr/bin/env python
# coding: utf-8

# In[1]:


import numpy as np
from scipy.optimize import curve_fit


# In[2]:


def fmr_abs_disp_deriv(f,f0,Aabs,Adisp,fwhm,offset):
    return offset - Aabs*(f-f0)*fwhm**2/(fwhm**2 + 4*(f-f0)**2)**2 + Adisp*fwhm*(fwhm**2-4*(f-f0)**2)/(fwhm**2 + 4*(f-f0)**2)**2

def fmr_abs_disp_deriv2(f,f1,Aabs1,Adisp1,fwhm1,f2,Aabs2,Adisp2,fwhm2,offset):
    return offset + Aabs1*(f-f1)*fwhm1**2/(fwhm1**2 + 4*(f-f1)**2)**2 +Adisp1*fwhm1*(fwhm1**2-4*(f-f1)**2)/(fwhm1**2 + 4*(f-f1)**2)**2+ Aabs2*(f-f2)*fwhm2**2/(fwhm2**2 + 4*(f-f2)**2)**2 +Adisp2*fwhm2*(fwhm2**2-4*(f-f2)**2)/(fwhm2**2 + 4*(f-f2)**2)**2


# In[ ]:


"""
x: field
y: experiment data
p0: guesses for your parameters
---
Suggested way for setting p0:

 f0: [np.argmax(np.abs(y))]
 Aabs:  (np.max(y)-np.min(y))/2/0.16238
 Adisp: Adisp = Aabs*0.6/4
 fwhm: just try different number, start with +-10 and increase/decrease
 offset: np.average(y)

"""


popt, pcov = curve_fit(fmr_abs_disp_deriv, x, y,p0=p0)
plt.plot(x, fmr_abs_disp_deriv(x,*popt), 'k--',label='_nolegend_')

