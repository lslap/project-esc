import_eigenval();

%gebruik de read me om de eigenval file te readen
%sla voor elke spin op
eigenvalues=ans(:,:,1);

%zorg dat alles op Fermi niveau wordt geplaatst
eigenvalues=eigenvalues-ones(40,28)*5,79;

%plot verticale lijnen
fig=figure; 
hax=axes; 
hold on 
plot(eigenvalues);
SP=10; %your point goes here 
line([SP SP],get(hax,'YLim'),'Color',[1 0 0])
hold on
SP=20; %your point goes here 
line([SP SP],get(hax,'YLim'),'Color',[1 0 0])
hold on
SP=30; %your point goes here 
line([SP SP],get(hax,'YLim'),'Color',[1 0 0])
hold on
SP=40; %your point goes here 
line([SP SP],get(hax,'YLim'),'Color',[1 0 0])

% assen correct L-G-X-UK-G
xt={'L' ; '\Gamma' ; 'X' ; 'UK' ; '\Gamma'} ; 
set(gca,'xtick',0:10:40); 
set(gca,'xticklabel',xt);



 ylabel({'Energy (eV)'},'FontSize',18);
 title({'Band Structure'},'FontSize',24);
 set(gca,'fontsize',18)
 axis([0 40 -15 10])