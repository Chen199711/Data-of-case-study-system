function mpc = case19timeslot13

%   The power line of the 10KV distribution network is: 10kV-YJV  crosslinked insulated power cable with a section of 50mm core wire.
% r=0.64 Ohms/km, x=0.082 Ohms/km, power line capacity is 230A.
%   The power line of the 110KV distribution network is LGJ, LJ-70 overhead power lines.
% r=0.45 Ohms/km, x=0.432 Ohms/kmm power line capacity is 215A.

%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 100;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
1	3	0	0	0	0	1	1	0	139.26	1	1	1
2	1	0	-2500	0	0	1	1	0	12.66	1	1.1	0.9
3	1	0	0	0	0	1	1	0	12.66	1	1.1	0.9
4	1	1110	380	0	1	1	1	0	12.66	1	1.1	0.9
5	1	1260	410	0	0	1	1	0	12.66	1	1.1	0.9
6	1	0	0	0	0	1	1	0	12.66	1	1.1	0.9
7	1	0	0	0	0	1	1	0	12.66	1	1.1	0.9
8	1	890	200	0	0	1	1	0	12.66	1	1.1	0.9
9	1	2270	800	0	0	1	1	0	12.66	1	1.1	0.9
10	1	0	0	0	0	1	1	0	12.66	1	1.1	0.9
11	1	0	0	0	0	1	1	0	12.66	1	1.1	0.9
12	1	0	-1000	0	0	1	1	0	12.66	1	1.1	0.9
13	1	0	0	0	1	1	1	0	12.66	1	1.1	0.9
14	1	0	0	0	0	1	1	0	12.66	1	1.1	0.9
15	1	0	-2500	0	0	1	1	0	12.66	1	1.1	0.9
16	1	690	320	0	1	1	1	0	12.66	1	1.1	0.9
17	1	0	0	0	1	1	1	0	12.66	1	1.1	0.9
18	1	1850	100	0	0	1	1	0	12.66	1	1.1	0.9
19	1	0	0	0	0	1	1	0	12.66	1	1.1	0.9
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	0	0	10	-10	1	100	1	10	0	0	0	0	0	0	0	0	0	0	0	0
3	0.85	0	10	-10	1	100	1	10	0	0	0	0	0	0	0	0	0	0	0	0
6	0.57	0	10	-10	1	100	1	10	0	0	0	0	0	0	0	0	0	0	0	0
7	1.29	0	10	-10	1	100	1	10	0	0	0	0	0	0	0	0	0	0	0	0
10	0.59	0	10	-10	1	100	1	10	0	0	0	0	0	0	0	0	0	0	0	0
11	0.58	0	10	-10	1	100	1	10	0	0	0	0	0	0	0	0	0	0	0	0
13	1.45	0	10	-10	1	100	1	10	0	0	0	0	0	0	0	0	0	0	0	0
14	1.40	0	10	-10	1	100	1	10	0	0	0	0	0	0	0	0	0	0	0	0
17	0.26	0	10	-10	1	100	1	10	0	0	0	0	0	0	0	0	0	0	0	0
19	0.59	0	10	-10	1	100	1	10	0	0	0	0	0	0	0	0	0	0	0	0
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
1	2	0.11	0.05	0	0	0	0	11	0	1	-360	360
2	3	1.28	0.16	0	0	0	0	0	0	1	-360	360
2	4	1.024	0.128	0	0	0	0	0	0	1	-360	360
2	5	0.96	0.12	0	0	0	0	0	0	1	-360	360
2	6	1.152	0.144	0	0	0	0	0	0	1	-360	360
2	7	0.96	0.12	0	0	0	0	0	0	1	-360	360
2	8	0.96	0.12	0	0	0	0	0	0	1	-360	360
2	9	0.96	0.12	0	0	0	0	0	0	1	-360	360
2	10	1.024	0.128	0	0	0	0	0	0	1	-360	360
2	11	0.96	0.12	0	0	0	0	0	0	1	-360	360
1	12	0.47	0.47	0	0	0	0	11	0	1	-360	360
12	13	1.152	0.144	0	0	0	0	0	0	1	-360	360
12	14	1.28	0.16	0	0	0	0	0	0	1	-360	360
1	15	3.08	2.89	0	0	0	0	11	0	1	-360	360
15	16	0.96	0.12	0	0	0	0	0	0	1	-360	360
15	17	1.024	0.128	0	0	0	0	0	0	1	-360	360
15	18	0.96	0.12	0	0	0	0	0	0	1	-360	360
15	19	0.96	0.12	0	0	0	0	0	0	1	-360	360
];

%% convert branch impedances from Ohms to p.u.
[PQ, PV, REF, NONE, BUS_I, BUS_TYPE, PD, QD, GS, BS, BUS_AREA, VM, ...
    VA, BASE_KV, ZONE, VMAX, VMIN, LAM_P, LAM_Q, MU_VMAX, MU_VMIN] = idx_bus;
[F_BUS, T_BUS, BR_R, BR_X, BR_B, RATE_A, RATE_B, RATE_C, ...
    TAP, SHIFT, BR_STATUS, PF, QF, PT, QT, MU_SF, MU_ST, ...
    ANGMIN, ANGMAX, MU_ANGMIN, MU_ANGMAX] = idx_brch;
Vbase = mpc.bus(1, BASE_KV) * 1e3;      %% in Volts
Sbase = mpc.baseMVA * 1e6;              %% in VA
mpc.branch(:, [BR_R BR_X]) = mpc.branch(:, [BR_R BR_X]) / (Vbase^2 / Sbase);

%% convert loads from kW to MW
mpc.bus(:, [PD, QD]) = mpc.bus(:, [PD, QD]) / 1e3;

