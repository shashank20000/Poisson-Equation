clc;
syms x y z r fi a b l1 u1 l2 u2 i I M d t
disp("Poisson's Equation")
s = menu('ENTER THE COORDINATE SYSTEM', 'CARTESIAN', 'CYLINDRICAL','SPHERICAL');
if s==1
    a=input("enter the x component of the vector electric potential = ",'s');
    b=input("enter the y component of the vector electric potential = ",'s');
    c=input("enter the z component of the vector electric potential = ",'s');
    syms x y z
    A=str2sym(a);
    B=str2sym(b);
    C=str2sym(c);
    electric_potential=diff(A,x,2)+diff(B,y,2)+diff(C,z,2);
    m=input("enter the value of x: ");
    n=input("enter the value of y: ");
    o=input("enter the value of z: ");
    value=subs(electric_potential,[x y z],[m n o]);
    E=8.852;
    volume=E*value;
    fprintf('The value of Del^2 V =%d\n',value);
    fprintf('The value of Volume Density =%d*10^-12\n',volume);
elseif s==2
    a=input("enter the r component of the vector electric potential = ",'s');
    b=input("enter the phi component of the vector electric potential = ",'s');
    c=input("enter the z component of the vector electric potential = ",'s');
    syms r phi z
    A=str2sym(a);
    B=str2sym(b);
    C=str2sym(c);
    electric_potential=(1/r)*(diff(r*diff(A,r)))+ (1/(r^2))*diff(B,phi,2)+ diff(C,z,2);
    m=input("enter the value of r: ");
    n=input("enter the value of phi: ");
    o=input("enter the value of z: ");
    value=subs(electric_potential,[r phi z],[m n o]);
    E=8.852;
    volume=E*value;
    fprintf('The value of Del^2 V =%d\n',value);
    fprintf('The value of Volume Density =%d*10^-12\n',volume);
elseif s==3
    a=input("enter the r component of the vector electric potential = ",'s');
    b=input("enter the theta component of the vector electric potential = ",'s');
    c=input("enter the phi component of the vector electric potential = ",'s');
    syms r phi theta
    A=str2sym(a);
    B=str2sym(b);
    C=str2sym(c);
    electric_potential=((1/(r^2))*(diff(r*r*diff(A,r))))+((1/(r*r*sin(theta)))*diff(sin(theta)*diff(B,theta)))+((1/(r*r*sin(theta)*sin(theta)))*diff(C,phi,2));
    m=input("enter the value of r: ");
    n=input("enter the value of theta: ");
    o=input("enter the value of phi: ");
    value=subs(electric_potential,[r theta phi],[m n o]);
    E=8.852;
    volume=E*value;
    fprintf('The value of Del^2 V =%d\n',value);
    fprintf('The value of Volume Density =%d*10^-12\n',volume);
end

