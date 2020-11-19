function tableofdata = graphparam(tableofdata)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
a=height(tableofdata);
z=table(zeros(a,1));
tableofdata=[tableofdata,z];
tableofdata.Var1(1)=tableofdata.Confirmed(1) - tableofdata.Deaths(1) - tableofdata.Recovered(1);
for i=2:a
    tableofdata.Var1(i)= tableofdata.Confirmed(i)-tableofdata.Confirmed(i-1) - tableofdata.Deaths(i)+tableofdata.Deaths(i-1) - tableofdata.Recovered(i)+ tableofdata.Recovered(i-1);
        
end
end