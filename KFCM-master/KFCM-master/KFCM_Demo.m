clc;clear all;close all;

Img = imread('IMG-0002-00001.jpg');
Img = imresize(Img,0.25)
% Img = imread('noise.bmp');
figure(1),imshow(Img,[]);
Img=rgb2gray(Img);
%������ʼ��  
cluster_n =6;                               %������Ŀ
m=2;                                        %������Ȩ�ز���m
iter_max=500;                               %����������
e=1e-5;                                     %ֹͣ��ֵ����
delta=10;                                   %��˹�˵�deltaֵ  5~15

Vinit=KFCM_init(Img,cluster_n);              %�������ĳ�ʼ��
Img_label=KFCM_Img(Img,Vinit,cluster_n,m,iter_max,e,delta);

figure(2);
imshow(Img_label,[]);

figure(3);imshow(Img_label==1);
figure(4);imshow(Img_label==2);
figure(5);imshow(Img_label==3);
figure(6);imshow(Img_label==4);
