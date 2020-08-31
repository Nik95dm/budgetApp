--
-- Name: users; Type: TABLE; Schema: public; Owner: budget
--

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    first_name varchar(255) DEFAULT ''::character varying NOT NULL,
    last_name varchar(255) DEFAULT ''::character varying NOT NULL,
    phone varchar(255) NOT NULL,
    password varchar(255) NOT NULL,
    email varchar(255) NOT NULL
);

ALTER TABLE users OWNER TO budget;

--
-- Name: users_budget; Type: TABLE; Schema: public; Owner: budget
--

CREATE TABLE users_budget (
    id INTEGER NOT NULL REFERENCES users (id) ON DELETE CASCADE,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    monthly_budget MONEY NOT NULL,
    balance MONEY NOT NULL
);

ALTER TABLE users_budget OWNER TO budget;

--
-- Name: shopping_categories; Type: TABLE; Schema: public; Owner: budget
--

CREATE TABLE shopping_categories (
    products MONEY,
    house_goods MONEY,
    entertainment MONEY,
    shopping MONEY,
    partying MONEY,
    gifts MONEY,
    travel MONEY,
    sport MONEY,
    beauty MONEY, 
    medicine MONEY,
    transport MONEY,
    automobile MONEY
);

ALTER TABLE shopping_categories OWNER TO budget;