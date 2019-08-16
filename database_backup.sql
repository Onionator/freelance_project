--
-- PostgreSQL database dump
--

-- Dumped from database version 11.4
-- Dumped by pg_dump version 11.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: Sam
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO "Sam";

--
-- Name: products; Type: TABLE; Schema: public; Owner: Sam
--

CREATE TABLE public.products (
    id bigint NOT NULL,
    name character varying,
    cost double precision,
    country_of_origin character varying
);


ALTER TABLE public.products OWNER TO "Sam";

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: Sam
--

CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO "Sam";

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Sam
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: reviews; Type: TABLE; Schema: public; Owner: Sam
--

CREATE TABLE public.reviews (
    id bigint NOT NULL,
    author character varying,
    content_body character varying,
    rating integer,
    product_id integer
);


ALTER TABLE public.reviews OWNER TO "Sam";

--
-- Name: reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: Sam
--

CREATE SEQUENCE public.reviews_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reviews_id_seq OWNER TO "Sam";

--
-- Name: reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Sam
--

ALTER SEQUENCE public.reviews_id_seq OWNED BY public.reviews.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: Sam
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO "Sam";

--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: Sam
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: reviews id; Type: DEFAULT; Schema: public; Owner: Sam
--

ALTER TABLE ONLY public.reviews ALTER COLUMN id SET DEFAULT nextval('public.reviews_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: Sam
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2019-08-09 16:01:18.876739	2019-08-09 16:01:18.876739
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: Sam
--

COPY public.products (id, name, cost, country_of_origin) FROM stdin;
244	Pizza	6.84999999999999964	Mali
245	French Toast	9.1899999999999995	Congo
246	French Toast	4.96999999999999975	Montserrat
247	Chicken Parm	18.9899999999999984	Monaco
248	Stinky Tofu	3.75999999999999979	Seychelles
249	California Maki	15.3499999999999996	Saudi Arabia
250	Pasta And Beans	18.6099999999999994	Antigua and Barbuda
251	Chicken Milanese	8.77999999999999936	Suriname
252	Chicken Fajitas	12.6999999999999993	Congo
253	Sushi	10.0099999999999998	Dominica
254	Sushi	13.5899999999999999	Tonga
255	Teriyaki Chicken Donburi	17.8000000000000007	Philippines
256	Chicken Milanese	2	Georgia
257	California Maki	19	Nigeria
258	Stinky Tofu	7.74000000000000021	Haiti
259	Fettuccine Alfredo	19.8599999999999994	Uruguay
260	Meatballs With Sauce	16.6000000000000014	Montenegro
261	Chicken Milanese	8.30000000000000071	Netherlands
262	Teriyaki Chicken Donburi	6.24000000000000021	Saint Barthelemy
263	Scotch Eggs	12.1099999999999994	South Georgia and the South Sandwich Islands
264	Pasta With Tomato And Basil	8.16000000000000014	British Indian Ocean Territory (Chagos Archipelago)
265	Pork Belly Buns	3.16999999999999993	Equatorial Guinea
266	Bruschette With Tomato	16.6999999999999993	Haiti
267	Cheeseburger	15.9499999999999993	Cook Islands
268	Chicken Milanese	12.2400000000000002	Iraq
269	Cauliflower Penne	15.6600000000000001	Niger
270	Vegetable Soup	15.4800000000000004	Bosnia and Herzegovina
271	Souvlaki	1.6399999999999999	Monaco
272	Som Tam	14.25	Maldives
273	Pizza	13.0800000000000001	Mongolia
274	Kebab	12.0299999999999994	Hong Kong
275	California Maki	19.0500000000000007	Macao
276	Bunny Chow	15.4000000000000004	Cameroon
277	Meatballs With Sauce	16.4299999999999997	Faroe Islands
278	Salmon Nigiri	9.91000000000000014	Taiwan
279	Meatballs With Sauce	3.39000000000000012	Gabon
280	Barbecue Ribs	19.5599999999999987	Belize
281	Peking Duck	5.45999999999999996	Bosnia and Herzegovina
282	Hummus	12.6600000000000001	Monaco
283	Pasta With Tomato And Basil	16.9400000000000013	Malaysia
284	Meatballs With Sauce	17.9800000000000004	Portugal
285	Pasta With Tomato And Basil	13.2699999999999996	Martinique
286	Arepas	15.8699999999999992	Mali
287	Linguine With Clams	17.4299999999999997	Zimbabwe
288	French Fries With Sausages	3.45999999999999996	Serbia
289	Pho	3.0299999999999998	Dominican Republic
290	Chicken Wings	8.11999999999999922	Aruba
291	Poke	7.80999999999999961	Angola
292	Stinky Tofu	2.68999999999999995	Guatemala
293	Pasta Carbonara	16.0100000000000016	Haiti
\.


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: Sam
--

COPY public.reviews (id, author, content_body, rating, product_id) FROM stdin;
1722	Gloria	Go out on a Tuesday? Who am I, Charlie Sheen? Non qui quae. Non quod omnis. Repellendus suscipit voluptatem.	1	244
1723	Helen Lovejoy	That's it! You people have stood in my way long enough. I'm going to clown college! Accusamus ea vel. Nisi fuga dignissimos. Consequatur consequuntur sed.	3	244
1724	Homer Simpson	You tried your best and you failed miserably. The lesson is: Never try. Impedit aut ipsam. Suscipit commodi nesciunt. Voluptatum magni ut.	4	244
1725	Krusty the Clown	Life is just one crushing defeat after another until you just wish Flanders was dead. Hic et et. Ut quis animi. Sunt voluptatum sed.	1	244
1726	Lois Pennycandy	Books are useless! I only ever read one book, To Kill A Mockingbird, and it gave me absolutely no insight on how to kill mockingbirds! Error aut repudiandae. Eos quidem ullam. Non qui assumenda.	1	244
1727	Krusty the Clown	D'oh! Aperiam quo commodi. Rerum et mollitia. Cumque nihil asperiores.	1	245
1728	Rabbi Hyman Krustofski	To alcohol! The cause of, and solution to, all of life's problems. Vel sunt dolores. Voluptas aut dicta. Ipsum qui officia.	1	245
1729	Chief Clancy Wiggum	D'oh! Deleniti officia et. Ratione explicabo nihil. Et molestias sint.	1	245
1730	Sarah Wiggum	Go out on a Tuesday? Who am I, Charlie Sheen? Nostrum quaerat hic. Dolorum quia nulla. Ullam voluptas a.	1	245
1731	Dr. Julius Hibbert	Son, if you really want something in this life, you have to work for it. Now quiet! They're about to announce the lottery numbers. Ipsam nihil laudantium. Voluptates quia deserunt. Voluptatum inventore quis.	1	245
1732	Richard	It takes two to lie: one to lie and one to listen. Et provident amet. Occaecati quo sit. Doloribus libero corrupti.	1	245
1733	Dr. Nick Riviera	If you pray to the wrong god, you might just make the right one madder and madder. Eveniet voluptatem inventore. Vero aut debitis. Beatae fugiat modi.	4	245
1734	Crazy Cat Lady	It takes two to lie: one to lie and one to listen. Accusamus corporis earum. Eos sit quisquam. Quasi rerum sapiente.	2	245
1735	Ruth Powers	D'oh! Id aut possimus. Quia et exercitationem. Occaecati voluptate est.	3	245
1736	Yes Guy	I'm not normally a praying man, but if you're up there, please save me, Superman! Adipisci a laboriosam. Dolor adipisci animi. Aut voluptatem doloribus.	3	246
1737	Dr. Julius Hibbert	I'm not normally a praying man, but if you're up there, please save me, Superman! Fugit maxime inventore. Nihil veniam sed. Et ducimus sed.	3	246
1738	Lunchlady Doris	Marriage is like a coffin and each kid is another nail. Ullam aliquid autem. Sint nihil qui. Et temporibus vero.	2	246
1739	Janey Powell	Kill my boss? Do I dare live out the American dream? Tempora odio sunt. Qui non amet. Ex saepe dolores.	3	246
1740	Manjula Nahasapeemapetilon	Son, if you really want something in this life, you have to work for it. Now quiet! They're about to announce the lottery numbers. Omnis alias saepe. Et harum qui. Est ea est.	3	246
1741	Kang	Sorry, Mom, the mob has spoken. Facere nesciunt qui. Iste laboriosam mollitia. Vitae excepturi impedit.	4	246
1742	Grampa Abraham Simpson	Life is just one crushing defeat after another until you just wish Flanders was dead. Non cum eveniet. Voluptatibus placeat sit. Accusamus velit odio.	4	246
1743	Gloria	I'm not normally a praying man, but if you're up there, please save me, Superman! Consequatur debitis eos. Soluta voluptate facilis. Minus eligendi vitae.	4	246
1744	Judge Constance Harm	Kill my boss? Do I dare live out the American dream? Excepturi corporis unde. Aut aut aliquid. Esse quas pariatur.	4	246
1745	Lenny Leonard	Cheating is the gift man gives himself. Aut error perspiciatis. Beatae fugiat velit. Laboriosam rem natus.	2	246
1746	Ralph Wiggum	Life is just one crushing defeat after another until you just wish Flanders was dead. Consequuntur quibusdam amet. Delectus aut omnis. Et unde sed.	2	246
1747	The Rich Texan	When will I learn? The answers to life’s problems aren’t at the bottom of a bottle, they’re on TV! Tempore tenetur cum. Sit eum ut. Repellendus qui quibusdam.	1	247
1748	Lois Pennycandy	That's it! You people have stood in my way long enough. I'm going to clown college! Sint est est. Sed impedit quidem. Necessitatibus qui praesentium.	1	247
1749	Jasper Beardly	Books are useless! I only ever read one book, To Kill A Mockingbird, and it gave me absolutely no insight on how to kill mockingbirds! Error labore autem. Repellat corrupti autem. Laborum dolorem fugit.	1	247
1750	Gary	Son, if you really want something in this life, you have to work for it. Now quiet! They're about to announce the lottery numbers. Nesciunt qui sint. Occaecati commodi aut. Reprehenderit facilis culpa.	1	247
1751	Terri	Son, if you really want something in this life, you have to work for it. Now quiet! They're about to announce the lottery numbers. Officiis debitis alias. Vero deleniti quia. Quo hic sunt.	1	248
1752	Bernice Hibbert	Sorry, Mom, the mob has spoken. Quo voluptatum velit. Laudantium harum ut. Magni dignissimos ex.	2	248
1753	Old Barber	D'oh! Corrupti et itaque. Accusamus voluptas minus. Explicabo dolorum pariatur.	1	248
1754	Grampa Abraham Simpson	Sorry, Mom, the mob has spoken. Et qui sed. Maxime vel adipisci. Consectetur dolor nemo.	2	248
1755	Boobarella	It takes two to lie: one to lie and one to listen. Quo minus magnam. Consequuntur aut similique. Eius et incidunt.	2	248
1756	Leopold	Cheating is the gift man gives himself. Necessitatibus nulla id. Sunt a doloremque. Saepe ut nihil.	4	248
1757	Old Barber	Sorry, Mom, the mob has spoken. Quaerat rerum quibusdam. Sed doloremque nihil. Provident vel nihil.	1	248
1758	Terri	What’s the point of going out? We’re just gonna wind up back home anyway. Magnam et fugit. Quaerat quibusdam ducimus. Quia perspiciatis nostrum.	1	248
1759	Johnny Tightlips	Cheating is the gift man gives himself. Aut et quos. Nemo dolores ad. Corporis velit maiores.	3	248
1760	Homer Simpson	Sorry, Mom, the mob has spoken. Placeat et ut. Ut vero sequi. Beatae aut aliquid.	4	248
1761	Lurleen Lumpkin	Trust me, Bart, it's better to walk in on both your parents than on just one of them. Velit eius occaecati. Veritatis omnis saepe. Cupiditate qui amet.	1	248
1762	Kodos	Marriage is like a coffin and each kid is another nail. Placeat dolorem cum. Voluptatem sit qui. Rem sapiente temporibus.	4	248
1763	Akira	Go out on a Tuesday? Who am I, Charlie Sheen? Qui quia sit. Reprehenderit voluptatem rerum. Ut aut hic.	3	249
1764	Troy McClure	Books are useless! I only ever read one book, To Kill A Mockingbird, and it gave me absolutely no insight on how to kill mockingbirds! Libero quas voluptates. Modi quibusdam accusantium. Sunt error eveniet.	3	249
1765	Ernst	Sorry, Mom, the mob has spoken. Architecto ut voluptatum. Voluptatem quos voluptate. Dolorem iure excepturi.	4	249
1766	Principal Seymour Skinner	Kill my boss? Do I dare live out the American dream? Sit voluptas et. Et qui quisquam. Sit maxime occaecati.	2	250
1767	Roger Meyers, Jr.	What’s the point of going out? We’re just gonna wind up back home anyway. Placeat molestiae distinctio. Et commodi officiis. Rerum sint ipsam.	2	250
1768	Charles Montgomery Burns	To alcohol! The cause of, and solution to, all of life's problems. Vitae ducimus repudiandae. Tempore consequuntur velit. Nemo voluptas sed.	1	250
1769	Gary	Go out on a Tuesday? Who am I, Charlie Sheen? Nobis non vel. Officia perspiciatis qui. Et sunt velit.	3	250
1770	Allison Taylor	When will I learn? The answers to life’s problems aren’t at the bottom of a bottle, they’re on TV! Est ipsam accusantium. Aliquid pariatur quia. Ut ullam nisi.	2	250
1771	The Rich Texan	D'oh! Perspiciatis quia aut. Deserunt quos quam. Illo dolore vero.	4	250
1772	Aristotle Amadopolis	I'm not normally a praying man, but if you're up there, please save me, Superman! Fuga quae reprehenderit. Illum cum dicta. Consequatur ut eos.	1	250
1773	Leopold	To alcohol! The cause of, and solution to, all of life's problems. At delectus dolor. Quaerat eaque atque. Eaque tenetur nostrum.	2	250
1774	Selma Bouvier	To alcohol! The cause of, and solution to, all of life's problems. Reiciendis delectus natus. Maxime qui ipsa. Aut nostrum sunt.	4	250
1775	Cletus Spuckler	Son, if you really want something in this life, you have to work for it. Now quiet! They're about to announce the lottery numbers. Reprehenderit voluptas in. Officia iure tempora. Et quia veniam.	4	250
1776	Ugolin	Oh, loneliness and cheeseburgers are a dangerous mix. Asperiores quia ducimus. Eos molestiae eveniet. Quia voluptas qui.	4	250
1777	Ned Flanders	To alcohol! The cause of, and solution to, all of life's problems. Consequatur quia temporibus. Ratione id laudantium. Ratione tenetur voluptas.	2	250
1778	Chase	Books are useless! I only ever read one book, To Kill A Mockingbird, and it gave me absolutely no insight on how to kill mockingbirds! Molestiae quaerat sint. Aliquid voluptatem magnam. Aut ab doloribus.	4	251
1779	Wiseguy	It takes two to lie: one to lie and one to listen. Voluptas dolorem consectetur. Voluptas aliquid qui. Sunt sapiente consequatur.	2	251
1780	Coach Lugash	It takes two to lie: one to lie and one to listen. Debitis deserunt aut. Dignissimos doloremque dolorum. Voluptatibus saepe ipsa.	1	251
1781	Lenny Leonard	Life is just one crushing defeat after another until you just wish Flanders was dead. Expedita ipsum ea. Iusto deleniti dolor. Inventore numquam et.	1	251
1782	Mona Simpson	Son, if you really want something in this life, you have to work for it. Now quiet! They're about to announce the lottery numbers. Voluptatem sint amet. Laborum quis quasi. Incidunt dolorum fugiat.	2	251
1783	Dave Shutton	If you pray to the wrong god, you might just make the right one madder and madder. Beatae enim voluptatem. Cumque et sit. Nulla possimus magni.	4	251
1784	Principal Seymour Skinner	What’s the point of going out? We’re just gonna wind up back home anyway. Voluptas explicabo ipsam. Voluptatem illo eius. Dignissimos vitae est.	3	251
1785	Captain Horatio McCallister	Sorry, Mom, the mob has spoken. Ad quos eum. Doloribus atque quibusdam. Excepturi nesciunt expedita.	3	251
1786	Wendell Borton	To alcohol! The cause of, and solution to, all of life's problems. Esse consequatur sunt. Quia sunt dolores. Nesciunt aspernatur nostrum.	1	251
1787	Sideshow Bob	You tried your best and you failed miserably. The lesson is: Never try. Aut quis aut. Nihil aut sed. Libero ut nisi.	2	252
1788	Krusty the Clown	Kill my boss? Do I dare live out the American dream? Libero provident ipsam. Tempore sit dolore. Vel eum et.	4	252
1789	Dr. Julius Hibbert	Cheating is the gift man gives himself. Nulla autem qui. Recusandae vel tempora. Ut ea dolores.	3	252
1790	Nelson Muntz	What’s the point of going out? We’re just gonna wind up back home anyway. Nam officiis id. Provident maxime delectus. Rerum qui dignissimos.	1	252
1791	Kodos	Son, if you really want something in this life, you have to work for it. Now quiet! They're about to announce the lottery numbers. Autem aliquam rerum. Aperiam placeat quod. Qui aperiam ipsa.	3	252
1792	Waylon Smithers	I'm not normally a praying man, but if you're up there, please save me, Superman! Maiores rem voluptates. Et officiis exercitationem. Harum aut earum.	4	252
1793	Jacqueline Bouvier	I'm not normally a praying man, but if you're up there, please save me, Superman! Ipsa unde officia. Id consequatur eos. Occaecati sit modi.	4	252
1794	Rabbi Hyman Krustofski	D'oh! Officia nostrum possimus. Vel deserunt saepe. Sed rerum sequi.	4	252
1795	Lionel Hutz	That's it! You people have stood in my way long enough. I'm going to clown college! Est assumenda minima. Illo sint et. Optio est totam.	3	252
1796	Drederick Tatum	You tried your best and you failed miserably. The lesson is: Never try. Laboriosam in omnis. Officiis beatae quibusdam. Beatae eum tenetur.	1	252
1797	Gil Gunderson	Son, if you really want something in this life, you have to work for it. Now quiet! They're about to announce the lottery numbers. At debitis laboriosam. Aut soluta qui. Quo ipsum aut.	3	252
1798	Jacques	When will I learn? The answers to life’s problems aren’t at the bottom of a bottle, they’re on TV! Aut quis rerum. Corrupti et accusantium. Nam ullam quia.	2	253
1799	Johnny Tightlips	You tried your best and you failed miserably. The lesson is: Never try. Quaerat ab nemo. Similique eligendi commodi. Omnis nisi eius.	4	253
1800	Crazy Cat Lady	What’s the point of going out? We’re just gonna wind up back home anyway. Esse qui et. Unde deleniti et. Eos vel officia.	4	253
1801	Lou	To alcohol! The cause of, and solution to, all of life's problems. Doloremque et tempore. Est odit impedit. Dolores accusantium nihil.	1	253
1802	Ernst	When will I learn? The answers to life’s problems aren’t at the bottom of a bottle, they’re on TV! Aut distinctio est. Omnis aut fugit. Ut error reiciendis.	4	253
1803	Herbert Powell	When will I learn? The answers to life’s problems aren’t at the bottom of a bottle, they’re on TV! Cum consequatur qui. Ipsum est est. In occaecati quisquam.	2	253
1804	Ruth Powers	D'oh! Quo in qui. Animi velit perferendis. Repudiandae modi temporibus.	2	253
1805	Kent Brockman	Kill my boss? Do I dare live out the American dream? Voluptatem voluptatem assumenda. Nemo voluptatum laborum. Id vero animi.	4	253
1806	Cesar	Trust me, Bart, it's better to walk in on both your parents than on just one of them. Eum fugiat rerum. Sunt est et. Ut odio aut.	2	253
1807	Cesar	I'm not normally a praying man, but if you're up there, please save me, Superman! Est enim suscipit. Quaerat vero aspernatur. Animi repellendus sapiente.	2	253
1808	Cecil Terwilliger	Marriage is like a coffin and each kid is another nail. Veritatis perferendis tenetur. Et laudantium error. Deserunt blanditiis consequuntur.	2	254
1809	Jebediah Springfield	Kill my boss? Do I dare live out the American dream? Beatae ipsa consequatur. Sint quae aperiam. Non amet eos.	2	254
1810	Amber Simpson	To alcohol! The cause of, and solution to, all of life's problems. Itaque a soluta. Eveniet ipsa voluptate. Quasi non explicabo.	3	254
1811	Eddie	Son, if you really want something in this life, you have to work for it. Now quiet! They're about to announce the lottery numbers. Labore cum repellendus. Quia est numquam. A laborum quam.	2	254
1812	Chief Clancy Wiggum	When will I learn? The answers to life’s problems aren’t at the bottom of a bottle, they’re on TV! Est voluptate nemo. Consequatur minus repellendus. Ea dolor consectetur.	4	254
1813	Atkins, State Comptroller	Books are useless! I only ever read one book, To Kill A Mockingbird, and it gave me absolutely no insight on how to kill mockingbirds! Doloremque sint ipsa. Quaerat explicabo atque. Veniam error quaerat.	3	254
1814	Snowball	Marriage is like a coffin and each kid is another nail. Veniam sit consequatur. Incidunt nisi esse. Eaque dolores ipsa.	4	255
1815	Terri	It takes two to lie: one to lie and one to listen. Magni quos enim. Non et dicta. Aspernatur rerum officia.	1	255
1816	Gloria	You tried your best and you failed miserably. The lesson is: Never try. Iusto corrupti quod. Ut totam et. Reprehenderit id quae.	4	255
1817	Atkins, State Comptroller	What’s the point of going out? We’re just gonna wind up back home anyway. Voluptatem ut praesentium. Dolor ab occaecati. Error voluptatem consequatur.	4	255
1818	Herbert Powell	Marriage is like a coffin and each kid is another nail. Ex veniam fuga. Aut ducimus fuga. Provident eligendi rem.	1	255
1819	Ruth Powers	Cheating is the gift man gives himself. Molestias voluptas nemo. Nesciunt eius est. Rerum facere earum.	2	255
1820	Kearney Zzyzwicz Jr.	It takes two to lie: one to lie and one to listen. Iste molestiae nostrum. Minima quasi sit. Vitae aut rerum.	1	256
1821	Nelson Muntz	Life is just one crushing defeat after another until you just wish Flanders was dead. Deserunt aut vel. Ipsa omnis unde. Ratione pariatur laborum.	2	256
1822	Dr. Velimirovic	Oh, loneliness and cheeseburgers are a dangerous mix. Sed reiciendis aut. Optio modi velit. Sit sunt commodi.	2	256
1823	Gary	Kill my boss? Do I dare live out the American dream? Aut in dignissimos. Deleniti impedit a. Incidunt natus iste.	4	256
1824	Frankie the Squealer	Books are useless! I only ever read one book, To Kill A Mockingbird, and it gave me absolutely no insight on how to kill mockingbirds! Sed adipisci natus. Totam quo eum. Aperiam quia dolorem.	3	256
1825	Charles Montgomery Burns	That's it! You people have stood in my way long enough. I'm going to clown college! Similique eos officia. Et non et. Sit qui expedita.	3	256
1826	Aristotle Amadopolis	Son, if you really want something in this life, you have to work for it. Now quiet! They're about to announce the lottery numbers. Et autem aut. Quo voluptatem natus. Nam libero neque.	4	256
1827	Captain Horatio McCallister	Kill my boss? Do I dare live out the American dream? Odit cum voluptatem. Voluptatem magnam aspernatur. Laudantium similique quia.	3	256
1828	Roger Meyers, Jr.	Marriage is like a coffin and each kid is another nail. Ab nesciunt est. Odit rem consequatur. Reiciendis facere sapiente.	2	256
1829	Superintendent Gary Chalmers	Son, if you really want something in this life, you have to work for it. Now quiet! They're about to announce the lottery numbers. Optio molestiae quisquam. Deserunt iusto dolores. Quas voluptas velit.	2	256
1830	Reverend Timothy Lovejoy	If you pray to the wrong god, you might just make the right one madder and madder. Soluta at quisquam. Possimus vel et. Aliquam harum dolore.	3	256
1831	Princess Kashmir	What’s the point of going out? We’re just gonna wind up back home anyway. Quia aut ducimus. Facere et rem. Voluptas omnis cupiditate.	2	257
1832	Chase	Son, if you really want something in this life, you have to work for it. Now quiet! They're about to announce the lottery numbers. Dolore deleniti fugiat. Qui aperiam placeat. Maiores sapiente tempore.	1	257
1833	Ralph Wiggum	Trust me, Bart, it's better to walk in on both your parents than on just one of them. Occaecati culpa quaerat. Eligendi ut ut. Possimus magni odio.	4	257
1834	Bernice Hibbert	You tried your best and you failed miserably. The lesson is: Never try. Nulla optio soluta. Neque totam ea. Sed autem expedita.	2	257
1835	Benjamin	Trust me, Bart, it's better to walk in on both your parents than on just one of them. Quibusdam est perspiciatis. Fugiat et expedita. Deleniti quo sit.	2	257
1836	The Rich Texan	That's it! You people have stood in my way long enough. I'm going to clown college! Doloremque dignissimos nam. Recusandae qui explicabo. Fuga inventore recusandae.	2	257
1837	Dr. Julius Hibbert	Trust me, Bart, it's better to walk in on both your parents than on just one of them. Optio deserunt sed. Libero optio ut. Et iste sed.	2	257
1838	Marty	When will I learn? The answers to life’s problems aren’t at the bottom of a bottle, they’re on TV! Officia esse rerum. Voluptate quae architecto. In architecto doloribus.	1	257
1839	Amber Simpson	To alcohol! The cause of, and solution to, all of life's problems. Ducimus ea alias. Quos voluptate repudiandae. Qui quae qui.	3	257
1840	Gil Gunderson	Cheating is the gift man gives himself. Enim quia similique. A vero et. Qui temporibus autem.	2	258
1841	Jasper Beardly	It takes two to lie: one to lie and one to listen. Nostrum eius et. Cupiditate quo nulla. Rerum placeat error.	3	258
1842	Moe Szyslak	Son, if you really want something in this life, you have to work for it. Now quiet! They're about to announce the lottery numbers. Consequatur ullam consequatur. Corporis enim quos. Quibusdam labore unde.	4	258
1843	Terri	Life is just one crushing defeat after another until you just wish Flanders was dead. Nobis commodi aut. Sed eos impedit. Atque ut doloremque.	1	258
1844	Terri	I'm not normally a praying man, but if you're up there, please save me, Superman! Dolores et est. Fuga iste exercitationem. Ex error non.	2	259
1845	Herbert Powell	Marriage is like a coffin and each kid is another nail. Exercitationem saepe porro. Sit reiciendis tempore. Voluptas est accusantium.	3	259
1846	Arnie Pye	Go out on a Tuesday? Who am I, Charlie Sheen? Est mollitia eius. Sed adipisci nesciunt. Facere cumque blanditiis.	1	259
1847	Squeaky-Voiced Teen	Go out on a Tuesday? Who am I, Charlie Sheen? Quis quis ex. Vero quidem consequatur. Laboriosam consequuntur modi.	2	259
1848	Jacques	What’s the point of going out? We’re just gonna wind up back home anyway. Nisi quia sed. Deleniti adipisci minima. Accusamus eos tempore.	3	259
1849	Herbert Powell	Life is just one crushing defeat after another until you just wish Flanders was dead. Repellendus quod sit. Qui et nostrum. Consequatur minima accusamus.	4	259
1850	Gino	To alcohol! The cause of, and solution to, all of life's problems. Esse sequi doloremque. Dolorem quia magnam. Est repellendus cupiditate.	1	259
1851	Dr. Nick Riviera	What’s the point of going out? We’re just gonna wind up back home anyway. Sint qui asperiores. Nostrum et et. Exercitationem quia in.	3	259
1852	Akira	Cheating is the gift man gives himself. Laboriosam sunt tenetur. Totam dolorem dolor. Corporis architecto fugiat.	1	259
1853	Crazy Cat Lady	Life is just one crushing defeat after another until you just wish Flanders was dead. Tenetur voluptatem quisquam. Delectus cum excepturi. Totam ut nostrum.	2	259
1854	Charles Montgomery Burns	Life is just one crushing defeat after another until you just wish Flanders was dead. Fugiat omnis cupiditate. Pariatur delectus dolor. Qui quas eum.	2	259
1855	Baby Gerald	Oh, loneliness and cheeseburgers are a dangerous mix. Impedit molestiae voluptates. Officiis est odit. Eos deserunt non.	4	259
1856	Superintendent Gary Chalmers	Sorry, Mom, the mob has spoken. Dolorem qui magni. Eius et a. Qui consequatur tenetur.	2	260
1857	Lisa Simpson	You tried your best and you failed miserably. The lesson is: Never try. Commodi ipsam et. Sapiente quisquam provident. Ducimus omnis consequatur.	3	260
1858	Edna Krabappel	Go out on a Tuesday? Who am I, Charlie Sheen? Illum voluptatem nisi. Dolorem voluptatem repellat. Tempora ut ullam.	3	260
1859	Johnny Tightlips	When will I learn? The answers to life’s problems aren’t at the bottom of a bottle, they’re on TV! Consequatur itaque voluptatum. Aliquid eos sunt. Ipsum eaque maxime.	3	260
1860	Sherri	That's it! You people have stood in my way long enough. I'm going to clown college! Nemo non dolor. Voluptatem sit aut. Harum iure quibusdam.	1	261
1861	Allison Taylor	Son, if you really want something in this life, you have to work for it. Now quiet! They're about to announce the lottery numbers. Vitae quia quia. Atque rerum et. Omnis totam vero.	3	261
1862	Patches Violet	When will I learn? The answers to life’s problems aren’t at the bottom of a bottle, they’re on TV! Aut et saepe. Iusto similique sit. Pariatur quaerat aperiam.	3	261
1863	Legs	Son, if you really want something in this life, you have to work for it. Now quiet! They're about to announce the lottery numbers. Sint alias et. Adipisci sit quas. Quisquam voluptatem consequatur.	4	261
1864	Sideshow Bob	Life is just one crushing defeat after another until you just wish Flanders was dead. Ipsam tenetur iure. Explicabo consequuntur quibusdam. Cum recusandae distinctio.	2	261
1865	Dave Shutton	Oh, loneliness and cheeseburgers are a dangerous mix. Ipsam inventore amet. Debitis voluptas ipsa. Officiis modi deserunt.	2	261
1866	Martin Prince	I'm not normally a praying man, but if you're up there, please save me, Superman! Et facere praesentium. Et beatae eligendi. Sit accusantium aut.	4	261
1867	Artie Ziff	Books are useless! I only ever read one book, To Kill A Mockingbird, and it gave me absolutely no insight on how to kill mockingbirds! Accusamus id enim. Labore odio sapiente. Aut cupiditate incidunt.	4	261
1868	Dr. Velimirovic	I'm not normally a praying man, but if you're up there, please save me, Superman! Et sit aliquid. Alias iusto porro. Eum quia nobis.	2	261
1869	Dr. Marvin Monroe	Son, if you really want something in this life, you have to work for it. Now quiet! They're about to announce the lottery numbers. Accusamus rem illum. Non atque deserunt. Incidunt qui ratione.	3	261
1870	Carl Carlson	Trust me, Bart, it's better to walk in on both your parents than on just one of them. Quia magni culpa. Eveniet illo eaque. Et quidem et.	2	261
1871	Bumblebee Man	To alcohol! The cause of, and solution to, all of life's problems. Ipsum soluta distinctio. Nemo quia nulla. Quo sed est.	4	261
1872	Eddie	Life is just one crushing defeat after another until you just wish Flanders was dead. Et architecto veritatis. Officia qui quia. Quia illo iusto.	4	262
1873	Lunchlady Doris	Life is just one crushing defeat after another until you just wish Flanders was dead. Quis eum quia. Modi cum expedita. Quisquam debitis officia.	2	262
1874	Cookie Kwan	Trust me, Bart, it's better to walk in on both your parents than on just one of them. Mollitia cupiditate quia. Nisi necessitatibus est. Laudantium placeat repellendus.	4	262
1875	Herbert Powell	Cheating is the gift man gives himself. Aut architecto officiis. Officiis quam enim. Ipsum quod et.	1	262
1876	Lindsey Naegle	I'm not normally a praying man, but if you're up there, please save me, Superman! Et quia autem. Sit autem voluptates. Consequatur laboriosam quas.	1	262
1877	Gloria	It takes two to lie: one to lie and one to listen. Praesentium qui est. Aliquam libero quod. Qui necessitatibus ut.	3	262
1878	Birchibald "Birch" T. Barlow	D'oh! Quis et et. Quasi dolorum facilis. Fugit voluptatem magni.	2	262
1879	Radioactive Man	To alcohol! The cause of, and solution to, all of life's problems. Officiis adipisci quos. Debitis eos culpa. Qui nihil nemo.	3	262
1880	Jacques	Trust me, Bart, it's better to walk in on both your parents than on just one of them. Voluptatibus quam voluptatum. Eius numquam non. Omnis dolore mollitia.	1	262
1881	Judge Roy Snyder	D'oh! Voluptas facere ea. Officiis qui deleniti. Exercitationem eos eligendi.	1	263
1882	Dave Shutton	Son, if you really want something in this life, you have to work for it. Now quiet! They're about to announce the lottery numbers. Et assumenda dolorum. Blanditiis in dolores. Enim dolores consequuntur.	1	263
1883	Reverend Timothy Lovejoy	Trust me, Bart, it's better to walk in on both your parents than on just one of them. Quidem labore possimus. Iusto exercitationem harum. Sit et suscipit.	3	263
1884	Nelson Muntz	Trust me, Bart, it's better to walk in on both your parents than on just one of them. Et ut nemo. Laboriosam facilis qui. Eum quos omnis.	3	263
1885	Disco Stu	Trust me, Bart, it's better to walk in on both your parents than on just one of them. Ex nesciunt architecto. Et id perferendis. Molestias et quia.	3	263
1886	Gunter	Cheating is the gift man gives himself. Unde quo aut. Et incidunt consequuntur. Consequuntur voluptatem dolorem.	4	263
1887	Jimbo Jones	You tried your best and you failed miserably. The lesson is: Never try. Quia vero non. Explicabo quo qui. Quas dolorem et.	3	263
1888	Dr. J. Loren Pryor	Kill my boss? Do I dare live out the American dream? Eius doloribus eum. Et reprehenderit minus. Tempora excepturi iusto.	4	263
1889	Bart Simpson	Life is just one crushing defeat after another until you just wish Flanders was dead. Et debitis voluptatem. Quaerat esse sequi. Illo id sed.	4	263
1890	Disco Stu	When will I learn? The answers to life’s problems aren’t at the bottom of a bottle, they’re on TV! Et porro in. Officia cupiditate voluptatem. Sit molestiae porro.	1	263
1891	Birchibald "Birch" T. Barlow	Oh, loneliness and cheeseburgers are a dangerous mix. Provident accusantium voluptatum. Et laboriosam et. Maiores natus voluptatibus.	2	264
1892	Todd Flanders	To alcohol! The cause of, and solution to, all of life's problems. Sed vero aspernatur. Ea unde quisquam. Itaque hic vel.	2	264
1893	Elizabeth Hoover	To alcohol! The cause of, and solution to, all of life's problems. Illo sint odit. Et necessitatibus quibusdam. Enim autem inventore.	2	264
1894	Mrs. Glick	Go out on a Tuesday? Who am I, Charlie Sheen? Dolores adipisci dolor. Error eveniet exercitationem. Totam tempora voluptatem.	2	264
1895	Marge Simpson	I'm not normally a praying man, but if you're up there, please save me, Superman! Aut laudantium est. Unde nam temporibus. Voluptate et id.	1	264
1896	Jacques	Trust me, Bart, it's better to walk in on both your parents than on just one of them. Eos ad sed. Cupiditate nostrum vel. Odio omnis dolores.	1	264
1897	Mayor "Diamond Joe" Quimby	You tried your best and you failed miserably. The lesson is: Never try. Est qui itaque. Error dolores in. Quia quo maiores.	2	264
1898	Disco Stu	What’s the point of going out? We’re just gonna wind up back home anyway. Vitae eaque ipsam. Cupiditate sunt dolorem. Aliquid pariatur qui.	2	264
1899	Charles Montgomery Burns	To alcohol! The cause of, and solution to, all of life's problems. Suscipit aut reiciendis. Et velit vel. Ea ea exercitationem.	4	264
1900	Bart Simpson	It takes two to lie: one to lie and one to listen. Asperiores voluptas unde. Dicta reiciendis iusto. Voluptas veritatis cumque.	1	264
1901	Poor Violet	Oh, loneliness and cheeseburgers are a dangerous mix. Id consequuntur est. Maxime non odit. Dolore accusamus facere.	2	265
1902	Cletus Spuckler	Kill my boss? Do I dare live out the American dream? Cumque dolor et. Nihil nam qui. Blanditiis mollitia quod.	2	265
1903	Captain Lance Murdock	Kill my boss? Do I dare live out the American dream? Consequatur ullam dolores. Perspiciatis saepe repudiandae. Officia rerum et.	2	265
1904	Cesar	Trust me, Bart, it's better to walk in on both your parents than on just one of them. Corrupti quod eligendi. Quo vitae sunt. Ut in voluptas.	2	265
1905	Carl Carlson	That's it! You people have stood in my way long enough. I'm going to clown college! Quis debitis fugiat. Nulla eveniet quia. Quis distinctio recusandae.	4	265
1906	Drederick Tatum	Trust me, Bart, it's better to walk in on both your parents than on just one of them. Est cupiditate odio. Laboriosam omnis voluptatem. Sunt laudantium sed.	3	265
1907	Itchy	Cheating is the gift man gives himself. Fuga ipsa et. Tenetur deleniti facilis. Dolorum ducimus vel.	1	266
1908	Akira	I'm not normally a praying man, but if you're up there, please save me, Superman! Voluptatibus et consequatur. Assumenda incidunt fugit. Possimus odit eum.	1	266
1909	Fat Tony	Cheating is the gift man gives himself. Laudantium beatae dolor. Facilis distinctio voluptatem. Officiis aut facere.	1	266
1910	Gary	You tried your best and you failed miserably. The lesson is: Never try. A qui et. Sed et ea. Dolorem ut quo.	1	267
1911	Captain Horatio McCallister	D'oh! Sed dolor dolorem. Qui ea optio. Est odio deserunt.	2	267
1912	Aristotle Amadopolis	Son, if you really want something in this life, you have to work for it. Now quiet! They're about to announce the lottery numbers. Qui at est. Omnis aut sed. Qui asperiores vel.	1	267
1913	Mr. Costington	To alcohol! The cause of, and solution to, all of life's problems. Nam eum quaerat. Aut qui aut. Distinctio voluptatibus qui.	2	267
1914	Blinky	Cheating is the gift man gives himself. Molestiae velit ea. Et quasi rerum. Unde non ratione.	3	267
1915	Principal Seymour Skinner	Marriage is like a coffin and each kid is another nail. Rerum et ut. Dolorem nihil architecto. Animi et et.	3	268
1916	Judge Roy Snyder	Trust me, Bart, it's better to walk in on both your parents than on just one of them. Adipisci qui porro. Id totam nostrum. Eos corrupti ea.	3	268
1917	Reverend Timothy Lovejoy	Cheating is the gift man gives himself. Tempora dolorum sapiente. Quasi aut magnam. Voluptatem illo qui.	3	268
1918	Old Barber	Kill my boss? Do I dare live out the American dream? Vel ut quasi. Porro consequatur quia. Cumque aut aperiam.	2	268
1919	Bleeding Gums Murphy	Trust me, Bart, it's better to walk in on both your parents than on just one of them. Impedit enim autem. Aut voluptas expedita. Voluptatem explicabo eligendi.	3	268
1920	Bumblebee Man	D'oh! Aut ut perspiciatis. Dolorum qui magni. Cum dicta ipsam.	2	268
1921	Poor Violet	If you pray to the wrong god, you might just make the right one madder and madder. Et nobis ad. Voluptatem eum placeat. Aut odit nemo.	3	268
1922	Mona Simpson	Marriage is like a coffin and each kid is another nail. Tenetur quia ut. Optio ea accusamus. Rerum nesciunt quo.	2	268
1923	Cesar	Marriage is like a coffin and each kid is another nail. Quod et dolores. Quo ut libero. Itaque quis et.	2	268
1924	Lou	Marriage is like a coffin and each kid is another nail. Pariatur sit itaque. Qui quo qui. Quo dolor quae.	4	268
1925	Martin Prince	It takes two to lie: one to lie and one to listen. Deserunt ut non. Illum consequuntur et. Vitae quo tempore.	3	269
1926	Duffman	Go out on a Tuesday? Who am I, Charlie Sheen? Occaecati architecto sit. Suscipit et dolorem. Velit tenetur sint.	4	269
1927	Manjula Nahasapeemapetilon	Go out on a Tuesday? Who am I, Charlie Sheen? Est nesciunt error. Molestiae consequuntur omnis. Suscipit doloribus neque.	3	269
1928	Ned Flanders	Cheating is the gift man gives himself. Suscipit quia autem. Molestiae voluptatem excepturi. Iure qui repellat.	4	269
1929	Dewey Largo	Trust me, Bart, it's better to walk in on both your parents than on just one of them. Sint dignissimos quis. Aut voluptatum dolores. Voluptate velit culpa.	1	269
1930	Helen Lovejoy	Life is just one crushing defeat after another until you just wish Flanders was dead. Molestiae omnis eveniet. Enim sit facilis. Et in aliquam.	3	269
1931	Squeaky-Voiced Teen	If you pray to the wrong god, you might just make the right one madder and madder. Natus provident nesciunt. Est facere ut. Tempora fuga esse.	2	269
1932	Waylon Smithers	Cheating is the gift man gives himself. Aliquid nihil est. Dolores placeat vitae. Porro blanditiis quia.	1	269
1933	Poochie	Trust me, Bart, it's better to walk in on both your parents than on just one of them. Necessitatibus autem in. Repellat voluptas qui. Qui ipsam voluptas.	4	269
1934	Mary Bailey	What’s the point of going out? We’re just gonna wind up back home anyway. Quod quibusdam et. Officiis consequuntur velit. Est voluptas at.	2	269
1935	Mr. Costington	It takes two to lie: one to lie and one to listen. Rerum ducimus aspernatur. Molestiae placeat assumenda. Aut rerum sit.	1	269
1936	Barney Gumble	Kill my boss? Do I dare live out the American dream? Vitae dolores consequatur. Vitae vel id. In itaque delectus.	2	270
1937	Selma Bouvier	When will I learn? The answers to life’s problems aren’t at the bottom of a bottle, they’re on TV! Alias deserunt aperiam. Qui vero dolore. Reiciendis cupiditate quod.	3	270
1938	Mr. Costington	Kill my boss? Do I dare live out the American dream? Cupiditate ex fuga. Tempore hic necessitatibus. Doloribus dolorum et.	4	270
1939	Martin Prince	Sorry, Mom, the mob has spoken. Aut tempora aliquam. Quam aperiam vel. Vel labore eum.	2	270
1940	Gloria	Son, if you really want something in this life, you have to work for it. Now quiet! They're about to announce the lottery numbers. Dolor architecto rerum. In cumque molestias. Et aspernatur rerum.	2	271
1941	Old Barber	If you pray to the wrong god, you might just make the right one madder and madder. Perferendis aperiam deleniti. Omnis nulla quod. Ut aspernatur est.	2	271
1942	Ling Bouvier	Sorry, Mom, the mob has spoken. Nihil ipsam laudantium. Voluptate excepturi quia. Dolor in delectus.	2	271
1943	Frankie the Squealer	That's it! You people have stood in my way long enough. I'm going to clown college! Non ut vero. Accusantium dignissimos perferendis. Eveniet nulla quo.	2	271
1944	Dr. Julius Hibbert	Go out on a Tuesday? Who am I, Charlie Sheen? Ipsam temporibus dolor. Ab eveniet fugiat. Et consequatur distinctio.	1	271
1945	Amber Simpson	It takes two to lie: one to lie and one to listen. Velit maxime unde. Cumque tenetur rerum. Iure deserunt sint.	4	271
1946	Ugolin	You tried your best and you failed miserably. The lesson is: Never try. Corporis rem rerum. Laborum amet qui. Exercitationem quia sequi.	4	271
1947	Ned Flanders	You tried your best and you failed miserably. The lesson is: Never try. Tenetur repellendus repudiandae. Quis adipisci quod. Fugiat sed enim.	2	271
1948	Captain Lance Murdock	When will I learn? The answers to life’s problems aren’t at the bottom of a bottle, they’re on TV! Repellat molestias non. Nam qui soluta. Incidunt iure ea.	1	271
1949	Santa''s Little Helper	Trust me, Bart, it's better to walk in on both your parents than on just one of them. Quis voluptatem aut. Et ea aut. Voluptate quo aliquid.	3	271
1950	Joey	It takes two to lie: one to lie and one to listen. Non animi tenetur. Pariatur sapiente quibusdam. Quod laboriosam ut.	2	272
1951	Ned Flanders	Kill my boss? Do I dare live out the American dream? Maxime tempora laboriosam. Aut qui fugiat. Et quas dolorem.	4	272
1952	Reverend Timothy Lovejoy	Life is just one crushing defeat after another until you just wish Flanders was dead. Perspiciatis qui corrupti. Voluptas voluptatem quam. Unde dolorem illum.	4	272
1953	Bernice Hibbert	What’s the point of going out? We’re just gonna wind up back home anyway. Eaque autem perspiciatis. Quia qui libero. Et rerum reprehenderit.	4	272
1954	Üter	It takes two to lie: one to lie and one to listen. Tempore minus fugiat. Quia rerum reiciendis. Distinctio quia aut.	4	272
1955	Kearney Zzyzwicz Jr.	You tried your best and you failed miserably. The lesson is: Never try. Quod modi facilis. Nostrum ut sint. Aut eos dolorum.	2	272
1956	Comic Book Guy	If you pray to the wrong god, you might just make the right one madder and madder. Voluptas dolorem voluptatibus. Delectus quas quia. Cum et qui.	1	273
1957	Santa''s Little Helper	What’s the point of going out? We’re just gonna wind up back home anyway. Reiciendis necessitatibus inventore. Sunt quia vel. Accusamus omnis excepturi.	2	273
1958	Old Jewish Man	Oh, loneliness and cheeseburgers are a dangerous mix. A qui et. Culpa laudantium et. Quia omnis id.	3	273
1959	Janey Powell	When will I learn? The answers to life’s problems aren’t at the bottom of a bottle, they’re on TV! Nam quia voluptas. Ea repellat qui. Ullam tempore sequi.	4	273
1960	Üter	That's it! You people have stood in my way long enough. I'm going to clown college! Saepe amet quis. Distinctio velit rerum. Atque nam ad.	1	273
1961	Bernice Hibbert	I'm not normally a praying man, but if you're up there, please save me, Superman! Enim neque quae. Et maiores est. Illo fugit est.	2	273
1962	Janey Powell	D'oh! Repellendus natus debitis. Sunt accusantium sapiente. Ipsam eum doloremque.	4	273
1963	Captain Horatio McCallister	D'oh! Voluptas commodi dolorem. Et sequi maxime. Non iure non.	2	273
1964	Birchibald "Birch" T. Barlow	Go out on a Tuesday? Who am I, Charlie Sheen? Vitae consequatur necessitatibus. Rerum saepe nisi. Voluptatum qui voluptatibus.	1	273
1965	Mr. Costington	It takes two to lie: one to lie and one to listen. Commodi voluptas nihil. Quam sit qui. Expedita et ducimus.	4	274
1966	Baby Gerald	Books are useless! I only ever read one book, To Kill A Mockingbird, and it gave me absolutely no insight on how to kill mockingbirds! Qui quaerat consequatur. Necessitatibus ea ut. Et explicabo unde.	4	274
1967	Patches Violet	Life is just one crushing defeat after another until you just wish Flanders was dead. Ut aut odio. Rerum dolorem adipisci. Enim officiis aut.	2	274
1968	Maude Flanders	Trust me, Bart, it's better to walk in on both your parents than on just one of them. Est cupiditate nemo. Sapiente ducimus sunt. Ea quia nesciunt.	4	275
1969	Mr. Costington	Kill my boss? Do I dare live out the American dream? Et vero rerum. Perferendis natus nisi. Harum autem et.	1	275
1970	Sarah Wiggum	It takes two to lie: one to lie and one to listen. Doloribus dicta sit. Labore blanditiis mollitia. Dolorem ut amet.	1	275
1971	Marge Simpson	That's it! You people have stood in my way long enough. I'm going to clown college! Illo est ut. Perferendis sapiente quas. Quas dicta facilis.	2	275
1972	Gloria	When will I learn? The answers to life’s problems aren’t at the bottom of a bottle, they’re on TV! Facere maiores corporis. Dolorem sit dicta. Nisi est aut.	1	275
1973	Lou	Life is just one crushing defeat after another until you just wish Flanders was dead. Deleniti ducimus sapiente. Dolore qui dolorum. Impedit porro dolore.	1	275
1974	Grampa Abraham Simpson	If you pray to the wrong god, you might just make the right one madder and madder. Est est nihil. Ad dignissimos ea. Aut non labore.	4	275
1975	Akira	Sorry, Mom, the mob has spoken. Nihil quia ad. Repellendus cupiditate mollitia. Debitis sed eos.	2	276
1976	Chase	What’s the point of going out? We’re just gonna wind up back home anyway. Qui aut eius. Non autem eveniet. Itaque ut nihil.	3	276
1977	Üter	I'm not normally a praying man, but if you're up there, please save me, Superman! Aut ab quia. Voluptatem distinctio saepe. Ratione aut sit.	4	276
1978	Aristotle Amadopolis	Life is just one crushing defeat after another until you just wish Flanders was dead. Non voluptas quae. Molestiae incidunt ex. Expedita qui ut.	1	276
1979	Chase	It takes two to lie: one to lie and one to listen. Officiis ut atque. Doloribus excepturi sed. Consequuntur harum ea.	2	276
1980	Eddie	Life is just one crushing defeat after another until you just wish Flanders was dead. Velit minus delectus. Voluptatem in ducimus. Saepe temporibus nihil.	3	276
1981	Richard	D'oh! Dolore in distinctio. Voluptatem ducimus repellat. Soluta ullam accusamus.	2	276
1982	The Rich Texan	Life is just one crushing defeat after another until you just wish Flanders was dead. Et sequi velit. Aut possimus eligendi. Fuga quos aliquam.	4	277
1983	Yes Guy	What’s the point of going out? We’re just gonna wind up back home anyway. Quae nisi perferendis. Aut inventore vero. Dolorem ducimus optio.	2	277
1984	Nelson Muntz	Cheating is the gift man gives himself. Earum reprehenderit sit. Id laboriosam ut. Sunt at perferendis.	3	277
1985	Luigi	Sorry, Mom, the mob has spoken. Incidunt sequi quasi. Dolorem minima expedita. Aspernatur autem ipsum.	4	277
1986	Dr. Nick Riviera	To alcohol! The cause of, and solution to, all of life's problems. Quis tenetur est. Quisquam ipsa recusandae. Culpa quod officiis.	2	277
1987	Dr. Nick Riviera	Sorry, Mom, the mob has spoken. Quisquam et minus. Unde dolor esse. Dolorem id iure.	1	277
1988	Radioactive Man	D'oh! Quo sequi ab. Excepturi voluptatem veniam. Et non est.	3	277
1989	Roger Meyers, Jr.	What’s the point of going out? We’re just gonna wind up back home anyway. Veritatis suscipit omnis. Nihil aut nulla. Omnis architecto perspiciatis.	1	278
1990	Birchibald "Birch" T. Barlow	That's it! You people have stood in my way long enough. I'm going to clown college! Possimus sunt sunt. Vero quia at. Suscipit consequatur et.	1	278
1991	Todd Flanders	Marriage is like a coffin and each kid is another nail. Id et exercitationem. Ratione labore magni. Eaque minima quod.	4	278
1992	Blinky	Cheating is the gift man gives himself. Quia sed suscipit. Consectetur optio et. Atque repellat quod.	1	278
1993	Jacques	Go out on a Tuesday? Who am I, Charlie Sheen? Sapiente alias hic. Sunt architecto voluptate. Voluptates saepe quae.	1	278
1994	Cookie Kwan	What’s the point of going out? We’re just gonna wind up back home anyway. Aspernatur repellat magnam. Enim id deleniti. Voluptatibus et ab.	2	278
1995	Cesar	It takes two to lie: one to lie and one to listen. Earum enim eligendi. Quo doloribus aliquid. Porro omnis quia.	4	278
1996	Cletus Spuckler	Cheating is the gift man gives himself. Mollitia facilis asperiores. Eveniet aut qui. Optio voluptatem aut.	4	279
1997	Squeaky-Voiced Teen	Trust me, Bart, it's better to walk in on both your parents than on just one of them. Tempore libero omnis. Distinctio exercitationem at. Provident ex officiis.	3	279
1998	Kent Brockman	Life is just one crushing defeat after another until you just wish Flanders was dead. Et suscipit itaque. Consequatur hic ut. Ab facilis tempore.	1	279
1999	Benjamin	Sorry, Mom, the mob has spoken. Porro qui aut. Perspiciatis error et. Repudiandae labore est.	1	279
2000	Rabbi Hyman Krustofski	D'oh! Modi aut voluptatem. Rerum soluta aspernatur. Vitae doloremque vel.	3	279
2001	Atkins, State Comptroller	To alcohol! The cause of, and solution to, all of life's problems. Et ut animi. Odit beatae facere. Quaerat recusandae illum.	1	279
2002	Comic Book Guy	When will I learn? The answers to life’s problems aren’t at the bottom of a bottle, they’re on TV! Perspiciatis consequuntur voluptatum. Blanditiis voluptate accusantium. Iusto suscipit sequi.	3	279
2003	Sideshow Mel	It takes two to lie: one to lie and one to listen. Et id atque. Consequatur rerum mollitia. Assumenda asperiores delectus.	2	279
2004	Old Barber	Cheating is the gift man gives himself. Libero doloribus facilis. Est magni laudantium. Vel debitis quia.	1	279
2005	Rabbi Hyman Krustofski	D'oh! Et animi eaque. Enim pariatur dolor. Fugiat inventore vitae.	2	279
2006	Rainier Wolfcastle	That's it! You people have stood in my way long enough. I'm going to clown college! Esse aliquam sed. Sed voluptas quia. Illum cumque dicta.	2	279
2007	Judge Roy Snyder	Sorry, Mom, the mob has spoken. Repellendus quia pariatur. Iusto aliquid aut. Omnis aperiam laborum.	4	279
2008	Patches Violet	What’s the point of going out? We’re just gonna wind up back home anyway. Nobis totam dolor. Voluptate amet nemo. Adipisci quas rerum.	1	280
2009	Milhouse Van Houten	If you pray to the wrong god, you might just make the right one madder and madder. Fuga ea veniam. Aut eligendi non. Velit totam asperiores.	4	280
2010	Gunter	It takes two to lie: one to lie and one to listen. Et porro qui. Harum ducimus fugiat. In quod placeat.	2	280
2011	Duffman	Marriage is like a coffin and each kid is another nail. Aliquid sed iure. Enim dolor et. Est illum ut.	2	280
2012	Patty Bouvier	Kill my boss? Do I dare live out the American dream? Exercitationem maxime quaerat. Ipsa reiciendis voluptas. Voluptas atque ab.	3	280
2013	Dr. Nick Riviera	That's it! You people have stood in my way long enough. I'm going to clown college! Quaerat iste expedita. Sapiente ad explicabo. Distinctio et possimus.	2	281
2014	Wiseguy	I'm not normally a praying man, but if you're up there, please save me, Superman! Vel veritatis numquam. Nostrum quia tempore. Dolor id quo.	1	281
2015	Ms. Albright	You tried your best and you failed miserably. The lesson is: Never try. Maiores eum ut. Velit eum consequatur. Dolorem voluptatibus explicabo.	3	281
2016	Maude Flanders	To alcohol! The cause of, and solution to, all of life's problems. Exercitationem maxime tempora. Quas impedit ut. Amet temporibus quia.	2	281
2017	Snowball	Books are useless! I only ever read one book, To Kill A Mockingbird, and it gave me absolutely no insight on how to kill mockingbirds! Quo et veniam. Recusandae nihil velit. Autem dignissimos ab.	2	281
2018	Brandine Spuckler	When will I learn? The answers to life’s problems aren’t at the bottom of a bottle, they’re on TV! Quia in atque. Et iusto iure. Nam culpa nobis.	1	281
2019	Jacqueline Bouvier	I'm not normally a praying man, but if you're up there, please save me, Superman! Mollitia esse sed. Omnis excepturi officia. Tenetur et illo.	2	281
2020	Charlie	It takes two to lie: one to lie and one to listen. Dolores deleniti voluptas. Itaque sapiente nam. Inventore voluptatem ad.	2	281
2021	Gary	When will I learn? The answers to life’s problems aren’t at the bottom of a bottle, they’re on TV! Eius occaecati inventore. Dolor occaecati aliquid. Nesciunt quia doloremque.	3	281
2022	Jacqueline Bouvier	If you pray to the wrong god, you might just make the right one madder and madder. Velit et aut. Recusandae fugit ratione. Dolorum quos perspiciatis.	1	281
2023	Maggie Simpson	Sorry, Mom, the mob has spoken. Suscipit voluptas ut. Quam facere similique. Ullam fugit in.	4	281
2024	The Rich Texan	What’s the point of going out? We’re just gonna wind up back home anyway. Voluptatem quae necessitatibus. Possimus non dolor. Tempore tenetur magni.	3	282
2025	Agnes Skinner	I'm not normally a praying man, but if you're up there, please save me, Superman! Voluptas dicta eveniet. Ab aut placeat. Omnis saepe suscipit.	4	282
2026	Maude Flanders	Books are useless! I only ever read one book, To Kill A Mockingbird, and it gave me absolutely no insight on how to kill mockingbirds! Consequatur occaecati quidem. Cupiditate dolores fuga. Et assumenda soluta.	3	282
2027	Database	It takes two to lie: one to lie and one to listen. Libero laboriosam quisquam. Minima est quia. Omnis temporibus molestiae.	3	282
2028	Mr. Teeny	Son, if you really want something in this life, you have to work for it. Now quiet! They're about to announce the lottery numbers. Velit consectetur culpa. Explicabo deleniti quis. Quos tenetur voluptatibus.	4	282
2029	Arnie Pye	It takes two to lie: one to lie and one to listen. Perspiciatis accusamus dolores. Et alias non. Voluptatem veniam in.	3	282
2030	Ralph Wiggum	Books are useless! I only ever read one book, To Kill A Mockingbird, and it gave me absolutely no insight on how to kill mockingbirds! Expedita aut deserunt. Dolor tempore nobis. Odio eos voluptatem.	3	282
2031	Lindsey Naegle	It takes two to lie: one to lie and one to listen. Sit natus alias. Cumque eos dolores. Esse blanditiis fugiat.	3	282
2032	Kearney Zzyzwicz Jr.	Books are useless! I only ever read one book, To Kill A Mockingbird, and it gave me absolutely no insight on how to kill mockingbirds! Quaerat quos ea. Dignissimos quas eius. Et ad consequuntur.	3	282
2033	Drederick Tatum	Life is just one crushing defeat after another until you just wish Flanders was dead. Vel et sed. Quibusdam laboriosam necessitatibus. Fuga maiores et.	3	282
2034	Lenny Leonard	It takes two to lie: one to lie and one to listen. Iure labore qui. A voluptatibus assumenda. Omnis adipisci suscipit.	3	282
2035	Boobarella	Oh, loneliness and cheeseburgers are a dangerous mix. Cumque temporibus et. Tempore expedita qui. Officia voluptatem porro.	4	282
2036	Bumblebee Man	Oh, loneliness and cheeseburgers are a dangerous mix. Officiis beatae illum. Iusto quasi aperiam. Dignissimos esse ea.	4	283
2037	Gino	Books are useless! I only ever read one book, To Kill A Mockingbird, and it gave me absolutely no insight on how to kill mockingbirds! Ad ex saepe. Voluptate unde facere. Ea sit consequatur.	4	283
2038	Dr. Marvin Monroe	To alcohol! The cause of, and solution to, all of life's problems. Quasi dolorem ut. Ea rem molestiae. Reiciendis quam sint.	3	283
2039	Judge Roy Snyder	Oh, loneliness and cheeseburgers are a dangerous mix. Porro nesciunt sed. Impedit quisquam recusandae. Blanditiis omnis culpa.	4	283
2040	Krusty the Clown	Sorry, Mom, the mob has spoken. Accusantium laudantium non. Sint error provident. Sint soluta ut.	1	283
2041	Gino	I'm not normally a praying man, but if you're up there, please save me, Superman! Repellat magni nihil. Natus aspernatur neque. Et eaque voluptas.	3	283
2042	Terri	If you pray to the wrong god, you might just make the right one madder and madder. Molestiae ab alias. Saepe quibusdam quis. Accusamus officia voluptatem.	1	284
2043	Martin Prince	What’s the point of going out? We’re just gonna wind up back home anyway. Et voluptatum illo. Quisquam rerum et. Perspiciatis consequatur ut.	4	284
2044	Ned Flanders	Books are useless! I only ever read one book, To Kill A Mockingbird, and it gave me absolutely no insight on how to kill mockingbirds! Recusandae placeat sunt. Ipsa doloribus ea. Nemo sint voluptas.	2	284
2045	Rabbi Hyman Krustofski	Sorry, Mom, the mob has spoken. Pariatur deleniti ut. Cum illo aspernatur. Ducimus et amet.	2	284
2046	Lionel Hutz	To alcohol! The cause of, and solution to, all of life's problems. Quas veniam dolorem. Fugiat optio tempora. Earum molestiae est.	3	284
2047	Poor Violet	If you pray to the wrong god, you might just make the right one madder and madder. Ut consectetur ad. Officia voluptatem nisi. Itaque debitis et.	2	284
2048	Birchibald "Birch" T. Barlow	When will I learn? The answers to life’s problems aren’t at the bottom of a bottle, they’re on TV! Nostrum consectetur blanditiis. Quas cum recusandae. Earum quia architecto.	1	284
2049	Dr. Velimirovic	Sorry, Mom, the mob has spoken. Inventore iure molestiae. Consequatur alias asperiores. Natus et id.	2	284
2050	Lindsey Naegle	Marriage is like a coffin and each kid is another nail. Ullam dolorum ad. Odio eveniet possimus. Eos ipsa harum.	1	284
2051	Snowball	If you pray to the wrong god, you might just make the right one madder and madder. Odio cum dolores. Eum occaecati et. Pariatur dolorem ipsum.	1	284
2052	Akira	Cheating is the gift man gives himself. Deleniti quas ratione. Porro ab numquam. Voluptate quia eos.	1	285
2053	Maude Flanders	To alcohol! The cause of, and solution to, all of life's problems. Velit sed id. Repudiandae error nam. Natus ducimus sint.	2	285
2054	Rabbi Hyman Krustofski	Trust me, Bart, it's better to walk in on both your parents than on just one of them. Natus enim exercitationem. Accusamus sint nisi. Praesentium et odio.	4	285
2055	Mrs. Glick	Marriage is like a coffin and each kid is another nail. Et dolores omnis. Qui dolorem eum. Fugit aut dolore.	2	285
2056	Jacqueline Bouvier	You tried your best and you failed miserably. The lesson is: Never try. Enim hic consequatur. Distinctio dolorum quam. Eum cumque in.	1	285
2057	Coach Lugash	When will I learn? The answers to life’s problems aren’t at the bottom of a bottle, they’re on TV! Odio illo adipisci. Minus sint perferendis. Repellendus eos omnis.	2	285
2058	Benjamin	To alcohol! The cause of, and solution to, all of life's problems. Atque minima iure. Magni vel soluta. Quasi laborum est.	2	285
2059	Elizabeth Hoover	I'm not normally a praying man, but if you're up there, please save me, Superman! Voluptatem velit perspiciatis. Corrupti eos quia. Voluptas est iusto.	2	285
2060	Judge Constance Harm	Marriage is like a coffin and each kid is another nail. Beatae velit sint. Maiores eos vel. Temporibus consequatur qui.	4	285
2061	Amber Simpson	Cheating is the gift man gives himself. Vel et beatae. Magni voluptatibus quod. Totam esse nemo.	3	285
2062	Charlie	That's it! You people have stood in my way long enough. I'm going to clown college! Vel exercitationem illum. Quibusdam est vel. Voluptate qui sint.	2	285
2063	Cletus Spuckler	Oh, loneliness and cheeseburgers are a dangerous mix. Voluptas adipisci quos. Qui non a. Eos quam ipsa.	3	285
2064	Judge Constance Harm	That's it! You people have stood in my way long enough. I'm going to clown college! Magni et rerum. Laborum autem qui. Aut ullam possimus.	2	286
2065	Gil Gunderson	That's it! You people have stood in my way long enough. I'm going to clown college! Unde blanditiis fugit. Et et culpa. Est aut hic.	4	286
2066	Hans Moleman	Sorry, Mom, the mob has spoken. Amet omnis ut. Libero fugiat voluptate. Laboriosam nemo est.	3	286
2067	Captain Lance Murdock	Son, if you really want something in this life, you have to work for it. Now quiet! They're about to announce the lottery numbers. Voluptas deserunt dolores. Expedita tempore voluptas. Minima qui autem.	4	286
2068	Atkins, State Comptroller	Sorry, Mom, the mob has spoken. Consequatur perspiciatis non. Beatae alias ut. Qui quasi fuga.	1	286
2069	Rod Flanders	D'oh! Numquam libero minus. Dicta illum nisi. Vel tenetur iste.	2	286
2070	Cookie Kwan	To alcohol! The cause of, and solution to, all of life's problems. Iusto debitis et. Iure atque sit. Eius et dignissimos.	3	286
2071	Patty Bouvier	Trust me, Bart, it's better to walk in on both your parents than on just one of them. Ut id consequuntur. Veritatis quidem architecto. Qui fuga sed.	4	286
2072	Ruth Powers	To alcohol! The cause of, and solution to, all of life's problems. Distinctio iste voluptatum. Vel eos eum. Cumque quae dignissimos.	4	286
2073	Brandine Spuckler	To alcohol! The cause of, and solution to, all of life's problems. Eveniet aut molestiae. Ea facere animi. Ad at labore.	1	286
2074	Sherri	It takes two to lie: one to lie and one to listen. Officiis consequuntur sit. Id ratione corporis. Maiores quia magni.	3	286
2075	Captain Horatio McCallister	You tried your best and you failed miserably. The lesson is: Never try. Rerum aliquam odit. Animi officiis velit. Consequatur quia est.	2	287
2076	Manjula Nahasapeemapetilon	Marriage is like a coffin and each kid is another nail. Numquam veniam provident. Porro at eaque. Tempore facilis voluptatem.	1	287
2077	Scott Christian	D'oh! Unde dolore vel. Accusamus maxime reprehenderit. Quia at repellendus.	2	287
2078	Leopold	I'm not normally a praying man, but if you're up there, please save me, Superman! Qui iure praesentium. Expedita porro omnis. Quisquam earum omnis.	1	287
2079	Lurleen Lumpkin	Cheating is the gift man gives himself. Neque at reprehenderit. Perferendis sint vel. Deserunt ipsa exercitationem.	1	288
2080	Chase	If you pray to the wrong god, you might just make the right one madder and madder. Temporibus quo aut. Accusantium dolorum beatae. Nihil commodi ab.	2	288
2081	Gil Gunderson	What’s the point of going out? We’re just gonna wind up back home anyway. Qui rerum ipsum. Ex in quia. Facilis rerum nulla.	2	288
2082	Gary	Life is just one crushing defeat after another until you just wish Flanders was dead. Omnis rerum corrupti. Molestiae hic iure. Sunt rem numquam.	3	288
2083	Atkins, State Comptroller	Son, if you really want something in this life, you have to work for it. Now quiet! They're about to announce the lottery numbers. Rerum sed totam. Voluptas officiis omnis. Et porro perspiciatis.	2	288
2084	Ned Flanders	I'm not normally a praying man, but if you're up there, please save me, Superman! Ad quia tempore. Sit laborum sint. Officia enim laboriosam.	4	288
2085	Troy McClure	If you pray to the wrong god, you might just make the right one madder and madder. Doloremque eum recusandae. Molestiae corporis ipsam. Ipsum doloremque quia.	3	288
2086	Rabbi Hyman Krustofski	That's it! You people have stood in my way long enough. I'm going to clown college! Quidem asperiores quas. Aut cupiditate ullam. Neque quod perferendis.	3	288
2087	Charles Montgomery Burns	That's it! You people have stood in my way long enough. I'm going to clown college! Enim voluptatem qui. Corrupti esse possimus. Velit labore voluptas.	2	288
2088	Bleeding Gums Murphy	You tried your best and you failed miserably. The lesson is: Never try. Et aut ut. Aliquam deleniti dicta. Culpa fugit voluptatem.	4	288
2089	Captain Lance Murdock	Trust me, Bart, it's better to walk in on both your parents than on just one of them. Sapiente quibusdam odit. Voluptatum officia reprehenderit. Doloribus expedita non.	1	288
2090	Scott Christian	Books are useless! I only ever read one book, To Kill A Mockingbird, and it gave me absolutely no insight on how to kill mockingbirds! Est et nostrum. In expedita molestiae. Minima et et.	1	289
2091	Chief Clancy Wiggum	It takes two to lie: one to lie and one to listen. Dolore ipsum molestiae. Dolorum ipsam tenetur. Corrupti fugiat beatae.	2	289
2092	The Rich Texan	Oh, loneliness and cheeseburgers are a dangerous mix. Velit est quo. Qui eum sint. Itaque consequatur provident.	3	289
2093	Bart Simpson	If you pray to the wrong god, you might just make the right one madder and madder. A amet sed. Assumenda sint facere. Dolorem beatae culpa.	3	289
2094	Atkins, State Comptroller	Cheating is the gift man gives himself. Eum ratione architecto. Quis rem molestiae. Ut maiores sit.	3	289
2095	Rabbi Hyman Krustofski	Marriage is like a coffin and each kid is another nail. Quod molestiae fugit. Necessitatibus in ut. Voluptatibus cupiditate quisquam.	3	289
2096	Charlie	Kill my boss? Do I dare live out the American dream? Quasi enim repellat. Accusamus placeat veritatis. Nulla est corrupti.	3	289
2097	Lionel Hutz	Trust me, Bart, it's better to walk in on both your parents than on just one of them. Veritatis ipsa soluta. Est cumque voluptatem. Occaecati voluptates id.	3	289
2098	Boobarella	Books are useless! I only ever read one book, To Kill A Mockingbird, and it gave me absolutely no insight on how to kill mockingbirds! Odio omnis exercitationem. Est vero fuga. Voluptatem sit dicta.	2	289
2099	Bart Simpson	It takes two to lie: one to lie and one to listen. Ea rerum quia. Animi laborum dolorum. Blanditiis iure et.	4	289
2100	Moe Szyslak	Son, if you really want something in this life, you have to work for it. Now quiet! They're about to announce the lottery numbers. Magni recusandae qui. Ipsa pariatur voluptate. Voluptas dolor sunt.	3	289
2101	Troy McClure	I'm not normally a praying man, but if you're up there, please save me, Superman! Amet provident ut. Id dolores esse. Consequatur maxime eaque.	4	290
2102	Todd Flanders	Trust me, Bart, it's better to walk in on both your parents than on just one of them. Assumenda enim qui. Veniam necessitatibus ipsum. Voluptatem rerum harum.	4	290
2103	Helen Lovejoy	Sorry, Mom, the mob has spoken. Iure alias magni. Magnam aut et. Ut quos rerum.	4	290
2104	Üter	You tried your best and you failed miserably. The lesson is: Never try. Vel eaque aliquam. Quia occaecati nihil. Nisi repellendus commodi.	3	291
2105	Dolph	Sorry, Mom, the mob has spoken. Assumenda repellendus expedita. Et pariatur labore. Nobis fugit dicta.	2	291
2106	Ned Flanders	Kill my boss? Do I dare live out the American dream? Quia consectetur incidunt. Est beatae quia. Voluptas odit est.	1	291
2107	Dave Shutton	Kill my boss? Do I dare live out the American dream? Ex similique voluptatem. Temporibus nihil debitis. Reiciendis ipsa excepturi.	4	291
2108	Charles Montgomery Burns	Kill my boss? Do I dare live out the American dream? Aut sed ut. Impedit consectetur et. Maiores ut sunt.	4	291
2109	Dewey Largo	When will I learn? The answers to life’s problems aren’t at the bottom of a bottle, they’re on TV! Architecto harum odio. Aperiam ab provident. Et laborum nostrum.	3	291
2110	Wendell Borton	Oh, loneliness and cheeseburgers are a dangerous mix. Itaque est quia. Esse id laboriosam. Voluptatem facilis optio.	2	292
2111	Capital City Goofball	It takes two to lie: one to lie and one to listen. Incidunt dolores vel. Aliquid et aut. Non qui totam.	3	292
2112	Duffman	D'oh! Beatae sapiente est. Voluptatem repellat nesciunt. Id cupiditate deserunt.	1	292
2113	Squeaky-Voiced Teen	Cheating is the gift man gives himself. Et dolor rerum. Debitis fugiat consequatur. Soluta beatae illum.	3	292
2114	Francesca	It takes two to lie: one to lie and one to listen. Aut ad dicta. Aliquam voluptates sed. Unde aut et.	4	292
2115	Jasper Beardly	Kill my boss? Do I dare live out the American dream? Debitis alias saepe. Alias eius officiis. Aut rerum eaque.	2	292
2116	Itchy	Life is just one crushing defeat after another until you just wish Flanders was dead. Nam aspernatur veritatis. Quaerat enim est. Quasi aliquam incidunt.	3	292
2117	Radioactive Man	You tried your best and you failed miserably. The lesson is: Never try. Aliquid rerum sed. Error repellendus tempora. Sint commodi eligendi.	3	292
2118	Duffman	Trust me, Bart, it's better to walk in on both your parents than on just one of them. At mollitia aliquam. Velit fugit ducimus. Dolorem et et.	2	292
2119	Cookie Kwan	That's it! You people have stood in my way long enough. I'm going to clown college! Consequatur vel delectus. Atque necessitatibus ipsam. Assumenda iste qui.	3	292
2120	Blinky	Go out on a Tuesday? Who am I, Charlie Sheen? Ducimus ex aliquid. Officia eveniet totam. Necessitatibus sapiente consequuntur.	2	293
2121	Dewey Largo	Oh, loneliness and cheeseburgers are a dangerous mix. Voluptas quo odio. Voluptatem id dicta. Dolores pariatur animi.	4	293
2122	Krusty the Clown	That's it! You people have stood in my way long enough. I'm going to clown college! Qui id molestiae. Cupiditate aut sint. Officia rem quis.	4	293
2123	Lewis	Oh, loneliness and cheeseburgers are a dangerous mix. Maxime aut sit. Ea consequatur ratione. Ad sit et.	2	293
2124	Selma Bouvier	Oh, loneliness and cheeseburgers are a dangerous mix. Et similique qui. Suscipit aut perspiciatis. Neque asperiores et.	2	293
2125	Ginger Flanders	What’s the point of going out? We’re just gonna wind up back home anyway. Nisi officiis ut. Odit numquam ea. Labore laborum quibusdam.	4	293
2126	Sideshow Bob	D'oh! Veniam qui ducimus. Nihil nobis odio. Tenetur autem et.	2	293
2127	Dolph	Kill my boss? Do I dare live out the American dream? Ducimus deleniti natus. Aut soluta rem. Repellat qui animi.	1	293
2128	Ruth Powers	When will I learn? The answers to life’s problems aren’t at the bottom of a bottle, they’re on TV! Veritatis id cupiditate. Facilis voluptatem mollitia. Officia ipsa omnis.	3	293
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: Sam
--

COPY public.schema_migrations (version) FROM stdin;
20190809155458
20190809155544
20190809160656
\.


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Sam
--

SELECT pg_catalog.setval('public.products_id_seq', 293, true);


--
-- Name: reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Sam
--

SELECT pg_catalog.setval('public.reviews_id_seq', 2128, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: Sam
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: Sam
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: reviews reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: Sam
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: Sam
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: reviews fk_rails_bedd9094d4; Type: FK CONSTRAINT; Schema: public; Owner: Sam
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT fk_rails_bedd9094d4 FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- PostgreSQL database dump complete
--

