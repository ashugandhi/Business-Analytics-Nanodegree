/*
Udacity's certified program > Business Analytics Nanodegree
SQL practice > Lesson 6 : SQL Window Functions

WINDOW FUNCTIONS:

Section 11: Aggregations in Windows


ALL AGGREGATIONS without ORDER BY DATE function
*/

SELECT id,
       account_id,
       standard_qty,
       DENSE_RANK() OVER (PARTITION BY account_id ) AS dense_rank,
       SUM(standard_qty) OVER (PARTITION BY account_id ) AS sum_std_qty,
       COUNT(standard_qty) OVER (PARTITION BY account_id ) AS count_std_qty,
       AVG(standard_qty) OVER (PARTITION BY account_id ) AS avg_std_qty,
       MIN(standard_qty) OVER (PARTITION BY account_id ) AS min_std_qty,
       MAX(standard_qty) OVER (PARTITION BY account_id ) AS max_std_qty
FROM orders

/*
Output6912 results
id	account_id	standard_qty	dense_rank	sum_std_qty	count_std_qty	avg_std_qty	min_std_qty	max_std_qty
14	1001	97	1	7896	28	282.0000000000000000	85	566
4318	1001	485	1	7896	28	282.0000000000000000	85	566
4317	1001	507	1	7896	28	282.0000000000000000	85	566
4316	1001	557	1	7896	28	282.0000000000000000	85	566
4315	1001	457	1	7896	28	282.0000000000000000	85	566
4314	1001	531	1	7896	28	282.0000000000000000	85	566
4313	1001	483	1	7896	28	282.0000000000000000	85	566
4312	1001	497	1	7896	28	282.0000000000000000	85	566
4311	1001	498	1	7896	28	282.0000000000000000	85	566
4310	1001	473	1	7896	28	282.0000000000000000	85	566
4309	1001	566	1	7896	28	282.0000000000000000	85	566
11	1001	101	1	7896	28	282.0000000000000000	85	566
12	1001	124	1	7896	28	282.0000000000000000	85	566
13	1001	104	1	7896	28	282.0000000000000000	85	566
1	1001	123	1	7896	28	282.0000000000000000	85	566
4	1001	144	1	7896	28	282.0000000000000000	85	566
3	1001	85	1	7896	28	282.0000000000000000	85	566
2	1001	190	1	7896	28	282.0000000000000000	85	566
16	1001	123	1	7896	28	282.0000000000000000	85	566
15	1001	127	1	7896	28	282.0000000000000000	85	566
5	1001	108	1	7896	28	282.0000000000000000	85	566
6	1001	103	1	7896	28	282.0000000000000000	85	566
7	1001	101	1	7896	28	282.0000000000000000	85	566
8	1001	95	1	7896	28	282.0000000000000000	85	566
9	1001	91	1	7896	28	282.0000000000000000	85	566
10	1001	94	1	7896	28	282.0000000000000000	85	566
4308	1001	526	1	7896	28	282.0000000000000000	85	566
4307	1001	506	1	7896	28	282.0000000000000000	85	566
17	1011	527	1	527	1	527.0000000000000000	527	527
4319	1021	0	1	3152	10	315.2000000000000000	0	555
20	1021	483	1	3152	10	315.2000000000000000	0	555
19	1021	497	1	3152	10	315.2000000000000000	0	555
23	1021	555	1	3152	10	315.2000000000000000	0	555
22	1021	502	1	3152	10	315.2000000000000000	0	555
4320	1021	0	1	3152	10	315.2000000000000000	0	555
18	1021	516	1	3152	10	315.2000000000000000	0	555
21	1021	535	1	3152	10	315.2000000000000000	0	555
4322	1021	64	1	3152	10	315.2000000000000000	0	555
4321	1021	0	1	3152	10	315.2000000000000000	0	555
24	1031	1148	1	1148	1	1148.0000000000000000	1148	1148
4324	1041	10	1	836	5	167.2000000000000000	10	307
27	1041	157	1	836	5	167.2000000000000000	10	307
26	1041	307	1	836	5	167.2000000000000000	10	307	
*/