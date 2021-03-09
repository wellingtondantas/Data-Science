# Libs importantes
import numpy as np
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import OneHotEncoder
from sklearn.preprocessing import MinMaxScaler

# Captura os dados do MNIST data
train = pd.read_csv('mnist_train.csv')
test = pd.read_csv('mnist_test.csv')

# Preprocessamento dos dados
onehotencoder = OneHotEncoder(categories='auto')
scaler = MinMaxScaler()

# Normaliza os dados entre (0,1) e aplicar o One Hot nos rótulos
X_train = scaler.fit_transform(train.values[:,1:])
y_train = onehotencoder.fit_transform(train.values[:,:1]).toarray()
X_test = scaler.fit_transform(test.values[:,1:])
y_test = onehotencoder.fit_transform(test.values[:,:1]).toarray()

# Tamanho das entradas, variaveis independentes
input_size = X_train.shape[1]

# Número de neurônios da camada oculta
hidden_size = 1000

# Inicializa os pesos e bias da camada de entrada com valores rondômicos
input_weights = np.random.normal(size=[input_size,hidden_size])
biases = np.random.normal(size=[hidden_size])

# Função de ativação (Pode ser qualquer outra)
def relu(x):
   return np.maximum(x, 0, x)
   
# Função que ajusta os pesos da camada de saída
def hidden_nodes(X):
    G = np.dot(X, input_weights)
    G = G + biases
    H = relu(G)
    return H
    
 output_weights = np.dot(pinv2(hidden_nodes(X_train)), y_train)

# Função de predição
def predict(X):
    out = hidden_nodes(X)
    out = np.dot(out, output_weights)
    return out 
    
# Avaliação do método    
prediction = predict(X_test)
correct = 0
total = X_test.shape[0
for i in range(total):
    predicted = np.argmax(prediction[i])
    actual = np.argmax(y_test[i])
    correct += 1 if predicted == actual else 0
accuracy = correct/total

print('Acurácia para', hidden_size, ' Neurônios/Nós ocultos: ', accuracy)










