--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Drop databases
--





--
-- Drop roles
--

DROP ROLE postgres;


--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'md54026721ae338c8009612c4b47467bbb4';






--
-- Database creation
--

REVOKE CONNECT,TEMPORARY ON DATABASE template1 FROM PUBLIC;
GRANT CONNECT ON DATABASE template1 TO PUBLIC;


\connect postgres

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5 (Debian 10.5-2.pgdg90+1)
-- Dumped by pg_dump version 10.5 (Debian 10.5-2.pgdg90+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: api_tempcustomer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.api_tempcustomer (
    id integer NOT NULL,
    customer_name character varying(255),
    dd integer NOT NULL,
    gender integer NOT NULL,
    user_id integer NOT NULL,
    district character varying(200) NOT NULL,
    marriage integer NOT NULL,
    mm integer NOT NULL,
    phone_number character varying(200) NOT NULL,
    province character varying(200) NOT NULL,
    yyyy integer NOT NULL,
    health_status integer NOT NULL,
    height integer NOT NULL,
    level integer NOT NULL,
    ratio_invest integer NOT NULL,
    smoke integer NOT NULL,
    total_income integer NOT NULL,
    type_job integer NOT NULL,
    weight integer NOT NULL,
    plan integer NOT NULL,
    email character varying(200)
);


ALTER TABLE public.api_tempcustomer OWNER TO postgres;

--
-- Name: api_tempcustomer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.api_tempcustomer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.api_tempcustomer_id_seq OWNER TO postgres;

--
-- Name: api_tempcustomer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.api_tempcustomer_id_seq OWNED BY public.api_tempcustomer.id;


--
-- Name: api_tempdemandprotection; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.api_tempdemandprotection (
    id integer NOT NULL,
    po_term integer NOT NULL,
    pay_term integer NOT NULL,
    pre_frequency integer NOT NULL,
    sa integer NOT NULL,
    default_sa text,
    receive_sa integer NOT NULL,
    add_cover text,
    temp_customer_id integer NOT NULL,
    user_id integer NOT NULL,
    add_member text,
    nominee integer NOT NULL,
    decrease_sa integer,
    increase_sa integer,
    benefit_table text
);


ALTER TABLE public.api_tempdemandprotection OWNER TO postgres;

--
-- Name: api_tempdemandprotection_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.api_tempdemandprotection_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.api_tempdemandprotection_id_seq OWNER TO postgres;

--
-- Name: api_tempdemandprotection_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.api_tempdemandprotection_id_seq OWNED BY public.api_tempdemandprotection.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: confirm_email_token; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.confirm_email_token (
    token character varying(128) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.confirm_email_token OWNER TO postgres;

--
-- Name: core_district; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.core_district (
    id integer NOT NULL,
    name character varying(100),
    province_id integer NOT NULL
);


ALTER TABLE public.core_district OWNER TO postgres;

--
-- Name: core_district_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.core_district_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_district_id_seq OWNER TO postgres;

--
-- Name: core_district_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.core_district_id_seq OWNED BY public.core_district.id;


--
-- Name: core_province; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.core_province (
    id integer NOT NULL,
    code character varying(10),
    name character varying(100)
);


ALTER TABLE public.core_province OWNER TO postgres;

--
-- Name: core_province_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.core_province_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_province_id_seq OWNER TO postgres;

--
-- Name: core_province_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.core_province_id_seq OWNED BY public.core_province.id;


--
-- Name: customers_agency; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers_agency (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.customers_agency OWNER TO postgres;

--
-- Name: customers_agency_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customers_agency_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_agency_id_seq OWNER TO postgres;

--
-- Name: customers_agency_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customers_agency_id_seq OWNED BY public.customers_agency.id;


--
-- Name: customers_agencycustomers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers_agencycustomers (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    agency_id integer NOT NULL,
    customers_id integer NOT NULL
);


ALTER TABLE public.customers_agencycustomers OWNER TO postgres;

--
-- Name: customers_agencycustomers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customers_agencycustomers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_agencycustomers_id_seq OWNER TO postgres;

--
-- Name: customers_agencycustomers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customers_agencycustomers_id_seq OWNED BY public.customers_agencycustomers.id;


--
-- Name: customers_customerincome; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers_customerincome (
    id integer NOT NULL,
    description character varying(255)
);


ALTER TABLE public.customers_customerincome OWNER TO postgres;

--
-- Name: customers_customerincome_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customers_customerincome_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_customerincome_id_seq OWNER TO postgres;

--
-- Name: customers_customerincome_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customers_customerincome_id_seq OWNED BY public.customers_customerincome.id;


--
-- Name: customers_customerplan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers_customerplan (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    description character varying(200) NOT NULL
);


ALTER TABLE public.customers_customerplan OWNER TO postgres;

--
-- Name: customers_customerplan_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customers_customerplan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_customerplan_id_seq OWNER TO postgres;

--
-- Name: customers_customerplan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customers_customerplan_id_seq OWNED BY public.customers_customerplan.id;


--
-- Name: customers_customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers_customers (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    health_status_id integer NOT NULL,
    job_id integer NOT NULL,
    marriage integer NOT NULL,
    district_id integer,
    dob date,
    email character varying(100) NOT NULL,
    height integer NOT NULL,
    is_smoking boolean NOT NULL,
    max_premium integer NOT NULL,
    phone_number character varying(14) NOT NULL,
    province_id integer,
    sex integer NOT NULL,
    weight integer NOT NULL,
    income_id integer
);


ALTER TABLE public.customers_customers OWNER TO postgres;

--
-- Name: customers_customers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customers_customers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_customers_id_seq OWNER TO postgres;

--
-- Name: customers_customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customers_customers_id_seq OWNED BY public.customers_customers.id;


--
-- Name: customers_family; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers_family (
    id integer NOT NULL,
    sex integer NOT NULL,
    age integer NOT NULL,
    relative integer NOT NULL,
    customer_id integer NOT NULL
);


ALTER TABLE public.customers_family OWNER TO postgres;

--
-- Name: customers_family_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customers_family_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_family_id_seq OWNER TO postgres;

--
-- Name: customers_family_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customers_family_id_seq OWNED BY public.customers_family.id;


--
-- Name: customers_healthstatus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers_healthstatus (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    type_health_id integer
);


ALTER TABLE public.customers_healthstatus OWNER TO postgres;

--
-- Name: customers_healthstatus_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customers_healthstatus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_healthstatus_id_seq OWNER TO postgres;

--
-- Name: customers_healthstatus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customers_healthstatus_id_seq OWNED BY public.customers_healthstatus.id;


--
-- Name: customers_job; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers_job (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    type_job_id integer NOT NULL
);


ALTER TABLE public.customers_job OWNER TO postgres;

--
-- Name: customers_job_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customers_job_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_job_id_seq OWNER TO postgres;

--
-- Name: customers_job_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customers_job_id_seq OWNED BY public.customers_job.id;


--
-- Name: customers_typehealth; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers_typehealth (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.customers_typehealth OWNER TO postgres;

--
-- Name: customers_typehealth_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customers_typehealth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_typehealth_id_seq OWNER TO postgres;

--
-- Name: customers_typehealth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customers_typehealth_id_seq OWNED BY public.customers_typehealth.id;


--
-- Name: customers_typejob; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers_typejob (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.customers_typejob OWNER TO postgres;

--
-- Name: customers_typejob_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customers_typejob_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_typejob_id_seq OWNER TO postgres;

--
-- Name: customers_typejob_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customers_typejob_id_seq OWNED BY public.customers_typejob.id;


--
-- Name: customers_typepayment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers_typepayment (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.customers_typepayment OWNER TO postgres;

--
-- Name: customers_typepayment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customers_typepayment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_typepayment_id_seq OWNER TO postgres;

--
-- Name: customers_typepayment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customers_typepayment_id_seq OWNED BY public.customers_typepayment.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: login_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.login_history (
    id integer NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    num_date integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.login_history OWNER TO postgres;

--
-- Name: login_history_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.login_history_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.login_history_id_seq OWNER TO postgres;

--
-- Name: login_history_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.login_history_id_seq OWNED BY public.login_history.id;


--
-- Name: notification; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.notification (
    id integer NOT NULL,
    title text NOT NULL,
    body text NOT NULL,
    created_at timestamp with time zone NOT NULL
);


ALTER TABLE public.notification OWNER TO postgres;

--
-- Name: notification_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.notification_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notification_id_seq OWNER TO postgres;

--
-- Name: notification_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.notification_id_seq OWNED BY public.notification.id;


--
-- Name: payment_benefitmethod; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payment_benefitmethod (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    illustration text
);


ALTER TABLE public.payment_benefitmethod OWNER TO postgres;

--
-- Name: payment_benefitmethod_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.payment_benefitmethod_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_benefitmethod_id_seq OWNER TO postgres;

--
-- Name: payment_benefitmethod_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.payment_benefitmethod_id_seq OWNED BY public.payment_benefitmethod.id;


--
-- Name: payment_paymentform; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payment_paymentform (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    illustration text
);


ALTER TABLE public.payment_paymentform OWNER TO postgres;

--
-- Name: payment_paymentform_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.payment_paymentform_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_paymentform_id_seq OWNER TO postgres;

--
-- Name: payment_paymentform_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.payment_paymentform_id_seq OWNED BY public.payment_paymentform.id;


--
-- Name: payment_paymentfrequency; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payment_paymentfrequency (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    illustration text
);


ALTER TABLE public.payment_paymentfrequency OWNER TO postgres;

--
-- Name: payment_paymentfrequency_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.payment_paymentfrequency_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_paymentfrequency_id_seq OWNER TO postgres;

--
-- Name: payment_paymentfrequency_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.payment_paymentfrequency_id_seq OWNED BY public.payment_paymentfrequency.id;


--
-- Name: products_answer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products_answer (
    id integer NOT NULL,
    answer_detail text NOT NULL,
    question_id integer NOT NULL
);


ALTER TABLE public.products_answer OWNER TO postgres;

--
-- Name: products_answer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_answer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_answer_id_seq OWNER TO postgres;

--
-- Name: products_answer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_answer_id_seq OWNED BY public.products_answer.id;


--
-- Name: products_benefit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products_benefit (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    desciption text NOT NULL,
    illustration text,
    general boolean,
    general_active boolean,
    invest boolean,
    invest_active boolean,
    protect boolean,
    protect_active boolean,
    retire boolean,
    retire_active boolean,
    saving boolean,
    saving_active boolean
);


ALTER TABLE public.products_benefit OWNER TO postgres;

--
-- Name: products_benefit_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_benefit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_benefit_id_seq OWNER TO postgres;

--
-- Name: products_benefit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_benefit_id_seq OWNED BY public.products_benefit.id;


--
-- Name: products_paymenttype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products_paymenttype (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    desciption text NOT NULL
);


ALTER TABLE public.products_paymenttype OWNER TO postgres;

--
-- Name: products_paymenttype_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_paymenttype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_paymenttype_id_seq OWNER TO postgres;

--
-- Name: products_paymenttype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_paymenttype_id_seq OWNED BY public.products_paymenttype.id;


--
-- Name: products_product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products_product (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    last_modify timestamp with time zone NOT NULL,
    payment_type_id integer NOT NULL,
    pay_term text,
    po_term text,
    sa text,
    type_group_id integer
);


ALTER TABLE public.products_product OWNER TO postgres;

--
-- Name: products_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_product_id_seq OWNER TO postgres;

--
-- Name: products_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_product_id_seq OWNED BY public.products_product.id;


--
-- Name: products_productcost; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products_productcost (
    id integer NOT NULL,
    total_cost double precision NOT NULL,
    premium_rate double precision NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.products_productcost OWNER TO postgres;

--
-- Name: products_productcost_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_productcost_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_productcost_id_seq OWNER TO postgres;

--
-- Name: products_productcost_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_productcost_id_seq OWNED BY public.products_productcost.id;


--
-- Name: products_productquestions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products_productquestions (
    id integer NOT NULL,
    product_id integer NOT NULL,
    question_id integer NOT NULL
);


ALTER TABLE public.products_productquestions OWNER TO postgres;

--
-- Name: products_productquestions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_productquestions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_productquestions_id_seq OWNER TO postgres;

--
-- Name: products_productquestions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_productquestions_id_seq OWNED BY public.products_productquestions.id;


--
-- Name: products_questions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products_questions (
    id integer NOT NULL,
    title text NOT NULL,
    answer_type integer NOT NULL
);


ALTER TABLE public.products_questions OWNER TO postgres;

--
-- Name: products_questions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_questions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_questions_id_seq OWNER TO postgres;

--
-- Name: products_questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_questions_id_seq OWNED BY public.products_questions.id;


--
-- Name: products_returntype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products_returntype (
    id integer NOT NULL,
    desciption text NOT NULL,
    illustration text
);


ALTER TABLE public.products_returntype OWNER TO postgres;

--
-- Name: products_returntype_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_returntype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_returntype_id_seq OWNER TO postgres;

--
-- Name: products_returntype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_returntype_id_seq OWNED BY public.products_returntype.id;


--
-- Name: reset_token; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reset_token (
    reset_token character varying(10) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.reset_token OWNER TO postgres;

--
-- Name: suggest_customerinfostep; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.suggest_customerinfostep (
    id integer NOT NULL,
    customer_id integer NOT NULL
);


ALTER TABLE public.suggest_customerinfostep OWNER TO postgres;

--
-- Name: suggest_customerinfostep_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.suggest_customerinfostep_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.suggest_customerinfostep_id_seq OWNER TO postgres;

--
-- Name: suggest_customerinfostep_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.suggest_customerinfostep_id_seq OWNED BY public.suggest_customerinfostep.id;


--
-- Name: token; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.token (
    key character varying(128) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.token OWNER TO postgres;

--
-- Name: user_notification; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_notification (
    id integer NOT NULL,
    is_read boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    notification_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.user_notification OWNER TO postgres;

--
-- Name: user_notification_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_notification_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_notification_id_seq OWNER TO postgres;

--
-- Name: user_notification_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_notification_id_seq OWNED BY public.user_notification.id;


--
-- Name: api_tempcustomer id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api_tempcustomer ALTER COLUMN id SET DEFAULT nextval('public.api_tempcustomer_id_seq'::regclass);


--
-- Name: api_tempdemandprotection id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api_tempdemandprotection ALTER COLUMN id SET DEFAULT nextval('public.api_tempdemandprotection_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: core_district id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_district ALTER COLUMN id SET DEFAULT nextval('public.core_district_id_seq'::regclass);


--
-- Name: core_province id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_province ALTER COLUMN id SET DEFAULT nextval('public.core_province_id_seq'::regclass);


--
-- Name: customers_agency id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_agency ALTER COLUMN id SET DEFAULT nextval('public.customers_agency_id_seq'::regclass);


--
-- Name: customers_agencycustomers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_agencycustomers ALTER COLUMN id SET DEFAULT nextval('public.customers_agencycustomers_id_seq'::regclass);


--
-- Name: customers_customerincome id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_customerincome ALTER COLUMN id SET DEFAULT nextval('public.customers_customerincome_id_seq'::regclass);


--
-- Name: customers_customerplan id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_customerplan ALTER COLUMN id SET DEFAULT nextval('public.customers_customerplan_id_seq'::regclass);


--
-- Name: customers_customers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_customers ALTER COLUMN id SET DEFAULT nextval('public.customers_customers_id_seq'::regclass);


--
-- Name: customers_family id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_family ALTER COLUMN id SET DEFAULT nextval('public.customers_family_id_seq'::regclass);


--
-- Name: customers_healthstatus id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_healthstatus ALTER COLUMN id SET DEFAULT nextval('public.customers_healthstatus_id_seq'::regclass);


--
-- Name: customers_job id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_job ALTER COLUMN id SET DEFAULT nextval('public.customers_job_id_seq'::regclass);


--
-- Name: customers_typehealth id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_typehealth ALTER COLUMN id SET DEFAULT nextval('public.customers_typehealth_id_seq'::regclass);


--
-- Name: customers_typejob id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_typejob ALTER COLUMN id SET DEFAULT nextval('public.customers_typejob_id_seq'::regclass);


--
-- Name: customers_typepayment id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_typepayment ALTER COLUMN id SET DEFAULT nextval('public.customers_typepayment_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: login_history id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.login_history ALTER COLUMN id SET DEFAULT nextval('public.login_history_id_seq'::regclass);


--
-- Name: notification id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notification ALTER COLUMN id SET DEFAULT nextval('public.notification_id_seq'::regclass);


--
-- Name: payment_benefitmethod id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_benefitmethod ALTER COLUMN id SET DEFAULT nextval('public.payment_benefitmethod_id_seq'::regclass);


--
-- Name: payment_paymentform id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_paymentform ALTER COLUMN id SET DEFAULT nextval('public.payment_paymentform_id_seq'::regclass);


--
-- Name: payment_paymentfrequency id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_paymentfrequency ALTER COLUMN id SET DEFAULT nextval('public.payment_paymentfrequency_id_seq'::regclass);


--
-- Name: products_answer id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_answer ALTER COLUMN id SET DEFAULT nextval('public.products_answer_id_seq'::regclass);


--
-- Name: products_benefit id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_benefit ALTER COLUMN id SET DEFAULT nextval('public.products_benefit_id_seq'::regclass);


--
-- Name: products_paymenttype id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_paymenttype ALTER COLUMN id SET DEFAULT nextval('public.products_paymenttype_id_seq'::regclass);


--
-- Name: products_product id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_product ALTER COLUMN id SET DEFAULT nextval('public.products_product_id_seq'::regclass);


--
-- Name: products_productcost id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_productcost ALTER COLUMN id SET DEFAULT nextval('public.products_productcost_id_seq'::regclass);


--
-- Name: products_productquestions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_productquestions ALTER COLUMN id SET DEFAULT nextval('public.products_productquestions_id_seq'::regclass);


--
-- Name: products_questions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_questions ALTER COLUMN id SET DEFAULT nextval('public.products_questions_id_seq'::regclass);


--
-- Name: products_returntype id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_returntype ALTER COLUMN id SET DEFAULT nextval('public.products_returntype_id_seq'::regclass);


--
-- Name: suggest_customerinfostep id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.suggest_customerinfostep ALTER COLUMN id SET DEFAULT nextval('public.suggest_customerinfostep_id_seq'::regclass);


--
-- Name: user_notification id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_notification ALTER COLUMN id SET DEFAULT nextval('public.user_notification_id_seq'::regclass);


--
-- Data for Name: api_tempcustomer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.api_tempcustomer (id, customer_name, dd, gender, user_id, district, marriage, mm, phone_number, province, yyyy, health_status, height, level, ratio_invest, smoke, total_income, type_job, weight, plan, email) FROM stdin;
4	Nguyen Huu Son	1997	2	1		0	0			0	0	0	0	0	0	0	0	0	0	
5	Nguyen Huu Son	1997	2	1		0	0			0	0	0	0	0	0	0	0	0	0	
6	Nguyen Huu Son	1997	2	1		0	0			0	0	0	0	0	0	0	0	0	0	
7	Nguyen Huu Son	1997	2	1		0	0			0	0	0	0	0	0	0	0	0	0	
8	Nguyen Huu Son	1997	2	1		0	0			0	0	0	0	0	0	0	0	0	0	
9	Nguyen Huu Son	1997	2	1		0	0			0	0	0	0	0	0	0	0	0	0	
10	Nguyen Huu Son	1997	2	1		0	0			0	0	0	0	0	0	0	0	0	0	
11	so	1234	0	1		0	0			0	0	0	0	0	0	0	0	0	0	
12	son nguyen huu	1889	1	1		0	0			0	0	0	0	0	0	0	0	0	0	
13	nguyen so	1233	1	1		0	0			0	0	0	0	0	0	0	0	0	0	
14	Nguyen hhuu So	1234	0	1		0	0			0	0	0	0	0	0	0	0	0	0	
15	dxfgs	234	0	1		0	0			0	0	0	0	0	0	0	0	0	0	
16	ưẻ wert ưer	12	1	1		0	0			0	0	0	0	0	0	0	0	0	0	
17	121 123 123	12	0	1		0	0			0	0	0	0	0	0	0	0	0	0	
18	nguyen huu son	11	0	1	11	2	11	123123123123	11	11	0	0	0	0	0	0	0	0	0	
19	nguyen huu son	11	0	1	11	2	11	123123123123	11	11	0	0	0	0	0	0	0	0	0	
20	nguyen huu son	11	0	1	11	2	11	123123123123	11	11	0	0	0	0	0	0	0	0	0	
21	nguyen huu son	11	0	1	11	2	11	123123123123	11	11	0	0	0	0	0	0	0	0	0	
22	nguyen huu son	11	0	1	11	2	11	123123123123	11	11	0	0	0	0	0	0	0	0	0	
23	nguyen huu son	11	0	1	11	2	11	123123123123	11	11	0	0	0	0	0	0	0	0	0	
24	nguyen huu son	11	0	1	11	2	11	123123123123	11	11	0	0	0	0	0	0	0	0	0	
25	nguyen huu son	11	0	1	11	2	11	123123123123	11	11	0	0	0	0	0	0	0	0	0	
26	nguyen huu son	11	0	1	11	2	11	123123123123	11	11	0	0	0	0	0	0	0	0	0	
27	11	11	0	1	11	2	11	11	11	111	0	0	0	0	0	0	0	0	0	
28	11	11	0	1	11	2	11	11	11	11	0	0	0	0	0	0	0	0	0	
29	11	11	0	1	11	2	11	11	11	11	0	0	0	0	0	0	0	0	0	
30	11	11	0	1	11	2	11	11	11	11	0	0	0	0	0	0	0	0	0	
31	11	11	0	1	11	2	11	11	11	11	0	0	0	0	0	0	0	0	0	
32	Nguyen HUu Son	11	0	1	12	2	11	1123123123	1212	11	0	0	0	0	0	0	0	0	0	
33	Nguyen HUu Son	11	0	1	12	2	11	1123123123	1212	11	0	0	0	0	0	0	0	0	0	
34	Nguyen HUu Son	11	0	1	12	2	11	1123123123	1212	11	0	0	0	0	0	0	0	0	0	
35	Nguyen Huu Son	11	0	1	12	2	11	1231342354	12	112	0	0	0	0	0	0	0	0	0	
36	g g g	11	0	1	11	2	12	11111111	11	1	0	0	0	0	0	0	0	0	0	
37	1	1	0	1	1	2	1	1	1	1	0	0	0	0	0	0	0	0	0	
38	ss	11	0	1	11	2	11	1111	11	11	0	0	0	0	0	0	0	0	0	
39	qưeqư	11	0	1	11	2	11	1111	11	11	0	0	0	0	0	0	0	0	0	
40	Nguyen huu son	11	0	1	11	2	12	0818000098	11	1997	0	0	0	0	0	0	0	0	0	
41	zdf	1	0	1	1	2	1	1	1	1	0	0	0	0	0	0	0	0	0	
42	1	1	0	1	1	2	1	1	1	1	0	0	0	0	0	0	0	0	0	
43	s	1	0	1	11	2	1	11	1	1	0	0	0	0	0	0	0	0	0	
44	nguyen huu son	11	0	1	11	2	11	1111111111111	11	1911	0	0	0	0	0	0	0	0	0	
45	Nguyen huu son	11	0	1	11	2	11	12312312	11	111	0	0	0	0	0	0	0	0	0	
46	hoang	11	0	1	11	2	11	123123123	11	1998	0	0	0	0	0	0	0	0	0	
47	Nguyen huu son	11	0	1	11	2	11	12314	11	1123	0	0	0	0	0	0	0	0	0	
48	Nguyen Huu Son	11	0	1	11	2	11	234234423	11	11	0	0	0	0	0	0	0	0	0	
49	f fd d	1	0	1	1	2	1	1	1	1	0	0	0	0	0	0	0	0	0	
50	nguyen hu uson	11	0	1	1111	2	1	1111111111	11	1	0	11	2	2	0	2	2	11	0	
58	1	1	0	1	1	2	1	1	1	1	0	1	2	1	0	2	2	1	0	
51	Nguyen Huu Son	11	0	1	11	2	11	3423465345	11	1997	0	11	2	2	0	2	3	11	0	
52	nguyen van b	11	0	1	1	2	11	098123123	1	1998	0	11	2	2	0	3	2	11	0	
53	1	1	0	1	1	2	1	111	1	1	0	1	2	2	0	2	3	1	0	
54	Nguyen Huu Son	11	0	1	1	2	11	1111111111	1	1998	0	1	2	2	0	2	3	1	0	
55	Nguyen huu son	11	0	1	1	2	11	11	1	11	0	1	2	2	0	1	3	1	0	
56	1	1	0	1	1	2	1	1	1	1	0	1	2	2	0	2	3	1	0	
57	1	1	0	1	1	2	1	1	1	1	0	1	1	2	0	1	3	1	0	
59	1	1	0	1	1	2	1	1	1	1	0	1	1	2	0	2	2	1	0	
60	1	1	0	1	1	2	1	1	1	1	0	1	2	2	0	2	2	1	0	
61	Nguyen	1	0	1	1	2	1	213123123123	1	1992	0	1	2	2	0	2	3	1	0	
62	Nguyen huu son	11	0	1	12	2	11	12312312312	12	1193	0	12	2	2	0	2	2	12	0	
63	2	1	0	1	1	2	1	1	1	1	0	1	2	2	0	3	3	1	0	
64	nguyen son	1	0	1	1	2	1	1	1	1	0	123	2	2	0	2	2	12	0	
65	sd	1	0	1	1	2	1	11	1	1	1	1	2	2	0	2	3	1	0	
66	nguyễn hữu sơn	1	0	1	1	2	1	1	1	1	0	1	2	2	0	2	2	1	0	
67	1	1	0	1	1	2	1	1	1	1	0	1	2	2	0	2	2	1	0	
68	1	1	0	1	1	2	1	1	1	1	0	1	2	2	0	2	2	1	0	
69	1	1	0	1	1	2	1	1	1	1	2	1	2	2	0	2	2	1	0	
70	123	1	0	1	1	2	1	123	1	1	3	1	2	2	0	2	2	1	0	
71	son nguyen	1	0	1	1	2	1	1123	1	11	3	1	2	2	0	2	3	1	0	
72	asdf	1	0	1	1	2	1	1	1	1	3	1	2	2	0	3	2	1	0	
73	11	1	0	1	1	2	1	11	1	1	1	1	2	2	0	2	3	1	0	
97	Nguyen Huu Son	11	0	1	1	2	11	123412341234	1	1344	0	0	0	0	0	0	0	0	0	
74	1	1	0	1	1	2	1	1	1	1	2	1	2	2	0	1	1	1	0	
75	1	1	0	1	1	2	1	1	1	1	2	1	2	2	0	2	3	1	0	
76	1	1	0	1	1	2	1	1	1	1	2	1	2	2	0	3	2	1	0	
142	Nguyen Huu Son	1	0	1	1	2	1	1	1	1	0	1	0	0	0	0	2	1	0	
77	1	1	0	1	1	2	1	1	1	1	2	1	2	2	0	2	2	1	0	
98	Nguyen Huu Son	11	0	1	1	2	11	123124124	11	123	0	0	0	0	0	0	0	0	0	
78	1	1	0	1	1	2	1	1	1	1	2	1	2	2	0	2	3	1	0	
79	nguyen huu son	1	0	1	1	2	1	11111	1	1	2	11	2	2	0	2	3	11	0	
80	dsf	1	0	1	1	2	1	1	1	1	2	1	2	2	0	2	3	1	0	
145	Nguyen Huu Son	1	0	1	2	2	1	3	2	1	0	2	1	0	0	0	2	2	0	
81	son nguyen	1	0	1	1	2	1	123	1	1	2	12	2	2	0	2	3	123	0	
82	Nguyen Huu Son	11	0	1		0	11			1998	0	0	0	0	0	0	0	0	0	
83	Nguyen Huu Son	11	0	1		0	11			1993	0	0	0	0	0	0	0	0	0	
84	Nguyen Huu Son	11	0	1		0	11			1133	0	0	0	0	0	0	0	0	0	
99	Nguyen Huu Son	1	0	1	1	2	1	12312	1	1	0	0	0	0	0	0	0	0	0	
85	Nguyen Huu Son	11	0	1		0	11			1997	2	0	0	0	0	0	0	0	0	
86	Nguyen Huu Son	11	0	1		0	11			1998	0	0	0	0	0	0	0	0	0	
87	nguyen huu son	11	0	1		0	11			1998	0	0	0	0	0	0	0	0	0	
88	nguyen huu son	11	0	1		0	11			123	0	0	0	0	0	0	0	0	0	
89	Nguyen Huu Son	11	0	1		0	11			1123	0	0	0	0	0	0	0	0	0	
90	1DGSDF	1	0	1		0	1			1	0	0	0	0	0	0	0	0	0	
91	Nguyen Huu Son	11	0	1		0	11			1111	0	0	0	0	0	0	0	0	0	
92	Nguyen Huu Son	11	0	1		0	11	123123123		123	0	0	0	0	0	0	0	0	0	
140	Nguyen Huu Son	1	0	1	1	2	1	1	1	1	0	1	0	0	0	0	3	1	0	
93	11	1	0	1		0	1	123		1	0	0	0	0	0	0	0	0	0	
103	Nguyen Huu Son	1	0	1	1	2	1	123	1	1	0	1	0	0	0	0	0	1	0	
100	Nguyen Huu Son	1	0	1	1	2	1	11	1	1	0	0	0	0	0	0	0	0	0	
94	Nguyen Huu Son	11	0	1	1	2	11	12324335345	1	11	0	0	0	0	0	0	0	0	0	
95	Nguyen Huu Son	11	0	1	11	2	11	123123123123	11	1993	0	0	0	0	0	0	0	0	0	
96	Nguyen Huu Son	11	0	1	1	1	11	123123123	1	1123	0	0	0	0	0	0	0	0	0	
143	Nguyen Huu Son	11	0	1	1	2	11	123	1	123	0	1	0	0	0	0	2	1	0	
141	Nguyen Huu Son	1	0	1	1	2	1	1	1	1	0	1	0	0	0	0	3	1	0	
136	Nguyen Huu Son	1	0	1	1	2	1	1	1	1	0	1	0	0	0	0	0	1	0	
101	Nguyen Huu Son	1	0	1	1	2	1	112123123123	1	1	0	0	0	0	0	0	0	0	0	
137	Nguyen Huu Son	1	0	1	1	2	1	1	1	1	0	1	0	0	0	0	0	1	0	
138	nguyen son	11	0	1	1	2	22	123	1	1983	0	1	0	0	0	0	0	1	0	
102	Nguyen Huu Son	1	0	1	1	1	1	1	1	1	0	0	0	0	0	0	0	0	0	
146	Nguyen Huu Son	1	0	1	1	2	1	1	1	1	0	1	2	2	0	2	2	1	0	
139	nguyen huu son	1	0	1	1	2	1	1	1	1	0	1	0	0	0	0	0	1	0	
144	Nguyen Huu Son	1	0	1	1	1	1	1	1	1	0	1	2	0	0	0	2	1	0	
160	Nguyen Huu Son	1	0	1	1	2	1	1	1	1	2	1	2	2	0	2	3	1	1	
148	Nguyen Huu Son	1	0	1	1	2	1	1	1	1	2	1	2	2	0	2	2	1	0	
159	nguyen huu son	1	0	1	1	1	1	123	1	1	1	1	2	2	0	1	3	1	1	
150	Nguyen Huu Son	1	0	1	1	2	1	1	1	1	3	1	2	2	0	2	2	1	3	
147	Nguyen Huu Son	1	0	1	1	2	1	123	1	1	2	1	2	2	0	2	2	1	0	
156	Nguyen Huu Son	1	0	1	1	2	1	1	1	1	2	1	2	2	0	2	3	1	1	
155	Nguyen Huu Son	1	0	1	1	2	1	111	1	1	2	1	2	2	0	1	3	1	1	
149	son nguyen	1	0	1	1	2	11	1	1	1	2	1	2	2	0	2	3	1	0	
154	Nguyen Huu Son	1	0	1	1	2	1	1	1	1	1	1	2	2	0	2	2	1	1	
152	Nguyen Huu Son	1	0	1	1	2	1	1	1	1	1	1	2	2	0	2	2	1	1	
153	asdf	1	0	1		0	1	1		1	0	0	0	0	0	0	0	0	0	
151	Nguyen Huu Son	1	0	1	1	2	1	1	1	1	2	1	2	2	0	2	2	1	2	
157	Nguyen Huu Son	1	0	1	1	2	1	1111	1	1	2	1	2	2	0	1	2	1	1	
162	Nguyen Huu Son	1	0	1	1	2	1	1	1	1	2	1	2	2	0	2	2	1	1	
163	nguyen huu son	1	0	1	1	2	1	111	1	1	1	1	2	2	0	2	2	1	1	
158	son nguyen	2	0	1	1	2	2	22	1	12	2	2	2	2	0	2	2	2	1	
164	nguyen huu son	1	0	1	1	2	1	1	1	1	1	1	1	2	0	2	2	1	1	
161	nguyen huu son	1	0	1	1	2	1	1	1	1	1	1	2	2	0	2	2	1	1	
165	Nguyen Huu Son	1	0	1	1	1	1	123	1	1	1	1	1	2	0	2	2	1	1	
166	Nguyen Huu Son	1	0	1	1	2	1	1	1	1	1	1	2	2	0	2	2	1	1	
167	Nguyen Huu Son	2	0	1	1	2	2	2	1	2	2	1	2	2	0	1	2	1	1	
168	Nguyen Huu Son	1	0	1	1	2	1	1	1	1	1	1	2	2	0	2	2	1	1	
169	nguyen huu son	2	0	1	1	2	2	1	1	1	1	1	2	2	0	2	2	1	1	
170	11	1	0	1	1	2	1	1	1	1	1	1	1	2	0	2	3	1	1	
171	nguyen huu son	11	0	1		0	11			11	0	0	0	0	0	0	0	0	0	
191	Nguyen Huu Son	1	0	1	1	2	1	e2	1	1	1	1	1	1	0	0	3	1	1	
195	nguyen huu son	1	0	1	1	2	1	1	1	1	1	1	2	1	0	1	2	1	1	
187	Nguyen Huu Son	1	0	1	1	2	1	123	1	1	1	1	2	2	0	1	3	1	1	
223	nguyen huu son	3	0	1	3	2	3	123	3	3	1	3	1	2	0	2	2	3	1	
172	Nguyen Huu Son	1	0	1	1	2	11	1231	1	1	2	1	2	2	0	2	2	1	1	
183	Nguyen Huu Son	1	0	1	1	2	1	1	1	1	1	1	2	2	0	3	2	1	1	
210	Nguyen Huu Son	1	0	1	1	2	1	123	1	1	2	1	1	1	0	0	3	1	1	
205	nguyen huu son	1	0	1	1	1	1	1	1	1	0	1	1	1	0	0	3	1	0	
202	Nguyen Huu Son	1	0	1	1	2	1	1123	1	1	0	1	1	1	0	0	2	1	1	
199	nguyen huu son	1	0	1	1	2	1	123	1	1	1	1	2	2	0	1	3	1	1	
192	Nguyen Huu Son	3	0	1	4	2	3	123	3	31	1	2	2	2	0	2	2	2	1	
173	Nguyen Huu Son	1	0	1	1	2	1	123	1	1	2	1	1	1	0	0	1	1	1	
174	nguyen huu son	1	0	1		0	1			1	0	0	0	0	0	0	0	0	0	
175	Nguyen Huu Son	2	0	1		0	2			2	0	0	0	0	0	0	0	0	0	
176	nguyen huu son	1	0	1		0	1			1	0	0	0	0	0	0	0	0	0	
177	Nguyen Huu Son	1	0	1		0	1			1	0	0	0	0	0	0	0	0	0	
188	nguyen huu son	23	0	1	2	2	3	2	2	2	1	2	1	2	0	2	1	2	1	
196	nguyen huu son	1	0	1	1	2	1	123	1	1	1	1	2	2	0	2	2	1	1	
178	nguyen huu son	1	0	1	3	2	1	123	1	1	2	1	1	2	0	2	1	1	1	
179	Nguyen Huu Son	1	0	1		0	1			1	0	0	0	0	0	0	0	0	0	
184	Nguyen Huu Son	3	0	1	1	2	3	3	1	3	2	1	1	1	0	0	2	1	1	
180	nguyen huu son	1	0	1		0	1	123		1	0	0	0	0	0	0	0	0	0	
212	Nguyen Huu Son	3	0	1	3	2	3	3	3	3	2	3	1	2	0	2	2	13	1	
208	son nguyen	1	0	1	3	2	1	123	3	1	1	2	1	1	0	0	3	2	1	
189	Nguyen Huu Son	9	0	1	2	2	1	123	2	22	0	2	1	1	0	0	1	2	1	
193	Nguyen Huu Son	1	0	1	1	2	1	123	1	1	2	1	1	1	0	0	2	1	1	
181	nguyen huu son	1	0	1	1	2	1	123	1	1	2	1	2	2	0	2	2	1	1	
185	nguyen huu son	1	0	1	1	1	1	11	1	1	1	1	2	1	0	0	3	1	1	
217	Nguyen Huu Son	5	0	1	5	1	5	5	5	5	1	5	1	1	0	2	1	5	0	
206	Nguyen Huu Son	1	0	1	1	2	1	1	1	1	0	1	1	0	0	0	3	1	0	
200	Nguyen Huu Son	1	0	1	1	2	1	1	1	1	2	1	1	1	0	0	1	1	1	
197	Nguyen Huu Son	1	0	1	1	2	1	111	1	1	1	1	1	2	0	2	2	1	1	
182	nguyen huu son	2	0	1	3	2	2	123	3	2	2	4	2	1	0	0	3	4	1	
190	nguyen huu son	3	0	1	2	2	3	123	2	32	1	2	1	2	0	2	2	2	1	
186	Nguyen Huu Son	1	0	1	1	2	1	1	1	1	2	1	1	1	0	0	2	1	1	
194	Nguyen Huu Son	1	0	1	1	2	1	123	1	1	1	1	2	2	0	3	3	1	1	
203	Nguyen Huu Son	33	0	1	2	2	2	23	2	2	1	2	2	2	0	2	2	2	1	
214	Nguyen Huu Son	1	0	1	2	2	1	23	1	1	1	1	1	2	0	3	2	1	1	
198	nguyen huu son	1	0	1	12	2	1	1123	3	1	1	1	2	2	0	2	2	1	1	
201	nguyen huu son	1	0	1	1	2	1	1	1	1	1	1	1	1	0	0	2	1	1	
211	nguyen huu son	1	0	1	1	2	1	123	1	1	2	1	2	2	0	2	2	1	1	
209	Nguyen Huu Son	2	0	1	2	2	2	2	2	2	1	2	1	2	0	2	1	12	1	
204	Nguyen Huu Son	1	0	1	1	2	1	1	1	1	1	1	1	1	0	2	2	1	1	
207	Nguyen Huu Son	2	0	1	2	2	2	123	2	2	1	2	2	2	0	1	2	2	1	
220	Nguyen Huu Son	2	0	1	2	2	2	2	2	2	1	2	1	1	0	2	3	2	1	
213	Nguyen Huu Son	1	0	1	1	2	1	123	1	1	2	1	1	1	0	2	2	1	1	
216	Nguyen Huu Son	2	0	1	2	2	2	2	2	2	1	2	1	1	0	3	2	2	1	
219	Nguyen Huu Son	4	0	1	4	2	4	4	4	4	0	4	2	0	0	0	1	4	0	
215	Nguyen Huu Son	3	0	1	3	2	3	34	3	3	1	3	1	1	0	1	2	3	1	
221	Nguyen Huu Son	3	0	1	3	2	3	123	3	5	1	3	1	1	0	2	2	3	1	
218	nguyen huu son	2	0	1	2	2	2	123	2	2	1	3	1	2	0	1	3	3	1	
225	nguyen huu son	4	0	1	4	2	4	123	4	4	1	4	1	1	0	2	2	4	1	
222	Nguyen Huu Son	1	0	1	1	2	1	123	1	1	1	1	1	2	0	2	3	1	1	
224	nguyen huu son	3	0	1	3	2	3	123	3	3	1	3	1	1	0	2	3	3	1	
228	Nguyen Huu Son	3	0	1	3	2	3	123	3	3	1	3	1	2	0	2	3	3	1	
226	Nguyen Huu Son	2	0	1	2	2	2	123	2	2	1	2	1	2	0	2	3	2	1	
227	nguyen huu son	1	0	1	1	2	1	123	1	1	1	1	1	1	0	2	3	1	1	
229	Nguyen Huu Son	6	0	1	6	2	6	123	6	6	1	6	1	1	0	2	3	6	1	
230	Nguyen Huu Son	2	0	1	2	2	2	2	2	2	1	2	1	2	0	1	3	2	1	
231	Nguyen Huu Son	2	0	1	2	2	2	123	2	2	1	2	1	2	0	1	2	2	1	
232	Nguyen Huu Son	2	0	1	2	2	2	123	2	2	1	2	1	1	0	2	3	2	1	
233	Nguyen Huu Son	4	0	1	4	2	4	4	4	4	1	4	1	1	0	2	1	4	1	
234	Nguyen Huu Son	1	0	1	1	2	1	123	1	1	1	1	1	1	0	2	3	1	1	
246	son nguyen	2	0	1	2	2	2	123	2	2	1	2	2	1	0	2	3	1	1	
251	nguyen huu son	2	0	1	2	2	2	2	2	2	1	2	1	1	0	2	2	2	1	
241	Nguyen Huu Son	1	0	1	1	2	1	123	1	1	1	1	1	1	0	2	2	1	1	
235	nguyen huu son	1	0	1	1	2	1	123	1	1	1	1	1	1	0	2	2	1	1	
236	nguyen huu son	1	0	1	1	2	1	123	1	1	0	1	1	1	0	2	2	1	0	
247	nguyen huu son	2	0	1	2	1	1	123	2	1	1	2	2	1	0	2	3	2	1	
242	Nguyen Huu Son	1	0	1	1	2	1	123	1	1	1	1	2	2	0	2	3	1	1	
252	nguyen huu son	1	0	1	1	1	1	123	1	1	1	1	1	1	0	0	3	1	1	
237	nguyen huu son	1	0	1	1	2	1	1123	1	1	1	1	1	1	0	3	3	1	1	
243	Nguyen Huu Son	2	0	1	2	2	2	123	2	2	1	2	2	2	0	2	3	2	1	
248	nguyen huu son	2	0	1	2	2	2	123	2	2	1	2	1	1	0	2	3	2	1	
238	Nguyen Huu Son	1	0	1	1	2	1	123	1	1	1	1	1	1	0	2	2	1	1	
253	Nguyen Huu Son	2	0	1	2	2	2	2	2	2	1	2	1	1	0	0	1	2	1	
244	Nguyen Huu Son	3	0	1	3	1	3	123	3	3	1	3	1	1	0	2	2	3	1	
239	Nguyen Huu Son	1	0	1	1	2	1	1	1	1	1	1	1	1	0	3	3	1	1	
249	Nguyen Huu Son	3	0	1	3	2	3	123	3	3	3	3	2	1	0	1	3	3	1	
240	Nguyen Huu Son	1	0	1	1	2	1	123	1	1	1	1	2	2	0	3	2	1	1	
245	Nguyen Huu Son	2	0	1	2	2	2	123	2	2	1	2	1	2	0	2	3	2	1	
254	Nguyen Huu Son	2	0	1	1	2	2	123	1	1	1	1	2	1	0	2	2	1	1	
250	nguyen huu son	2	0	1	3	2	2	3	3	2	1	3	1	1	0	2	2	3	1	
255	Nguyen Huu Son	2	0	1		0	2			2	0	0	0	0	0	0	0	0	0	
256	nguyen huu son	2	0	1		0	2			2	0	0	0	0	0	0	0	0	0	
277	son nguyen	1	0	1	1	1	1	123	1	1	1	1	1	1	0	0	2	1	1	son@gmail.com
257	nguyen huu son	2	0	1		0	2	123		2	0	0	0	0	0	0	0	0	0	
258	nguyen huu son	2	0	1		0	2			2	0	0	0	0	0	0	0	0	0	
259	nguyen huu son	2	0	1		0	2			2	0	0	0	0	0	0	0	0	0	
260	Nguyen Huu Son	2	0	1		0	2			2	0	0	0	0	0	0	0	0	0	s@gmail.com
268	Nguyen Huu Son	1	0	1	1	2	1	1	1	1	1	1	1	1	0	1	2	1	1	g@gmail.com
266	nguyen huu son	1	0	1	1	1	1	123	1	1	1	1	1	1	0	0	3	1	1	gf@gmail.com
270	Nguyen Huu Son	1	0	1	4	1	1	123	4	1	1	3	1	1	0	0	3	3	1	g@gmail.com
264	Nguyen Huu Son	1	0	1	1	2	1	12	1	1	1	1	1	1	0	2	2	1	1	d@gmai.com
261	nguyen huu son	1	0	1	1	2	1	123	1	1	1	1	1	1	0	2	3	1	1	g@g.com
274	Nguyen Huu Son	1	0	1	1	2	1	123	1	1	0	1	1	0	0	0	2	1	0	f@gmail.com
272	Nguyen Huu Son	1	0	1	1	2	1	12	1	1	1	1	1	1	0	0	1	1	1	g@gmail.com
281	Nguyen Huu Son	1	0	1	1	1	1	123	1	1	1	1	1	1	0	3	3	1	1	f@gmail.com
286	Nguyen Huu Son	1	0	1	1	1	1	123	1	1	1	1	1	1	0	2	2	1	1	dfs@gmail.com
267	Nguyen Huu Son	3	0	1	2	2	3	123	2	3	1	2	1	1	0	1	2	2	1	fj@gmail.com
262	Nguyen Huu Son	1	0	1	1	2	1	123	1	1	1	1	1	1	0	0	2	1	1	asdf@gmailc.com
263	Nguyen Huu Son	1	0	1		0	1			1	0	0	0	0	0	0	0	0	0	
265	Nguyen Huu Son	1	0	1	3	2	1	123	3	1	1	3	1	1	0	2	3	3	1	fijh@gmail.com
269	nguyen huu son	4	0	1	3	2	4	3	3	4	1	3	1	1	0	2	2	3	1	ggg@gmail.com
282	Nguyen Huu Son	1	0	1	1	2	1	12	1	1	1	1	1	1	0	0	2	1	1	f@gmail.com
271	nguyen huu son	1	0	1	1	2	1	123	1	1	1	1	1	2	0	2	3	1	1	g@gmail.com
273	Nguyen Huu Son	1	0	1	1	1	1	12	1	1	0	1	1	0	0	0	1	1	0	g@gmail.com
276	Nguyen Huu Son	1	0	1	1	1	1	123	1	1	1	1	1	1	0	2	2	1	1	f@gmail.com
284	Nguyen Huu Son	1	0	1	1	2	1	123	1	1	1	1	1	1	0	2	2	1	1	g@gmail.com
275	nguyen huu son	1	0	1	1	2	1	123	1	1	1	1	1	1	0	0	2	1	1	gf@gmi.com
278	Nguyen Huu Son	1	0	1	1	2	1	123	1	1	1	1	1	1	0	2	2	1	1	jf@gmail.com
279	nguyen huu son	1	0	1	1	2	2	123	1	2	1	1	1	1	0	0	2	1	1	f@gmail.com
280	Nguyen Huu Son	1	0	1	1	2	1	123	1	1	1	1	1	1	0	2	2	1	1	f@gmail.com
283	Nguyen Huu Son	1	0	1	1	2	1	12314	1	1	1	1	1	1	0	2	2	1	1	g@gmail.com
285	Nguyen Huu Son	1	0	1	1	2	1	123	1	1	1	1	1	1	0	2	2	1	1	f@gmail.com
287	Nguyen Huu Son	1	0	1	1	2	1	123	3	1	1	1	1	1	0	0	2	1	1	f@gmail.com
288	Nguyen Huu Son	1	0	1	1	1	1	123	1	1	1	1	1	1	0	0	1	1	1	g@gmail.com
289	Nguyen Huu Son	1	0	1	1	1	1	123	1	1	1	1	1	1	0	2	2	1	1	son@gmail.com
290	Nguyen Huu Son	1	0	1	1	2	1	123	1	1	1	1	1	1	0	0	2	1	1	f@gami.com
291	Nguyen Huu Son	1	0	1	1	2	1	123	1	1	1	1	1	1	0	1	2	1	1	g@gmail.com
292	Nguyen Huu Son	2	0	1	1	2	3	123	1	4	1	1	2	1	0	2	2	1	1	g@gmai.com
293	Nguyen Huu Son	1	0	1	1	1	1	123	1	1	1	1	1	1	0	0	3	1	1	fg@gmail.com
314	Nguyen Huu Son	1	0	1	123	2	1	123123	12	1	1	1	1	1	0	0	3	1	1	gg@gmail.com
304	Nguyen Huu Son	1	0	1	1	2	1	123123	1	1	1	1	2	1	0	2	2	1	1	g@gmail.com
294	Nguyen Huu Son	1	0	1	1	2	1	12313	1	1	1	1	1	1	0	2	2	1	1	g@gmail.com
317	nguyen huu son	1	0	1	1	1	1	123124	1	1	1	1	1	1	0	1	3	1	1	f@gmail.com
300	Nguyen Huu Son	1	0	1	1	2	1	123	1	1	1	1	1	1	0	2	2	1	1	ff@gmail.com
308	Nguyen Huu Son	1	0	1	1	2	1	123123	1	1	1	1	1	2	0	2	2	1	1	g@gmail.com
311	nguyen huu son	1	0	1	1	2	1	123123	1	1	1	1	1	1	0	0	1	1	1	f@gmail.com
295	Nguyen Huu Son	1	0	1	1	2	1	123124	1	1	1	1	1	1	0	0	2	1	1	g@gmail.com
305	Nguyen Huu Son	1	0	1	1	2	1	123123	1	1	1	1	2	1	0	3	2	1	1	sdf@gmail.com
301	Nguyen Huu Son	3	0	1	1	1	3	123123	1	3	1	1	1	1	0	2	2	1	1	fg@gmail.com
320	Nguyen Huu Son	1	0	1	1	2	1	1231343	1	1	1	1	2	1	0	0	3	1	1	ggf@gmai.com
309	Nguyen Huu Son	1	0	1	1	1	1	1231	1	1	1	1	2	1	0	2	2	1	0	dsf@gmail.com
296	son nguyen	1	0	1	1	2	1	123	1	1	1	1	1	1	0	2	2	1	1	ff@gmail.com
315	nguyen huu son	1	0	1	1	2	1	123123	1	1	1	1	1	1	0	0	2	1	1	ggd@gmail.com
312	Nguyen Huu Son	2	0	1	1	2	2	123123	1	2	1	1	1	1	0	2	2	1	1	g@gmailc.cc
302	Nguyen Huu Son	1	0	1	1	1	1	12	1	1	0	1	1	1	0	0	2	1	1	asdfasdf@gmail.clm
306	Nguyen Huu Son	1	0	1	1	1	1	123123	1	1	1	1	1	1	0	2	2	1	1	sdf@gmail.com
297	nguyen huu son	1	0	1	1	1	1	123	1	1	0	1	1	1	0	0	2	1	1	sfdg@gmail.com
298	nguyen huu son	1	0	1		0	1			1	0	0	0	0	0	0	0	0	0	
318	Nguyen Huu Son	1	0	1	1	2	11	12313	1	1	0	1	1	1	0	0	1	1	1	g@gmail.com
310	Nguyen Huu Son	1	0	1	1	2	1	123	1	1	1	1	1	1	0	2	3	1	1	gg@gmail.com
303	Nguyen Huu Son	1	0	1	1	2	1	123	1	1	1	1	1	1	0	2	2	1	1	sdf@gmail.com
299	son nguyen	1	0	1	1	1	1	123	1	1	1	1	1	1	0	0	1	1	1	dfgd@gmail.com
307	Nguyen Huu Son	1	0	1	1	2	1	123123	1	1	1	1	1	2	0	2	3	1	1	sf@gmail.com
313	Nguyen Huu Son	1	0	1	1	2	1	123123	1	1	1	1	2	2	0	2	2	1	1	dsdf@gmai.com
316	ggg	1	0	1	1	2	1	234234	1	1	1	1	2	1	0	3	2	1	1	fff@gmail.com
319	nguyen huu son	11	0	1	1	2	11	124124	1	1998	1	1	1	1	0	0	2	1	1	g@gmail.com
\.


--
-- Data for Name: api_tempdemandprotection; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.api_tempdemandprotection (id, po_term, pay_term, pre_frequency, sa, default_sa, receive_sa, add_cover, temp_customer_id, user_id, add_member, nominee, decrease_sa, increase_sa, benefit_table) FROM stdin;
1	41	16	0	0	\N	0	\N	163	1	\N	0	0	0	
2	41	16	0	0	\N	0	\N	163	1	\N	0	0	0	
3	41	16	0	0	\N	0	\N	163	1	\N	0	0	0	
4	41	16	0	0	\N	0	\N	163	1	\N	0	0	0	
5	43	8	0	0	\N	0	\N	164	1	\N	0	0	0	
6	1	1	0	0	\N	0	\N	164	1	\N	0	0	0	
7	65	1	0	0	\N	0	\N	164	1	\N	0	0	0	
8	54	12	0	0	\N	0	\N	165	1	\N	0	0	0	
9	29	7	0	0	\N	0	\N	166	1	\N	0	0	0	
10	29	7	0	0	\N	0	\N	166	1	\N	0	0	0	
11	29	7	0	0	\N	0	\N	166	1	\N	0	0	0	
12	0	0	0	0	\N	0	\N	166	1	\N	0	0	0	
13	0	0	0	0	\N	0	\N	166	1	\N	0	0	0	
14	74	44	0	0	\N	0	\N	167	1	\N	0	0	0	
15	65	36	0	0	\N	0	\N	168	1	\N	0	0	0	
44	63	24	2	400	\N	0	\N	204	1	\N	0	0	0	
45	42	12	2	1600	\N	0	\N	207	1	\N	0	0	0	
16	88	28	1	0	\N	0	\N	169	1	\N	0	0	0	
17	33	1	2	0	\N	0	\N	170	1	\N	0	0	0	
18	55	41	1	0	\N	0	\N	172	1	\N	0	0	0	
19	1	1	1	0	\N	0	\N	173	1	\N	0	0	0	
20	38	18	1	0	\N	0	\N	178	1	\N	0	0	0	
21	48	13	1	0	\N	0	\N	181	1	\N	0	0	0	
46	41	4	1	0	\N	0	\N	209	1	\N	0	0	0	
47	19	4	1	0	\N	0	\N	210	1	\N	0	0	0	
22	80	26	1	0	\N	0	\N	182	1	\N	0	0	0	
23	47	10	1	0	\N	0	\N	183	1	\N	0	0	0	
24	40	9	1	0	\N	0	\N	184	1	\N	0	0	0	
25	36	6	2	0	\N	0	\N	185	1	\N	0	0	0	
26	67	22	2	0	\N	0	\N	186	1	\N	0	0	0	
27	15	13	2	0	\N	0	\N	187	1	\N	0	0	0	
28	42	20	1	0	\N	0	\N	188	1	\N	0	0	0	
29	23	1	1	0	\N	0	\N	189	1	\N	0	0	0	
30	55	25	2	0	\N	0	\N	190	1	\N	0	0	0	
31	61	25	1	0	\N	0	\N	191	1	\N	0	0	0	
32	72	40	1	0	\N	0	\N	192	1	\N	0	0	0	
33	64	37	2	0	\N	0	\N	193	1	\N	0	0	0	
34	25	1	1	0	\N	0	\N	194	1	\N	0	0	0	
35	50	12	1	0	\N	0	\N	195	1	\N	0	0	0	
48	22	6	1	0	\N	0	\N	211	1	\N	0	0	0	
36	43	14	2	1477	\N	0	\N	196	1	\N	0	0	0	
37	25	12	1	0	\N	0	\N	197	1	\N	0	0	0	
38	71	26	1	13123	\N	0	\N	198	1	\N	0	0	0	
49	27	9	2	0	\N	0	\N	212	1	\N	0	0	0	
39	31	6	2	1000	\N	0	\N	199	1	\N	0	0	0	
50	55	19	1	0	\N	0	\N	213	1	\N	0	0	0	
51	95	72	2	0	\N	0	\N	214	1	\N	0	0	0	
40	17	2	1	1048	\N	0	\N	200	1	\N	0	0	0	
41	41	8	1	0	\N	0	\N	201	1	\N	0	0	0	
42	56	23	2	100	\N	0	\N	202	1	\N	0	0	0	
52	36	7	2	0	\N	0	\N	215	1	\N	0	0	0	
43	40	17	2	23	\N	0	\N	203	1	\N	0	0	0	
53	1	1	1	400	\N	0	\N	216	1	\N	0	0	0	
54	57	21	1	0	\N	0	\N	218	1	\N	0	0	0	
55	55	16	2	0	\N	0	\N	220	1	\N	0	0	0	
56	28	5	1	0	\N	0	\N	221	1	\N	0	0	0	
58	94	53	1	0	\N	0	\N	222	1	\N	0	0	0	
59	51	24	2	0	\N	0	\N	223	1	\N	0	0	0	
60	89	57	2	0	\N	0	\N	224	1	\N	0	0	0	
61	66	22	1	100	[{"tunam":2003,"dennam":2009,"sotien":44},{"tunam":2003,"dennam":2009,"sotien":0},{"tunam":2003,"dennam":2009,"sotien":55}]	0	\N	225	1	\N	0	0	0	
62	60	18	2	1000	\N	0	\N	226	1	\N	0	0	0	
88	36	11	1	-1	[{"tunam":2003,"dennam":2009,"sotien":10},{"tunam":2003,"dennam":2009,"sotien":23},{"tunam":2003,"dennam":2009,"sotien":2},{"tunam":2003,"dennam":2009,"sotien":3},{"tunam":2003,"dennam":2009,"sotien":44}]	1	\N	253	1	[]	1	0	0	
67	43	8	1	100	\N	1	\N	231	1	\N	1	0	0	
68	25	3	1	0	\N	0	\N	232	1	\N	0	0	0	
63	63	22	2	1500	\N	1	\N	227	1	\N	0	0	0	
69	24	5	1	0	\N	0	\N	233	1	\N	0	0	0	
78	66	26	1	222	\N	1	\N	243	1	\N	1	0	0	
75	69	25	1	600	\N	1	\N	240	1	\N	1	0	0	
64	83	56	2	800	\N	1	\N	228	1	\N	2	0	0	
70	89	60	1	1100	\N	1	\N	234	1	\N	0	0	0	
71	23	1	2	1400	\N	1	\N	235	1	\N	0	0	0	
82	38	10	1	900	\N	1	\N	247	1	[]	1	0	0	
72	67	18	2	1100	\N	1	\N	237	1	\N	0	0	0	
86	71	21	2	100	\N	2	\N	251	1	[]	1	0	0	
65	76	46	2	666	\N	2	\N	229	1	\N	2	0	0	
76	44	22	1	1300	\N	1	\N	241	1	[{"name":"nguyen son","gender":"Nam","dob":"1-1-1","rela":"Vợ / Chồng"},{"name":"hoan van","gender":"Nam","dob":"2-12-2","rela":"Vợ / Chồng"}]	1	0	0	
73	44	8	1	800	\N	1	\N	238	1	\N	0	0	0	
66	81	50	1	1800	\N	2	\N	230	1	\N	1	0	0	
85	48	15	1	1000	\N	1	\N	250	1	[]	1	0	0	
81	42	1	1	100	\N	1	\N	246	1	[]	1	0	0	
79	67	33	1	800	\N	1	\N	244	1	[]	1	0	0	
74	42	1	2	800	\N	1	\N	239	1	\N	1	0	0	
77	23	3	2	600	\N	1	\N	242	1	[{"name":"nguy","gender":"Nam","dob":"123","rela":"Vợ / Chồng"}]	1	0	0	
84	46	11	1	700	\N	1	\N	249	1	[]	1	0	0	
80	65	26	1	1100	\N	1	\N	245	1	\N	1	0	0	
83	39	1	1	100	\N	1	\N	248	1	[]	1	0	0	
89	20	1	2	0	\N	0	\N	254	1	\N	0	0	0	
87	52	20	1	1200	\N	2	\N	252	1	[]	1	0	0	
90	33	7	0	0	\N	0	\N	261	1	\N	0	0	0	
91	26	1	0	0	\N	0	\N	262	1	\N	0	0	0	
92	46	24	1	800	\N	1	\N	264	1	[]	1	0	0	
93	39	10	2	800	\N	1	\N	265	1	[]	1	0	0	
94	53	14	2	1200	\N	1	\N	266	1	[]	1	0	0	
95	31	5	1	100	\N	1	\N	267	1	[]	1	0	0	
96	26	4	2	1100	\N	2	\N	268	1	[]	1	0	0	
97	20	1	1	100	\N	1	\N	269	1	[]	1	0	0	
98	51	16	2	100	\N	1	\N	270	1	[]	1	0	0	
100	1	1	1	100	\N	1	\N	272	1	[]	1	0	0	
99	35	7	2	800	\N	2	\N	271	1	[]	1	0	0	
101	24	1	1	100	\N	0	\N	276	1	\N	0	0	0	
102	1	1	1	100	\N	0	\N	277	1	\N	0	0	0	
103	36	1	1	500	\N	0	\N	277	1	\N	0	0	0	
104	16	1	1	700	\N	1	\N	278	1	\N	0	0	0	
105	32	4	1	700	\N	0	\N	279	1	\N	0	0	0	
106	20	1	2	500	\N	0	\N	280	1	\N	0	0	0	
107	1	1	1	700	\N	0	\N	281	1	\N	0	0	0	
108	36	4	1	-1	\N	0	\N	282	1	\N	0	0	0	
109	13	1	2	0	\N	0	\N	283	1	\N	0	0	0	
119	1	1	1	100	\N	1	\N	290	1	[]	1	-1	0	
110	30	4	1	0	\N	0	\N	284	1	\N	0	-1	30	
111	8	1	2	0	\N	0	\N	285	1	\N	0	0	0	
112	23	1	2	400	\N	1	\N	286	1	[]	1	-1	25	
120	1	1	1	100	\N	1	\N	291	1	[]	1	-1	0	
113	28	1	1	100	\N	1	\N	286	1	[]	1	-1	20	
114	16	1	1	100	\N	0	\N	287	1	\N	0	0	-1	
115	15	1	2	700	\N	0	\N	287	1	\N	0	0	-1	
116	21	1	2	1100	\N	1	\N	287	1	[]	1	-1	30	
117	1	1	1	100	\N	1	\N	288	1	[]	1	-1	0	
118	1	1	1	100	\N	1	\N	289	1	[]	1	-1	0	
147	25	1	1	1100	\N	1	\N	319	1	[]	1	-1	0	["5","6","7"]
144	28	1	1	100	\N	1	\N	316	1	[]	1	-1	0	["8","10","11"]
141	1	1	1	100	\N	1	\N	313	1	[]	1	-1	0	
121	30	1	2	900	\N	1	\N	292	1	[]	1	-1	0	\N
127	46	1	1	100	\N	1	\N	299	1	[]	1	-1	0	["1","2"]
133	41	1	1	100	\N	1	\N	305	1	[]	1	-1	0	["1","2"]
122	1	1	1	100	\N	1	\N	293	1	[]	1	-1	0	["1","2"]
128	55	1	2	900	\N	1	\N	300	1	[]	1	-1	0	["1","2"]
137	24	1	1	100	\N	1	\N	310	1	[]	1	-1	0	
134	51	1	1	600	\N	1	\N	306	1	[]	1	-1	0	["1","2"]
129	43	1	1	100	\N	1	\N	301	1	[]	1	-1	0	["1","2"]
123	34	1	1	100	\N	1	\N	294	1	[]	1	-1	0	["1","2"]
145	27	1	1	100	\N	1	\N	317	1	[]	1	-1	0	["1","2"]
135	28	1	1	100	\N	1	\N	307	1	[]	1	-1	0	["1","2"]
124	10	1	1	100	\N	1	\N	295	1	[]	1	-1	0	["1","2"]
130	61	1	1	800	\N	1	\N	302	1	[]	1	-1	0	["1","2"]
138	44	1	1	100	\N	1	\N	311	1	[]	1	-1	0	
148	17	1	1	400	\N	1	\N	320	1	[]	1	-1	0	["5","6"]
125	42	1	2	100	\N	1	\N	296	1	[]	1	-1	0	["1","2"]
142	1	1	1	100	\N	1	\N	314	1	[]	1	-1	0	["9","10","11"]
136	36	1	1	100	\N	1	\N	308	1	[]	1	-1	0	
131	34	1	2	900	\N	1	\N	303	1	[]	1	-1	0	["1","2"]
126	45	1	1	100	\N	1	\N	297	1	[]	1	-1	0	["1","2"]
139	1	1	1	100	\N	1	\N	311	1	[]	1	-1	0	
132	20	1	2	800	\N	2	\N	304	1	[]	1	-1	0	["1","2"]
146	20	1	1	400	\N	2	\N	318	1	[]	1	-1	0	["10","11"]
143	33	1	1	100	\N	1	\N	315	1	[]	1	-1	0	["8","9","10","11"]
140	1	1	1	100	\N	1	\N	312	1	[]	1	-1	0	
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add benefit	7	add_benefit
26	Can change benefit	7	change_benefit
27	Can delete benefit	7	delete_benefit
28	Can view benefit	7	view_benefit
29	Can add payment type	8	add_paymenttype
30	Can change payment type	8	change_paymenttype
31	Can delete payment type	8	delete_paymenttype
32	Can view payment type	8	view_paymenttype
33	Can add product	9	add_product
34	Can change product	9	change_product
35	Can delete product	9	delete_product
36	Can view product	9	view_product
37	Can add return type	10	add_returntype
38	Can change return type	10	change_returntype
39	Can delete return type	10	delete_returntype
40	Can view return type	10	view_returntype
41	Can add agency	11	add_agency
42	Can change agency	11	change_agency
43	Can delete agency	11	delete_agency
44	Can view agency	11	view_agency
45	Can add agency customers	12	add_agencycustomers
46	Can change agency customers	12	change_agencycustomers
47	Can delete agency customers	12	delete_agencycustomers
48	Can view agency customers	12	view_agencycustomers
49	Can add customers	13	add_customers
50	Can change customers	13	change_customers
51	Can delete customers	13	delete_customers
52	Can view customers	13	view_customers
53	Can add health status	14	add_healthstatus
54	Can change health status	14	change_healthstatus
55	Can delete health status	14	delete_healthstatus
56	Can view health status	14	view_healthstatus
57	Can add job	15	add_job
58	Can change job	15	change_job
59	Can delete job	15	delete_job
60	Can view job	15	view_job
61	Can add type job	16	add_typejob
62	Can change type job	16	change_typejob
63	Can delete type job	16	delete_typejob
64	Can view type job	16	view_typejob
65	Can add type payment	17	add_typepayment
66	Can change type payment	17	change_typepayment
67	Can delete type payment	17	delete_typepayment
68	Can view type payment	17	view_typepayment
69	Can add answer	18	add_answer
70	Can change answer	18	change_answer
71	Can delete answer	18	delete_answer
72	Can view answer	18	view_answer
73	Can add product questions	19	add_productquestions
74	Can change product questions	19	change_productquestions
75	Can delete product questions	19	delete_productquestions
76	Can view product questions	19	view_productquestions
77	Can add questions	20	add_questions
78	Can change questions	20	change_questions
79	Can delete questions	20	delete_questions
80	Can view questions	20	view_questions
81	Can add district	21	add_district
82	Can change district	21	change_district
83	Can delete district	21	delete_district
84	Can view district	21	view_district
85	Can add province	22	add_province
86	Can change province	22	change_province
87	Can delete province	22	delete_province
88	Can view province	22	view_province
89	Can add customer income	23	add_customerincome
90	Can change customer income	23	change_customerincome
91	Can delete customer income	23	delete_customerincome
92	Can view customer income	23	view_customerincome
93	Can add family	24	add_family
94	Can change family	24	change_family
95	Can delete family	24	delete_family
96	Can view family	24	view_family
97	Can add customer info step	25	add_customerinfostep
98	Can change customer info step	25	change_customerinfostep
99	Can delete customer info step	25	delete_customerinfostep
100	Can view customer info step	25	view_customerinfostep
101	Can add benefit method	26	add_benefitmethod
102	Can change benefit method	26	change_benefitmethod
103	Can delete benefit method	26	delete_benefitmethod
104	Can view benefit method	26	view_benefitmethod
105	Can add payment form	27	add_paymentform
106	Can change payment form	27	change_paymentform
107	Can delete payment form	27	delete_paymentform
108	Can view payment form	27	view_paymentform
109	Can add payment frequency	28	add_paymentfrequency
110	Can change payment frequency	28	change_paymentfrequency
111	Can delete payment frequency	28	delete_paymentfrequency
112	Can view payment frequency	28	view_paymentfrequency
113	Can add confirm email token	29	add_confirmemailtoken
114	Can change confirm email token	29	change_confirmemailtoken
115	Can delete confirm email token	29	delete_confirmemailtoken
116	Can view confirm email token	29	view_confirmemailtoken
117	Can add reset token	30	add_resettoken
118	Can change reset token	30	change_resettoken
119	Can delete reset token	30	delete_resettoken
120	Can view reset token	30	view_resettoken
121	Can add user notification	31	add_usernotification
122	Can change user notification	31	change_usernotification
123	Can delete user notification	31	delete_usernotification
124	Can view user notification	31	view_usernotification
125	Can add token	32	add_token
126	Can change token	32	change_token
127	Can delete token	32	delete_token
128	Can view token	32	view_token
129	Can add login history	33	add_loginhistory
130	Can change login history	33	change_loginhistory
131	Can delete login history	33	delete_loginhistory
132	Can view login history	33	view_loginhistory
133	Can add notification	34	add_notification
134	Can change notification	34	change_notification
135	Can delete notification	34	delete_notification
136	Can view notification	34	view_notification
137	Can add temp customer	35	add_tempcustomer
138	Can change temp customer	35	change_tempcustomer
139	Can delete temp customer	35	delete_tempcustomer
140	Can view temp customer	35	view_tempcustomer
141	Can add type health	36	add_typehealth
142	Can change type health	36	change_typehealth
143	Can delete type health	36	delete_typehealth
144	Can view type health	36	view_typehealth
145	Can add temp demand	37	add_tempdemand
146	Can change temp demand	37	change_tempdemand
147	Can delete temp demand	37	delete_tempdemand
148	Can view temp demand	37	view_tempdemand
149	Can add customer plan	38	add_customerplan
150	Can change customer plan	38	change_customerplan
151	Can delete customer plan	38	delete_customerplan
152	Can view customer plan	38	view_customerplan
153	Can add temp demand protection	39	add_tempdemandprotection
154	Can change temp demand protection	39	change_tempdemandprotection
155	Can delete temp demand protection	39	delete_tempdemandprotection
156	Can view temp demand protection	39	view_tempdemandprotection
157	Can add product cost	40	add_productcost
158	Can change product cost	40	change_productcost
159	Can delete product cost	40	delete_productcost
160	Can view product cost	40	view_productcost
161	Can add main benefit table	41	add_mainbenefittable
162	Can change main benefit table	41	change_mainbenefittable
163	Can delete main benefit table	41	delete_mainbenefittable
164	Can view main benefit table	41	view_mainbenefittable
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$120000$AAafZ7OuGK9T$wXqjwn8q/msUc+dFDamB48SioIIbBG3ydfXXpy+jQ1U=	2019-03-10 02:57:32.452543+00	t	sonnh			son@gmail.com	t	t	2019-01-27 03:53:01.258498+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: confirm_email_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.confirm_email_token (token, created_at, user_id) FROM stdin;
\.


--
-- Data for Name: core_district; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.core_district (id, name, province_id) FROM stdin;
\.


--
-- Data for Name: core_province; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.core_province (id, code, name) FROM stdin;
\.


--
-- Data for Name: customers_agency; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers_agency (id, name) FROM stdin;
\.


--
-- Data for Name: customers_agencycustomers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers_agencycustomers (id, name, agency_id, customers_id) FROM stdin;
\.


--
-- Data for Name: customers_customerincome; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers_customerincome (id, description) FROM stdin;
1	Dưới 1 triệu đồng
2	2 Triệu - 5 Triệu đồng
3	3 Triệu - 5 Triệu
\.


--
-- Data for Name: customers_customerplan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers_customerplan (id, name, description) FROM stdin;
1	Bảo vệ	kế hoạch bảo vệ
2	Bảo vệ + Tiết kiệm	tiết kiệm
3	Bảo vệ + Tiết kiệm + Đầu tư	bv + tk + dt
4	Hưu trí	hưu trí
\.


--
-- Data for Name: customers_customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers_customers (id, name, health_status_id, job_id, marriage, district_id, dob, email, height, is_smoking, max_premium, phone_number, province_id, sex, weight, income_id) FROM stdin;
\.


--
-- Data for Name: customers_family; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers_family (id, sex, age, relative, customer_id) FROM stdin;
\.


--
-- Data for Name: customers_healthstatus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers_healthstatus (id, name, type_health_id) FROM stdin;
\.


--
-- Data for Name: customers_job; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers_job (id, name, type_job_id) FROM stdin;
\.


--
-- Data for Name: customers_typehealth; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers_typehealth (id, name) FROM stdin;
1	Tốt
2	Trungg bình
3	Yếu
\.


--
-- Data for Name: customers_typejob; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers_typejob (id, name) FROM stdin;
\.


--
-- Data for Name: customers_typepayment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers_typepayment (id, name) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2019-02-28 03:30:50.08922+00	1	CustomerIncome object (1)	1	[{"added": {}}]	23	1
2	2019-02-28 03:31:09.892632+00	2	CustomerIncome object (2)	1	[{"added": {}}]	23	1
3	2019-02-28 03:31:56.092266+00	3	CustomerIncome object (3)	1	[{"added": {}}]	23	1
4	2019-03-01 05:25:27.067333+00	1	Tốt	1	[{"added": {}}]	36	1
5	2019-03-01 05:25:32.718709+00	2	Trungg bình	1	[{"added": {}}]	36	1
6	2019-03-01 05:36:04.106231+00	3	Yếu	1	[{"added": {}}]	36	1
7	2019-03-05 02:52:18.879866+00	1	CustomerPlan object (1)	1	[{"added": {}}]	38	1
8	2019-03-05 02:52:35.494601+00	2	CustomerPlan object (2)	1	[{"added": {}}]	38	1
9	2019-03-05 02:52:46.247126+00	2	CustomerPlan object (2)	2	[{"changed": {"fields": ["name"]}}]	38	1
10	2019-03-05 03:09:45.488409+00	3	CustomerPlan object (3)	1	[{"added": {}}]	38	1
11	2019-03-05 03:09:54.074055+00	4	CustomerPlan object (4)	1	[{"added": {}}]	38	1
12	2019-03-09 03:58:06.635406+00	1	Benefit object (1)	1	[{"added": {}}]	7	1
13	2019-03-09 03:58:21.357211+00	2	Benefit object (2)	1	[{"added": {}}]	7	1
14	2019-03-14 03:07:37.868067+00	2	Benefit object (2)	3		7	1
15	2019-03-14 03:07:37.874024+00	1	Benefit object (1)	3		7	1
16	2019-03-14 03:11:50.199585+00	1	Benefit object (1)	3		7	1
17	2019-03-14 05:31:00.551807+00	1	PaymentType object (1)	1	[{"added": {}}]	8	1
18	2019-03-14 05:31:15.067518+00	2	PaymentType object (2)	1	[{"added": {}}]	8	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	products	benefit
8	products	paymenttype
9	products	product
10	products	returntype
11	customers	agency
12	customers	agencycustomers
13	customers	customers
14	customers	healthstatus
15	customers	job
16	customers	typejob
17	customers	typepayment
18	products	answer
19	products	productquestions
20	products	questions
21	core	district
22	core	province
23	customers	customerincome
24	customers	family
25	suggest	customerinfostep
26	payment	benefitmethod
27	payment	paymentform
28	payment	paymentfrequency
29	users	confirmemailtoken
30	users	resettoken
31	users	usernotification
32	users	token
33	users	loginhistory
34	users	notification
35	api	tempcustomer
36	customers	typehealth
37	api	tempdemand
38	customers	customerplan
39	api	tempdemandprotection
40	products	productcost
41	api	mainbenefittable
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-01-27 03:51:10.723265+00
2	auth	0001_initial	2019-01-27 03:51:10.820029+00
3	admin	0001_initial	2019-01-27 03:51:10.858092+00
4	admin	0002_logentry_remove_auto_add	2019-01-27 03:51:10.867546+00
5	admin	0003_logentry_add_action_flag_choices	2019-01-27 03:51:10.878747+00
6	contenttypes	0002_remove_content_type_name	2019-01-27 03:51:10.908942+00
7	auth	0002_alter_permission_name_max_length	2019-01-27 03:51:10.918428+00
8	auth	0003_alter_user_email_max_length	2019-01-27 03:51:10.929793+00
9	auth	0004_alter_user_username_opts	2019-01-27 03:51:10.942315+00
10	auth	0005_alter_user_last_login_null	2019-01-27 03:51:10.953613+00
11	auth	0006_require_contenttypes_0002	2019-01-27 03:51:10.95843+00
12	auth	0007_alter_validators_add_error_messages	2019-01-27 03:51:10.96736+00
13	auth	0008_alter_user_username_max_length	2019-01-27 03:51:10.98493+00
14	auth	0009_alter_user_last_name_max_length	2019-01-27 03:51:10.996417+00
15	customers	0001_initial	2019-01-27 03:51:11.082121+00
16	customers	0002_auto_20181216_0745	2019-01-27 03:51:11.142722+00
17	products	0001_initial	2019-01-27 03:51:11.220655+00
18	sessions	0001_initial	2019-01-27 03:51:11.250267+00
19	customers	0003_customers_marriage	2019-01-27 07:31:29.815922+00
20	customers	0004_auto_20190127_0732	2019-01-27 07:32:36.33209+00
21	core	0001_initial	2019-02-02 02:42:24.478634+00
22	customers	0005_auto_20190202_0242	2019-02-02 02:42:24.690336+00
23	payment	0001_initial	2019-02-02 02:42:24.74498+00
24	products	0002_auto_20190202_0242	2019-02-02 02:42:24.971929+00
25	suggest	0001_initial	2019-02-02 02:42:24.994282+00
26	users	0001_initial	2019-02-03 07:21:42.195849+00
27	api	0001_initial	2019-02-03 14:58:26.175554+00
28	api	0002_auto_20190227_0409	2019-02-27 04:09:52.545492+00
29	customers	0006_auto_20190228_0716	2019-02-28 07:16:48.753715+00
30	api	0003_auto_20190228_0754	2019-02-28 07:54:33.955394+00
31	api	0004_auto_20190305_0221	2019-03-05 02:21:55.21605+00
32	customers	0007_customerplan	2019-03-05 02:49:56.868012+00
33	api	0005_auto_20190305_1012	2019-03-05 10:15:38.550463+00
34	api	0006_remove_tempdemandprotection_change_sa	2019-03-08 03:00:50.019747+00
35	api	0007_remove_tempdemandprotection_nominee	2019-03-08 04:54:20.341835+00
36	api	0008_auto_20190308_0456	2019-03-08 04:56:12.715986+00
37	api	0009_tempcustomer_email	2019-03-11 02:39:32.855829+00
38	products	0003_productcost	2019-03-11 02:39:32.893882+00
39	api	0010_auto_20190312_0423	2019-03-12 04:23:32.0267+00
40	api	0011_auto_20190312_0443	2019-03-12 04:43:44.622046+00
41	api	0012_auto_20190313_0808	2019-03-13 08:08:35.442069+00
42	api	0013_remove_tempdemandprotection_benefit_table	2019-03-13 08:09:31.939179+00
43	api	0014_tempdemandprotection_benefit_table	2019-03-13 08:12:25.649635+00
44	products	0004_auto_20190313_1042	2019-03-13 10:42:40.797524+00
45	products	0005_auto_20190313_1055	2019-03-13 10:55:52.467841+00
46	products	0006_auto_20190313_1059	2019-03-13 10:59:32.952726+00
47	products	0007_auto_20190313_1101	2019-03-13 11:01:52.71907+00
79	products	0008_auto_20190314_0153	2019-03-14 01:53:40.392009+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
7s6blya92ni4l7eh0dd3ugwlbt45zbjv	MzYyMTYxNjMyMDdkYzdjMWU5YzhlYzZjYmZlN2NkZTQxMmExYTg0Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MjkzNjZmZDQxMGRjMzU1ZTNmNWI5ZmM4OGIzNDBlOWNmNjIzZjAyIn0=	2019-02-10 03:53:07.421141+00
ww23kth2mssrvm0jjfu393f2s2mopdkz	MzYyMTYxNjMyMDdkYzdjMWU5YzhlYzZjYmZlN2NkZTQxMmExYTg0Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MjkzNjZmZDQxMGRjMzU1ZTNmNWI5ZmM4OGIzNDBlOWNmNjIzZjAyIn0=	2019-02-17 07:37:29.622671+00
9kq81qe08jorcqksx1lp2ombsk6a9lxq	MzYyMTYxNjMyMDdkYzdjMWU5YzhlYzZjYmZlN2NkZTQxMmExYTg0Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MjkzNjZmZDQxMGRjMzU1ZTNmNWI5ZmM4OGIzNDBlOWNmNjIzZjAyIn0=	2019-02-17 11:32:21.389849+00
kfj371jfrxfjuljwnepvm267hqy33agy	MzYyMTYxNjMyMDdkYzdjMWU5YzhlYzZjYmZlN2NkZTQxMmExYTg0Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MjkzNjZmZDQxMGRjMzU1ZTNmNWI5ZmM4OGIzNDBlOWNmNjIzZjAyIn0=	2019-02-17 11:33:07.960899+00
an6ms0sh2p7c3fzi5cp6qmre2z57l70l	MzYyMTYxNjMyMDdkYzdjMWU5YzhlYzZjYmZlN2NkZTQxMmExYTg0Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MjkzNjZmZDQxMGRjMzU1ZTNmNWI5ZmM4OGIzNDBlOWNmNjIzZjAyIn0=	2019-02-17 11:34:38.557204+00
knybh7djk0wgbntrwdhv1xn0ljnxnlhk	ZWY3MjJiYjEyYTdlMzllZmU2MzU5MjliNjBlYTU3OWI5ZGU5YjE3MTp7fQ==	2019-02-17 11:38:05.623091+00
joq66hb4owr6h92r96tm8mjhgnvz0ptr	ZWY3MjJiYjEyYTdlMzllZmU2MzU5MjliNjBlYTU3OWI5ZGU5YjE3MTp7fQ==	2019-02-17 11:39:06.016575+00
oijm8efn78n8kp8n5jbenze1o005ho9p	ZWY3MjJiYjEyYTdlMzllZmU2MzU5MjliNjBlYTU3OWI5ZGU5YjE3MTp7fQ==	2019-02-17 11:39:17.883767+00
sn44do7kgyhirwm2pcxuawugl38s34f0	ZWY3MjJiYjEyYTdlMzllZmU2MzU5MjliNjBlYTU3OWI5ZGU5YjE3MTp7fQ==	2019-02-17 11:42:31.707091+00
volktgqehge51ck8bne0xwtzh2rwr7wc	MzYyMTYxNjMyMDdkYzdjMWU5YzhlYzZjYmZlN2NkZTQxMmExYTg0Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MjkzNjZmZDQxMGRjMzU1ZTNmNWI5ZmM4OGIzNDBlOWNmNjIzZjAyIn0=	2019-02-17 12:10:50.92239+00
g5o67aumre81rpxxgtebw00eldmktttl	MzYyMTYxNjMyMDdkYzdjMWU5YzhlYzZjYmZlN2NkZTQxMmExYTg0Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MjkzNjZmZDQxMGRjMzU1ZTNmNWI5ZmM4OGIzNDBlOWNmNjIzZjAyIn0=	2019-02-20 02:01:54.030914+00
vjas6216z74zmytny3tcrx7ok38o26ln	MzYyMTYxNjMyMDdkYzdjMWU5YzhlYzZjYmZlN2NkZTQxMmExYTg0Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MjkzNjZmZDQxMGRjMzU1ZTNmNWI5ZmM4OGIzNDBlOWNmNjIzZjAyIn0=	2019-02-27 10:57:17.598992+00
dxsv69wgwv8t53kf10u5q1cm7ykpe2c0	MzYyMTYxNjMyMDdkYzdjMWU5YzhlYzZjYmZlN2NkZTQxMmExYTg0Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MjkzNjZmZDQxMGRjMzU1ZTNmNWI5ZmM4OGIzNDBlOWNmNjIzZjAyIn0=	2019-02-27 11:10:10.281919+00
d4zniynscizoomisuzqwvw5xc6wxzgvu	MzYyMTYxNjMyMDdkYzdjMWU5YzhlYzZjYmZlN2NkZTQxMmExYTg0Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MjkzNjZmZDQxMGRjMzU1ZTNmNWI5ZmM4OGIzNDBlOWNmNjIzZjAyIn0=	2019-03-12 07:54:50.269119+00
keen4t1optulhazkzv65q0ygxfy8ni5l	MzYyMTYxNjMyMDdkYzdjMWU5YzhlYzZjYmZlN2NkZTQxMmExYTg0Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MjkzNjZmZDQxMGRjMzU1ZTNmNWI5ZmM4OGIzNDBlOWNmNjIzZjAyIn0=	2019-03-12 08:11:14.139033+00
b0iujbpyqmwkvkg2hoowfywbaayvfd8d	MzYyMTYxNjMyMDdkYzdjMWU5YzhlYzZjYmZlN2NkZTQxMmExYTg0Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MjkzNjZmZDQxMGRjMzU1ZTNmNWI5ZmM4OGIzNDBlOWNmNjIzZjAyIn0=	2019-03-13 02:35:14.141665+00
l41o8ms12bm5ezgekqqqc86kbqewufsl	MzYyMTYxNjMyMDdkYzdjMWU5YzhlYzZjYmZlN2NkZTQxMmExYTg0Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MjkzNjZmZDQxMGRjMzU1ZTNmNWI5ZmM4OGIzNDBlOWNmNjIzZjAyIn0=	2019-03-14 02:46:58.061346+00
hv2499z5bmglyxpq2uab3eb9keuri3bu	MzYyMTYxNjMyMDdkYzdjMWU5YzhlYzZjYmZlN2NkZTQxMmExYTg0Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MjkzNjZmZDQxMGRjMzU1ZTNmNWI5ZmM4OGIzNDBlOWNmNjIzZjAyIn0=	2019-03-24 02:57:32.455711+00
\.


--
-- Data for Name: login_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.login_history (id, start_date, end_date, num_date, user_id) FROM stdin;
1	2019-02-03	2019-02-03	1	1
2	2019-02-27	2019-02-27	1	1
\.


--
-- Data for Name: notification; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.notification (id, title, body, created_at) FROM stdin;
\.


--
-- Data for Name: payment_benefitmethod; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payment_benefitmethod (id, title, illustration) FROM stdin;
\.


--
-- Data for Name: payment_paymentform; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payment_paymentform (id, title, illustration) FROM stdin;
\.


--
-- Data for Name: payment_paymentfrequency; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payment_paymentfrequency (id, title, illustration) FROM stdin;
\.


--
-- Data for Name: products_answer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products_answer (id, answer_detail, question_id) FROM stdin;
\.


--
-- Data for Name: products_benefit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products_benefit (id, name, desciption, illustration, general, general_active, invest, invest_active, protect, protect_active, retire, retire_active, saving, saving_active) FROM stdin;
1	Quyền Lợi Tử Vong 			t	t	t	t	t	t	t	t	t	t
2	Quyền Lợi Thương Tật Toàn Bộ Và Vĩnh Viễn			t	t	t	t	t	t	t	t	t	t
3	Quyền Lợi Bệnh Hiểm Nghèo 			t	t	t	t	t	t	t	t	t	t
4	Quyền Lợi Trợ Cấp Nằm Viện Do Tai Nạn			t	f	t	f	t	t	t	f	t	f
5	Quyền Lợi Tử Vong Do Tai Nạn			t	f	t	f	t	t	t	f	t	f
6	Quyền Lợi Hỗ Trợ Viện Phí 			t	f	t	f	t	t	t	f	t	f
7	Quyền Lợi Bệnh Hiểm Nghèo Phụ Nữ			t	f	t	f	t	t	t	f	t	f
8	Quyền Lợi Miễn Đóng Phí Các Kỳ Tiếp Theo Khi Bị Thương Tật Toàn Bộ Và Vĩnh Viễn 			t	t	t	t	t	t	t	t	t	t
9	Quyền Lợi Hoàn Trả Lại Phí Đã Đóng Khi Đáo Hạn 			t	f	t	f	t	t	t	f	t	f
10	Quyền Lợi Hỗ Trợ Chi Phí Hậu Sự 			t	t	t	t	t	t	t	t	t	t
11	Quyền Lợi Người Thân Là Vợ/Chồng Qua Đời			t	f	t	f	t	t	t	f	t	f
12	Quyền Lợi Hỗ Trợ Chăm Sóc Y Tế			t	f	t	f	t	t	t	f	t	f
13	Quyền Lợi Thương Tật Toàn Bộ Vĩnh Viễn Do Tai Nạn			t	f	t	f	t	f	t	f	t	f
14	Quyền Lợi Tử Vong Khi Đang Sử Dụng Các Phương Tiện Vận Chuyển Hành Khách Đường Bộ Hoặc Đường Sắt			t	f	t	f	t	f	t	f	t	f
15	Quyền Lợi Tử Vong Khi Đi Trên Các Chuyến Bay Thương Mại 			t	f	t	f	t	f	t	f	t	f
16	Quyền Lợi Bỏng Nặng Do Tai Nạn			t	f	t	f	t	f	t	f	t	f
17	Quyền Lợi Chấn Thương Sọ Não Nặng Do Tai Nạn			t	f	t	f	t	f	t	f	t	f
18	Quyền Lợi Ung Thư 			t	f	t	f	t	f	t	f	t	f
19	Quyền Lợi Bệnh Lý Nghiêm Trọng 			t	f	t	f	t	f	t	f	t	f
20	Quyền Lợi Biến Chứng Sản Khoa			t	f	t	f	t	f	t	f	f	f
21	Quyền Lơi Dị Tật Bẩm Sinh Khi Sinh Em Bé			t	f	t	f	t	f	t	f	f	f
22	Quyền Lợi Phẫu Thuật Và Điều Trị Ngoại Khoa			t	f	t	f	t	f	t	f	f	f
23	Quyền Lợi Hỗ Trợ Nằm Viện Tại Khoa Chăm Sóc Đặc Biệt 			t	f	f	f	t	f	t	f	f	f
24	Quyền Lợi Hỗ Trợ Chi Phí Điều Trị			t	f	f	f	t	f	t	f	f	f
25	Quyền Lợi Hỗ Trợ Chi Phí Trước Và Sau Khi Nằm Viện 			t	f	f	f	t	f	f	f	f	f
26	Quyền Lợi Hỗ Trợ Chi Phí ĐIều Trị Cấp Cứu Do Tai Nạn Khi Ở Nước Ngoài			t	f	f	f	t	f	f	f	f	f
27	Quyền Lợi Hỗ Trợ Chăm Sóc Y Tế			f	f	f	f	t	f	f	f	f	f
28	Quyền Lợi Hỗ Trợ Phẫu Thuật 			f	f	f	f	t	f	f	f	f	f
29	Quyền Lợi Chăm Sóc Dài Hạn 			f	f	f	f	t	f	f	f	f	f
30	Quyền Lợi Điều Trị Nội Trú Do Ốm Đau Bệnh Tật			f	f	f	f	t	f	f	f	f	f
31	Quyền Lợi Điều Trị Ngoại Trú Do Ốm Đau Bệnh Tật			f	f	f	f	t	f	f	f	f	f
32	Quyền Lợi Thai Sản 			f	f	f	f	t	f	f	f	f	f
33	Quyền Lợi Nha Khoa			f	f	f	f	t	f	f	f	f	f
34	Quyền Lợi Nhãn Khoa			f	f	f	f	t	f	f	f	f	f
35	Quyền Lợi Tử Vong/Tàn Tật Toàn Bộ Vĩnh Viễn Do Ốm Đau Bệnh Tật Và Thai Sản 			f	f	f	f	t	f	f	f	f	f
36	Quyền Lợi Trợ Cấp Trong Thời Gian Điều Trị 			f	f	f	f	t	f	f	f	f	f
37	Quyền Lợi bảo Hiểm Bệnh Ung Thư 			f	f	f	f	t	f	f	f	f	f
38	Quyền Lợi Bảo Hiểm Tim Mạch			f	f	f	f	t	f	f	f	f	f
39	Quyền Lợi bảo Hiểm Bệnh Tiểu Đường			f	f	f	f	t	f	f	f	f	f
40	Quyền Lợi Bảo Hiểm Bệnh Nan Y			f	f	f	f	t	f	f	f	f	f
41	Quyền Lợi Chữa Trị Giai Đoạn Sớm 			f	f	f	f	t	f	f	f	f	f
42	Quyền Lợi Hoàn Trả Lại Phí Đã Đóng Khi Tử Vong 			f	t	f	t	t	f	f	t	f	t
43	Quyền Lợi Thưởng Hoàn Tất Đóng Phí			t	f	t	f	f	f	t	f	t	f
44	Quyền Lợi Tuổi Vàng			t	f	t	f	f	f	t	f	t	f
45	Quyền Lợi Đáo Hạn 			t	t	t	t	f	f	t	t	t	t
46	Quyền Lợi Thưởng Duy Trì Hợp Đồng 			t	t	t	t	f	f	t	t	t	t
47	Quyền Lợi Học Vấn 			t	t	f	t	f	f	f	t	t	t
48	Quyền Lợi Đăng Khoa			t	f	f	t	f	f	f	t	t	t
49	Quyền Lợi Tiền Mặt Định Kỳ			t	t	t	t	f	f	t	t	t	t
50	Quyền Lợi Hỗ Trợ Tài Chính			t	f	t	f	f	f	t	f	t	f
51	Quyền Lợi Hưởng Chiết Khấu Ưu Đãi Với Mức Phí Đóng Cao 			t	f	t	f	f	f	t	f	t	f
52	Quyền Lợi Bảo Tức Định Kỳ			t	t	t	t	f	f	t	t	t	t
53	Quyền Lợi Bảo Tức Tri Ân			t	f	t	f	f	f	t	f	t	f
54	Quyền Lợi Lãi Suất Cam Kết 			t	t	t	t	f	f	t	t	t	t
55	Quyền Lợi Đầu Tư Vào Các Quỹ Liên Kết Chung 			t	t	f	f	f	f	t	f	t	t
56	Quyền Lợi Hưởng Lãi Theo Quỹ Liên Kết Chung Không Cam Kết 			t	f	f	f	f	f	t	f	t	t
57	Quyền Lợi Thưởng Đầu Tư Số Tiền Lớn 			t	t	t	t	f	f	f	f	f	f
58	Quyền Lợi Thưởng Không Hút Thuốc Lá 			t	f	t	t	f	f	f	f	f	f
59	Quyền Lợi Hưởng Lãi Từ Kết Quả Đầu Tư Của Quỹ Hưu Trí 			t	f	f	f	f	f	f	t	f	f
60	Quyền Lợi Hưu Trí 			t	t	f	f	f	f	f	t	f	f
\.


--
-- Data for Name: products_paymenttype; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products_paymenttype (id, title, desciption) FROM stdin;
1	1 lần	trả một cục
2	1 lần và trợ cấp trong 5 năm	1 lần và trợ cấp trong 5 năm
\.


--
-- Data for Name: products_product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products_product (id, name, created_at, last_modify, payment_type_id, pay_term, po_term, sa, type_group_id) FROM stdin;
1	Bảo hiểm tử kỳ với quyền lợi ung thư gia hạn hằng năm 	2019-03-14 05:44:04.286246+00	2019-03-14 05:44:04.286271+00	1	[-1]	[-1]	[100000000]	1
2	Bảo hiểm tử kỳ kết hợp bệnh lý nghiêm trọng 	2019-03-14 05:44:04.298662+00	2019-03-14 05:44:04.29868+00	1	[1]	[-1]	[-1]	1
3	Bảo hiểm tử kỳ với quyền lợi hoàn phí và hỗ trợ viện phí 	2019-03-14 05:44:04.309884+00	2019-03-14 05:44:04.309903+00	1	[-1]	[-1]	[1000000000]	1
4	Bảo hiểm tử kỳ gia hạn hàng năm 	2019-03-14 05:44:04.321315+00	2019-03-14 05:44:04.321333+00	1	[1,5,8,10,15,20]	[5,8,10,15,20]	[-1]	1
5	Bảo hiểm tử kỳ với quyền lợi bảo hiểm tai nạn cá nhân 	2019-03-14 05:44:04.331309+00	2019-03-14 05:44:04.331327+00	1	[-1]	[-1]	[100000000,200000000,300000000,400000000,500000000]	1
6	Bảo hiểm nhân thọ tử kỳ linh hoạt với số tiền bảo hiểm giảm dần 	2019-03-14 05:44:04.343507+00	2019-03-14 05:44:04.343527+00	1	[-1]	[5,8,10]	[-1]	1
7	Bảo hiểm nhân thọ tử kỳ với thời gian nộp phí được rút ngắn 	2019-03-14 05:44:04.354079+00	2019-03-14 05:44:04.354097+00	1	[1,5,10,15]	[5,10,15]	[100000000,200000000,300000000]	1
8	Bảo hiểm nhân thọ có kỳ hạn 5,8 năm hoàn trả phí bảo hiểm 	2019-03-14 05:44:04.38316+00	2019-03-14 05:44:04.383229+00	1	[1,5,8]	[5,8]	[-1]	1
\.


--
-- Data for Name: products_productcost; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products_productcost (id, total_cost, premium_rate, product_id) FROM stdin;
\.


--
-- Data for Name: products_productquestions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products_productquestions (id, product_id, question_id) FROM stdin;
\.


--
-- Data for Name: products_questions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products_questions (id, title, answer_type) FROM stdin;
\.


--
-- Data for Name: products_returntype; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products_returntype (id, desciption, illustration) FROM stdin;
\.


--
-- Data for Name: reset_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reset_token (reset_token, created_at, user_id) FROM stdin;
\.


--
-- Data for Name: suggest_customerinfostep; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.suggest_customerinfostep (id, customer_id) FROM stdin;
\.


--
-- Data for Name: token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.token (key, created, user_id) FROM stdin;
1:32488aa5b1f97459735e4754d43ea4b0e0f66c5db1e488f9e6907650498facc0	2019-02-03 07:31:19.99698+00	1
1:7e118db10ee32e8fb6c4650bba8cd4c38758be795e514ab130727fd13b0d9355	2019-02-03 07:31:59.688686+00	1
1:326e49deaaeb77ead8b921f0432ee3c3fc8448836b3a2b4711e8522cd85f5897	2019-02-03 07:32:00.721977+00	1
1:f6c956372764019f7f96ef22e7da0e1feb3d148951851e5537cdf7b3814bfb4b	2019-02-03 07:32:01.794135+00	1
1:0361e18d38a109621a59ae22aa97576ec7642973612d22891236e4278917b77f	2019-02-03 07:32:02.443721+00	1
1:db7772bc8ef95e126c7c26493a4a8be3e15d1550b37cfb991e86b6aef0064cf0	2019-02-03 07:32:03.585893+00	1
1:623c9cc0fe348fbc233a377db029e836480e0bdedb0995849c0233ecab602e67	2019-02-03 07:41:46.016709+00	1
1:8dabe58e5c9d0cd48706191c0655a41fdd3455c80471fce65da19e12c8facb2b	2019-02-03 08:00:07.296949+00	1
1:7d65c92eb21502f63f0c18c9a92cc8728be8f57a1fecdeb90c875a6bf88c02cf	2019-02-03 11:02:56.065509+00	1
1:4eb68c81f84677036976f2b10598a3768ca78b01112610de802a5b7c7a09f0e8	2019-02-03 11:03:39.294318+00	1
1:35fbddeaabd3eae86a5c2c1fa6ba58d3040d8da7af0cf4d321cdb45b64c47bf2	2019-02-03 11:03:43.100097+00	1
1:be1eeee64a452c964d717f52de597639f62baca3e5d7595d0b497c67835a0b30	2019-02-03 11:30:40.577602+00	1
1:e3b20d27532bab7aab1969771db3a01853725d60773d371ba78b05a05bb61d2f	2019-02-03 11:32:21.38651+00	1
1:2d097fbeb82de6dcb17089030b6e250f1abe574c883d6288ea9f84827218193f	2019-02-03 11:33:07.955037+00	1
1:1531297d98eecd7ced323120a8819a6d8eec11c2f745f8bbb23d69ab6977f0e1	2019-02-03 11:34:38.549802+00	1
1:dc9b08c0df84d26adfe389ee05cba440d94e212e7a2621c1756c30d3535416ea	2019-02-03 11:38:05.628116+00	1
1:79c3af0967db6fd60de90031cbbb0a0280950817dfe45092edfbea392a5aa5ad	2019-02-03 11:39:06.021381+00	1
1:71bc362e8b2f3e1172160f820030472deaf7a7076fa8063a8b62832d669a94fb	2019-02-03 11:39:17.888784+00	1
1:3e927eb541f7bef09724581ea292f509d41335908082870a47c99ad737eb9652	2019-02-03 11:42:31.712293+00	1
1:d6e385cfd860f5e3c382bc64a20d94c8576597f1ccb8b79480d431a90b58e3d5	2019-02-03 11:58:25.23188+00	1
1:f449ce47d4f3aced401db9cfd23b94abde6625e0e49c3f2f2c04d7a7749a6762	2019-02-03 14:59:41.330235+00	1
1:a4120109c9a0eb881d535939c83676ba4df2acac4322c5ad296cd1ec89182bc6	2019-02-03 15:01:08.163733+00	1
1:c1ee02ecf0d7a20098abd52f8d674de11213850b8ae5db7ad6c3e74435b31b24	2019-02-27 05:50:34.607073+00	1
\.


--
-- Data for Name: user_notification; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_notification (id, is_read, created_at, notification_id, user_id) FROM stdin;
\.


--
-- Name: api_tempcustomer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.api_tempcustomer_id_seq', 320, true);


--
-- Name: api_tempdemandprotection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.api_tempdemandprotection_id_seq', 148, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 164, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: core_district_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.core_district_id_seq', 1, false);


--
-- Name: core_province_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.core_province_id_seq', 1, false);


--
-- Name: customers_agency_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_agency_id_seq', 1, false);


--
-- Name: customers_agencycustomers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_agencycustomers_id_seq', 1, false);


--
-- Name: customers_customerincome_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_customerincome_id_seq', 3, true);


--
-- Name: customers_customerplan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_customerplan_id_seq', 4, true);


--
-- Name: customers_customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_customers_id_seq', 1, false);


--
-- Name: customers_family_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_family_id_seq', 1, false);


--
-- Name: customers_healthstatus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_healthstatus_id_seq', 1, false);


--
-- Name: customers_job_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_job_id_seq', 1, false);


--
-- Name: customers_typehealth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_typehealth_id_seq', 3, true);


--
-- Name: customers_typejob_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_typejob_id_seq', 1, false);


--
-- Name: customers_typepayment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_typepayment_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 18, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 41, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 79, true);


--
-- Name: login_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.login_history_id_seq', 2, true);


--
-- Name: notification_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.notification_id_seq', 1, false);


--
-- Name: payment_benefitmethod_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payment_benefitmethod_id_seq', 1, false);


--
-- Name: payment_paymentform_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payment_paymentform_id_seq', 1, false);


--
-- Name: payment_paymentfrequency_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payment_paymentfrequency_id_seq', 1, false);


--
-- Name: products_answer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_answer_id_seq', 1, false);


--
-- Name: products_benefit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_benefit_id_seq', 2, true);


--
-- Name: products_paymenttype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_paymenttype_id_seq', 2, true);


--
-- Name: products_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_product_id_seq', 1, false);


--
-- Name: products_productcost_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_productcost_id_seq', 1, false);


--
-- Name: products_productquestions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_productquestions_id_seq', 1, false);


--
-- Name: products_questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_questions_id_seq', 1, false);


--
-- Name: products_returntype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_returntype_id_seq', 1, false);


--
-- Name: suggest_customerinfostep_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.suggest_customerinfostep_id_seq', 1, false);


--
-- Name: user_notification_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_notification_id_seq', 1, false);


--
-- Name: api_tempcustomer api_tempcustomer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api_tempcustomer
    ADD CONSTRAINT api_tempcustomer_pkey PRIMARY KEY (id);


--
-- Name: api_tempdemandprotection api_tempdemandprotection_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api_tempdemandprotection
    ADD CONSTRAINT api_tempdemandprotection_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: confirm_email_token confirm_email_token_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.confirm_email_token
    ADD CONSTRAINT confirm_email_token_pkey PRIMARY KEY (token);


--
-- Name: core_district core_district_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_district
    ADD CONSTRAINT core_district_pkey PRIMARY KEY (id);


--
-- Name: core_province core_province_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_province
    ADD CONSTRAINT core_province_pkey PRIMARY KEY (id);


--
-- Name: customers_agency customers_agency_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_agency
    ADD CONSTRAINT customers_agency_pkey PRIMARY KEY (id);


--
-- Name: customers_agencycustomers customers_agencycustomers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_agencycustomers
    ADD CONSTRAINT customers_agencycustomers_pkey PRIMARY KEY (id);


--
-- Name: customers_customerincome customers_customerincome_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_customerincome
    ADD CONSTRAINT customers_customerincome_pkey PRIMARY KEY (id);


--
-- Name: customers_customerplan customers_customerplan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_customerplan
    ADD CONSTRAINT customers_customerplan_pkey PRIMARY KEY (id);


--
-- Name: customers_customers customers_customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_customers
    ADD CONSTRAINT customers_customers_pkey PRIMARY KEY (id);


--
-- Name: customers_family customers_family_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_family
    ADD CONSTRAINT customers_family_pkey PRIMARY KEY (id);


--
-- Name: customers_healthstatus customers_healthstatus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_healthstatus
    ADD CONSTRAINT customers_healthstatus_pkey PRIMARY KEY (id);


--
-- Name: customers_job customers_job_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_job
    ADD CONSTRAINT customers_job_pkey PRIMARY KEY (id);


--
-- Name: customers_typehealth customers_typehealth_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_typehealth
    ADD CONSTRAINT customers_typehealth_pkey PRIMARY KEY (id);


--
-- Name: customers_typejob customers_typejob_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_typejob
    ADD CONSTRAINT customers_typejob_pkey PRIMARY KEY (id);


--
-- Name: customers_typepayment customers_typepayment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_typepayment
    ADD CONSTRAINT customers_typepayment_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: login_history login_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.login_history
    ADD CONSTRAINT login_history_pkey PRIMARY KEY (id);


--
-- Name: notification notification_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notification
    ADD CONSTRAINT notification_pkey PRIMARY KEY (id);


--
-- Name: payment_benefitmethod payment_benefitmethod_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_benefitmethod
    ADD CONSTRAINT payment_benefitmethod_pkey PRIMARY KEY (id);


--
-- Name: payment_paymentform payment_paymentform_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_paymentform
    ADD CONSTRAINT payment_paymentform_pkey PRIMARY KEY (id);


--
-- Name: payment_paymentfrequency payment_paymentfrequency_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_paymentfrequency
    ADD CONSTRAINT payment_paymentfrequency_pkey PRIMARY KEY (id);


--
-- Name: products_answer products_answer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_answer
    ADD CONSTRAINT products_answer_pkey PRIMARY KEY (id);


--
-- Name: products_benefit products_benefit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_benefit
    ADD CONSTRAINT products_benefit_pkey PRIMARY KEY (id);


--
-- Name: products_paymenttype products_paymenttype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_paymenttype
    ADD CONSTRAINT products_paymenttype_pkey PRIMARY KEY (id);


--
-- Name: products_product products_product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_product
    ADD CONSTRAINT products_product_pkey PRIMARY KEY (id);


--
-- Name: products_productcost products_productcost_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_productcost
    ADD CONSTRAINT products_productcost_pkey PRIMARY KEY (id);


--
-- Name: products_productquestions products_productquestions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_productquestions
    ADD CONSTRAINT products_productquestions_pkey PRIMARY KEY (id);


--
-- Name: products_questions products_questions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_questions
    ADD CONSTRAINT products_questions_pkey PRIMARY KEY (id);


--
-- Name: products_returntype products_returntype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_returntype
    ADD CONSTRAINT products_returntype_pkey PRIMARY KEY (id);


--
-- Name: reset_token reset_token_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reset_token
    ADD CONSTRAINT reset_token_pkey PRIMARY KEY (reset_token);


--
-- Name: suggest_customerinfostep suggest_customerinfostep_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.suggest_customerinfostep
    ADD CONSTRAINT suggest_customerinfostep_pkey PRIMARY KEY (id);


--
-- Name: token token_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.token
    ADD CONSTRAINT token_pkey PRIMARY KEY (key);


--
-- Name: user_notification user_notification_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_notification
    ADD CONSTRAINT user_notification_pkey PRIMARY KEY (id);


--
-- Name: api_tempcustomer_user_id_759afb4f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX api_tempcustomer_user_id_759afb4f ON public.api_tempcustomer USING btree (user_id);


--
-- Name: api_tempdemandprotection_temp_customer_id_ff21924b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX api_tempdemandprotection_temp_customer_id_ff21924b ON public.api_tempdemandprotection USING btree (temp_customer_id);


--
-- Name: api_tempdemandprotection_user_id_4a7c2350; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX api_tempdemandprotection_user_id_4a7c2350 ON public.api_tempdemandprotection USING btree (user_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: confirm_email_token_token_5b011d0e_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX confirm_email_token_token_5b011d0e_like ON public.confirm_email_token USING btree (token varchar_pattern_ops);


--
-- Name: confirm_email_token_user_id_a738242a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX confirm_email_token_user_id_a738242a ON public.confirm_email_token USING btree (user_id);


--
-- Name: core_district_province_id_7a781d3b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_district_province_id_7a781d3b ON public.core_district USING btree (province_id);


--
-- Name: customers_agencycustomers_agency_id_0d278e56; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX customers_agencycustomers_agency_id_0d278e56 ON public.customers_agencycustomers USING btree (agency_id);


--
-- Name: customers_agencycustomers_customers_id_dad6b91d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX customers_agencycustomers_customers_id_dad6b91d ON public.customers_agencycustomers USING btree (customers_id);


--
-- Name: customers_customers_district_id_39c4af31; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX customers_customers_district_id_39c4af31 ON public.customers_customers USING btree (district_id);


--
-- Name: customers_customers_healthstatus_id_cb6a68c0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX customers_customers_healthstatus_id_cb6a68c0 ON public.customers_customers USING btree (health_status_id);


--
-- Name: customers_customers_income_id_11d64280; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX customers_customers_income_id_11d64280 ON public.customers_customers USING btree (income_id);


--
-- Name: customers_customers_job_id_b93e4012; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX customers_customers_job_id_b93e4012 ON public.customers_customers USING btree (job_id);


--
-- Name: customers_customers_province_id_3c8a6c92; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX customers_customers_province_id_3c8a6c92 ON public.customers_customers USING btree (province_id);


--
-- Name: customers_family_customer_id_41645b01; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX customers_family_customer_id_41645b01 ON public.customers_family USING btree (customer_id);


--
-- Name: customers_healthstatus_type_health_id_5a71c005; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX customers_healthstatus_type_health_id_5a71c005 ON public.customers_healthstatus USING btree (type_health_id);


--
-- Name: customers_job_typejob_id_b7a3cc45; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX customers_job_typejob_id_b7a3cc45 ON public.customers_job USING btree (type_job_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: login_history_user_id_0eeaebb8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX login_history_user_id_0eeaebb8 ON public.login_history USING btree (user_id);


--
-- Name: products_answer_question_id_d735356e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX products_answer_question_id_d735356e ON public.products_answer USING btree (question_id);


--
-- Name: products_product_payment_type_id_cd8a1c27; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX products_product_payment_type_id_cd8a1c27 ON public.products_product USING btree (payment_type_id);


--
-- Name: products_product_pro_cate_id_346ebfb6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX products_product_pro_cate_id_346ebfb6 ON public.products_product USING btree (type_group_id);


--
-- Name: products_productcost_product_id_f2db7a25; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX products_productcost_product_id_f2db7a25 ON public.products_productcost USING btree (product_id);


--
-- Name: products_productquestions_product_id_195f34cc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX products_productquestions_product_id_195f34cc ON public.products_productquestions USING btree (product_id);


--
-- Name: products_productquestions_question_id_b788db2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX products_productquestions_question_id_b788db2c ON public.products_productquestions USING btree (question_id);


--
-- Name: reset_token_reset_token_23a1de31_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX reset_token_reset_token_23a1de31_like ON public.reset_token USING btree (reset_token varchar_pattern_ops);


--
-- Name: reset_token_user_id_aae5d20a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX reset_token_user_id_aae5d20a ON public.reset_token USING btree (user_id);


--
-- Name: suggest_customerinfostep_customer_id_9aaf9e43; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX suggest_customerinfostep_customer_id_9aaf9e43 ON public.suggest_customerinfostep USING btree (customer_id);


--
-- Name: token_key_86d3c722_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX token_key_86d3c722_like ON public.token USING btree (key varchar_pattern_ops);


--
-- Name: token_user_id_1c65fba4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX token_user_id_1c65fba4 ON public.token USING btree (user_id);


--
-- Name: user_notification_notification_id_02fe6489; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_notification_notification_id_02fe6489 ON public.user_notification USING btree (notification_id);


--
-- Name: user_notification_user_id_66a31b4a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_notification_user_id_66a31b4a ON public.user_notification USING btree (user_id);


--
-- Name: api_tempcustomer api_tempcustomer_user_id_759afb4f_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api_tempcustomer
    ADD CONSTRAINT api_tempcustomer_user_id_759afb4f_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: api_tempdemandprotection api_tempdemandprotec_temp_customer_id_ff21924b_fk_api_tempc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api_tempdemandprotection
    ADD CONSTRAINT api_tempdemandprotec_temp_customer_id_ff21924b_fk_api_tempc FOREIGN KEY (temp_customer_id) REFERENCES public.api_tempcustomer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: api_tempdemandprotection api_tempdemandprotection_user_id_4a7c2350_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api_tempdemandprotection
    ADD CONSTRAINT api_tempdemandprotection_user_id_4a7c2350_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: confirm_email_token confirm_email_token_user_id_a738242a_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.confirm_email_token
    ADD CONSTRAINT confirm_email_token_user_id_a738242a_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_district core_district_province_id_7a781d3b_fk_core_province_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_district
    ADD CONSTRAINT core_district_province_id_7a781d3b_fk_core_province_id FOREIGN KEY (province_id) REFERENCES public.core_province(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: customers_agencycustomers customers_agencycust_agency_id_0d278e56_fk_customers; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_agencycustomers
    ADD CONSTRAINT customers_agencycust_agency_id_0d278e56_fk_customers FOREIGN KEY (agency_id) REFERENCES public.customers_agency(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: customers_agencycustomers customers_agencycust_customers_id_dad6b91d_fk_customers; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_agencycustomers
    ADD CONSTRAINT customers_agencycust_customers_id_dad6b91d_fk_customers FOREIGN KEY (customers_id) REFERENCES public.customers_customers(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: customers_customers customers_customers_district_id_39c4af31_fk_core_district_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_customers
    ADD CONSTRAINT customers_customers_district_id_39c4af31_fk_core_district_id FOREIGN KEY (district_id) REFERENCES public.core_district(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: customers_customers customers_customers_health_status_id_fcaf21e3_fk_customers; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_customers
    ADD CONSTRAINT customers_customers_health_status_id_fcaf21e3_fk_customers FOREIGN KEY (health_status_id) REFERENCES public.customers_healthstatus(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: customers_customers customers_customers_income_id_11d64280_fk_customers; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_customers
    ADD CONSTRAINT customers_customers_income_id_11d64280_fk_customers FOREIGN KEY (income_id) REFERENCES public.customers_customerincome(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: customers_customers customers_customers_job_id_b93e4012_fk_customers_job_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_customers
    ADD CONSTRAINT customers_customers_job_id_b93e4012_fk_customers_job_id FOREIGN KEY (job_id) REFERENCES public.customers_job(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: customers_customers customers_customers_province_id_3c8a6c92_fk_core_province_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_customers
    ADD CONSTRAINT customers_customers_province_id_3c8a6c92_fk_core_province_id FOREIGN KEY (province_id) REFERENCES public.core_province(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: customers_family customers_family_customer_id_41645b01_fk_customers_customers_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_family
    ADD CONSTRAINT customers_family_customer_id_41645b01_fk_customers_customers_id FOREIGN KEY (customer_id) REFERENCES public.customers_customers(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: customers_healthstatus customers_healthstat_type_health_id_5a71c005_fk_customers; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_healthstatus
    ADD CONSTRAINT customers_healthstat_type_health_id_5a71c005_fk_customers FOREIGN KEY (type_health_id) REFERENCES public.customers_typehealth(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: customers_job customers_job_type_job_id_0d82e0f5_fk_customers_typejob_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_job
    ADD CONSTRAINT customers_job_type_job_id_0d82e0f5_fk_customers_typejob_id FOREIGN KEY (type_job_id) REFERENCES public.customers_typejob(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: login_history login_history_user_id_0eeaebb8_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.login_history
    ADD CONSTRAINT login_history_user_id_0eeaebb8_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_answer products_answer_question_id_d735356e_fk_products_questions_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_answer
    ADD CONSTRAINT products_answer_question_id_d735356e_fk_products_questions_id FOREIGN KEY (question_id) REFERENCES public.products_questions(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_product products_product_payment_type_id_cd8a1c27_fk_products_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_product
    ADD CONSTRAINT products_product_payment_type_id_cd8a1c27_fk_products_ FOREIGN KEY (payment_type_id) REFERENCES public.products_paymenttype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_product products_product_type_group_id_c8a7a378_fk_customers; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_product
    ADD CONSTRAINT products_product_type_group_id_c8a7a378_fk_customers FOREIGN KEY (type_group_id) REFERENCES public.customers_customerplan(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_productcost products_productcost_product_id_f2db7a25_fk_products_product_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_productcost
    ADD CONSTRAINT products_productcost_product_id_f2db7a25_fk_products_product_id FOREIGN KEY (product_id) REFERENCES public.products_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_productquestions products_productques_product_id_195f34cc_fk_products_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_productquestions
    ADD CONSTRAINT products_productques_product_id_195f34cc_fk_products_ FOREIGN KEY (product_id) REFERENCES public.products_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_productquestions products_productques_question_id_b788db2c_fk_products_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_productquestions
    ADD CONSTRAINT products_productques_question_id_b788db2c_fk_products_ FOREIGN KEY (question_id) REFERENCES public.products_questions(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: reset_token reset_token_user_id_aae5d20a_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reset_token
    ADD CONSTRAINT reset_token_user_id_aae5d20a_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: suggest_customerinfostep suggest_customerinfo_customer_id_9aaf9e43_fk_customers; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.suggest_customerinfostep
    ADD CONSTRAINT suggest_customerinfo_customer_id_9aaf9e43_fk_customers FOREIGN KEY (customer_id) REFERENCES public.customers_customers(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: token token_user_id_1c65fba4_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.token
    ADD CONSTRAINT token_user_id_1c65fba4_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_notification user_notification_notification_id_02fe6489_fk_notification_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_notification
    ADD CONSTRAINT user_notification_notification_id_02fe6489_fk_notification_id FOREIGN KEY (notification_id) REFERENCES public.notification(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_notification user_notification_user_id_66a31b4a_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_notification
    ADD CONSTRAINT user_notification_user_id_66a31b4a_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

\connect template1

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5 (Debian 10.5-2.pgdg90+1)
-- Dumped by pg_dump version 10.5 (Debian 10.5-2.pgdg90+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: DATABASE template1; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE template1 IS 'default template for new databases';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

