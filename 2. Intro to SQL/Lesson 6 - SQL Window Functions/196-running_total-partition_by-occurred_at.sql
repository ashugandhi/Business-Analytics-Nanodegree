/*
Udacity's certified program > Business Analytics Nanodegree
SQL practice > Lesson 6 : SQL Window Functionsytics Nanodegree Program
SQL > Lesson 6 > SQL Window Functions

WINDOW FUNCTIONS:

Running total of standard_qty PARTITION BY occurred_at
*/

SELECT DATE_TRUNC('month', occurred_at),
       standard_qty,
       SUM(standard_qty) OVER (PARTITION BY DATE_TRUNC('month', occurred_at)) AS running_total
FROM orders;

/*
Output6912 results

date_trunc	        standard_qty	running_total
2013-12-01T00:00:00.000Z	497	26554
2013-12-01T00:00:00.000Z	508	26554
2013-12-01T00:00:00.000Z	84	26554
2013-12-01T00:00:00.000Z	0	26554
2013-12-01T00:00:00.000Z	304	26554
2013-12-01T00:00:00.000Z	151	26554
2013-12-01T00:00:00.000Z	353	26554
2013-12-01T00:00:00.000Z	491	26554
2013-12-01T00:00:00.000Z	0	26554
2013-12-01T00:00:00.000Z	142	26554
2013-12-01T00:00:00.000Z	485	26554
2013-12-01T00:00:00.000Z	461	26554
2013-12-01T00:00:00.000Z	0	26554
2013-12-01T00:00:00.000Z	150	26554
2013-12-01T00:00:00.000Z	20	26554
2013-12-01T00:00:00.000Z	339	26554
2013-12-01T00:00:00.000Z	0	26554
2013-12-01T00:00:00.000Z	299	26554
2013-12-01T00:00:00.000Z	481	26554
2013-12-01T00:00:00.000Z	41	26554
2013-12-01T00:00:00.000Z	0	26554
2013-12-01T00:00:00.000Z	57	26554
2013-12-01T00:00:00.000Z	639	26554
2013-12-01T00:00:00.000Z	150	26554
2013-12-01T00:00:00.000Z	12	26554
2013-12-01T00:00:00.000Z	501	26554
2013-12-01T00:00:00.000Z	38	26554
2013-12-01T00:00:00.000Z	119	26554
2013-12-01T00:00:00.000Z	63	26554
2013-12-01T00:00:00.000Z	477	26554
2013-12-01T00:00:00.000Z	58	26554
2013-12-01T00:00:00.000Z	533	26554
2013-12-01T00:00:00.000Z	1780	26554
2013-12-01T00:00:00.000Z	501	26554
2013-12-01T00:00:00.000Z	0	26554
2013-12-01T00:00:00.000Z	67	26554
2013-12-01T00:00:00.000Z	107	26554
2013-12-01T00:00:00.000Z	300	26554
2013-12-01T00:00:00.000Z	10	26554
2013-12-01T00:00:00.000Z	481	26554
2013-12-01T00:00:00.000Z	490	26554
2013-12-01T00:00:00.000Z	317	26554
2013-12-01T00:00:00.000Z	498	26554
2013-12-01T00:00:00.000Z	380	26554
2013-12-01T00:00:00.000Z	304	26554
2013-12-01T00:00:00.000Z	0	26554
2013-12-01T00:00:00.000Z	305	26554
2013-12-01T00:00:00.000Z	0	26554
2013-12-01T00:00:00.000Z	484	26554
2013-12-01T00:00:00.000Z	310	26554
2013-12-01T00:00:00.000Z	501	26554
2013-12-01T00:00:00.000Z	286	26554
2013-12-01T00:00:00.000Z	498	26554
2013-12-01T00:00:00.000Z	289	26554
2013-12-01T00:00:00.000Z	85	26554
2013-12-01T00:00:00.000Z	290	26554
2013-12-01T00:00:00.000Z	281	26554
2013-12-01T00:00:00.000Z	110	26554
2013-12-01T00:00:00.000Z	53	26554
2013-12-01T00:00:00.000Z	142	26554
2013-12-01T00:00:00.000Z	0	26554
2013-12-01T00:00:00.000Z	493	26554
2013-12-01T00:00:00.000Z	516	26554
2013-12-01T00:00:00.000Z	95	26554
2013-12-01T00:00:00.000Z	490	26554
2013-12-01T00:00:00.000Z	79	26554
2013-12-01T00:00:00.000Z	489	26554
2013-12-01T00:00:00.000Z	492	26554
2013-12-01T00:00:00.000Z	514	26554
2013-12-01T00:00:00.000Z	217	26554
2013-12-01T00:00:00.000Z	0	26554
2013-12-01T00:00:00.000Z	311	26554
2013-12-01T00:00:00.000Z	287	26554
2013-12-01T00:00:00.000Z	315	26554
2013-12-01T00:00:00.000Z	6	26554
2013-12-01T00:00:00.000Z	0	26554
2013-12-01T00:00:00.000Z	502	26554
2013-12-01T00:00:00.000Z	34	26554
2013-12-01T00:00:00.000Z	0	26554
2013-12-01T00:00:00.000Z	30	26554
2013-12-01T00:00:00.000Z	278	26554
2013-12-01T00:00:00.000Z	266	26554
2013-12-01T00:00:00.000Z	86	26554
2013-12-01T00:00:00.000Z	75	26554
2013-12-01T00:00:00.000Z	308	26554
2013-12-01T00:00:00.000Z	68	26554
2013-12-01T00:00:00.000Z	297	26554
2013-12-01T00:00:00.000Z	0	26554
2013-12-01T00:00:00.000Z	506	26554
2013-12-01T00:00:00.000Z	51	26554
2013-12-01T00:00:00.000Z	1051	26554
2013-12-01T00:00:00.000Z	148	26554
2013-12-01T00:00:00.000Z	92	26554
2013-12-01T00:00:00.000Z	504	26554
2013-12-01T00:00:00.000Z	43	26554
2013-12-01T00:00:00.000Z	69	26554
2013-12-01T00:00:00.000Z	501	26554
2013-12-01T00:00:00.000Z	491	26554
2013-12-01T00:00:00.000Z	528	26554
2014-01-01T00:00:00.000Z	273	26744
2014-01-01T00:00:00.000Z	298	26744
2014-01-01T00:00:00.000Z	513	26744
2014-01-01T00:00:00.000Z	491	26744
*/


/*
1. Since the rows are partitioned by month, running_total is calculated for
each minth and reset when transitioning into another month.

2. Here the rows are not orderd (ORDER BY not used). Hence running_total is
cummulatively calculated for the whole month.

See next query for broader understanding
*/
