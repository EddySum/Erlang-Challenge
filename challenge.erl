-module(challenge).
    -export([main/1,printData/1]).
    % Function will take string parameter for the ASCII input
    % Sample Call: challenge:main("0000011319353459011000000000020000080403001305102808301308040804123456123456192165102801").
    main(ASCI) -> 
        Data = [
            {'Account_number', string:substr(ASCI, 1, 16)},
            {'Code', string:substr(ASCI, 17, 6)},
            {'Amount', string:substr(ASCI, 23, 12)},
            {'Datetime', string:substr(ASCI, 35, 10)},
            {'Trace_number', string:substr(ASCI, 45, 6)},
            {'Time', string:substr(ASCI, 51, 6)},
            {'Date', string:substr(ASCI, 57, 4)},
            {'Capture_date', string:substr(ASCI, 61, 4)},
            {'Company_id', string:substr(ASCI, 65, 6)},
            {'Reference_num', string:substr(ASCI, 77, 12)}
        ],
    
        [printData(Tup)|| Tup <- Data].
    
    %Print the data for the key value tuple
    printData(Tuple) -> 
        Key = element(1, Tuple),
        io:fwrite("~p: ", [Key]),

        Val = element(2, Tuple),
        io:fwrite("~p ~n", [Val]).
        
