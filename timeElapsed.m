function newArray = timeElapsed(datetime_array)
    % This function converts an array of elements in datetime format
    % into the total elapsed time in seconds since the first data point was
    % acquired
    %
    % To find out more about datetime formats and arrays try the command:
    %
    %   >> doc datetime
    %
    % Copyright 2018 The MathWorks, Inc
    
    newArray = second(datetime_array);
    arraySize = numel(newArray); % Number of elements in the array
    first = newArray(1);
    i = 1;
    
    % The following loop will run until it reaches the end of the array.
    % Whenever the next number is smaller than the current number the loop will
    % add 60 seconds and then start at the begining of the array again.
    while i < arraySize
        if newArray(i) > newArray(i+1)
            newArray(i+1) = newArray(i+1) +60;
            i = 1;
        end
        i = i+1;
    end
    
    % Subtract the first number to all elements of the array in order to start
    % the array at 0.
        newArray = newArray - first;  
end
