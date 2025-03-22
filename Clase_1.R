vector_texto_factor <- factor(mi_vector_texto)
vector_factor <- factor(mi_vector, levels = c(1,2,3,4,5), labels= c("a","b","c","d","e"))
vector_factor
as.numeric(vector_factor)
levels(vector_factor)
desviacion <- sd(mi_vector)
length(mi_vector)
mi_vector[1]
mi_vector[2:3]
mi_vector[c(1,4)]
mi_vector[mi_vector<2]
mi_lista<- list(numero=10, texto= "Hola", vector = c(1,2,3))
mi_lista
datos <-data.frame(nombre=c("Felipe", "Hugo"), edad= c(23,24))
datos$nombre


#Ejercicio 1:
edad<- c(20,21,23,25,27)
mean(edad)
median(edad)
min(edad)
max(edad)

#Ejercicio 2:
frutas<-c("anana","banana","sandia")

#Ejercicio 3:
data<-data.frame(nombre= frutas, edad= edad[1:3])
sd(data$edad)

