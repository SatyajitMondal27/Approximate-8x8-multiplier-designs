# Approximate-8x8-multiplier-designs
Approxiamate multipliers are used in a wide range if error tolerant applications where speed and power consumptions is prirotised over accuracy.
\
This project presents 8x8 multipliers made using 4, 4x4 multipliers.\
Design 0 is an exact 8x8 multiplier made using 4 exact Wallace tree multipliers.\
Design 1 uses three exact Wallace tree multipliers and one approximate 4x4 multiplier as the least significant 4x4 multiplier.\
Design 2 uses two exact Wallace tree multipliers and two approximate 4x4 multipliers as the two least significant 4x4 multipliers.\
Design 3 uses one exact Wallace tree multiplier and three approximate 4x4 multipliers as the three least significant 4x4 multipliers.\
Design 4 is an 8x8 multiplier using only approximate 4x4 multiplier.\

|Design|||||||Accuracy%|\
|   0   |||||||  100   |\
|   1   |||||||  74.609|\
|   2   |||||||  60.03 |\
|   3   |||||||  47.33 |\
|   4   |||||||  39.70 |\

In the 4x4 approximate multipliers we use the stage two and stage 3 4:2 compressors to calculation the stage 2 and stage 3 sum of partial products during multiplication.
In accurate multipliers XOR gates comsume more power and provide larger delays when compared to AND and OR gates.\
Hence the motive of creating this approximate multiplier is to remove the use of XOR gates and compensate for accurcay with higher power and speed.\

In the stage 2 4:2 compressor the inputs to the 4:2 compressor are encoded as\
Pi,j= pi,j + pj,i;\
Gi,j = pi,j * pj,i;\
Then we calculate the approximate sum = (x1+x2)+(x3+x4)\
and approximate carry = (x1.x2)+(x3.x4)\

In the stage 3 4:2 compressor the inputs to the 4:2 compressor are encoded as\ x1=c2(carry from stage 2)
x2=G3,0 + G2,1
x3=P2,1
x4=P3,0

References- The following work has been done with reference to Mohammad Saeed Ansari, Honglan Jiang, Bruce F. Cockburn, Jie Han, Low-Power Approximate Multipliers Using Encoded Partial Products and Approximate Compressors.



