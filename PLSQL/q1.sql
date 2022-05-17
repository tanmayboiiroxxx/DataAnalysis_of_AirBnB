DECLARE
     
     CURSOR S IS SELECT Accommodations
     FROM Property;
     ACCO Property.Accommodations%TYPE;
     --PRICE Property.Price%TYPE;
     CURSOR B IS SELECT Price
     FROM Property;
     PRICE Property.Price%TYPE;
     
     C NUMBER;
BEGIN
    OPEN S;
    OPEN B;
    LOOP
        FETCH S INTO ACCO;
        exit WHEN S%NOTFOUND;
        dbms_output.put_line(ACCO);
        
        FETCH B INTO PRICE;
        exit WHEN B%NOTFOUND;
        dbms_output.put_line(PRICE);
        
        C:= PRICE/ACCO;
        
        dbms_output.put_line(C);
    
    --CLOSE S;
    END LOOP;

    --CLOSE B;
    
    
END;
