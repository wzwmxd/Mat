%��ջ�������
clc
clear
%�������������ź�
%load data1 c1
%load data2 c2
%load data3 c3
%load data4 c4
c1=melcepst('D:\Music\1.mp3');
c2=melcepst('D:\Music\2.mp3');
c3=melcepst('D:\Music\3.mp3');
c4=melcepst('D:\Music\4.mp3');
data(1:500,:)=c1(1:500,:);
data(501:1000,:)=c2(1:500,:);
data(1001:1500,:)=c3(1:500,:);
data(1501:2000,:)=c4(1:500,:);
%��������
input=data(:,2:25);
output1=data(:,1);
%�趨ÿ����������ź�
for i=1:2000
    switch output1(i)
        case 1
            output(i,:)=[1 0 0 0]
        case 2
            output(i,:)=[0 1 0 0]
        case 3
            output(i,:)=[0 0 1 0]
        case 4
            output(i,:)=[0 0 0 1]
    end
end

%���������ȡ1500��������Ϊѵ�����ݣ�500��������ΪԤ������
k=rand(1,2000)
[m,n]=sort(k)

input_train=input(n(1:1500),:)';
output_train=output(n(1:1500),:)';
input_test=input(n(1501:2000),:)';
output_test=output(n(1500:2000),:)';

%�������ݹ�һ��
[inputn,inputs]=mapminmax(input_train)
