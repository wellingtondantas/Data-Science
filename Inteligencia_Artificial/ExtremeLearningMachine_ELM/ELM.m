%By Wellington Dantas - IFCE - Campus Fortaleza - Mestrado em Inteligência Artificial
%Funcao que tem o objetivo de treinar a rede ELM
%Funcao retorna os pesos ajustaveis. 
%[w,m]=ELM(Dados, QtdAtributos, QtdClasses,QtdNeuCamOculta).
%Fonte de conceitos calculados: https://en.wikipedia.org/wiki/Extreme_learning_machine

function [w,m] = ELM(Dados,QtdAtributos,QtdClasses,QtdNeuCamOculta )
   
    %Dimensoes do dataset
    [nl,nc]=size(Dados);
    
    %Peso da camada oculta
    w = rand(QtdNeuCamOculta, QtdAtributos);

    %Forma a entrada e saida
    x=Dados(:,1:end-QtdClasses);
    d=Dados(:,end-(QtdClasses-1):end);
      
    %Saida da camada oculta
    h = [-1; 1./(1+exp(-(w*x(1,:)')))]';
    for i=2:nl
       %
	   %
    end
  
    %OLAM
    m =h\d;   
end