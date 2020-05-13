%By Wellington Dantas - IFCE - Campus Fortaleza - Mestrado em Inteligência Artificial
%Funcao que tem o objetivo de treinar a rede MLP.
%Funcao retorna os pesos ajustaveis.
%[w,m]=MLP(dados, QtdAtributos, QtdClasses).
%Fonte de conceitos calculados: https://en.wikipedia.org/wiki/Multilayer_perceptron
function [w,m]=MLP(Dados, QtdAtributos, QtdClasses, QtdNeuCamOculta)

    %Pesos iniciais
    w = rand(QtdNeuCamOculta, QtdAtributos);
    m = rand(QtdClasses, QtdNeuCamOculta+1);
    
    %Dimensoes do dataset
    [nl,nc]=size(Dados);
    
    %Taxa de aprendizado inicial (n0) e final (nf).
    n0=0.5;nf=0.05;
    
    %Numero de epocas
    epocas=100;
    
    for i=1:epocas
        
        %Decaimento exponecial
        n=n0*(nf/n0)^(i/epocas);
        %Mistura
        Dados=Dados(randperm(nl),:);
        
        %Forma a entrada e saida
        x=Dados(:,1:end-QtdClasses);
        d=Dados(:,end-(QtdClasses-1):end);
        
        %Simula [QtdClasses] neuronios da camada oculta
        for j=1:nl
            
            %Calculo da ativacao da camada oculta
            h = 1./(1+exp(-x(j,:)*w'));

            %Adicionando -1's na matriz
            h = [-1*ones(1,1) h];

            %Segundo calculo
            y = 1./(1+exp(-h*m'));
            
            %Calculo da variacao da camada de saida
            %O calculo da variacao é o calculo da:
            %derivada multiplicado pelo erro.
            deltaM = y.*(1-y).*(d(j,:)-y);
            
            %Variacao dos m
            mdelta=n*deltaM'*h;
            
            %retropropacacao
            %
			%
			%
            %m(1:end,2:end)
            
            %Variacao dos w
            wdelta=n*deltaW'*x(j,:);
            
            %Atualizacao dos pesos da camada de saida
            m = m + mdelta;
            
            %Atualizacao dos pesos da camada oculta
            w = w + wdelta;
        end
    end
end