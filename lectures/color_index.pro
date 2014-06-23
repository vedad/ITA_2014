bk=1.38e-23 
cc=3.0e8
hh=6.6e-34
fac=100.^(1./5.)
;
temp=[1.6,3.,4.5,7.,12.,16.]*1.e3
lam=0.01*findgen(100)*1.e-6
calpha=-38
set_plot,'ps'
device,xs=15,ys=10,file='color_index.eps',/encapsulate
plot,lam/1.e-6,-2.5*alog10(2.*hh*cc*cc/lam^5*(1./(exp(hh*cc/lam/bk/1.e4)-1.)))-calpha, $
  xtitle='!4k!3(!4l!3m)',ytitle='!3m!D!4l!N!3-C(alpha)',chars=1.3,yr=[20,-2],yst=1
for i=1,n_elements(temp)-1 do begin 
  oplot,lam/1.e-6,-2.5*alog10(2.*hh*cc*cc/lam^5*(1./(exp(hh*cc/lam/bk/temp[i])-1.)))-calpha
endfor
device,/close
end
