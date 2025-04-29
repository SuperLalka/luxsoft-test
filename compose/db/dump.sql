--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4 (Debian 17.4-1.pgdg120+2)
-- Dumped by pg_dump version 17.4 (Debian 17.4-1.pgdg120+2)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: _auto_hockeystats_game; Type: TABLE; Schema: public; Owner: debug
--

CREATE TABLE public._auto_hockeystats_game (
    key0 bigint NOT NULL,
    system__class__auto_hockeystats_game bigint,
    hockeystats_date_game date,
    hockeystats_hostteam_game bigint,
    hockeystats_guestteam_game bigint,
    hockeystats_hostgoals_game integer,
    hockeystats_guestgoals_game integer,
    hockeystats_userresult_game bigint
);


ALTER TABLE public._auto_hockeystats_game OWNER TO debug;

--
-- Name: _auto_hockeystats_gameresult; Type: TABLE; Schema: public; Owner: debug
--

CREATE TABLE public._auto_hockeystats_gameresult (
    key0 bigint NOT NULL,
    system__class__auto_hockeystats_gameresult bigint
);


ALTER TABLE public._auto_hockeystats_gameresult OWNER TO debug;

--
-- Name: _auto_hockeystats_gameresult_hockeystats_team; Type: TABLE; Schema: public; Owner: debug
--

CREATE TABLE public._auto_hockeystats_gameresult_hockeystats_team (
    key0 bigint NOT NULL,
    key1 bigint NOT NULL,
    hockeystats_gameswonby_team_gameresult integer,
    hockeystats_gameslostby_team_gameresult integer
);


ALTER TABLE public._auto_hockeystats_gameresult_hockeystats_team OWNER TO debug;

--
-- Name: _auto_hockeystats_goal; Type: TABLE; Schema: public; Owner: debug
--

CREATE TABLE public._auto_hockeystats_goal (
    key0 bigint NOT NULL,
    system__class__auto_hockeystats_goal bigint,
    hockeystats_game_goal bigint,
    hockeystats_team_goal bigint,
    hockeystats_player_goal bigint,
    hockeystats_minute_goal integer
);


ALTER TABLE public._auto_hockeystats_goal OWNER TO debug;

--
-- Name: _auto_hockeystats_player; Type: TABLE; Schema: public; Owner: debug
--

CREATE TABLE public._auto_hockeystats_player (
    key0 bigint NOT NULL,
    hockeystats_role_player character varying(20),
    system__class__auto_hockeystats_player bigint,
    hockeystats_number_player integer,
    hockeystats_birthdate_player date,
    hockeystats_name_player character varying(50),
    hockeystats_team_player bigint
);


ALTER TABLE public._auto_hockeystats_player OWNER TO debug;

--
-- Name: _auto_hockeystats_team; Type: TABLE; Schema: public; Owner: debug
--

CREATE TABLE public._auto_hockeystats_team (
    key0 bigint NOT NULL,
    hockeystats_name_team character varying(30),
    system__class__auto_hockeystats_team bigint
);


ALTER TABLE public._auto_hockeystats_team OWNER TO debug;

--
-- Data for Name: _auto_hockeystats_game; Type: TABLE DATA; Schema: public; Owner: debug
--

COPY public._auto_hockeystats_game (key0, system__class__auto_hockeystats_game, hockeystats_date_game, hockeystats_hostteam_game, hockeystats_guestteam_game, hockeystats_hostgoals_game, hockeystats_guestgoals_game, hockeystats_userresult_game) FROM stdin;
17179	30	2024-11-25	17148	17158	3	2	196
17173	30	2024-12-12	17152	17144	8	7	196
17160	30	2023-11-20	17152	17139	1	2	197
17167	30	2024-06-21	17139	17148	3	2	197
17163	30	2023-01-07	17144	17152	2	3	198
17175	30	2024-12-16	17144	17150	3	6	198
17169	30	2024-10-13	17152	17139	2	1	198
17165	30	2024-04-04	17148	17139	3	1	196
17177	30	2024-12-02	17139	17148	3	7	196
\.


--
-- Data for Name: _auto_hockeystats_gameresult; Type: TABLE DATA; Schema: public; Owner: debug
--

COPY public._auto_hockeystats_gameresult (key0, system__class__auto_hockeystats_gameresult) FROM stdin;
196	75
197	75
198	75
\.


--
-- Data for Name: _auto_hockeystats_gameresult_hockeystats_team; Type: TABLE DATA; Schema: public; Owner: debug
--

