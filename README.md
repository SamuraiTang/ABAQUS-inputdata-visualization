# ABAQUS-inputdata-visualization
subroutine, python data transformation, ABAQUS initial condition   
Step1: transfer the .csv file to .txt file. Make sure the data by coloum in the order of : element number/ integration point number/ S11/ S22/ S33/ S12/ S13/ S23  
Step2: insert the commond "INITIAL CONDITIONS, DTYPE=STRESS, USER" after the material definition in .inp file  
Step3: Run abaqus with subroutine and view the initial stress distribution
