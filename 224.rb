# QUESTION 1
# Annotate the code below (you can mark the values on each line as shown).
# Although it seems like a lot of lines to annotate, 
# there are large amounts of code that never get run!
v = 1             # 1 (v is 1)
w = 2             # 2 (v is 1, w is 2)
x = 3             # 3 (v is 1, w is 2, x is 3)
y = 4             # 4 (v is 1, w is 2, x is 3, y is 4)
z = 5             # 5 (v is 1, w is 2, x is 3, y is 4, z is 5)

if 2 > 3          # 6 (2 is not greater than 3, nothing runs until line 20)
  x = 10          
  if 2 == 2       
    y = 20        
    if 3 == 3     
      z = 30      
    end           
  end             
  w = 9           
elsif 2 == 2      # 7 (2 is equal to 2, continue)
  x = 70          # 8 (v is 1, w is 2, x is 70, y is 4, z is 5)
  if 2 > 1        # 9 (2 is greater than 1, continue)
    y = 80        # 10 (v is 1, w is 2, x is 70, y is 80, z is 5)
  else            
    z = 90        
  end             
  if x < 100      # 11 (70 is less than 100, continue)
    w = 8         # 12 (v is 1, w is 8, x is 70, y is 80, z is 5)
    if z == 30    # 13 (5 is not equal to 30, skip next code block)
      y = 100     
    else          # 14 (else condition is met, continue)
      y = 14      # 15 (v is 1, w is 8, x is 70, y is 14, z is 5)
      if w > 10   # 16 (8 is not equal to 10, skip next block)
        v = 1000  
      end         
    end           
  else            # (This is the else that corresponds to the if on line 27, which was satisfied; skip next)
    w = 19        
    if z == 200   
      y = 87      
    else          
      y = 33      
      if w > 4    
        v = 10000 
      end         
    end           
  end             
else              # (This else corresponds to if on line 11 and elsif on line 20, which was satisfied; skip next block)
  w = 100         
  x = x + x       
  y = 10          
  if z < w        
    if x < y      
      if z < v    
        z = y     
      end         
    end           
  end             
end               

p v               
p w               
p x               
p y               
p z               

# QUESTION 2
# Fix the indentation of the code below.
apple = 1
banana = 2
carrot = 3

if apple > carrot
  if apple > 1
    p 1
  else
    p 2
    if banana == 2
      p 3
    else
      p 4
    end
  end
elsif apple == carrot
  if apple > 1
    p 5
  else
    p 6
    if banana == 2
      p 7
    else
      p 8
    end
  end
else
  if apple > 1
    p 9
  else
    p 10
    if banana == 2
      p 11
    else
      p 12
    end
  end
end
