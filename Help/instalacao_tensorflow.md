# Instalação do Tensor Flow

Aqui é apresentado um simples manual para instalar o tensorflow no ambiente Windows 
E nesses simple manual apresenta a resolução de alguns problemas

## Instalação sem Anaconda

1° passo: Ir no terminal e digitar.
```
C:> pip install tensorflow
```

## Instalação com Anaconda

1° passo: Ir no terminal e digitar.
```
C:> conda create -n tensorflow pip python=[sua versão, ex:3.5]
```

2° passo: Ativar o ambiente conda.
```
C:> activate tensorflow
```

3° passo: Instalar o TensorFlow dentro do seu ambiente conda
```
(tensorflow)C:> pip install --ignore-installed --upgrade tensorflow
```

## Desistalação do Tensor Flow

1° passo: Ir no terminal e digitar.
```
C:> pip uninstall tensorflow
```


## Validação de instalação 

1° passo: Ir no terminal e acessar o python
```
C:> python
```

2° passo: Escrevar um pequeno programa para teste, como por exemplo o teste abaixo
```
# Importando o `tensorflow`
import tensorflow as tf

# Iniciando duas constants
A = tf.constant([1,2,3,4])
B = tf.constant([5,6,7,8])

# Multiplicação
resultado = tf.multiply(A, B)

# Print do resultado
print(resultado)
```

## Erros comuns

1° problema: 
```
Traceback (última chamada mais recente): 
  Arquivo "<stdin>", linha 1, em <module> 
ModuleNotFoundError: nenhum módulo chamado 'tensorflow'
```
Resolução: Digite o comando abaixo
```
C:> conda install tensorflow
```

2° problema: 
Resolução: 
Se a instalação não funcionou é possível que você tenha feita a instalação 
com Anaconda, ou o contrário.



