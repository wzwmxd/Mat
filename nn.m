%清空环境变量
clc
clear
%导入四类语音信号
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
%输入数据
input=data(:,2:25);
output1=data(:,1);
%设定每组输入输出信号
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

%从中随机抽取1500组数据作为训练数据，500组数据作为预测数据
k=rand(1,2000)
[m,n]=sort(k)

input_train=input(n(1:1500),:)';
output_train=output(n(1:1500),:)';
input_test=input(n(1501:2000),:)';
output_test=output(n(1500:2000),:)';

%输入数据归一化
[inputn,inputs]=mapminmax(input_train)
