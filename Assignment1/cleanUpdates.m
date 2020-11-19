function cleanUpdates(tableofdata)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
n=numel(tableofdata.Country_Region)
for i = 2:n
    if tableofdata.Last_Update(i) =='NaT'
        if tableofdata.Last_Update(i-1)~='NaT' && tableofdata.Last_Update(i+1)~='NaT'
            tableofdata.Last_Update(i) = (tableofdata.Last_Update{i-1} + covid19_data.Last_Update(i+1))/2 ;
        elseif covid19_data.Last_Update(i+1)=='NaT' && tableofdata.Last_Update(i-1)~='NaT'
            tableofdata.Last_Update(i) = tableofdata.Last_Update(i-1);
        else
            tableofdata.Last_Update(i) = tableofdata.Last_Update(i+1);
        end
    end
end
end