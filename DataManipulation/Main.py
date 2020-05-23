#Importação de pacotes
from pandas import DataFrame
import pandas as pd
import numpy as np

#Ler um arquivo csv
dataset = pd.read_csv('iris.csv')
print(dataset)

#Resumo do dataset
dataset.describe()

#Captura as dimensões da matriz
nl,nc = np.shape(dataset)
#print(nl,nc)

#Prepara a matriz de dados do dataset carregado
dataset = DataFrame(dataset)
dataset = dataset.values
#print(dataset)

#Forma uma nova matriz com as dimensoes do dataset
data = np.zeros([nl,nc])
#print(data)

#Rótula as classes da iris em setosa:0, versicolor:1 e virginica:2
for i,item in enumerate(dataset):
    if item[4]=='setosa':
        data[i,0:4]=item[0:4]
        data[i,4]=0.0
    elif item[4]=='versicolor':
        data[i,0:4]=item[0:4]
        data[i,4]=1.0
    else:
        data[i,0:4]=item[0:4]
        data[i,4]=2.0

#print(data)


#Função de normalização da matriz de dados
normalizar = lambda m : (m-m.min())/(m.max()-m.min())

#Normalização dos padrões
data[0:150,0]=normalizar(data[0:150,0])
data[0:150,1]=normalizar(data[0:150,1])
data[0:150,2]=normalizar(data[0:150,2])
data[0:150,3]=normalizar(data[0:150,3])

print(data)






