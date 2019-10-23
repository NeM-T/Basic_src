DECLARE EXTERNAL SUB stack.push
DECLARE EXTERNAL FUNCTION stack.pop
CALL push(12)
CALL push(34)
PRINT pop,pop
END
! 
MODULE stack
PUBLIC SUB push
PUBLIC FUNCTION pop
SHARE NUMERIC index, stack(100)
LET index=0
EXTERNAL SUB push(a)
   LET index=index+1
   LET stack(index)=a
END SUB
EXTERNAL FUNCTION pop
   LET pop=stack(index)
   LET index=index-1
END FUNCTION
END MODULE
