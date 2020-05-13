%By Wellington Dantas - IFCE - Campus Fortaleza - Mestrado em Inteligência Artificial
%Funcao tem o objetivo de treinar a rede RBF
%Funcao retorna os pesos ajustaveis.
%[w,m]=RBF(dados, QtdAtributos, QtdClasses).
%Fonte de conceitos calculados: https://en.wikipedia.org/wiki/Radial_basis_function
function [w] = RBF( dados, QtdClasses, QtdAtributos, Centroides, Abertura)
    %Separacao dos dados de entrada
    x = dados(:, 1:size(dados, 2) - QtdClasses);
    d = dados(:, QtdAtributos+1:end);
    
    %Loop que atualiza os pesos da camada oculta
    for i=1:size(x, 1)
        for j=1:size(Centroides, 1)
            %Faz a ativacao gaussina
            %
			%
        end
    end

    %Calcula de forma matricial o peso de saida
    h = [-1*ones(size(x,1),1), h];
    w = h\d;
    
end
