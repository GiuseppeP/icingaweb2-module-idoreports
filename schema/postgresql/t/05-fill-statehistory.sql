-- Rows are: state_time, object_id, state, state_type
SELECT plan(1);
COPY icinga_statehistory FROM STDIN;
2019-02-01 00:00:00+01	1	0	1
2019-02-05 11:00:00+01	1	3	0
2019-02-05 12:00:00+01	1	3	1
2019-02-05 13:00:00+01	1	0	0
2019-02-05 14:00:00+01	1	0	1
2019-03-01 00:00:00+01	1	0	1
2019-03-05 11:00:00+01	1	3	0
2019-03-05 12:00:00+01	1	3	1
2019-02-01 00:00:00+01	2	0	1
2019-02-05 11:00:00+01	2	3	0
2019-02-05 12:00:00+01	2	3	1
2019-02-05 13:00:00+01	2	0	0
2019-02-05 14:00:00+01	2	0	1
2019-03-01 00:00:00+01	2	0	1
2019-03-05 11:00:00+01	2	3	0
2019-03-05 12:00:00+01	2	3	1
2019-03-10 16:05:00+01	3	1	0
2019-03-10 16:10:00+01	3	1	1
2020-03-01 14:00:00+01	4	0	1
2020-04-01 00:00:00+01	5	1	1
2019-03-31 21:50:48+01	6	1	1
2019-03-27 15:15:42+01	6	0	1
\.
SELECT is(count(*), 22::bigint, 'icinga_statehistory has correct # of rows rows') FROM icinga_statehistory;