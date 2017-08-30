using PyPlot

# Constantes

m=1;

#k1=1.0; #constante del resorte en x
#k2=1.0; #constante del resorte en y

#w1=sqrt(k1/m);
#w2=sqrt(k2/m);

w1=3
w2=6

delta=pi/2;
alfa=pi/2;

A=1;
B=1;

#Arreglos

t = linspace(0, 2*pi, 1000); #periodo de  0 a 2pi

x=[]
y=[]

for i=1:length(t)
    valx=A*cos(w1*t[i]+delta)
    x=push!(x,valx)

    valy=B*cos(w2*t[i]+alfa)
    y=push!(y,valy)
end

#Gráfica

title("Oscilador en 2D")#Título de la gráfica
xlabel("\$x\$") #Etiqueta para el eje X
ylabel("\$y\$")#Etiqueta para el eje Y

axhline(0, color="red")
grid() #malla

plot(x,y)

show()
