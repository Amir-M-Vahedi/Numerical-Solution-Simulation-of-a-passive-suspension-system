function zdot=solvr(t,z)
global M m I k1 k2 k3 k4 c1 c2 c3 c4 a b
A=[(b^2*M+I)/((a+b)^2), (a*b*M-I)/((a+b)^2), 0, 0;
   (a*b*M-I)/((a+b)^2), (a^2*M+I)/((a+b)^2), 0, 0;
    0 0 m 0;
    0 0 0 m];
B=[c1 0 -c1 0;
   c2 0 -c2 0;
   -c1 0 c1+c3 0;
   0 -c2 0 c2+c4];
C=[k1 0 -k1 0;
   0 k2 0 -k2;
   -k1 0 k1+k3 0;
   0 -k2 0 k2+k4];
zdot=zeros(8,1);
zdot(1)=z(5);
zdot(2)=z(6);
zdot(3)=z(7);
zdot(4)=z(8);
Sol=(A^-1)*(-C*[z(1);z(2);z(3);z(4)]-B*[zdot(1);zdot(2);zdot(3);zdot(4)]);
zdot(5)=Sol(1);
zdot(6)=Sol(2);
zdot(7)=Sol(3);
zdot(8)=Sol(4);
end


