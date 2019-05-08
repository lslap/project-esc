[file,path] = uigetfile('./*.*','Select the DOSCAR file');
if file == 0
    error('No input provided. Aborting...')
end
filename = strcat(path,file);

fileID = fopen(filename,'r');

%%
formatSpec = '%f%f%f%f%f';
data1 = cell2mat(textscan(fileID, formatSpec,'Headerlines', 5));

fermiEnergy = data1(1,4);
data2=data1(2:end,:);

x = data2(:,1)-fermiEnergy;
y = data2(:,2);
plot(x,y)
ylabel('States/eV','FontSize',18);
xlabel('Energy (eV)','FontSize',18);
title('Diamond Si','FontSize',24);