COPY public._auto_hockeystats_gameresult_hockeystats_team (key0, key1, hockeystats_gameswonby_team_gameresult, hockeystats_gameslostby_team_gameresult) FROM stdin;
196	17139	0	0
198	17148	0	0
196	17150	0	0
198	17150	0	0
197	17158	0	0
198	17158	0	0
196	17148	1	0
197	17150	1	0
196	17152	1	0
198	17152	2	0
197	17139	2	2
198	17139	0	1
196	17144	0	1
197	17144	0	1
198	17144	0	1
197	17148	2	1
197	17152	0	1
196	17158	0	1
\.


--
-- Data for Name: _auto_hockeystats_goal; Type: TABLE DATA; Schema: public; Owner: debug
--

COPY public._auto_hockeystats_goal (key0, system__class__auto_hockeystats_goal, hockeystats_game_goal, hockeystats_team_goal, hockeystats_player_goal, hockeystats_minute_goal) FROM stdin;
29357	20372	17163	17152	25869	8
26105	20372	17173	17144	25870	14
26113	20372	17173	17152	25871	4
26120	20372	17173	17144	25812	28
26126	20372	17173	17144	25810	45
26128	20372	17173	17152	25813	51
29038	20372	17165	17148	25826	44
29103	20372	17160	17139	19426	36
29249	20372	17177	17139	19430	11
29264	20372	17160	17139	19430	3
29263	20372	17167	17139	19430	61
29273	20372	17163	17144	25805	28
29277	20372	17179	17158	25887	18
29351	20372	17173	17152	25869	41
29356	20372	17175	17150	25852	49
\.


--
-- Data for Name: _auto_hockeystats_player; Type: TABLE DATA; Schema: public; Owner: debug
--

COPY public._auto_hockeystats_player (key0, hockeystats_role_player, system__class__auto_hockeystats_player, hockeystats_number_player, hockeystats_birthdate_player, hockeystats_name_player, hockeystats_team_player) FROM stdin;
19414	защитник	18487	57	1991-07-24	Тревор ван Римсдайк	17139
19426	нападающий	18487	9	2005-01-21	 Райан Леонард	17139
19430	нападающий	18487	8	1985-09-17	Александр Михайлович Овечкин	17139
19400	вратарь	18487	79	1993-12-18	Чарли Линдгрен	17139
19410	защитник	18487	27	1999-11-15	Александр Александрович Алексеев	17139
19418	защитник	18487	38	2000-03-07	Расмус Сандин	17139
19422	нападающий	18487	26	1990-05-27	Ник Дауд	17139
25881	вратарь	18487	52	2009-06-25	Пётр Анатольевич Кочетков	17158
25884	защитник	18487	42	2000-03-24	Тай Смит	17158
25745	нападающий	18487	21	2001-01-06	Алексей Владимирович Протас	17139
25806	защитник	18487	27	1989-06-13	 Райан Макдона	17144
25810	нападающий	18487	22	1995-04-10	Оливер Бьёркстранд	17144
25805	защитник	18487	72	2000-05-18	 Деклэн Карлайл	17144
25812	нападающий	18487	21	1996-03-13	 Брейден Пойнт	17144
25803	вратарь	18487	88	1994-07-25	 Андрей Андреевич Василевский	17144
25809	защитник	18487	64	1995-03-07	Стивен Сантини	17144
25813	нападающий	18487	41	1998-01-26	 Митчелл Чаффи	17144
25811	нападающий	18487	11	1989-04-28	Люк Гленденинг	17144
25829	защитник	18487	5	2003-01-17	Станислав Свозил	17148
25825	вратарь	18487	73	2001-03-30	Джет Гривз	17148
25830	защитник	18487	22	2000-07-07	Джордан Харрис	17148
25831	нападающий	18487	10	2000-09-10	Дмитрий Сергеевич Воронков	17148
25832	нападающий	18487	18	1996-08-26	Дилан Гэмбрелл	17148
25833	нападающий	18487	10	2003-11-10	Лука Дель Бель Беллуз	17148
25828	защитник	18487	2	1999-09-12	 Джейк Кристиансен	17148
25826	вратарь	18487	40	1999-03-27	Даниил Вадимович Тарасов	17148
25827	защитник	18487	8	1997-07-19	Зак Веренски	17148
25841	нападающий	18487	11	1997-12-04	Люк Канин	17148
25846	вратарь	18487	34	1990-08-07	Джейк Аллен	17150
25847	защитник	18487	38	2004-04-01	 Топиас Вилен	17150
25851	нападающий	18487	12	2001-05-10	 Адам Бекман	17150
25852	нападающий	18487	47	1999-11-16	 Пол Коттер	17150
25853	нападающий	18487	11	1993-02-12	Стефан Ноэсен	17150
25849	защитник	18487	45	1997-05-03	Колтон Уайт	17150
25848	защитник	18487	71	1997-05-06	Йонас Зигенталер	17150
25850	нападающий	18487	14	1997-12-06	Натан Бастиан	17150
25863	вратарь	18487	32	1992-01-09	Джек Кэмпбелл	17152
25866	защитник	18487	53	2001-04-06	Мориц Зайдер	17152
25871	нападающий	18487	43	2002-03-28	Картер Мазур	17152
25865	защитник	18487	56	1992-03-14	Эрик Густафссон	17152
25868	нападающий	18487	37	1995-04-08	Джей Ти Комфер	17152
25870	нападающий	18487	71	1996-07-30	Дилан Ларкин	17152
25867	защитник	18487	3	1992-01-30	Джастин Холл	17152
25869	нападающий	18487	18	1994-07-08	 Эндрю Копп	17152
25864	вратарь	18487	39	1987-07-05	Кэм Тальбо	17152
25888	нападающий	18487	27	1998-03-14	Тайсон Джост	17158
25887	нападающий	18487	24	2002-02-01	Сет Джарвис	17158
25882	защитник	18487	8	1985-03-09	Брент Бёрнс	17158
25883	защитник	18487	5	2003-09-05	Чарльз-Алексис Лего	17158
25886	нападающий	18487	76	1999-07-27	Скайлер Бриндамор	17158
25889	нападающий	18487	48	1992-07-25	Джордан Мартинук	17158
25885	нападающий	18487	53	2003-08-03	Джексон Блейк	17158
19434	нападающий	18487	88	1996-04-04	 Эндрю Манджапане	17139
\.


