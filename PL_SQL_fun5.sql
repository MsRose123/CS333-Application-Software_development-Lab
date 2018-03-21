declare 
    rad number(9,2);
    area number(9,2);
begin 
    for  rad in 5..15
        loop
            area:=rad*rad*3.14;
            insert into radtab values(rad,area); 
        end loop;
end;     
