# Pipe Example
This project shows how to take pipe input from another program to your program
using stdin. 

# Running
After cloneing this project run:

```
./pipe-example.sh
```

This will run make on the project to generate the pipe-example executable from 
the pipe-example.cpp file and run this script:

```
cat hex-values.txt | ./pipe-example > int-values.txt
```

