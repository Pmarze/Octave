function factLU(A)
  n=size(A,1);
  L=zeros(n);
  U=zeros(n);
  
  for i=1:1:n
    for k=i:1:n
      x=0;
      for j=1:1:i
        x=x+L(i,j)*U(j,k); 
      endfor
      U(i,k)=A(i,k)-x;
    endfor
    for k=i:1:n
      if(i==k)
        L(i,i)=1;
      else
        y=0;
        for j=1:1:i
          y=y+L(k,j)*U(j,i);
        endfor  
          L(k,i)=(A(k,i)-y)/U(i,i);
      endif
     endfor
  endfor
  L
  U
endfunction