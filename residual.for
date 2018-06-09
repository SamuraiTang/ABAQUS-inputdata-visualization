      SUBROUTINE UEXTERNALDB(LOP,LRESTART,TIME,DTIME,KSTEP,KINC)
      
      INCLUDE 'ABA_PARAM.INC'
      
      DIMENSION TIME(2)
      WRITE(6,*) '1'
      WRITE(6,*) 'LOP=', lop
      IF(LOP.EQ.5)THEN
          WRITE(6,*) '2'
          OPEN(UNIT=15, FILE='E:\pile foundation\shaort pile\
     1residual output\residual_field.txt')
          WRITE(6,*) '3'
      WRITE(6,*) '4'    
      ELSEIF(LOP == 6)THEN
          CLOSE(15)
      END IF
      WRITE(6,*) '5'
      RETURN
      END

     
        
        
        
        
      SUBROUTINE SIGINI(SIGMA,COORDS,NTENS,NCRDS,NOEL,NPT,LAYER,
     1 KSPT,LREBAR,NAMES)

      INCLUDE 'ABA_PARAM.INC'
      
      DIMENSION SIGMA(NTENS),COORDS(NCRDS)
      CHARACTER NAMES(2)*80
      WRITE(6,*) '6'
      WRITE(6,*) 'NOEL=', NOEL
      WRITE(6,*) 'NPT=', NPT
      IF(NOEL .GE. 631) THEN
          READ(15,FMT=*) ELNUM, IPNUM, S1,S2,S3,S4,S5,S6
          WRITE(6,*) '8'
          WRITE(6,*) 'ELNUM', ELNUM
          WRITE(6,*) 'S1', S1
          SIGMA(1) = S1
          SIGMA(2) = S2
          SIGMA(3) = S3
          SIGMA(4) = S4
          SIGMA(5) = S5
          SIGMA(6) = S6
      ELSE
          SIGMA(1) = 0
          SIGMA(2) = 0
          SIGMA(3) = 0
          SIGMA(4) = 0
          SIGMA(5) = 0
          SIGMA(6) = 0
      END IF

      RETURN
      END
