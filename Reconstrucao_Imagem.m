close all; clear all; clc;

%% Leitura da imagem e armazenamento na vari�vel
imagem_among_us=imread('amongus.png');
imshow(imagem_among_us)
title('Imagem Original');

%% Separa��o dos componentes RGB da imagem
imagem_among_us_red=imagem_among_us(:,:,1);
imagem_among_us_green=imagem_among_us(:,:,2);
imagem_among_us_blue=imagem_among_us(:,:,3);

%% Equaliza��o do histograma em cada componente
imagem_among_us_eq = histeq(imagem_among_us_red);
imagem_among_us_eq2=histeq(imagem_among_us_green);
imagem_among_us_eq3=histeq(imagem_among_us_blue);

%% Plot dos respectivos canais
figure;
subplot(2,2,1);
imshow(imagem_among_us_eq);title('Canal R equalizado')
subplot(2,2,2)
imshow(imagem_among_us_eq2);title('Canal G equalizado')
subplot(2,2,3)
imshow(imagem_among_us_eq3);title('Canal B equalizado')


%% Uni�o de canais (reconstru��o da imagem)
figure;
imagem_among_us_equalizada(:,:,1) = imagem_among_us_eq;
imagem_among_us_equalizada(:,:,2) = imagem_among_us_eq2;
imagem_among_us_equalizada(:,:,3) = imagem_among_us_eq3;
imshow(imagem_among_us_equalizada);
title('Canais unidos (imagem reconstru�da)');