--
-- Data for Name: _auto_hockeystats_team; Type: TABLE DATA; Schema: public; Owner: debug
--

COPY public._auto_hockeystats_team (key0, hockeystats_name_team, system__class__auto_hockeystats_team) FROM stdin;
17139	Washington Capitals	17
17148	Columbus Jackets	17
17150	New Jersey Devils	17
17152	Detroit Red Wings	17
17158	Carolina Hurricanes	17
17144	Тампа-Бэй Лайтнинг	17
\.


--
-- Name: _auto_hockeystats_game _auto_hockeystats_game_pkey; Type: CONSTRAINT; Schema: public; Owner: debug
--

ALTER TABLE ONLY public._auto_hockeystats_game
    ADD CONSTRAINT _auto_hockeystats_game_pkey PRIMARY KEY (key0);


--
-- Name: _auto_hockeystats_gameresult_hockeystats_team _auto_hockeystats_gameresult_hockeystats_team_pkey; Type: CONSTRAINT; Schema: public; Owner: debug
--

ALTER TABLE ONLY public._auto_hockeystats_gameresult_hockeystats_team
    ADD CONSTRAINT _auto_hockeystats_gameresult_hockeystats_team_pkey PRIMARY KEY (key0, key1);


--
-- Name: _auto_hockeystats_gameresult _auto_hockeystats_gameresult_pkey; Type: CONSTRAINT; Schema: public; Owner: debug
--

ALTER TABLE ONLY public._auto_hockeystats_gameresult
    ADD CONSTRAINT _auto_hockeystats_gameresult_pkey PRIMARY KEY (key0);


--
-- Name: _auto_hockeystats_goal _auto_hockeystats_goal_pkey; Type: CONSTRAINT; Schema: public; Owner: debug
--

ALTER TABLE ONLY public._auto_hockeystats_goal
    ADD CONSTRAINT _auto_hockeystats_goal_pkey PRIMARY KEY (key0);


--
-- Name: _auto_hockeystats_player _auto_hockeystats_player_pkey; Type: CONSTRAINT; Schema: public; Owner: debug
--

ALTER TABLE ONLY public._auto_hockeystats_player
    ADD CONSTRAINT _auto_hockeystats_player_pkey PRIMARY KEY (key0);


--
-- Name: _auto_hockeystats_team _auto_hockeystats_team_pkey; Type: CONSTRAINT; Schema: public; Owner: debug
--

ALTER TABLE ONLY public._auto_hockeystats_team
    ADD CONSTRAINT _auto_hockeystats_team_pkey PRIMARY KEY (key0);


--
-- Name: key1_idx__auto_hockeystats_gameresult_hockeystats_team; Type: INDEX; Schema: public; Owner: debug
--

CREATE INDEX key1_idx__auto_hockeystats_gameresult_hockeystats_team ON public._auto_hockeystats_gameresult_hockeystats_team USING btree (key1);


--
-- PostgreSQL database dump complete
--

