## Lab 1

#### Priority Encoder

![CountZero_screenshot](/Users/andrew/BackUp/UCLA/152A-ee/Lab0/M152A-2020Winter/Lab1/CountZero_screenshot.png)

The output counts how many zeros are there in the input
$$
\begin{align*}
Q_0 &= \sum(1,2,4,6)\\
Q_0 &= (
						\overline{D}_7 \overline{D}_6 \overline{D}_5 \overline{D}_4 
						\overline{D}_3 \overline{D}_2 \overline{D}_1 D_0 +
						\overline{D}_7 \overline{D}_6 \overline{D}_5 \overline{D}_4 
						\overline{D}_3 D_2 +
						\overline{D}_7 \overline{D}_6 \overline{D}_5 D_4 +
						\overline{D}_7 D_6
						)\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \  \\ 
Q_0 &= (
						\overline{D}_7 \overline{D}_5 \overline{D}_3 \overline{D}_1 D_0 +
						\overline{D}_7 \overline{D}_5 \overline{D}_3 D_2 +
						\overline{D}_7 \overline{D}_5 D_4 +
						\overline{D}_7 D_6
						)	\\
Q_0 &= (
						\overline{D}_7 (\overline{D}_5 (\overline{D}_3 \overline{D}_1 D_0 +
						 \overline{D}_3 D_2 +
						 D_4) +
						D_6)
						)
\end{align*}
$$
Similarly:
$$
\begin{align}
Q_1 &= \sum(0,1,4,5)\\
Q_1 &= (
						\overline{D}_7 \overline{D}_6 \overline{D}_5 \overline{D}_4 
						\overline{D}_3 \overline{D}_2 \overline{D}_1 D_0 +
						\overline{D}_7 \overline{D}_6 \overline{D}_5 \overline{D}_4 
						\overline{D}_3 \overline{D}_2 D_1 +
						\overline{D}_7 \overline{D}_6 \overline{D}_5 D_4 +
						\overline{D}_7 \overline{D}_6 D_5
						)\ \ \ \ \ \ \  \ \ \ \ \ \ \ \ \ \ \ \ \ \ \   \\
Q_1 &= (
						\overline{D}_7 \overline{D}_6 \overline{D}_3 \overline{D}_2 D_0 +
						\overline{D}_7 \overline{D}_6 \overline{D}_3 \overline{D}_2 D_1 +
						\overline{D}_7 \overline{D}_6 D_4 +
						\overline{D}_7 \overline{D}_6 D_5
						)\\
Q_1 &= (
						\overline{D}_7 
						(\overline{D}_6 (\overline{D}_3 \overline{D}_2 (D_0 +
						  D_1) +
						  D_4 +
						  D_5)
						 )
						)\\
\end{align}
$$
And
$$
\begin{align}
Q_1 &= \sum(0,1,2,3)\\
Q_1 &= (
						\overline{D}_7 \overline{D}_6 \overline{D}_5 \overline{D}_4 
						\overline{D}_3 \overline{D}_2 \overline{D}_1 D_0 +
						\overline{D}_7 \overline{D}_6 \overline{D}_5 \overline{D}_4 
						\overline{D}_3 \overline{D}_2 D_1 +
						\overline{D}_7 \overline{D}_6 \overline{D}_5 \overline{D}_4 
						\overline{D}_3 D_2 +
						\overline{D}_7 \overline{D}_6 \overline{D}_5 \overline{D}_4 
						D_3
						)\\
Q_1 &= (
						\overline{D}_7 \overline{D}_6 \overline{D}_5 \overline{D}_4 
					  D_0 +
						\overline{D}_7 \overline{D}_6 \overline{D}_5 \overline{D}_4 
						D_1 +
						\overline{D}_7 \overline{D}_6 \overline{D}_5 \overline{D}_4 
						D_2 +
						\overline{D}_7 \overline{D}_6 \overline{D}_5 \overline{D}_4 
						D_3
						)\\
Q_1 &= (
						\overline{D}_7 \overline{D}_6 \overline{D}_5 \overline{D}_4 
					  (D_0 +D_1 +D_2 +D_3)
						)\\
\end{align}
$$


### Test Bench

![TestBench_screenshot](/Users/andrew/BackUp/UCLA/152A-ee/Lab0/M152A-2020Winter/Lab1/TestBench_screenshot.png)