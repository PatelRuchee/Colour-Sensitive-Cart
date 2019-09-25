start: high b.6

main: if pinc.5=1 then press
	if pinc.5=0 then start
	goto main
	

press: high b.7
	 wait 5 if pinc.5=1 then done 

motor: high b.3, b.1 low b.2, c.7 ;forward
	 if pinc.5=1 then done
	 
three: if pinc.4=1 then sw1 ;green
	 if pinc.3=1 then sw2;orange
 	 if pinc.3=1 and  pinc.4=1 then sw3
 	 if pinc.5=1 then done
       goto three


sw1: low b.3, c.7, b.1, b.2 ;stop
     if pinc.5=1 then done
     pause 2000
   
    if pinc.5=1 then done
    low b.3 high c.7
    high b.1 low b.2 ; 360
    wait 5 if pinc.5=1 then done
    
    low b.3, c.7, b.1, b.2 ;stop
     if pinc.5=1 then done
     pause 2000
    
    if pinc.5=1 then done
    low b.3 high c.7
    low b.1 high b.2 ;reverse
    wait 3 if pinc.5=1 then done
    
    low b.3, c.7, b.1, b.2 ;stop
    wait 3 if pinc.5=1 then done
    
    high b.3 low c.7,b.1, b.2 ; turn right 
    wait 5 if pinc.5=1 then done 
    
    low b.3, c.7, b.1, b.2 ; stop
    wait 3
     
    high b.1 low c.7,b.3, b.2 ; turn left 
    wait 5 if pinc.5=1 then done 
    
    low b.1, c.7, b.3, b.2 
    for b5= 1 to 10 if pinc.5=1 then done
     sound c.2 ,(5,10000)
     sound c.2 ,(10, 10000)
     sound c.2 ,(15, 10000)
     low b.5 high b.4
     pause 50
     low b.4 high b.5
     pause 50
     next b5 if pinc.5=1 then done
     low b.5, b.4
    high b.3, b.1 low b.2, c.7
    goto three


sw2: if pinc.5=1 then done
     low b.3 low c.7 ;stop
     low b.1 low b.2
     pause 2000 if pinc.5=1 then done
     low b.3 high c.7
     low b.1 high b.2 ;reverse
     
     for b5= 1 to 10 if pinc.5=1 then done
     sound c.2 ,(125,10000)
     sound c.2 ,(80, 10000)
     sound c.2 ,(20, 10000)
     low b.4 high b.5
     pause 50
     low b.5 high b.4
     pause 50
     next b5 if pinc.5=1 then done
     low b.5, b.4
     
     if pinc.5=1 then done
    low b.3, c.7, b.1, b.2 ;stop
    wait 3 if pinc.5=1 then done 
    
    
    
    low b.3 low c.7
    high b.1 low b.2 ; turn left
    wait 5 if pinc.5=1 then done
    
    low b.3, c.7, b.1, b.2 ; stop
    goto three	
	
	
	
sw3: if pinc.5=1 then done
     low b.3 low c.7 ;stop
     low b.1 low b.2
     pause 300 if pinc.5=1 then done

    high b.3 low c.7
    low b.1 high b.2 ;reverse
    wait 5 if pinc.5=1 then done
    low b.3, c.7, b.1, b.2 ;stop
    wait 3 if pinc.5=1 then done
    
    low b.3 low c.7
    high b.1 low b.2 ; 360
    wait 5 if pinc.5=1 then done
    
    low b.3, c.7, b.1, b.2 ; stop
    goto three	
		
	
done: low b.3, b.1, b.2, b.5, b.4, b.7, c.7
	pause 1000
	

check:if pinc.5=1 then press
      goto done	
