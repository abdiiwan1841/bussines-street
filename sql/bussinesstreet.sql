--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.13
-- Dumped by pg_dump version 9.3.13
-- Started on 2017-06-19 19:50:49

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 1 (class 3079 OID 11750)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2319 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 171 (class 1259 OID 45969)
-- Name: app_berkas; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE app_berkas (
    email character varying(20)[],
    berkas_id integer NOT NULL,
    user_id character varying
);


ALTER TABLE public.app_berkas OWNER TO postgres;

--
-- TOC entry 2320 (class 0 OID 0)
-- Dependencies: 171
-- Name: COLUMN app_berkas.berkas_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN app_berkas.berkas_id IS 'primary key';


--
-- TOC entry 172 (class 1259 OID 45975)
-- Name: app_berkas_berkas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE app_berkas_berkas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_berkas_berkas_id_seq OWNER TO postgres;

--
-- TOC entry 2321 (class 0 OID 0)
-- Dependencies: 172
-- Name: app_berkas_berkas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE app_berkas_berkas_id_seq OWNED BY app_berkas.berkas_id;


--
-- TOC entry 173 (class 1259 OID 45977)
-- Name: app_bussines; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE app_bussines (
    userid integer NOT NULL,
    bussines_role_id integer,
    bussines_name character varying,
    budget_alocation bigint,
    profit_sharing real,
    bussinesid integer NOT NULL,
    bussines_location character varying,
    bussines_description text
);


ALTER TABLE public.app_bussines OWNER TO postgres;

--
-- TOC entry 2322 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN app_bussines.userid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN app_bussines.userid IS 'primary key';


--
-- TOC entry 2323 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN app_bussines.bussines_role_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN app_bussines.bussines_role_id IS 'foreign key';


--
-- TOC entry 174 (class 1259 OID 45980)
-- Name: app_bussines_role; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE app_bussines_role (
    bussines_role_id integer NOT NULL,
    bussines_role_name character varying(50)
);


ALTER TABLE public.app_bussines_role OWNER TO postgres;

--
-- TOC entry 175 (class 1259 OID 45983)
-- Name: app_bussines-role_bussines_role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "app_bussines-role_bussines_role_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."app_bussines-role_bussines_role_id_seq" OWNER TO postgres;

--
-- TOC entry 2324 (class 0 OID 0)
-- Dependencies: 175
-- Name: app_bussines-role_bussines_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "app_bussines-role_bussines_role_id_seq" OWNED BY app_bussines_role.bussines_role_id;


--
-- TOC entry 218 (class 1259 OID 53894)
-- Name: app_bussines_bussinesid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE app_bussines_bussinesid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_bussines_bussinesid_seq OWNER TO postgres;

--
-- TOC entry 2325 (class 0 OID 0)
-- Dependencies: 218
-- Name: app_bussines_bussinesid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE app_bussines_bussinesid_seq OWNED BY app_bussines.bussinesid;


--
-- TOC entry 229 (class 1259 OID 70637)
-- Name: app_bussines_latter; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE app_bussines_latter (
    bussines_latter_id integer NOT NULL,
    bussines_id bigint,
    bussines_latter_name character varying,
    bussines_latter_from bigint,
    bussines_latter_to bigint,
    bussiness_later_kategory smallint
);


ALTER TABLE public.app_bussines_latter OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 70635)
-- Name: app_bussines_contract_bussines_contract_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE app_bussines_contract_bussines_contract_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_bussines_contract_bussines_contract_id_seq OWNER TO postgres;

--
-- TOC entry 2326 (class 0 OID 0)
-- Dependencies: 228
-- Name: app_bussines_contract_bussines_contract_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE app_bussines_contract_bussines_contract_id_seq OWNED BY app_bussines_latter.bussines_latter_id;


--
-- TOC entry 176 (class 1259 OID 45985)
-- Name: app_bussines_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE app_bussines_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_bussines_user_id_seq OWNER TO postgres;

--
-- TOC entry 2327 (class 0 OID 0)
-- Dependencies: 176
-- Name: app_bussines_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE app_bussines_user_id_seq OWNED BY app_bussines.userid;


--
-- TOC entry 177 (class 1259 OID 45987)
-- Name: app_email; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE app_email (
    id integer NOT NULL,
    email character varying,
    kategori character varying,
    subkategori character varying,
    sourceid integer,
    data text,
    controlid integer,
    status integer,
    subject character varying
);


ALTER TABLE public.app_email OWNER TO postgres;

--
-- TOC entry 178 (class 1259 OID 45993)
-- Name: app_email_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE app_email_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_email_id_seq OWNER TO postgres;

--
-- TOC entry 2328 (class 0 OID 0)
-- Dependencies: 178
-- Name: app_email_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE app_email_id_seq OWNED BY app_email.id;


--
-- TOC entry 179 (class 1259 OID 45995)
-- Name: app_invittation; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE app_invittation (
    bussines_id integer,
    invitation_id integer NOT NULL,
    invite_from bigint,
    invite_to bigint,
    invite_status_id integer,
    invitation_date date
);


ALTER TABLE public.app_invittation OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 53913)
-- Name: app_invittation_invitation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE app_invittation_invitation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_invittation_invitation_id_seq OWNER TO postgres;

--
-- TOC entry 2329 (class 0 OID 0)
-- Dependencies: 219
-- Name: app_invittation_invitation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE app_invittation_invitation_id_seq OWNED BY app_invittation.invitation_id;


--
-- TOC entry 227 (class 1259 OID 62438)
-- Name: app_invittation_status; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE app_invittation_status (
    invite_status_id integer NOT NULL,
    invittation_status_name character varying
);


ALTER TABLE public.app_invittation_status OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 62436)
-- Name: app_invittation_status_invittation_status_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE app_invittation_status_invittation_status_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_invittation_status_invittation_status_id_seq OWNER TO postgres;

--
-- TOC entry 2330 (class 0 OID 0)
-- Dependencies: 226
-- Name: app_invittation_status_invittation_status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE app_invittation_status_invittation_status_id_seq OWNED BY app_invittation_status.invite_status_id;


--
-- TOC entry 180 (class 1259 OID 46000)
-- Name: app_key_konfirmasi; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE app_key_konfirmasi (
    id integer NOT NULL,
    key character varying,
    expired timestamp with time zone,
    regid integer,
    status integer
);


ALTER TABLE public.app_key_konfirmasi OWNER TO postgres;

--
-- TOC entry 181 (class 1259 OID 46006)
-- Name: app_key_konfirmasi_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE app_key_konfirmasi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_key_konfirmasi_id_seq OWNER TO postgres;

--
-- TOC entry 2331 (class 0 OID 0)
-- Dependencies: 181
-- Name: app_key_konfirmasi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE app_key_konfirmasi_id_seq OWNED BY app_key_konfirmasi.id;


--
-- TOC entry 182 (class 1259 OID 46008)
-- Name: app_key_pass; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE app_key_pass (
    id integer NOT NULL,
    key character varying,
    userid integer
);


ALTER TABLE public.app_key_pass OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 46014)
-- Name: app_key_pass_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE app_key_pass_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_key_pass_id_seq OWNER TO postgres;

--
-- TOC entry 2332 (class 0 OID 0)
-- Dependencies: 183
-- Name: app_key_pass_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE app_key_pass_id_seq OWNED BY app_key_pass.id;


--
-- TOC entry 231 (class 1259 OID 70648)
-- Name: app_latter_category; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE app_latter_category (
    latter_category_id smallint NOT NULL,
    latter_name character varying,
    latter_description text,
    latter_content text
);


ALTER TABLE public.app_latter_category OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 70646)
-- Name: app_latter_category_latter_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE app_latter_category_latter_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_latter_category_latter_category_id_seq OWNER TO postgres;

--
-- TOC entry 2333 (class 0 OID 0)
-- Dependencies: 230
-- Name: app_latter_category_latter_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE app_latter_category_latter_category_id_seq OWNED BY app_latter_category.latter_category_id;


--
-- TOC entry 221 (class 1259 OID 53921)
-- Name: app_message; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE app_message (
    message_id integer NOT NULL,
    message_from bigint,
    message_to bigint,
    message text,
    bussines_id bigint,
    message_date date
);


ALTER TABLE public.app_message OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 53919)
-- Name: app_message_message_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE app_message_message_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_message_message_id_seq OWNER TO postgres;

--
-- TOC entry 2334 (class 0 OID 0)
-- Dependencies: 220
-- Name: app_message_message_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE app_message_message_id_seq OWNED BY app_message.message_id;


--
-- TOC entry 184 (class 1259 OID 46016)
-- Name: app_mou; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE app_mou (
    bussines_id integer,
    berkas_id integer NOT NULL,
    user_id integer,
    berkas_name character varying
);


ALTER TABLE public.app_mou OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 46022)
-- Name: app_mou_berkas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE app_mou_berkas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_mou_berkas_id_seq OWNER TO postgres;

--
-- TOC entry 2335 (class 0 OID 0)
-- Dependencies: 185
-- Name: app_mou_berkas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE app_mou_berkas_id_seq OWNED BY app_mou.berkas_id;


--
-- TOC entry 225 (class 1259 OID 62427)
-- Name: app_photo_bussines; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE app_photo_bussines (
    photo_bussines_id integer NOT NULL,
    photo_bussines_name character varying,
    bussines_id bigint
);


ALTER TABLE public.app_photo_bussines OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 62425)
-- Name: app_photo_bussines_photo_bussines_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE app_photo_bussines_photo_bussines_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_photo_bussines_photo_bussines_id_seq OWNER TO postgres;

--
-- TOC entry 2336 (class 0 OID 0)
-- Dependencies: 224
-- Name: app_photo_bussines_photo_bussines_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE app_photo_bussines_photo_bussines_id_seq OWNED BY app_photo_bussines.photo_bussines_id;


--
-- TOC entry 186 (class 1259 OID 46024)
-- Name: app_rate; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE app_rate (
    rate_id integer NOT NULL,
    rate integer,
    artikel_id bigint,
    userid bigint
);


ALTER TABLE public.app_rate OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 46027)
-- Name: app_rate_rate_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE app_rate_rate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_rate_rate_id_seq OWNER TO postgres;

--
-- TOC entry 2337 (class 0 OID 0)
-- Dependencies: 187
-- Name: app_rate_rate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE app_rate_rate_id_seq OWNED BY app_rate.rate_id;


--
-- TOC entry 188 (class 1259 OID 46029)
-- Name: app_registration; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE app_registration (
    id integer NOT NULL,
    email character varying,
    full_name character varying,
    gender character varying,
    birth_city character varying,
    birth_date date,
    jenkelid smallint,
    password character varying,
    pwd_key character varying
);


ALTER TABLE public.app_registration OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 46035)
-- Name: app_registration_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE app_registration_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_registration_id_seq OWNER TO postgres;

--
-- TOC entry 2338 (class 0 OID 0)
-- Dependencies: 189
-- Name: app_registration_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE app_registration_id_seq OWNED BY app_registration.id;


--
-- TOC entry 190 (class 1259 OID 46037)
-- Name: app_user; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE app_user (
    user_name character varying,
    user_id bigint NOT NULL,
    password character varying,
    email character varying
);


ALTER TABLE public.app_user OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 62416)
-- Name: app_user_photo; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE app_user_photo (
    photo_id integer NOT NULL,
    photo_name character varying,
    userid bigint
);


ALTER TABLE public.app_user_photo OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 62414)
-- Name: app_user_photo_photo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE app_user_photo_photo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_user_photo_photo_id_seq OWNER TO postgres;

--
-- TOC entry 2339 (class 0 OID 0)
-- Dependencies: 222
-- Name: app_user_photo_photo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE app_user_photo_photo_id_seq OWNED BY app_user_photo.photo_id;


--
-- TOC entry 217 (class 1259 OID 53889)
-- Name: session_counter_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE session_counter_seq
    START WITH 2000684
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.session_counter_seq OWNER TO postgres;

--
-- TOC entry 191 (class 1259 OID 46043)
-- Name: sys_application; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE sys_application (
    appid integer NOT NULL,
    appcode character varying,
    appname character varying,
    appkey character varying
);


ALTER TABLE public.sys_application OWNER TO postgres;

--
-- TOC entry 192 (class 1259 OID 46049)
-- Name: sys_application_appid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sys_application_appid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sys_application_appid_seq OWNER TO postgres;

--
-- TOC entry 2340 (class 0 OID 0)
-- Dependencies: 192
-- Name: sys_application_appid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sys_application_appid_seq OWNED BY sys_application.appid;


--
-- TOC entry 193 (class 1259 OID 46051)
-- Name: sys_contexts; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE sys_contexts (
    contextid integer NOT NULL,
    contextname character varying,
    contextype smallint,
    contextpath character varying
);


ALTER TABLE public.sys_contexts OWNER TO postgres;

--
-- TOC entry 194 (class 1259 OID 46057)
-- Name: sys_contexts_contextid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sys_contexts_contextid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sys_contexts_contextid_seq OWNER TO postgres;

--
-- TOC entry 2341 (class 0 OID 0)
-- Dependencies: 194
-- Name: sys_contexts_contextid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sys_contexts_contextid_seq OWNED BY sys_contexts.contextid;


--
-- TOC entry 195 (class 1259 OID 46059)
-- Name: sys_files; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE sys_files (
    id bigint NOT NULL,
    name character varying,
    filepath character varying,
    type character varying,
    size bigint,
    basetype character varying,
    filetime timestamp with time zone DEFAULT now(),
    hashid character varying
);


ALTER TABLE public.sys_files OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 46066)
-- Name: sys_files_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sys_files_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sys_files_id_seq OWNER TO postgres;

--
-- TOC entry 2342 (class 0 OID 0)
-- Dependencies: 196
-- Name: sys_files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sys_files_id_seq OWNED BY sys_files.id;


--
-- TOC entry 197 (class 1259 OID 46068)
-- Name: sys_menu; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE sys_menu (
    menuid integer NOT NULL,
    viewindex integer,
    menuname character varying NOT NULL,
    caption character varying,
    description character varying,
    parentid integer DEFAULT 0 NOT NULL,
    menulevel smallint DEFAULT 1 NOT NULL,
    frontbar smallint DEFAULT 0 NOT NULL,
    command character varying,
    context character varying,
    visible smallint DEFAULT 0 NOT NULL,
    iconname character varying,
    menuoptions character varying,
    ismenu smallint DEFAULT 1
);


ALTER TABLE public.sys_menu OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 46079)
-- Name: sys_menu_menuid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sys_menu_menuid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sys_menu_menuid_seq OWNER TO postgres;

--
-- TOC entry 2343 (class 0 OID 0)
-- Dependencies: 198
-- Name: sys_menu_menuid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sys_menu_menuid_seq OWNED BY sys_menu.menuid;


--
-- TOC entry 199 (class 1259 OID 46081)
-- Name: sys_methods; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE sys_methods (
    methodid integer NOT NULL,
    objectname character varying,
    methodname character varying,
    status smallint
);


ALTER TABLE public.sys_methods OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 46087)
-- Name: sys_methods_methodid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sys_methods_methodid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sys_methods_methodid_seq OWNER TO postgres;

--
-- TOC entry 2344 (class 0 OID 0)
-- Dependencies: 200
-- Name: sys_methods_methodid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sys_methods_methodid_seq OWNED BY sys_methods.methodid;


--
-- TOC entry 201 (class 1259 OID 46089)
-- Name: sys_objectpermissions; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE sys_objectpermissions (
    objectpermissionid integer NOT NULL,
    objectid integer NOT NULL,
    permissionid integer NOT NULL
);


ALTER TABLE public.sys_objectpermissions OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 46092)
-- Name: sys_objectpermissions_objectpermissionid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sys_objectpermissions_objectpermissionid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sys_objectpermissions_objectpermissionid_seq OWNER TO postgres;

--
-- TOC entry 2345 (class 0 OID 0)
-- Dependencies: 202
-- Name: sys_objectpermissions_objectpermissionid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sys_objectpermissions_objectpermissionid_seq OWNED BY sys_objectpermissions.objectpermissionid;


--
-- TOC entry 203 (class 1259 OID 46094)
-- Name: sys_objects; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE sys_objects (
    objectid integer NOT NULL,
    objectname character varying,
    status smallint
);


ALTER TABLE public.sys_objects OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 46100)
-- Name: sys_objects_objectid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sys_objects_objectid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sys_objects_objectid_seq OWNER TO postgres;

--
-- TOC entry 2346 (class 0 OID 0)
-- Dependencies: 204
-- Name: sys_objects_objectid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sys_objects_objectid_seq OWNED BY sys_objects.objectid;


--
-- TOC entry 205 (class 1259 OID 46102)
-- Name: sys_permissions; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE sys_permissions (
    permissionid integer NOT NULL,
    category character varying,
    permissionname character varying,
    description character varying,
    active smallint DEFAULT 1 NOT NULL
);


ALTER TABLE public.sys_permissions OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 46109)
-- Name: sys_permissions_permissionid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sys_permissions_permissionid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sys_permissions_permissionid_seq OWNER TO postgres;

--
-- TOC entry 2347 (class 0 OID 0)
-- Dependencies: 206
-- Name: sys_permissions_permissionid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sys_permissions_permissionid_seq OWNED BY sys_permissions.permissionid;


--
-- TOC entry 207 (class 1259 OID 46111)
-- Name: sys_rolepermissions; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE sys_rolepermissions (
    rolepermissionid integer NOT NULL,
    roleid integer NOT NULL,
    permissionid integer
);


ALTER TABLE public.sys_rolepermissions OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 46114)
-- Name: sys_rolepermissions_rolepermissionid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sys_rolepermissions_rolepermissionid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sys_rolepermissions_rolepermissionid_seq OWNER TO postgres;

--
-- TOC entry 2348 (class 0 OID 0)
-- Dependencies: 208
-- Name: sys_rolepermissions_rolepermissionid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sys_rolepermissions_rolepermissionid_seq OWNED BY sys_rolepermissions.rolepermissionid;


--
-- TOC entry 209 (class 1259 OID 46116)
-- Name: sys_roles; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE sys_roles (
    roleid integer NOT NULL,
    rolename character varying NOT NULL,
    description character varying,
    active smallint DEFAULT 1 NOT NULL
);


ALTER TABLE public.sys_roles OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 46123)
-- Name: sys_roles_roleid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sys_roles_roleid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sys_roles_roleid_seq OWNER TO postgres;

--
-- TOC entry 2349 (class 0 OID 0)
-- Dependencies: 210
-- Name: sys_roles_roleid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sys_roles_roleid_seq OWNED BY sys_roles.roleid;


--
-- TOC entry 211 (class 1259 OID 46125)
-- Name: sys_session; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE sys_session (
    sessionid bigint NOT NULL,
    sessioncode character varying,
    sessionexpired timestamp with time zone,
    username character varying
);


ALTER TABLE public.sys_session OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 46131)
-- Name: sys_session_sessionid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sys_session_sessionid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sys_session_sessionid_seq OWNER TO postgres;

--
-- TOC entry 2350 (class 0 OID 0)
-- Dependencies: 212
-- Name: sys_session_sessionid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sys_session_sessionid_seq OWNED BY sys_session.sessionid;


--
-- TOC entry 213 (class 1259 OID 46133)
-- Name: sys_userroles; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE sys_userroles (
    userroleid integer NOT NULL,
    userid integer NOT NULL,
    roleid integer NOT NULL
);


ALTER TABLE public.sys_userroles OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 46136)
-- Name: sys_userroles_userroleid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sys_userroles_userroleid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sys_userroles_userroleid_seq OWNER TO postgres;

--
-- TOC entry 2351 (class 0 OID 0)
-- Dependencies: 214
-- Name: sys_userroles_userroleid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sys_userroles_userroleid_seq OWNED BY sys_userroles.userroleid;


--
-- TOC entry 215 (class 1259 OID 46138)
-- Name: sys_users; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE sys_users (
    userid integer NOT NULL,
    username character varying,
    password character varying(32),
    lastlogin timestamp with time zone,
    active smallint DEFAULT 1 NOT NULL,
    fullname character varying,
    enctype smallint DEFAULT 1,
    isadmin smallint DEFAULT 0,
    isemailverified smallint DEFAULT 0,
    isverified smallint DEFAULT 0,
    addres character varying
);


ALTER TABLE public.sys_users OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 46149)
-- Name: sys_users_userid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sys_users_userid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sys_users_userid_seq OWNER TO postgres;

--
-- TOC entry 2352 (class 0 OID 0)
-- Dependencies: 216
-- Name: sys_users_userid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sys_users_userid_seq OWNED BY sys_users.userid;


--
-- TOC entry 2023 (class 2604 OID 46151)
-- Name: berkas_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY app_berkas ALTER COLUMN berkas_id SET DEFAULT nextval('app_berkas_berkas_id_seq'::regclass);


--
-- TOC entry 2024 (class 2604 OID 46152)
-- Name: userid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY app_bussines ALTER COLUMN userid SET DEFAULT nextval('app_bussines_user_id_seq'::regclass);


--
-- TOC entry 2025 (class 2604 OID 53896)
-- Name: bussinesid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY app_bussines ALTER COLUMN bussinesid SET DEFAULT nextval('app_bussines_bussinesid_seq'::regclass);


--
-- TOC entry 2064 (class 2604 OID 70640)
-- Name: bussines_latter_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY app_bussines_latter ALTER COLUMN bussines_latter_id SET DEFAULT nextval('app_bussines_contract_bussines_contract_id_seq'::regclass);


--
-- TOC entry 2026 (class 2604 OID 46153)
-- Name: bussines_role_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY app_bussines_role ALTER COLUMN bussines_role_id SET DEFAULT nextval('"app_bussines-role_bussines_role_id_seq"'::regclass);


--
-- TOC entry 2027 (class 2604 OID 46154)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY app_email ALTER COLUMN id SET DEFAULT nextval('app_email_id_seq'::regclass);


--
-- TOC entry 2028 (class 2604 OID 53915)
-- Name: invitation_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY app_invittation ALTER COLUMN invitation_id SET DEFAULT nextval('app_invittation_invitation_id_seq'::regclass);


--
-- TOC entry 2063 (class 2604 OID 62441)
-- Name: invite_status_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY app_invittation_status ALTER COLUMN invite_status_id SET DEFAULT nextval('app_invittation_status_invittation_status_id_seq'::regclass);


--
-- TOC entry 2029 (class 2604 OID 46156)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY app_key_konfirmasi ALTER COLUMN id SET DEFAULT nextval('app_key_konfirmasi_id_seq'::regclass);


--
-- TOC entry 2030 (class 2604 OID 46157)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY app_key_pass ALTER COLUMN id SET DEFAULT nextval('app_key_pass_id_seq'::regclass);


--
-- TOC entry 2065 (class 2604 OID 70651)
-- Name: latter_category_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY app_latter_category ALTER COLUMN latter_category_id SET DEFAULT nextval('app_latter_category_latter_category_id_seq'::regclass);


--
-- TOC entry 2060 (class 2604 OID 53924)
-- Name: message_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY app_message ALTER COLUMN message_id SET DEFAULT nextval('app_message_message_id_seq'::regclass);


--
-- TOC entry 2031 (class 2604 OID 46158)
-- Name: berkas_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY app_mou ALTER COLUMN berkas_id SET DEFAULT nextval('app_mou_berkas_id_seq'::regclass);


--
-- TOC entry 2062 (class 2604 OID 62430)
-- Name: photo_bussines_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY app_photo_bussines ALTER COLUMN photo_bussines_id SET DEFAULT nextval('app_photo_bussines_photo_bussines_id_seq'::regclass);


--
-- TOC entry 2032 (class 2604 OID 46159)
-- Name: rate_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY app_rate ALTER COLUMN rate_id SET DEFAULT nextval('app_rate_rate_id_seq'::regclass);


--
-- TOC entry 2033 (class 2604 OID 46160)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY app_registration ALTER COLUMN id SET DEFAULT nextval('app_registration_id_seq'::regclass);


--
-- TOC entry 2061 (class 2604 OID 62419)
-- Name: photo_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY app_user_photo ALTER COLUMN photo_id SET DEFAULT nextval('app_user_photo_photo_id_seq'::regclass);


--
-- TOC entry 2034 (class 2604 OID 46161)
-- Name: appid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sys_application ALTER COLUMN appid SET DEFAULT nextval('sys_application_appid_seq'::regclass);


--
-- TOC entry 2035 (class 2604 OID 46162)
-- Name: contextid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sys_contexts ALTER COLUMN contextid SET DEFAULT nextval('sys_contexts_contextid_seq'::regclass);


--
-- TOC entry 2037 (class 2604 OID 46163)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sys_files ALTER COLUMN id SET DEFAULT nextval('sys_files_id_seq'::regclass);


--
-- TOC entry 2043 (class 2604 OID 46164)
-- Name: menuid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sys_menu ALTER COLUMN menuid SET DEFAULT nextval('sys_menu_menuid_seq'::regclass);


--
-- TOC entry 2044 (class 2604 OID 46165)
-- Name: methodid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sys_methods ALTER COLUMN methodid SET DEFAULT nextval('sys_methods_methodid_seq'::regclass);


--
-- TOC entry 2045 (class 2604 OID 46166)
-- Name: objectpermissionid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sys_objectpermissions ALTER COLUMN objectpermissionid SET DEFAULT nextval('sys_objectpermissions_objectpermissionid_seq'::regclass);


--
-- TOC entry 2046 (class 2604 OID 46167)
-- Name: objectid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sys_objects ALTER COLUMN objectid SET DEFAULT nextval('sys_objects_objectid_seq'::regclass);


--
-- TOC entry 2048 (class 2604 OID 46168)
-- Name: permissionid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sys_permissions ALTER COLUMN permissionid SET DEFAULT nextval('sys_permissions_permissionid_seq'::regclass);


--
-- TOC entry 2049 (class 2604 OID 46169)
-- Name: rolepermissionid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sys_rolepermissions ALTER COLUMN rolepermissionid SET DEFAULT nextval('sys_rolepermissions_rolepermissionid_seq'::regclass);


--
-- TOC entry 2051 (class 2604 OID 46170)
-- Name: roleid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sys_roles ALTER COLUMN roleid SET DEFAULT nextval('sys_roles_roleid_seq'::regclass);


--
-- TOC entry 2052 (class 2604 OID 46171)
-- Name: sessionid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sys_session ALTER COLUMN sessionid SET DEFAULT nextval('sys_session_sessionid_seq'::regclass);


--
-- TOC entry 2053 (class 2604 OID 46172)
-- Name: userroleid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sys_userroles ALTER COLUMN userroleid SET DEFAULT nextval('sys_userroles_userroleid_seq'::regclass);


--
-- TOC entry 2059 (class 2604 OID 46173)
-- Name: userid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sys_users ALTER COLUMN userid SET DEFAULT nextval('sys_users_userid_seq'::regclass);


--
-- TOC entry 2251 (class 0 OID 45969)
-- Dependencies: 171
-- Data for Name: app_berkas; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2353 (class 0 OID 0)
-- Dependencies: 172
-- Name: app_berkas_berkas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('app_berkas_berkas_id_seq', 1, false);


--
-- TOC entry 2253 (class 0 OID 45977)
-- Dependencies: 173
-- Data for Name: app_bussines; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO app_bussines (userid, bussines_role_id, bussines_name, budget_alocation, profit_sharing, bussinesid, bussines_location, bussines_description) VALUES (131, 2, 'ekhashop', 2000000, 1.5, 64, 'kesesi', '<p>jual beli baju,dan fession sehari hari</p>
');
INSERT INTO app_bussines (userid, bussines_role_id, bussines_name, budget_alocation, profit_sharing, bussinesid, bussines_location, bussines_description) VALUES (131, 2, 'Mie ayam', 100000000, 1.5, 65, 'Jakarta', '<p>Bla bla bla</p>
');
INSERT INTO app_bussines (userid, bussines_role_id, bussines_name, budget_alocation, profit_sharing, bussinesid, bussines_location, bussines_description) VALUES (128, 1, 'cafetaria in bandung', 10000000, 0.5, 35, 'pemalang jawa tengah', NULL);
INSERT INTO app_bussines (userid, bussines_role_id, bussines_name, budget_alocation, profit_sharing, bussinesid, bussines_location, bussines_description) VALUES (128, 1, 'bisnis futsal', 1000000, 0.5, 1, 'batang jawa tengah', NULL);
INSERT INTO app_bussines (userid, bussines_role_id, bussines_name, budget_alocation, profit_sharing, bussinesid, bussines_location, bussines_description) VALUES (128, 1, 'rumah makan ikan bakar', 40000, 2, 60, 'kajen', NULL);
INSERT INTO app_bussines (userid, bussines_role_id, bussines_name, budget_alocation, profit_sharing, bussinesid, bussines_location, bussines_description) VALUES (128, 1, 'lapangan futsal dipasar kesesi', 20000000, 1, 61, 'kesesi pekalngan', '<p>test</p>
');
INSERT INTO app_bussines (userid, bussines_role_id, bussines_name, budget_alocation, profit_sharing, bussinesid, bussines_location, bussines_description) VALUES (128, 2, 'bussiness"Street', 2000000, 2, 62, 'bandung indonesia', NULL);
INSERT INTO app_bussines (userid, bussines_role_id, bussines_name, budget_alocation, profit_sharing, bussinesid, bussines_location, bussines_description) VALUES (128, 2, 'tambak ikan bandeng', 4000000, 1, 63, 'pantai batang', NULL);
INSERT INTO app_bussines (userid, bussines_role_id, bussines_name, budget_alocation, profit_sharing, bussinesid, bussines_location, bussines_description) VALUES (128, 2, 'Rumah Makan Masakan Padang', 20000000, 0, 66, 'Pekalongan Jawa tengah', '<p>rumah makan masakan padang &nbsp;akan menjual aneka masakan padang dan sudah banyak peminatnya terutama dikota pekalongan xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx xxxxxx x x x xxxxxxxxx</p>

<p>&nbsp;</p>
');


--
-- TOC entry 2354 (class 0 OID 0)
-- Dependencies: 175
-- Name: app_bussines-role_bussines_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"app_bussines-role_bussines_role_id_seq"', 1, true);


--
-- TOC entry 2355 (class 0 OID 0)
-- Dependencies: 218
-- Name: app_bussines_bussinesid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('app_bussines_bussinesid_seq', 66, true);


--
-- TOC entry 2356 (class 0 OID 0)
-- Dependencies: 228
-- Name: app_bussines_contract_bussines_contract_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('app_bussines_contract_bussines_contract_id_seq', 1, false);


--
-- TOC entry 2309 (class 0 OID 70637)
-- Dependencies: 229
-- Data for Name: app_bussines_latter; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2254 (class 0 OID 45980)
-- Dependencies: 174
-- Data for Name: app_bussines_role; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO app_bussines_role (bussines_role_id, bussines_role_name) VALUES (1, 'investor');
INSERT INTO app_bussines_role (bussines_role_id, bussines_role_name) VALUES (2, 'pencari modal');


--
-- TOC entry 2357 (class 0 OID 0)
-- Dependencies: 176
-- Name: app_bussines_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('app_bussines_user_id_seq', 1, false);


--
-- TOC entry 2257 (class 0 OID 45987)
-- Dependencies: 177
-- Data for Name: app_email; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO app_email (id, email, kategori, subkategori, sourceid, data, controlid, status, subject) VALUES (1, 'ekhazuyyin@gmail.com', 'layanan', '-', 2, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Notification email template</title>
</head>

<body bgcolor="#8d8e90">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#8d8e90">
  <tr>
    <td><table width="600" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="61"><a href= "http://yourlink" target="_blank"><img src="https://brussel.ekbri.id/assets/images/email/garuda.png" width="45" border="0" alt="" style="margin-left: 10px"/></a></td>
                <td width="130" >
					<span style="font-family: ''Open Sans''; font-size:12px; font-weight:900; letter-spacing: 0.8px">KEDUTAAN BESAR</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; font-weight:900">REPUBLIK INDONESIA</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; letter-spacing: 0.6px">DI BRUSSELS, BELGIA</span>
				</td>
				
                <td width="407"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
						<td height="46" align="right" valign="middle">
						</td>
                    </tr>
                    <tr>
                      <td height="30"><img src="https://brussel.ekbri.id/assets/images/email/line1.png" width="405" height="30" border="0" alt=""/></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td align="center">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>
          <table width="100%" border="0" cellspacing="0" cellpadding="0"
             style="font-family: ''Open Sans''">
              <tr>
                <td width="10%">&nbsp;</td>
                <td width="80%" align="left" valign="top">
				WNI yang terhormat,<br><br>

Email anda ekhazuyyin@gmail.com didaftarkan dalam sistem eKBRI atas nama soleha. <br><br>  
Bila anda pemilik email tersebut, untuk melanjutkan proses registrasi ini 
silahkan melakukan konfirmasi dengan mengikuti link berikut ini  
http://localhost/wikitani_frontend/index.php/confirmation/33d667e85f2c5745646d5174fd811325<br><br>
Bila anda bukan pemilik email ini, anda tidak perlu melakukan apa-apa. <br><br>
Terima kasih.<br><br>
Hormat kami,<br>
KBRI Brussels
				</td>
                <td width="10%">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><img style="margin-left: 3px" src="https://brussel.ekbri.id/assets/images/email/line2.png" width="594" height="10" style="display:block" border="0" alt=""/></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:12px">
		  <strong>KEDUTAAN BESAR REPUBLIK INDONESIA di BRUSSELS, BELGIA</span></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:8px">
		  <strong>
        Boulevard de la Woluwe 38, 1200 Brussels, Belgium | Telepon: (+32) 2775 0120, 2779 0915 |
		<a href="mailto:kbri.brussel@skynet.be" style="color:#010203; text-decoration:none">kbri.brussel@skynet.be</a>
		</strong</span></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
', NULL, 0, 'Registrasi E-KBRI');
INSERT INTO app_email (id, email, kategori, subkategori, sourceid, data, controlid, status, subject) VALUES (2, 'alimin1313@gmail.com', 'layanan', '-', 3, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Notification email template</title>
</head>

<body bgcolor="#8d8e90">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#8d8e90">
  <tr>
    <td><table width="600" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="61"><a href= "http://yourlink" target="_blank"><img src="https://brussel.ekbri.id/assets/images/email/garuda.png" width="45" border="0" alt="" style="margin-left: 10px"/></a></td>
                <td width="130" >
					<span style="font-family: ''Open Sans''; font-size:12px; font-weight:900; letter-spacing: 0.8px">KEDUTAAN BESAR</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; font-weight:900">REPUBLIK INDONESIA</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; letter-spacing: 0.6px">DI BRUSSELS, BELGIA</span>
				</td>
				
                <td width="407"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
						<td height="46" align="right" valign="middle">
						</td>
                    </tr>
                    <tr>
                      <td height="30"><img src="https://brussel.ekbri.id/assets/images/email/line1.png" width="405" height="30" border="0" alt=""/></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td align="center">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>
          <table width="100%" border="0" cellspacing="0" cellpadding="0"
             style="font-family: ''Open Sans''">
              <tr>
                <td width="10%">&nbsp;</td>
                <td width="80%" align="left" valign="top">
				WNI yang terhormat,<br><br>

Email anda alimin1313@gmail.com didaftarkan dalam sistem eKBRI atas nama alimin. <br><br>  
Bila anda pemilik email tersebut, untuk melanjutkan proses registrasi ini 
silahkan melakukan konfirmasi dengan mengikuti link berikut ini  
http://localhost/wikitani_frontend/index.php/confirmation/f436372fb1ca829cffc6be46b5e4db96<br><br>
Bila anda bukan pemilik email ini, anda tidak perlu melakukan apa-apa. <br><br>
Terima kasih.<br><br>
Hormat kami,<br>
KBRI Brussels
				</td>
                <td width="10%">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><img style="margin-left: 3px" src="https://brussel.ekbri.id/assets/images/email/line2.png" width="594" height="10" style="display:block" border="0" alt=""/></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:12px">
		  <strong>KEDUTAAN BESAR REPUBLIK INDONESIA di BRUSSELS, BELGIA</span></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:8px">
		  <strong>
        Boulevard de la Woluwe 38, 1200 Brussels, Belgium | Telepon: (+32) 2775 0120, 2779 0915 |
		<a href="mailto:kbri.brussel@skynet.be" style="color:#010203; text-decoration:none">kbri.brussel@skynet.be</a>
		</strong</span></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
', NULL, 0, 'Registrasi E-KBRI');
INSERT INTO app_email (id, email, kategori, subkategori, sourceid, data, controlid, status, subject) VALUES (3, 'alimin1313@gmail.com', 'layanan', '-', 3, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Notification email template</title>
</head>

<body bgcolor="#8d8e90">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#8d8e90">
  <tr>
    <td><table width="600" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="61"><a href= "http://yourlink" target="_blank"><img src="https://brussel.ekbri.id/assets/images/email/garuda.png" width="45" border="0" alt="" style="margin-left: 10px"/></a></td>
                <td width="130" >
					<span style="font-family: ''Open Sans''; font-size:12px; font-weight:900; letter-spacing: 0.8px">KEDUTAAN BESAR</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; font-weight:900">REPUBLIK INDONESIA</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; letter-spacing: 0.6px">DI BRUSSELS, BELGIA</span>
				</td>
				
                <td width="407"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
						<td height="46" align="right" valign="middle">
						</td>
                    </tr>
                    <tr>
                      <td height="30"><img src="https://brussel.ekbri.id/assets/images/email/line1.png" width="405" height="30" border="0" alt=""/></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td align="center">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>
          <table width="100%" border="0" cellspacing="0" cellpadding="0"
             style="font-family: ''Open Sans''">
              <tr>
                <td width="10%">&nbsp;</td>
                <td width="80%" align="left" valign="top">
				WNI yang terhormat,<br><br>

Email anda alimin1313@gmail.com didaftarkan dalam sistem eKBRI atas nama alimin. <br><br>  
Bila anda pemilik email tersebut, untuk melanjutkan proses registrasi ini 
silahkan melakukan konfirmasi dengan mengikuti link berikut ini  
http://localhost/wikitani_frontend/index.php/confirmation/f436372fb1ca829cffc6be46b5e4db96<br><br>
Bila anda bukan pemilik email ini, anda tidak perlu melakukan apa-apa. <br><br>
Terima kasih.<br><br>
Hormat kami,<br>
KBRI Brussels
				</td>
                <td width="10%">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><img style="margin-left: 3px" src="https://brussel.ekbri.id/assets/images/email/line2.png" width="594" height="10" style="display:block" border="0" alt=""/></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:12px">
		  <strong>KEDUTAAN BESAR REPUBLIK INDONESIA di BRUSSELS, BELGIA</span></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:8px">
		  <strong>
        Boulevard de la Woluwe 38, 1200 Brussels, Belgium | Telepon: (+32) 2775 0120, 2779 0915 |
		<a href="mailto:kbri.brussel@skynet.be" style="color:#010203; text-decoration:none">kbri.brussel@skynet.be</a>
		</strong</span></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
', NULL, 0, 'Registrasi E-KBRI');
INSERT INTO app_email (id, email, kategori, subkategori, sourceid, data, controlid, status, subject) VALUES (4, 'alimin1313@gmail.com', 'layanan', '-', 4, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Notification email template</title>
</head>

<body bgcolor="#8d8e90">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#8d8e90">
  <tr>
    <td><table width="600" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="61"><a href= "http://yourlink" target="_blank"><img src="https://brussel.ekbri.id/assets/images/email/garuda.png" width="45" border="0" alt="" style="margin-left: 10px"/></a></td>
                <td width="130" >
					<span style="font-family: ''Open Sans''; font-size:12px; font-weight:900; letter-spacing: 0.8px">KEDUTAAN BESAR</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; font-weight:900">REPUBLIK INDONESIA</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; letter-spacing: 0.6px">DI BRUSSELS, BELGIA</span>
				</td>
				
                <td width="407"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
						<td height="46" align="right" valign="middle">
						</td>
                    </tr>
                    <tr>
                      <td height="30"><img src="https://brussel.ekbri.id/assets/images/email/line1.png" width="405" height="30" border="0" alt=""/></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td align="center">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>
          <table width="100%" border="0" cellspacing="0" cellpadding="0"
             style="font-family: ''Open Sans''">
              <tr>
                <td width="10%">&nbsp;</td>
                <td width="80%" align="left" valign="top">
				WNI yang terhormat,<br><br>

Email anda alimin1313@gmail.com didaftarkan dalam sistem eKBRI atas nama alimin. <br><br>  
Bila anda pemilik email tersebut, untuk melanjutkan proses registrasi ini 
silahkan melakukan konfirmasi dengan mengikuti link berikut ini  
http://localhost/wikitani_frontend/index.php/confirmation/7b08dcdbfae108b5e56ed3a4e4af06f8<br><br>
Bila anda bukan pemilik email ini, anda tidak perlu melakukan apa-apa. <br><br>
Terima kasih.<br><br>
Hormat kami,<br>
KBRI Brussels
				</td>
                <td width="10%">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><img style="margin-left: 3px" src="https://brussel.ekbri.id/assets/images/email/line2.png" width="594" height="10" style="display:block" border="0" alt=""/></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:12px">
		  <strong>KEDUTAAN BESAR REPUBLIK INDONESIA di BRUSSELS, BELGIA</span></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:8px">
		  <strong>
        Boulevard de la Woluwe 38, 1200 Brussels, Belgium | Telepon: (+32) 2775 0120, 2779 0915 |
		<a href="mailto:kbri.brussel@skynet.be" style="color:#010203; text-decoration:none">kbri.brussel@skynet.be</a>
		</strong</span></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
', NULL, 0, 'Registrasi E-KBRI');
INSERT INTO app_email (id, email, kategori, subkategori, sourceid, data, controlid, status, subject) VALUES (5, 'ujang@gmail.com', 'layanan', '-', 5, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Notification email template</title>
</head>

<body bgcolor="#8d8e90">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#8d8e90">
  <tr>
    <td><table width="600" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="61"><a href= "http://yourlink" target="_blank"><img src="https://brussel.ekbri.id/assets/images/email/garuda.png" width="45" border="0" alt="" style="margin-left: 10px"/></a></td>
                <td width="130" >
					<span style="font-family: ''Open Sans''; font-size:12px; font-weight:900; letter-spacing: 0.8px">KEDUTAAN BESAR</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; font-weight:900">REPUBLIK INDONESIA</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; letter-spacing: 0.6px">DI BRUSSELS, BELGIA</span>
				</td>
				
                <td width="407"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
						<td height="46" align="right" valign="middle">
						</td>
                    </tr>
                    <tr>
                      <td height="30"><img src="https://brussel.ekbri.id/assets/images/email/line1.png" width="405" height="30" border="0" alt=""/></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td align="center">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>
          <table width="100%" border="0" cellspacing="0" cellpadding="0"
             style="font-family: ''Open Sans''">
              <tr>
                <td width="10%">&nbsp;</td>
                <td width="80%" align="left" valign="top">
				WNI yang terhormat,<br><br>

Email anda ujang@gmail.com didaftarkan dalam sistem eKBRI atas nama ujang. <br><br>  
Bila anda pemilik email tersebut, untuk melanjutkan proses registrasi ini 
silahkan melakukan konfirmasi dengan mengikuti link berikut ini  
http://localhost/wikitani_frontend/index.php/confirmation/076bcf266832ccdda9c936dc16a3ed63<br><br>
Bila anda bukan pemilik email ini, anda tidak perlu melakukan apa-apa. <br><br>
Terima kasih.<br><br>
Hormat kami,<br>
KBRI Brussels
				</td>
                <td width="10%">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><img style="margin-left: 3px" src="https://brussel.ekbri.id/assets/images/email/line2.png" width="594" height="10" style="display:block" border="0" alt=""/></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:12px">
		  <strong>KEDUTAAN BESAR REPUBLIK INDONESIA di BRUSSELS, BELGIA</span></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:8px">
		  <strong>
        Boulevard de la Woluwe 38, 1200 Brussels, Belgium | Telepon: (+32) 2775 0120, 2779 0915 |
		<a href="mailto:kbri.brussel@skynet.be" style="color:#010203; text-decoration:none">kbri.brussel@skynet.be</a>
		</strong</span></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
', NULL, 0, 'Registrasi E-KBRI');
INSERT INTO app_email (id, email, kategori, subkategori, sourceid, data, controlid, status, subject) VALUES (6, 'comble@gmail.com', 'layanan', '-', 6, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Notification email template</title>
</head>

<body bgcolor="#8d8e90">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#8d8e90">
  <tr>
    <td><table width="600" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="61"><a href= "http://yourlink" target="_blank"><img src="https://brussel.ekbri.id/assets/images/email/garuda.png" width="45" border="0" alt="" style="margin-left: 10px"/></a></td>
                <td width="130" >
					<span style="font-family: ''Open Sans''; font-size:12px; font-weight:900; letter-spacing: 0.8px">KEDUTAAN BESAR</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; font-weight:900">REPUBLIK INDONESIA</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; letter-spacing: 0.6px">DI BRUSSELS, BELGIA</span>
				</td>
				
                <td width="407"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
						<td height="46" align="right" valign="middle">
						</td>
                    </tr>
                    <tr>
                      <td height="30"><img src="https://brussel.ekbri.id/assets/images/email/line1.png" width="405" height="30" border="0" alt=""/></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td align="center">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>
          <table width="100%" border="0" cellspacing="0" cellpadding="0"
             style="font-family: ''Open Sans''">
              <tr>
                <td width="10%">&nbsp;</td>
                <td width="80%" align="left" valign="top">
				WNI yang terhormat,<br><br>

Email anda comble@gmail.com didaftarkan dalam sistem eKBRI atas nama comble. <br><br>  
Bila anda pemilik email tersebut, untuk melanjutkan proses registrasi ini 
silahkan melakukan konfirmasi dengan mengikuti link berikut ini  
http://localhost/wikitani_frontend/index.php/confirmation/dbce4f188b93857a3fe39e04791e8a34<br><br>
Bila anda bukan pemilik email ini, anda tidak perlu melakukan apa-apa. <br><br>
Terima kasih.<br><br>
Hormat kami,<br>
KBRI Brussels
				</td>
                <td width="10%">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><img style="margin-left: 3px" src="https://brussel.ekbri.id/assets/images/email/line2.png" width="594" height="10" style="display:block" border="0" alt=""/></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:12px">
		  <strong>KEDUTAAN BESAR REPUBLIK INDONESIA di BRUSSELS, BELGIA</span></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:8px">
		  <strong>
        Boulevard de la Woluwe 38, 1200 Brussels, Belgium | Telepon: (+32) 2775 0120, 2779 0915 |
		<a href="mailto:kbri.brussel@skynet.be" style="color:#010203; text-decoration:none">kbri.brussel@skynet.be</a>
		</strong</span></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
', NULL, 0, 'Registrasi E-KBRI');
INSERT INTO app_email (id, email, kategori, subkategori, sourceid, data, controlid, status, subject) VALUES (7, 'alimin1313@gmail.com', 'layanan', '-', 7, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Notification email template</title>
</head>

<body bgcolor="#8d8e90">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#8d8e90">
  <tr>
    <td><table width="600" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="61"><a href= "http://yourlink" target="_blank"><img src="https://brussel.ekbri.id/assets/images/email/garuda.png" width="45" border="0" alt="" style="margin-left: 10px"/></a></td>
                <td width="130" >
					<span style="font-family: ''Open Sans''; font-size:12px; font-weight:900; letter-spacing: 0.8px">KEDUTAAN BESAR</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; font-weight:900">REPUBLIK INDONESIA</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; letter-spacing: 0.6px">DI BRUSSELS, BELGIA</span>
				</td>
				
                <td width="407"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
						<td height="46" align="right" valign="middle">
						</td>
                    </tr>
                    <tr>
                      <td height="30"><img src="https://brussel.ekbri.id/assets/images/email/line1.png" width="405" height="30" border="0" alt=""/></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td align="center">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>
          <table width="100%" border="0" cellspacing="0" cellpadding="0"
             style="font-family: ''Open Sans''">
              <tr>
                <td width="10%">&nbsp;</td>
                <td width="80%" align="left" valign="top">
				WNI yang terhormat,<br><br>

Email anda alimin1313@gmail.com didaftarkan dalam sistem eKBRI atas nama alimin. <br><br>  
Bila anda pemilik email tersebut, untuk melanjutkan proses registrasi ini 
silahkan melakukan konfirmasi dengan mengikuti link berikut ini  
http://localhost/wikitani_frontend/index.php/confirmation/e3f7277afe848a1ebaae61f7a6a77c18<br><br>
Bila anda bukan pemilik email ini, anda tidak perlu melakukan apa-apa. <br><br>
Terima kasih.<br><br>
Hormat kami,<br>
KBRI Brussels
				</td>
                <td width="10%">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><img style="margin-left: 3px" src="https://brussel.ekbri.id/assets/images/email/line2.png" width="594" height="10" style="display:block" border="0" alt=""/></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:12px">
		  <strong>KEDUTAAN BESAR REPUBLIK INDONESIA di BRUSSELS, BELGIA</span></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:8px">
		  <strong>
        Boulevard de la Woluwe 38, 1200 Brussels, Belgium | Telepon: (+32) 2775 0120, 2779 0915 |
		<a href="mailto:kbri.brussel@skynet.be" style="color:#010203; text-decoration:none">kbri.brussel@skynet.be</a>
		</strong</span></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
', NULL, 0, 'Registrasi E-KBRI');
INSERT INTO app_email (id, email, kategori, subkategori, sourceid, data, controlid, status, subject) VALUES (8, 'alimin1313@gmail.com', 'layanan', '-', 9, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Notification email template</title>
</head>

<body bgcolor="#8d8e90">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#8d8e90">
  <tr>
    <td><table width="600" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="61"><a href= "http://yourlink" target="_blank"><img src="https://brussel.ekbri.id/assets/images/email/garuda.png" width="45" border="0" alt="" style="margin-left: 10px"/></a></td>
                <td width="130" >
					<span style="font-family: ''Open Sans''; font-size:12px; font-weight:900; letter-spacing: 0.8px">KEDUTAAN BESAR</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; font-weight:900">REPUBLIK INDONESIA</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; letter-spacing: 0.6px">DI BRUSSELS, BELGIA</span>
				</td>
				
                <td width="407"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
						<td height="46" align="right" valign="middle">
						</td>
                    </tr>
                    <tr>
                      <td height="30"><img src="https://brussel.ekbri.id/assets/images/email/line1.png" width="405" height="30" border="0" alt=""/></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td align="center">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>
          <table width="100%" border="0" cellspacing="0" cellpadding="0"
             style="font-family: ''Open Sans''">
              <tr>
                <td width="10%">&nbsp;</td>
                <td width="80%" align="left" valign="top">
				WNI yang terhormat,<br><br>

Email anda alimin1313@gmail.com didaftarkan dalam sistem eKBRI atas nama alimin. <br><br>  
Bila anda pemilik email tersebut, untuk melanjutkan proses registrasi ini 
silahkan melakukan konfirmasi dengan mengikuti link berikut ini  
http://localhost/wikitani_frontend/index.php/confirmation/89195754e66be6d402353605c52d5757<br><br>
Bila anda bukan pemilik email ini, anda tidak perlu melakukan apa-apa. <br><br>
Terima kasih.<br><br>
Hormat kami,<br>
KBRI Brussels
				</td>
                <td width="10%">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><img style="margin-left: 3px" src="https://brussel.ekbri.id/assets/images/email/line2.png" width="594" height="10" style="display:block" border="0" alt=""/></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:12px">
		  <strong>KEDUTAAN BESAR REPUBLIK INDONESIA di BRUSSELS, BELGIA</span></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:8px">
		  <strong>
        Boulevard de la Woluwe 38, 1200 Brussels, Belgium | Telepon: (+32) 2775 0120, 2779 0915 |
		<a href="mailto:kbri.brussel@skynet.be" style="color:#010203; text-decoration:none">kbri.brussel@skynet.be</a>
		</strong</span></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
', NULL, 0, 'Registrasi E-KBRI');
INSERT INTO app_email (id, email, kategori, subkategori, sourceid, data, controlid, status, subject) VALUES (9, 'alimin1313@gmail.com', 'layanan', '-', 11, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Notification email template</title>
</head>

<body bgcolor="#8d8e90">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#8d8e90">
  <tr>
    <td><table width="600" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="61"><a href= "http://yourlink" target="_blank"><img src="https://brussel.ekbri.id/assets/images/email/garuda.png" width="45" border="0" alt="" style="margin-left: 10px"/></a></td>
                <td width="130" >
					<span style="font-family: ''Open Sans''; font-size:12px; font-weight:900; letter-spacing: 0.8px">KEDUTAAN BESAR</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; font-weight:900">REPUBLIK INDONESIA</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; letter-spacing: 0.6px">DI BRUSSELS, BELGIA</span>
				</td>
				
                <td width="407"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
						<td height="46" align="right" valign="middle">
						</td>
                    </tr>
                    <tr>
                      <td height="30"><img src="https://brussel.ekbri.id/assets/images/email/line1.png" width="405" height="30" border="0" alt=""/></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td align="center">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>
          <table width="100%" border="0" cellspacing="0" cellpadding="0"
             style="font-family: ''Open Sans''">
              <tr>
                <td width="10%">&nbsp;</td>
                <td width="80%" align="left" valign="top">
				WNI yang terhormat,<br><br>

Email anda alimin1313@gmail.com didaftarkan dalam sistem eKBRI atas nama alimin. <br><br>  
Bila anda pemilik email tersebut, untuk melanjutkan proses registrasi ini 
silahkan melakukan konfirmasi dengan mengikuti link berikut ini  
http://localhost/wikitani_frontend/index.php/confirmation/56c8f781fa7d88f88e2c6d3896eeb1a9<br><br>
Bila anda bukan pemilik email ini, anda tidak perlu melakukan apa-apa. <br><br>
Terima kasih.<br><br>
Hormat kami,<br>
KBRI Brussels
				</td>
                <td width="10%">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><img style="margin-left: 3px" src="https://brussel.ekbri.id/assets/images/email/line2.png" width="594" height="10" style="display:block" border="0" alt=""/></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:12px">
		  <strong>KEDUTAAN BESAR REPUBLIK INDONESIA di BRUSSELS, BELGIA</span></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:8px">
		  <strong>
        Boulevard de la Woluwe 38, 1200 Brussels, Belgium | Telepon: (+32) 2775 0120, 2779 0915 |
		<a href="mailto:kbri.brussel@skynet.be" style="color:#010203; text-decoration:none">kbri.brussel@skynet.be</a>
		</strong</span></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
', NULL, 0, 'Registrasi E-KBRI');
INSERT INTO app_email (id, email, kategori, subkategori, sourceid, data, controlid, status, subject) VALUES (10, 'alimin1313@gmail.com', 'layanan', '-', 12, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Notification email template</title>
</head>

<body bgcolor="#8d8e90">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#8d8e90">
  <tr>
    <td><table width="600" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="61"><a href= "http://yourlink" target="_blank"><img src="https://brussel.ekbri.id/assets/images/email/garuda.png" width="45" border="0" alt="" style="margin-left: 10px"/></a></td>
                <td width="130" >
					<span style="font-family: ''Open Sans''; font-size:12px; font-weight:900; letter-spacing: 0.8px">KEDUTAAN BESAR</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; font-weight:900">REPUBLIK INDONESIA</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; letter-spacing: 0.6px">DI BRUSSELS, BELGIA</span>
				</td>
				
                <td width="407"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
						<td height="46" align="right" valign="middle">
						</td>
                    </tr>
                    <tr>
                      <td height="30"><img src="https://brussel.ekbri.id/assets/images/email/line1.png" width="405" height="30" border="0" alt=""/></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td align="center">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>
          <table width="100%" border="0" cellspacing="0" cellpadding="0"
             style="font-family: ''Open Sans''">
              <tr>
                <td width="10%">&nbsp;</td>
                <td width="80%" align="left" valign="top">
				WNI yang terhormat,<br><br>

Email anda alimin1313@gmail.com didaftarkan dalam sistem eKBRI atas nama alimin. <br><br>  
Bila anda pemilik email tersebut, untuk melanjutkan proses registrasi ini 
silahkan melakukan konfirmasi dengan mengikuti link berikut ini  
http://localhost/wikitani_frontend/index.php/confirmation/0fb37e7f96d8ec84ef68920557759002<br><br>
Bila anda bukan pemilik email ini, anda tidak perlu melakukan apa-apa. <br><br>
Terima kasih.<br><br>
Hormat kami,<br>
KBRI Brussels
				</td>
                <td width="10%">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><img style="margin-left: 3px" src="https://brussel.ekbri.id/assets/images/email/line2.png" width="594" height="10" style="display:block" border="0" alt=""/></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:12px">
		  <strong>KEDUTAAN BESAR REPUBLIK INDONESIA di BRUSSELS, BELGIA</span></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:8px">
		  <strong>
        Boulevard de la Woluwe 38, 1200 Brussels, Belgium | Telepon: (+32) 2775 0120, 2779 0915 |
		<a href="mailto:kbri.brussel@skynet.be" style="color:#010203; text-decoration:none">kbri.brussel@skynet.be</a>
		</strong</span></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
', NULL, 0, 'Registrasi E-KBRI');
INSERT INTO app_email (id, email, kategori, subkategori, sourceid, data, controlid, status, subject) VALUES (11, 'alimin1313@gmail.com', 'layanan', '-', 13, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Notification email template</title>
</head>

<body bgcolor="#8d8e90">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#8d8e90">
  <tr>
    <td><table width="600" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="61"><a href= "http://yourlink" target="_blank"><img src="https://brussel.ekbri.id/assets/images/email/garuda.png" width="45" border="0" alt="" style="margin-left: 10px"/></a></td>
                <td width="130" >
					<span style="font-family: ''Open Sans''; font-size:12px; font-weight:900; letter-spacing: 0.8px">KEDUTAAN BESAR</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; font-weight:900">REPUBLIK INDONESIA</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; letter-spacing: 0.6px">DI BRUSSELS, BELGIA</span>
				</td>
				
                <td width="407"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
						<td height="46" align="right" valign="middle">
						</td>
                    </tr>
                    <tr>
                      <td height="30"><img src="https://brussel.ekbri.id/assets/images/email/line1.png" width="405" height="30" border="0" alt=""/></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td align="center">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>
          <table width="100%" border="0" cellspacing="0" cellpadding="0"
             style="font-family: ''Open Sans''">
              <tr>
                <td width="10%">&nbsp;</td>
                <td width="80%" align="left" valign="top">
				WNI yang terhormat,<br><br>

Email anda alimin1313@gmail.com didaftarkan dalam sistem eKBRI atas nama alimin. <br><br>  
Bila anda pemilik email tersebut, untuk melanjutkan proses registrasi ini 
silahkan melakukan konfirmasi dengan mengikuti link berikut ini  
http://localhost/wikitani_frontend/index.php/confirmation/dd86e8ad3bc2762626782dfe5dafb261<br><br>
Bila anda bukan pemilik email ini, anda tidak perlu melakukan apa-apa. <br><br>
Terima kasih.<br><br>
Hormat kami,<br>
KBRI Brussels
				</td>
                <td width="10%">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><img style="margin-left: 3px" src="https://brussel.ekbri.id/assets/images/email/line2.png" width="594" height="10" style="display:block" border="0" alt=""/></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:12px">
		  <strong>KEDUTAAN BESAR REPUBLIK INDONESIA di BRUSSELS, BELGIA</span></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:8px">
		  <strong>
        Boulevard de la Woluwe 38, 1200 Brussels, Belgium | Telepon: (+32) 2775 0120, 2779 0915 |
		<a href="mailto:kbri.brussel@skynet.be" style="color:#010203; text-decoration:none">kbri.brussel@skynet.be</a>
		</strong</span></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
', NULL, 0, 'Registrasi E-KBRI');
INSERT INTO app_email (id, email, kategori, subkategori, sourceid, data, controlid, status, subject) VALUES (12, 'alimin1313@gmail.com', 'layanan', '-', 14, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Notification email template</title>
</head>

<body bgcolor="#8d8e90">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#8d8e90">
  <tr>
    <td><table width="600" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="61"><a href= "http://yourlink" target="_blank"><img src="https://brussel.ekbri.id/assets/images/email/garuda.png" width="45" border="0" alt="" style="margin-left: 10px"/></a></td>
                <td width="130" >
					<span style="font-family: ''Open Sans''; font-size:12px; font-weight:900; letter-spacing: 0.8px">KEDUTAAN BESAR</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; font-weight:900">REPUBLIK INDONESIA</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; letter-spacing: 0.6px">DI BRUSSELS, BELGIA</span>
				</td>
				
                <td width="407"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
						<td height="46" align="right" valign="middle">
						</td>
                    </tr>
                    <tr>
                      <td height="30"><img src="https://brussel.ekbri.id/assets/images/email/line1.png" width="405" height="30" border="0" alt=""/></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td align="center">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>
          <table width="100%" border="0" cellspacing="0" cellpadding="0"
             style="font-family: ''Open Sans''">
              <tr>
                <td width="10%">&nbsp;</td>
                <td width="80%" align="left" valign="top">
				WNI yang terhormat,<br><br>

Email anda alimin1313@gmail.com didaftarkan dalam sistem eKBRI atas nama alimin. <br><br>  
Bila anda pemilik email tersebut, untuk melanjutkan proses registrasi ini 
silahkan melakukan konfirmasi dengan mengikuti link berikut ini  
http://localhost/wikitani_frontend/index.php/confirmation/0a01e42a4676e1afd72685cb1f6d14e2<br><br>
Bila anda bukan pemilik email ini, anda tidak perlu melakukan apa-apa. <br><br>
Terima kasih.<br><br>
Hormat kami,<br>
KBRI Brussels
				</td>
                <td width="10%">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><img style="margin-left: 3px" src="https://brussel.ekbri.id/assets/images/email/line2.png" width="594" height="10" style="display:block" border="0" alt=""/></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:12px">
		  <strong>KEDUTAAN BESAR REPUBLIK INDONESIA di BRUSSELS, BELGIA</span></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:8px">
		  <strong>
        Boulevard de la Woluwe 38, 1200 Brussels, Belgium | Telepon: (+32) 2775 0120, 2779 0915 |
		<a href="mailto:kbri.brussel@skynet.be" style="color:#010203; text-decoration:none">kbri.brussel@skynet.be</a>
		</strong</span></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
', NULL, 0, 'Registrasi E-KBRI');
INSERT INTO app_email (id, email, kategori, subkategori, sourceid, data, controlid, status, subject) VALUES (13, 'alimin1313@gmail.com', 'layanan', '-', 15, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Notification email template</title>
</head>

<body bgcolor="#8d8e90">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#8d8e90">
  <tr>
    <td><table width="600" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="61"><a href= "http://yourlink" target="_blank"><img src="https://brussel.ekbri.id/assets/images/email/garuda.png" width="45" border="0" alt="" style="margin-left: 10px"/></a></td>
                <td width="130" >
					<span style="font-family: ''Open Sans''; font-size:12px; font-weight:900; letter-spacing: 0.8px">KEDUTAAN BESAR</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; font-weight:900">REPUBLIK INDONESIA</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; letter-spacing: 0.6px">DI BRUSSELS, BELGIA</span>
				</td>
				
                <td width="407"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
						<td height="46" align="right" valign="middle">
						</td>
                    </tr>
                    <tr>
                      <td height="30"><img src="https://brussel.ekbri.id/assets/images/email/line1.png" width="405" height="30" border="0" alt=""/></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td align="center">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>
          <table width="100%" border="0" cellspacing="0" cellpadding="0"
             style="font-family: ''Open Sans''">
              <tr>
                <td width="10%">&nbsp;</td>
                <td width="80%" align="left" valign="top">
				WNI yang terhormat,<br><br>

Email anda alimin1313@gmail.com didaftarkan dalam sistem eKBRI atas nama alimin. <br><br>  
Bila anda pemilik email tersebut, untuk melanjutkan proses registrasi ini 
silahkan melakukan konfirmasi dengan mengikuti link berikut ini  
http://localhost/wikitani_frontend/index.php/confirmation/d950219fdbfd5cc8beb1b120a3ae7dfa<br><br>
Bila anda bukan pemilik email ini, anda tidak perlu melakukan apa-apa. <br><br>
Terima kasih.<br><br>
Hormat kami,<br>
KBRI Brussels
				</td>
                <td width="10%">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><img style="margin-left: 3px" src="https://brussel.ekbri.id/assets/images/email/line2.png" width="594" height="10" style="display:block" border="0" alt=""/></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:12px">
		  <strong>KEDUTAAN BESAR REPUBLIK INDONESIA di BRUSSELS, BELGIA</span></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:8px">
		  <strong>
        Boulevard de la Woluwe 38, 1200 Brussels, Belgium | Telepon: (+32) 2775 0120, 2779 0915 |
		<a href="mailto:kbri.brussel@skynet.be" style="color:#010203; text-decoration:none">kbri.brussel@skynet.be</a>
		</strong</span></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
', NULL, 0, 'Registrasi E-KBRI');
INSERT INTO app_email (id, email, kategori, subkategori, sourceid, data, controlid, status, subject) VALUES (14, 'alimin1313@gmail.com', 'layanan', '-', 18, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Notification email template</title>
</head>

<body bgcolor="#8d8e90">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#8d8e90">
  <tr>
    <td><table width="600" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="61"><a href= "http://yourlink" target="_blank"><img src="https://brussel.ekbri.id/assets/images/email/garuda.png" width="45" border="0" alt="" style="margin-left: 10px"/></a></td>
                <td width="130" >
					<span style="font-family: ''Open Sans''; font-size:12px; font-weight:900; letter-spacing: 0.8px">KEDUTAAN BESAR</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; font-weight:900">REPUBLIK INDONESIA</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; letter-spacing: 0.6px">DI BRUSSELS, BELGIA</span>
				</td>
				
                <td width="407"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
						<td height="46" align="right" valign="middle">
						</td>
                    </tr>
                    <tr>
                      <td height="30"><img src="https://brussel.ekbri.id/assets/images/email/line1.png" width="405" height="30" border="0" alt=""/></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td align="center">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>
          <table width="100%" border="0" cellspacing="0" cellpadding="0"
             style="font-family: ''Open Sans''">
              <tr>
                <td width="10%">&nbsp;</td>
                <td width="80%" align="left" valign="top">
				WNI yang terhormat,<br><br>

Email anda alimin1313@gmail.com didaftarkan dalam sistem eKBRI atas nama alimin. <br><br>  
Bila anda pemilik email tersebut, untuk melanjutkan proses registrasi ini 
silahkan melakukan konfirmasi dengan mengikuti link berikut ini  
http://localhost/wikitani_frontend/index.php/confirmation/f04cd1767a9db82be098173b178b4063<br><br>
Bila anda bukan pemilik email ini, anda tidak perlu melakukan apa-apa. <br><br>
Terima kasih.<br><br>
Hormat kami,<br>
KBRI Brussels
				</td>
                <td width="10%">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><img style="margin-left: 3px" src="https://brussel.ekbri.id/assets/images/email/line2.png" width="594" height="10" style="display:block" border="0" alt=""/></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:12px">
		  <strong>KEDUTAAN BESAR REPUBLIK INDONESIA di BRUSSELS, BELGIA</span></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:8px">
		  <strong>
        Boulevard de la Woluwe 38, 1200 Brussels, Belgium | Telepon: (+32) 2775 0120, 2779 0915 |
		<a href="mailto:kbri.brussel@skynet.be" style="color:#010203; text-decoration:none">kbri.brussel@skynet.be</a>
		</strong</span></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
', NULL, 0, 'Registrasi E-KBRI');
INSERT INTO app_email (id, email, kategori, subkategori, sourceid, data, controlid, status, subject) VALUES (15, 'alimin1313@gmail.com', 'layanan', '-', 19, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Notification email template</title>
</head>

<body bgcolor="#8d8e90">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#8d8e90">
  <tr>
    <td><table width="600" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="61"><a href= "http://yourlink" target="_blank"><img src="https://brussel.ekbri.id/assets/images/email/garuda.png" width="45" border="0" alt="" style="margin-left: 10px"/></a></td>
                <td width="130" >
					<span style="font-family: ''Open Sans''; font-size:12px; font-weight:900; letter-spacing: 0.8px">KEDUTAAN BESAR</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; font-weight:900">REPUBLIK INDONESIA</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; letter-spacing: 0.6px">DI BRUSSELS, BELGIA</span>
				</td>
				
                <td width="407"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
						<td height="46" align="right" valign="middle">
						</td>
                    </tr>
                    <tr>
                      <td height="30"><img src="https://brussel.ekbri.id/assets/images/email/line1.png" width="405" height="30" border="0" alt=""/></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td align="center">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>
          <table width="100%" border="0" cellspacing="0" cellpadding="0"
             style="font-family: ''Open Sans''">
              <tr>
                <td width="10%">&nbsp;</td>
                <td width="80%" align="left" valign="top">
				WNI yang terhormat,<br><br>

Email anda alimin1313@gmail.com didaftarkan dalam sistem eKBRI atas nama alimin. <br><br>  
Bila anda pemilik email tersebut, untuk melanjutkan proses registrasi ini 
silahkan melakukan konfirmasi dengan mengikuti link berikut ini  
http://localhost/wikitani_frontend/index.php/confirmation/6b04a3e506eccfce694ecfba415906d1<br><br>
Bila anda bukan pemilik email ini, anda tidak perlu melakukan apa-apa. <br><br>
Terima kasih.<br><br>
Hormat kami,<br>
KBRI Brussels
				</td>
                <td width="10%">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><img style="margin-left: 3px" src="https://brussel.ekbri.id/assets/images/email/line2.png" width="594" height="10" style="display:block" border="0" alt=""/></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:12px">
		  <strong>KEDUTAAN BESAR REPUBLIK INDONESIA di BRUSSELS, BELGIA</span></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:8px">
		  <strong>
        Boulevard de la Woluwe 38, 1200 Brussels, Belgium | Telepon: (+32) 2775 0120, 2779 0915 |
		<a href="mailto:kbri.brussel@skynet.be" style="color:#010203; text-decoration:none">kbri.brussel@skynet.be</a>
		</strong</span></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
', NULL, 0, 'Registrasi E-KBRI');
INSERT INTO app_email (id, email, kategori, subkategori, sourceid, data, controlid, status, subject) VALUES (16, 'alimin1313@gmail.com', 'layanan', '-', 20, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Notification email template</title>
</head>

<body bgcolor="#8d8e90">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#8d8e90">
  <tr>
    <td><table width="600" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="61"><a href= "http://yourlink" target="_blank"><img src="https://brussel.ekbri.id/assets/images/email/garuda.png" width="45" border="0" alt="" style="margin-left: 10px"/></a></td>
                <td width="130" >
					<span style="font-family: ''Open Sans''; font-size:12px; font-weight:900; letter-spacing: 0.8px">KEDUTAAN BESAR</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; font-weight:900">REPUBLIK INDONESIA</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; letter-spacing: 0.6px">DI BRUSSELS, BELGIA</span>
				</td>
				
                <td width="407"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
						<td height="46" align="right" valign="middle">
						</td>
                    </tr>
                    <tr>
                      <td height="30"><img src="https://brussel.ekbri.id/assets/images/email/line1.png" width="405" height="30" border="0" alt=""/></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td align="center">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>
          <table width="100%" border="0" cellspacing="0" cellpadding="0"
             style="font-family: ''Open Sans''">
              <tr>
                <td width="10%">&nbsp;</td>
                <td width="80%" align="left" valign="top">
				WNI yang terhormat,<br><br>

Email anda alimin1313@gmail.com didaftarkan dalam sistem eKBRI atas nama alimin. <br><br>  
Bila anda pemilik email tersebut, untuk melanjutkan proses registrasi ini 
silahkan melakukan konfirmasi dengan mengikuti link berikut ini  
http://localhost/wikitani_frontend/index.php/confirmation/10dd394f16027b00db41d287ceea0f87<br><br>
Bila anda bukan pemilik email ini, anda tidak perlu melakukan apa-apa. <br><br>
Terima kasih.<br><br>
Hormat kami,<br>
KBRI Brussels
				</td>
                <td width="10%">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><img style="margin-left: 3px" src="https://brussel.ekbri.id/assets/images/email/line2.png" width="594" height="10" style="display:block" border="0" alt=""/></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:12px">
		  <strong>KEDUTAAN BESAR REPUBLIK INDONESIA di BRUSSELS, BELGIA</span></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:8px">
		  <strong>
        Boulevard de la Woluwe 38, 1200 Brussels, Belgium | Telepon: (+32) 2775 0120, 2779 0915 |
		<a href="mailto:kbri.brussel@skynet.be" style="color:#010203; text-decoration:none">kbri.brussel@skynet.be</a>
		</strong</span></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
', NULL, 0, 'Registrasi E-KBRI');
INSERT INTO app_email (id, email, kategori, subkategori, sourceid, data, controlid, status, subject) VALUES (17, 'alimin1313@gmail.com', 'layanan', '-', 21, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Notification email template</title>
</head>

<body bgcolor="#8d8e90">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#8d8e90">
  <tr>
    <td><table width="600" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="61"><a href= "http://yourlink" target="_blank"><img src="https://brussel.ekbri.id/assets/images/email/garuda.png" width="45" border="0" alt="" style="margin-left: 10px"/></a></td>
                <td width="130" >
					<span style="font-family: ''Open Sans''; font-size:12px; font-weight:900; letter-spacing: 0.8px">KEDUTAAN BESAR</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; font-weight:900">REPUBLIK INDONESIA</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; letter-spacing: 0.6px">DI BRUSSELS, BELGIA</span>
				</td>
				
                <td width="407"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
						<td height="46" align="right" valign="middle">
						</td>
                    </tr>
                    <tr>
                      <td height="30"><img src="https://brussel.ekbri.id/assets/images/email/line1.png" width="405" height="30" border="0" alt=""/></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td align="center">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>
          <table width="100%" border="0" cellspacing="0" cellpadding="0"
             style="font-family: ''Open Sans''">
              <tr>
                <td width="10%">&nbsp;</td>
                <td width="80%" align="left" valign="top">
				WNI yang terhormat,<br><br>

Email anda alimin1313@gmail.com didaftarkan dalam sistem eKBRI atas nama alimin. <br><br>  
Bila anda pemilik email tersebut, untuk melanjutkan proses registrasi ini 
silahkan melakukan konfirmasi dengan mengikuti link berikut ini  
http://localhost/wikitani_frontend/index.php/confirmation/bafeb92922a7f1be39785d108d93b122<br><br>
Bila anda bukan pemilik email ini, anda tidak perlu melakukan apa-apa. <br><br>
Terima kasih.<br><br>
Hormat kami,<br>
KBRI Brussels
				</td>
                <td width="10%">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><img style="margin-left: 3px" src="https://brussel.ekbri.id/assets/images/email/line2.png" width="594" height="10" style="display:block" border="0" alt=""/></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:12px">
		  <strong>KEDUTAAN BESAR REPUBLIK INDONESIA di BRUSSELS, BELGIA</span></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:8px">
		  <strong>
        Boulevard de la Woluwe 38, 1200 Brussels, Belgium | Telepon: (+32) 2775 0120, 2779 0915 |
		<a href="mailto:kbri.brussel@skynet.be" style="color:#010203; text-decoration:none">kbri.brussel@skynet.be</a>
		</strong</span></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
', NULL, 0, 'Registrasi E-KBRI');
INSERT INTO app_email (id, email, kategori, subkategori, sourceid, data, controlid, status, subject) VALUES (18, 'alimin1313@gmail.com', 'layanan', '-', 22, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Notification email template</title>
</head>

<body bgcolor="#8d8e90">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#8d8e90">
  <tr>
    <td><table width="600" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="61"><a href= "http://yourlink" target="_blank"><img src="https://brussel.ekbri.id/assets/images/email/garuda.png" width="45" border="0" alt="" style="margin-left: 10px"/></a></td>
                <td width="130" >
					<span style="font-family: ''Open Sans''; font-size:12px; font-weight:900; letter-spacing: 0.8px">KEDUTAAN BESAR</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; font-weight:900">REPUBLIK INDONESIA</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; letter-spacing: 0.6px">DI BRUSSELS, BELGIA</span>
				</td>
				
                <td width="407"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
						<td height="46" align="right" valign="middle">
						</td>
                    </tr>
                    <tr>
                      <td height="30"><img src="https://brussel.ekbri.id/assets/images/email/line1.png" width="405" height="30" border="0" alt=""/></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td align="center">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>
          <table width="100%" border="0" cellspacing="0" cellpadding="0"
             style="font-family: ''Open Sans''">
              <tr>
                <td width="10%">&nbsp;</td>
                <td width="80%" align="left" valign="top">
				WNI yang terhormat,<br><br>

Email anda alimin1313@gmail.com didaftarkan dalam sistem eKBRI atas nama alimin. <br><br>  
Bila anda pemilik email tersebut, untuk melanjutkan proses registrasi ini 
silahkan melakukan konfirmasi dengan mengikuti link berikut ini  
http://localhost/wikitani_frontend/index.php/confirmation/c26c56c1a6312afefa2a2ce80c938ed1<br><br>
Bila anda bukan pemilik email ini, anda tidak perlu melakukan apa-apa. <br><br>
Terima kasih.<br><br>
Hormat kami,<br>
KBRI Brussels
				</td>
                <td width="10%">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><img style="margin-left: 3px" src="https://brussel.ekbri.id/assets/images/email/line2.png" width="594" height="10" style="display:block" border="0" alt=""/></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:12px">
		  <strong>KEDUTAAN BESAR REPUBLIK INDONESIA di BRUSSELS, BELGIA</span></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:8px">
		  <strong>
        Boulevard de la Woluwe 38, 1200 Brussels, Belgium | Telepon: (+32) 2775 0120, 2779 0915 |
		<a href="mailto:kbri.brussel@skynet.be" style="color:#010203; text-decoration:none">kbri.brussel@skynet.be</a>
		</strong</span></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
', NULL, 0, 'Registrasi E-KBRI');
INSERT INTO app_email (id, email, kategori, subkategori, sourceid, data, controlid, status, subject) VALUES (19, 'alimin1313@gmail.com', 'layanan', '-', 23, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Notification email template</title>
</head>

<body bgcolor="#8d8e90">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#8d8e90">
  <tr>
    <td><table width="600" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="61"><a href= "http://yourlink" target="_blank"><img src="https://brussel.ekbri.id/assets/images/email/garuda.png" width="45" border="0" alt="" style="margin-left: 10px"/></a></td>
                <td width="130" >
					<span style="font-family: ''Open Sans''; font-size:12px; font-weight:900; letter-spacing: 0.8px">KEDUTAAN BESAR</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; font-weight:900">REPUBLIK INDONESIA</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; letter-spacing: 0.6px">DI BRUSSELS, BELGIA</span>
				</td>
				
                <td width="407"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
						<td height="46" align="right" valign="middle">
						</td>
                    </tr>
                    <tr>
                      <td height="30"><img src="https://brussel.ekbri.id/assets/images/email/line1.png" width="405" height="30" border="0" alt=""/></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td align="center">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>
          <table width="100%" border="0" cellspacing="0" cellpadding="0"
             style="font-family: ''Open Sans''">
              <tr>
                <td width="10%">&nbsp;</td>
                <td width="80%" align="left" valign="top">
				WNI yang terhormat,<br><br>

Email anda alimin1313@gmail.com didaftarkan dalam sistem eKBRI atas nama alimin. <br><br>  
Bila anda pemilik email tersebut, untuk melanjutkan proses registrasi ini 
silahkan melakukan konfirmasi dengan mengikuti link berikut ini  
http://localhost/wikitani_frontend/index.php/confirmation/b8d974b6d291779e3774847ab8848071<br><br>
Bila anda bukan pemilik email ini, anda tidak perlu melakukan apa-apa. <br><br>
Terima kasih.<br><br>
Hormat kami,<br>
KBRI Brussels
				</td>
                <td width="10%">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><img style="margin-left: 3px" src="https://brussel.ekbri.id/assets/images/email/line2.png" width="594" height="10" style="display:block" border="0" alt=""/></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:12px">
		  <strong>KEDUTAAN BESAR REPUBLIK INDONESIA di BRUSSELS, BELGIA</span></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:8px">
		  <strong>
        Boulevard de la Woluwe 38, 1200 Brussels, Belgium | Telepon: (+32) 2775 0120, 2779 0915 |
		<a href="mailto:kbri.brussel@skynet.be" style="color:#010203; text-decoration:none">kbri.brussel@skynet.be</a>
		</strong</span></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
', NULL, 0, 'Registrasi E-KBRI');
INSERT INTO app_email (id, email, kategori, subkategori, sourceid, data, controlid, status, subject) VALUES (20, 'alimin1313@gmail.co', 'layanan', '-', 24, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Notification email template</title>
</head>

<body bgcolor="#8d8e90">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#8d8e90">
  <tr>
    <td><table width="600" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="61"><a href= "http://yourlink" target="_blank"><img src="https://brussel.ekbri.id/assets/images/email/garuda.png" width="45" border="0" alt="" style="margin-left: 10px"/></a></td>
                <td width="130" >
					<span style="font-family: ''Open Sans''; font-size:12px; font-weight:900; letter-spacing: 0.8px">KEDUTAAN BESAR</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; font-weight:900">REPUBLIK INDONESIA</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; letter-spacing: 0.6px">DI BRUSSELS, BELGIA</span>
				</td>
				
                <td width="407"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
						<td height="46" align="right" valign="middle">
						</td>
                    </tr>
                    <tr>
                      <td height="30"><img src="https://brussel.ekbri.id/assets/images/email/line1.png" width="405" height="30" border="0" alt=""/></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td align="center">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>
          <table width="100%" border="0" cellspacing="0" cellpadding="0"
             style="font-family: ''Open Sans''">
              <tr>
                <td width="10%">&nbsp;</td>
                <td width="80%" align="left" valign="top">
				WNI yang terhormat,<br><br>

Email anda alimin1313@gmail.co didaftarkan dalam sistem eKBRI atas nama alimin. <br><br>  
Bila anda pemilik email tersebut, untuk melanjutkan proses registrasi ini 
silahkan melakukan konfirmasi dengan mengikuti link berikut ini  
http://localhost/wikitani_frontend/index.php/confirmation/bf6a3fb76ab108e6e2a4abe9367fde13<br><br>
Bila anda bukan pemilik email ini, anda tidak perlu melakukan apa-apa. <br><br>
Terima kasih.<br><br>
Hormat kami,<br>
KBRI Brussels
				</td>
                <td width="10%">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><img style="margin-left: 3px" src="https://brussel.ekbri.id/assets/images/email/line2.png" width="594" height="10" style="display:block" border="0" alt=""/></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:12px">
		  <strong>KEDUTAAN BESAR REPUBLIK INDONESIA di BRUSSELS, BELGIA</span></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:8px">
		  <strong>
        Boulevard de la Woluwe 38, 1200 Brussels, Belgium | Telepon: (+32) 2775 0120, 2779 0915 |
		<a href="mailto:kbri.brussel@skynet.be" style="color:#010203; text-decoration:none">kbri.brussel@skynet.be</a>
		</strong</span></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
', NULL, 0, 'Registrasi E-KBRI');
INSERT INTO app_email (id, email, kategori, subkategori, sourceid, data, controlid, status, subject) VALUES (21, 'alimin1313@gmail.co', 'layanan', '-', 24, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Notification email template</title>
</head>

<body bgcolor="#8d8e90">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#8d8e90">
  <tr>
    <td><table width="600" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="61"><a href= "http://yourlink" target="_blank"><img src="https://brussel.ekbri.id/assets/images/email/garuda.png" width="45" border="0" alt="" style="margin-left: 10px"/></a></td>
                <td width="130" >
					<span style="font-family: ''Open Sans''; font-size:12px; font-weight:900; letter-spacing: 0.8px">KEDUTAAN BESAR</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; font-weight:900">REPUBLIK INDONESIA</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; letter-spacing: 0.6px">DI BRUSSELS, BELGIA</span>
				</td>
				
                <td width="407"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
						<td height="46" align="right" valign="middle">
						</td>
                    </tr>
                    <tr>
                      <td height="30"><img src="https://brussel.ekbri.id/assets/images/email/line1.png" width="405" height="30" border="0" alt=""/></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td align="center">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>
          <table width="100%" border="0" cellspacing="0" cellpadding="0"
             style="font-family: ''Open Sans''">
              <tr>
                <td width="10%">&nbsp;</td>
                <td width="80%" align="left" valign="top">
				WNI yang terhormat,<br><br>

Email anda alimin1313@gmail.co didaftarkan dalam sistem eKBRI atas nama alimin. <br><br>  
Bila anda pemilik email tersebut, untuk melanjutkan proses registrasi ini 
silahkan melakukan konfirmasi dengan mengikuti link berikut ini  
http://localhost/wikitani_frontend/index.php/confirmation/bf6a3fb76ab108e6e2a4abe9367fde13<br><br>
Bila anda bukan pemilik email ini, anda tidak perlu melakukan apa-apa. <br><br>
Terima kasih.<br><br>
Hormat kami,<br>
KBRI Brussels
				</td>
                <td width="10%">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><img style="margin-left: 3px" src="https://brussel.ekbri.id/assets/images/email/line2.png" width="594" height="10" style="display:block" border="0" alt=""/></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:12px">
		  <strong>KEDUTAAN BESAR REPUBLIK INDONESIA di BRUSSELS, BELGIA</span></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:8px">
		  <strong>
        Boulevard de la Woluwe 38, 1200 Brussels, Belgium | Telepon: (+32) 2775 0120, 2779 0915 |
		<a href="mailto:kbri.brussel@skynet.be" style="color:#010203; text-decoration:none">kbri.brussel@skynet.be</a>
		</strong</span></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
', NULL, 0, 'Registrasi E-KBRI');
INSERT INTO app_email (id, email, kategori, subkategori, sourceid, data, controlid, status, subject) VALUES (22, 'alimin1313@gmail.co', 'layanan', '-', 25, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Notification email template</title>
</head>

<body bgcolor="#8d8e90">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#8d8e90">
  <tr>
    <td><table width="600" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="61"><a href= "http://yourlink" target="_blank"><img src="https://brussel.ekbri.id/assets/images/email/garuda.png" width="45" border="0" alt="" style="margin-left: 10px"/></a></td>
                <td width="130" >
					<span style="font-family: ''Open Sans''; font-size:12px; font-weight:900; letter-spacing: 0.8px">KEDUTAAN BESAR</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; font-weight:900">REPUBLIK INDONESIA</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; letter-spacing: 0.6px">DI BRUSSELS, BELGIA</span>
				</td>
				
                <td width="407"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
						<td height="46" align="right" valign="middle">
						</td>
                    </tr>
                    <tr>
                      <td height="30"><img src="https://brussel.ekbri.id/assets/images/email/line1.png" width="405" height="30" border="0" alt=""/></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td align="center">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>
          <table width="100%" border="0" cellspacing="0" cellpadding="0"
             style="font-family: ''Open Sans''">
              <tr>
                <td width="10%">&nbsp;</td>
                <td width="80%" align="left" valign="top">
				WNI yang terhormat,<br><br>

Email anda alimin1313@gmail.co didaftarkan dalam sistem eKBRI atas nama alimin. <br><br>  
Bila anda pemilik email tersebut, untuk melanjutkan proses registrasi ini 
silahkan melakukan konfirmasi dengan mengikuti link berikut ini  
http://localhost/wikitani_frontend/index.php/confirmation/47369aad86c312d955d079b7ab608057<br><br>
Bila anda bukan pemilik email ini, anda tidak perlu melakukan apa-apa. <br><br>
Terima kasih.<br><br>
Hormat kami,<br>
KBRI Brussels
				</td>
                <td width="10%">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><img style="margin-left: 3px" src="https://brussel.ekbri.id/assets/images/email/line2.png" width="594" height="10" style="display:block" border="0" alt=""/></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:12px">
		  <strong>KEDUTAAN BESAR REPUBLIK INDONESIA di BRUSSELS, BELGIA</span></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:8px">
		  <strong>
        Boulevard de la Woluwe 38, 1200 Brussels, Belgium | Telepon: (+32) 2775 0120, 2779 0915 |
		<a href="mailto:kbri.brussel@skynet.be" style="color:#010203; text-decoration:none">kbri.brussel@skynet.be</a>
		</strong</span></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
', NULL, 0, 'Registrasi E-KBRI');
INSERT INTO app_email (id, email, kategori, subkategori, sourceid, data, controlid, status, subject) VALUES (23, 'alimin1313@gmail.co', 'layanan', '-', 26, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Notification email template</title>
</head>

<body bgcolor="#8d8e90">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#8d8e90">
  <tr>
    <td><table width="600" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="61"><a href= "http://yourlink" target="_blank"><img src="https://brussel.ekbri.id/assets/images/email/garuda.png" width="45" border="0" alt="" style="margin-left: 10px"/></a></td>
                <td width="130" >
					<span style="font-family: ''Open Sans''; font-size:12px; font-weight:900; letter-spacing: 0.8px">KEDUTAAN BESAR</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; font-weight:900">REPUBLIK INDONESIA</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; letter-spacing: 0.6px">DI BRUSSELS, BELGIA</span>
				</td>
				
                <td width="407"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
						<td height="46" align="right" valign="middle">
						</td>
                    </tr>
                    <tr>
                      <td height="30"><img src="https://brussel.ekbri.id/assets/images/email/line1.png" width="405" height="30" border="0" alt=""/></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td align="center">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>
          <table width="100%" border="0" cellspacing="0" cellpadding="0"
             style="font-family: ''Open Sans''">
              <tr>
                <td width="10%">&nbsp;</td>
                <td width="80%" align="left" valign="top">
				WNI yang terhormat,<br><br>

Email anda alimin1313@gmail.co didaftarkan dalam sistem eKBRI atas nama alimin. <br><br>  
Bila anda pemilik email tersebut, untuk melanjutkan proses registrasi ini 
silahkan melakukan konfirmasi dengan mengikuti link berikut ini  
http://localhost/wikitani_frontend/index.php/confirmation/441de305f2f6357154f267dc3b2913e6<br><br>
Bila anda bukan pemilik email ini, anda tidak perlu melakukan apa-apa. <br><br>
Terima kasih.<br><br>
Hormat kami,<br>
KBRI Brussels
				</td>
                <td width="10%">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><img style="margin-left: 3px" src="https://brussel.ekbri.id/assets/images/email/line2.png" width="594" height="10" style="display:block" border="0" alt=""/></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:12px">
		  <strong>KEDUTAAN BESAR REPUBLIK INDONESIA di BRUSSELS, BELGIA</span></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:8px">
		  <strong>
        Boulevard de la Woluwe 38, 1200 Brussels, Belgium | Telepon: (+32) 2775 0120, 2779 0915 |
		<a href="mailto:kbri.brussel@skynet.be" style="color:#010203; text-decoration:none">kbri.brussel@skynet.be</a>
		</strong</span></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
', NULL, 0, 'Registrasi E-KBRI');
INSERT INTO app_email (id, email, kategori, subkategori, sourceid, data, controlid, status, subject) VALUES (24, 'alimin1313@gmail.com', 'layanan', '-', 27, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Notification email template</title>
</head>

<body bgcolor="#8d8e90">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#8d8e90">
  <tr>
    <td><table width="600" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="61"><a href= "http://yourlink" target="_blank"><img src="https://brussel.ekbri.id/assets/images/email/garuda.png" width="45" border="0" alt="" style="margin-left: 10px"/></a></td>
                <td width="130" >
					<span style="font-family: ''Open Sans''; font-size:12px; font-weight:900; letter-spacing: 0.8px">KEDUTAAN BESAR</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; font-weight:900">REPUBLIK INDONESIA</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; letter-spacing: 0.6px">DI BRUSSELS, BELGIA</span>
				</td>
				
                <td width="407"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
						<td height="46" align="right" valign="middle">
						</td>
                    </tr>
                    <tr>
                      <td height="30"><img src="https://brussel.ekbri.id/assets/images/email/line1.png" width="405" height="30" border="0" alt=""/></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td align="center">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>
          <table width="100%" border="0" cellspacing="0" cellpadding="0"
             style="font-family: ''Open Sans''">
              <tr>
                <td width="10%">&nbsp;</td>
                <td width="80%" align="left" valign="top">
				WNI yang terhormat,<br><br>

Email anda alimin1313@gmail.com didaftarkan dalam sistem eKBRI atas nama alimin. <br><br>  
Bila anda pemilik email tersebut, untuk melanjutkan proses registrasi ini 
silahkan melakukan konfirmasi dengan mengikuti link berikut ini  
http://localhost/wikitani_frontend/index.php/confirmation/f47c243a64fd9f148ea4c98d2ec83427<br><br>
Bila anda bukan pemilik email ini, anda tidak perlu melakukan apa-apa. <br><br>
Terima kasih.<br><br>
Hormat kami,<br>
KBRI Brussels
				</td>
                <td width="10%">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><img style="margin-left: 3px" src="https://brussel.ekbri.id/assets/images/email/line2.png" width="594" height="10" style="display:block" border="0" alt=""/></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:12px">
		  <strong>KEDUTAAN BESAR REPUBLIK INDONESIA di BRUSSELS, BELGIA</span></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:8px">
		  <strong>
        Boulevard de la Woluwe 38, 1200 Brussels, Belgium | Telepon: (+32) 2775 0120, 2779 0915 |
		<a href="mailto:kbri.brussel@skynet.be" style="color:#010203; text-decoration:none">kbri.brussel@skynet.be</a>
		</strong</span></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
', NULL, 0, 'Registrasi E-KBRI');
INSERT INTO app_email (id, email, kategori, subkategori, sourceid, data, controlid, status, subject) VALUES (25, 'alimin1313@gmail.com', 'layanan', '-', 27, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Notification email template</title>
</head>

<body bgcolor="#8d8e90">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#8d8e90">
  <tr>
    <td><table width="600" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="61"><a href= "http://yourlink" target="_blank"><img src="https://brussel.ekbri.id/assets/images/email/garuda.png" width="45" border="0" alt="" style="margin-left: 10px"/></a></td>
                <td width="130" >
					<span style="font-family: ''Open Sans''; font-size:12px; font-weight:900; letter-spacing: 0.8px">KEDUTAAN BESAR</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; font-weight:900">REPUBLIK INDONESIA</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; letter-spacing: 0.6px">DI BRUSSELS, BELGIA</span>
				</td>
				
                <td width="407"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
						<td height="46" align="right" valign="middle">
						</td>
                    </tr>
                    <tr>
                      <td height="30"><img src="https://brussel.ekbri.id/assets/images/email/line1.png" width="405" height="30" border="0" alt=""/></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td align="center">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>
          <table width="100%" border="0" cellspacing="0" cellpadding="0"
             style="font-family: ''Open Sans''">
              <tr>
                <td width="10%">&nbsp;</td>
                <td width="80%" align="left" valign="top">
				WNI yang terhormat,<br><br>

Email anda alimin1313@gmail.com didaftarkan dalam sistem eKBRI atas nama alimin. <br><br>  
Bila anda pemilik email tersebut, untuk melanjutkan proses registrasi ini 
silahkan melakukan konfirmasi dengan mengikuti link berikut ini  
http://localhost/wikitani_frontend/index.php/confirmation/f47c243a64fd9f148ea4c98d2ec83427<br><br>
Bila anda bukan pemilik email ini, anda tidak perlu melakukan apa-apa. <br><br>
Terima kasih.<br><br>
Hormat kami,<br>
KBRI Brussels
				</td>
                <td width="10%">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><img style="margin-left: 3px" src="https://brussel.ekbri.id/assets/images/email/line2.png" width="594" height="10" style="display:block" border="0" alt=""/></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:12px">
		  <strong>KEDUTAAN BESAR REPUBLIK INDONESIA di BRUSSELS, BELGIA</span></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:8px">
		  <strong>
        Boulevard de la Woluwe 38, 1200 Brussels, Belgium | Telepon: (+32) 2775 0120, 2779 0915 |
		<a href="mailto:kbri.brussel@skynet.be" style="color:#010203; text-decoration:none">kbri.brussel@skynet.be</a>
		</strong</span></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
', NULL, 0, 'Registrasi E-KBRI');
INSERT INTO app_email (id, email, kategori, subkategori, sourceid, data, controlid, status, subject) VALUES (26, 'alimin1313@gmail.com', 'layanan', '-', 28, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Notification email template</title>
</head>

<body bgcolor="#8d8e90">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#8d8e90">
  <tr>
    <td><table width="600" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="61"><a href= "http://yourlink" target="_blank"><img src="https://brussel.ekbri.id/assets/images/email/garuda.png" width="45" border="0" alt="" style="margin-left: 10px"/></a></td>
                <td width="130" >
					<span style="font-family: ''Open Sans''; font-size:12px; font-weight:900; letter-spacing: 0.8px">KEDUTAAN BESAR</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; font-weight:900">REPUBLIK INDONESIA</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; letter-spacing: 0.6px">DI BRUSSELS, BELGIA</span>
				</td>
				
                <td width="407"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
						<td height="46" align="right" valign="middle">
						</td>
                    </tr>
                    <tr>
                      <td height="30"><img src="https://brussel.ekbri.id/assets/images/email/line1.png" width="405" height="30" border="0" alt=""/></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td align="center">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>
          <table width="100%" border="0" cellspacing="0" cellpadding="0"
             style="font-family: ''Open Sans''">
              <tr>
                <td width="10%">&nbsp;</td>
                <td width="80%" align="left" valign="top">
				WNI yang terhormat,<br><br>

Email anda alimin1313@gmail.com didaftarkan dalam sistem eKBRI atas nama alimin. <br><br>  
Bila anda pemilik email tersebut, untuk melanjutkan proses registrasi ini 
silahkan melakukan konfirmasi dengan mengikuti link berikut ini  
http://localhost/wikitani_frontend/index.php/confirmation/bcbc2fc66fe72fcfdc298018aed031d1<br><br>
Bila anda bukan pemilik email ini, anda tidak perlu melakukan apa-apa. <br><br>
Terima kasih.<br><br>
Hormat kami,<br>
KBRI Brussels
				</td>
                <td width="10%">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><img style="margin-left: 3px" src="https://brussel.ekbri.id/assets/images/email/line2.png" width="594" height="10" style="display:block" border="0" alt=""/></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:12px">
		  <strong>KEDUTAAN BESAR REPUBLIK INDONESIA di BRUSSELS, BELGIA</span></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:8px">
		  <strong>
        Boulevard de la Woluwe 38, 1200 Brussels, Belgium | Telepon: (+32) 2775 0120, 2779 0915 |
		<a href="mailto:kbri.brussel@skynet.be" style="color:#010203; text-decoration:none">kbri.brussel@skynet.be</a>
		</strong</span></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
', NULL, 0, 'Registrasi E-KBRI');
INSERT INTO app_email (id, email, kategori, subkategori, sourceid, data, controlid, status, subject) VALUES (27, 'alimin1313@gmail.com', 'layanan', '-', 29, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Notification email template</title>
</head>

<body bgcolor="#8d8e90">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#8d8e90">
  <tr>
    <td><table width="600" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="61"><a href= "http://yourlink" target="_blank"><img src="https://brussel.ekbri.id/assets/images/email/garuda.png" width="45" border="0" alt="" style="margin-left: 10px"/></a></td>
                <td width="130" >
					<span style="font-family: ''Open Sans''; font-size:12px; font-weight:900; letter-spacing: 0.8px">KEDUTAAN BESAR</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; font-weight:900">REPUBLIK INDONESIA</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; letter-spacing: 0.6px">DI BRUSSELS, BELGIA</span>
				</td>
				
                <td width="407"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
						<td height="46" align="right" valign="middle">
						</td>
                    </tr>
                    <tr>
                      <td height="30"><img src="https://brussel.ekbri.id/assets/images/email/line1.png" width="405" height="30" border="0" alt=""/></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td align="center">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>
          <table width="100%" border="0" cellspacing="0" cellpadding="0"
             style="font-family: ''Open Sans''">
              <tr>
                <td width="10%">&nbsp;</td>
                <td width="80%" align="left" valign="top">
				WNI yang terhormat,<br><br>

Email anda alimin1313@gmail.com didaftarkan dalam sistem eKBRI atas nama alimin. <br><br>  
Bila anda pemilik email tersebut, untuk melanjutkan proses registrasi ini 
silahkan melakukan konfirmasi dengan mengikuti link berikut ini  
http://localhost/wikitani_frontend/index.php/confirmation/a008f91918b0728fc84af245a9ba1e00<br><br>
Bila anda bukan pemilik email ini, anda tidak perlu melakukan apa-apa. <br><br>
Terima kasih.<br><br>
Hormat kami,<br>
KBRI Brussels
				</td>
                <td width="10%">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><img style="margin-left: 3px" src="https://brussel.ekbri.id/assets/images/email/line2.png" width="594" height="10" style="display:block" border="0" alt=""/></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:12px">
		  <strong>KEDUTAAN BESAR REPUBLIK INDONESIA di BRUSSELS, BELGIA</span></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:8px">
		  <strong>
        Boulevard de la Woluwe 38, 1200 Brussels, Belgium | Telepon: (+32) 2775 0120, 2779 0915 |
		<a href="mailto:kbri.brussel@skynet.be" style="color:#010203; text-decoration:none">kbri.brussel@skynet.be</a>
		</strong</span></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
', NULL, 0, 'Registrasi E-KBRI');
INSERT INTO app_email (id, email, kategori, subkategori, sourceid, data, controlid, status, subject) VALUES (28, NULL, 'layanan', '-', 29, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Notification email template</title>
</head>

<body bgcolor="#8d8e90">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#8d8e90">
  <tr>
    <td><table width="600" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="61"><a href= "http://yourlink" target="_blank"><img src="https://brussel.ekbri.id/assets/images/email/garuda.png" width="45" border="0" alt="" style="margin-left: 10px"/></a></td>
                <td width="130" >
					<span style="font-family: ''Open Sans''; font-size:12px; font-weight:900; letter-spacing: 0.8px">KEDUTAAN BESAR</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; font-weight:900">REPUBLIK INDONESIA</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; letter-spacing: 0.6px">DI BRUSSELS, BELGIA</span>
				</td>
				
                <td width="407"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
						<td height="46" align="right" valign="middle">
						</td>
                    </tr>
                    <tr>
                      <td height="30"><img src="https://brussel.ekbri.id/assets/images/email/line1.png" width="405" height="30" border="0" alt=""/></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td align="center">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>
          <table width="100%" border="0" cellspacing="0" cellpadding="0"
             style="font-family: ''Open Sans''">
              <tr>
                <td width="10%">&nbsp;</td>
                <td width="80%" align="left" valign="top">
				WNI yang terhormat,<br><br>

Email anda - didaftarkan dalam sistem eKBRI atas nama -. <br><br>  
Bila anda pemilik email tersebut, untuk melanjutkan proses registrasi ini 
silahkan melakukan konfirmasi dengan mengikuti link berikut ini  
http://localhost/wikitani_frontend/index.php/confirmation/a008f91918b0728fc84af245a9ba1e00<br><br>
Bila anda bukan pemilik email ini, anda tidak perlu melakukan apa-apa. <br><br>
Terima kasih.<br><br>
Hormat kami,<br>
KBRI Brussels
				</td>
                <td width="10%">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><img style="margin-left: 3px" src="https://brussel.ekbri.id/assets/images/email/line2.png" width="594" height="10" style="display:block" border="0" alt=""/></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:12px">
		  <strong>KEDUTAAN BESAR REPUBLIK INDONESIA di BRUSSELS, BELGIA</span></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:8px">
		  <strong>
        Boulevard de la Woluwe 38, 1200 Brussels, Belgium | Telepon: (+32) 2775 0120, 2779 0915 |
		<a href="mailto:kbri.brussel@skynet.be" style="color:#010203; text-decoration:none">kbri.brussel@skynet.be</a>
		</strong</span></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
', NULL, 0, 'Registrasi E-KBRI');
INSERT INTO app_email (id, email, kategori, subkategori, sourceid, data, controlid, status, subject) VALUES (29, 'alimin1313@gmail.com', 'layanan', '-', 30, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Notification email template</title>
</head>

<body bgcolor="#8d8e90">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#8d8e90">
  <tr>
    <td><table width="600" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="61"><a href= "http://yourlink" target="_blank"><img src="https://brussel.ekbri.id/assets/images/email/garuda.png" width="45" border="0" alt="" style="margin-left: 10px"/></a></td>
                <td width="130" >
					<span style="font-family: ''Open Sans''; font-size:12px; font-weight:900; letter-spacing: 0.8px">KEDUTAAN BESAR</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; font-weight:900">REPUBLIK INDONESIA</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; letter-spacing: 0.6px">DI BRUSSELS, BELGIA</span>
				</td>
				
                <td width="407"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
						<td height="46" align="right" valign="middle">
						</td>
                    </tr>
                    <tr>
                      <td height="30"><img src="https://brussel.ekbri.id/assets/images/email/line1.png" width="405" height="30" border="0" alt=""/></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td align="center">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>
          <table width="100%" border="0" cellspacing="0" cellpadding="0"
             style="font-family: ''Open Sans''">
              <tr>
                <td width="10%">&nbsp;</td>
                <td width="80%" align="left" valign="top">
				WNI yang terhormat,<br><br>

Email anda alimin1313@gmail.com didaftarkan dalam sistem eKBRI atas nama alimin. <br><br>  
Bila anda pemilik email tersebut, untuk melanjutkan proses registrasi ini 
silahkan melakukan konfirmasi dengan mengikuti link berikut ini  
http://localhost/wikitani_frontend/index.php/confirmation/4cc5cfb36307f8d054b06f7d6f618876<br><br>
Bila anda bukan pemilik email ini, anda tidak perlu melakukan apa-apa. <br><br>
Terima kasih.<br><br>
Hormat kami,<br>
KBRI Brussels
				</td>
                <td width="10%">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><img style="margin-left: 3px" src="https://brussel.ekbri.id/assets/images/email/line2.png" width="594" height="10" style="display:block" border="0" alt=""/></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:12px">
		  <strong>KEDUTAAN BESAR REPUBLIK INDONESIA di BRUSSELS, BELGIA</span></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:8px">
		  <strong>
        Boulevard de la Woluwe 38, 1200 Brussels, Belgium | Telepon: (+32) 2775 0120, 2779 0915 |
		<a href="mailto:kbri.brussel@skynet.be" style="color:#010203; text-decoration:none">kbri.brussel@skynet.be</a>
		</strong</span></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
', NULL, 0, 'Registrasi E-KBRI');
INSERT INTO app_email (id, email, kategori, subkategori, sourceid, data, controlid, status, subject) VALUES (30, 'alimin1313@gmail.com', 'layanan', '-', 31, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Notification email template</title>
</head>

<body bgcolor="#8d8e90">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#8d8e90">
  <tr>
    <td><table width="600" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="61"><a href= "http://yourlink" target="_blank"><img src="https://brussel.ekbri.id/assets/images/email/garuda.png" width="45" border="0" alt="" style="margin-left: 10px"/></a></td>
                <td width="130" >
					<span style="font-family: ''Open Sans''; font-size:12px; font-weight:900; letter-spacing: 0.8px">KEDUTAAN BESAR</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; font-weight:900">REPUBLIK INDONESIA</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; letter-spacing: 0.6px">DI BRUSSELS, BELGIA</span>
				</td>
				
                <td width="407"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
						<td height="46" align="right" valign="middle">
						</td>
                    </tr>
                    <tr>
                      <td height="30"><img src="https://brussel.ekbri.id/assets/images/email/line1.png" width="405" height="30" border="0" alt=""/></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td align="center">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>
          <table width="100%" border="0" cellspacing="0" cellpadding="0"
             style="font-family: ''Open Sans''">
              <tr>
                <td width="10%">&nbsp;</td>
                <td width="80%" align="left" valign="top">
				WNI yang terhormat,<br><br>

Email anda alimin1313@gmail.com didaftarkan dalam sistem eKBRI atas nama alimin. <br><br>  
Bila anda pemilik email tersebut, untuk melanjutkan proses registrasi ini 
silahkan melakukan konfirmasi dengan mengikuti link berikut ini  
http://localhost/wikitani_frontend/index.php/confirmation/fcef3e49330261101827f3b900d0ba06<br><br>
Bila anda bukan pemilik email ini, anda tidak perlu melakukan apa-apa. <br><br>
Terima kasih.<br><br>
Hormat kami,<br>
KBRI Brussels
				</td>
                <td width="10%">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><img style="margin-left: 3px" src="https://brussel.ekbri.id/assets/images/email/line2.png" width="594" height="10" style="display:block" border="0" alt=""/></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:12px">
		  <strong>KEDUTAAN BESAR REPUBLIK INDONESIA di BRUSSELS, BELGIA</span></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:8px">
		  <strong>
        Boulevard de la Woluwe 38, 1200 Brussels, Belgium | Telepon: (+32) 2775 0120, 2779 0915 |
		<a href="mailto:kbri.brussel@skynet.be" style="color:#010203; text-decoration:none">kbri.brussel@skynet.be</a>
		</strong</span></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
', NULL, 0, 'Registrasi E-KBRI');
INSERT INTO app_email (id, email, kategori, subkategori, sourceid, data, controlid, status, subject) VALUES (31, 'alimin1313@gmail.com', 'layanan', '-', 32, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Notification email template</title>
</head>

<body bgcolor="#8d8e90">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#8d8e90">
  <tr>
    <td><table width="600" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="61"><a href= "http://yourlink" target="_blank"><img src="https://brussel.ekbri.id/assets/images/email/garuda.png" width="45" border="0" alt="" style="margin-left: 10px"/></a></td>
                <td width="130" >
					<span style="font-family: ''Open Sans''; font-size:12px; font-weight:900; letter-spacing: 0.8px">KEDUTAAN BESAR</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; font-weight:900">REPUBLIK INDONESIA</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; letter-spacing: 0.6px">DI BRUSSELS, BELGIA</span>
				</td>
				
                <td width="407"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
						<td height="46" align="right" valign="middle">
						</td>
                    </tr>
                    <tr>
                      <td height="30"><img src="https://brussel.ekbri.id/assets/images/email/line1.png" width="405" height="30" border="0" alt=""/></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td align="center">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>
          <table width="100%" border="0" cellspacing="0" cellpadding="0"
             style="font-family: ''Open Sans''">
              <tr>
                <td width="10%">&nbsp;</td>
                <td width="80%" align="left" valign="top">
				WNI yang terhormat,<br><br>

Email anda alimin1313@gmail.com didaftarkan dalam sistem eKBRI atas nama alimin. <br><br>  
Bila anda pemilik email tersebut, untuk melanjutkan proses registrasi ini 
silahkan melakukan konfirmasi dengan mengikuti link berikut ini  
http://localhost/wikitani_frontend/index.php/confirmation/8459cac7a5ade9e95c8f3400d73eab0a<br><br>
Bila anda bukan pemilik email ini, anda tidak perlu melakukan apa-apa. <br><br>
Terima kasih.<br><br>
Hormat kami,<br>
KBRI Brussels
				</td>
                <td width="10%">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><img style="margin-left: 3px" src="https://brussel.ekbri.id/assets/images/email/line2.png" width="594" height="10" style="display:block" border="0" alt=""/></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:12px">
		  <strong>KEDUTAAN BESAR REPUBLIK INDONESIA di BRUSSELS, BELGIA</span></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:8px">
		  <strong>
        Boulevard de la Woluwe 38, 1200 Brussels, Belgium | Telepon: (+32) 2775 0120, 2779 0915 |
		<a href="mailto:kbri.brussel@skynet.be" style="color:#010203; text-decoration:none">kbri.brussel@skynet.be</a>
		</strong</span></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
', NULL, 0, 'Registrasi E-KBRI');
INSERT INTO app_email (id, email, kategori, subkategori, sourceid, data, controlid, status, subject) VALUES (32, 'alimin1313@gmail.com', 'layanan', '-', 33, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Notification email template</title>
</head>

<body bgcolor="#8d8e90">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#8d8e90">
  <tr>
    <td><table width="600" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="61"><a href= "http://yourlink" target="_blank"><img src="https://brussel.ekbri.id/assets/images/email/garuda.png" width="45" border="0" alt="" style="margin-left: 10px"/></a></td>
                <td width="130" >
					<span style="font-family: ''Open Sans''; font-size:12px; font-weight:900; letter-spacing: 0.8px">KEDUTAAN BESAR</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; font-weight:900">REPUBLIK INDONESIA</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; letter-spacing: 0.6px">DI BRUSSELS, BELGIA</span>
				</td>
				
                <td width="407"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
						<td height="46" align="right" valign="middle">
						</td>
                    </tr>
                    <tr>
                      <td height="30"><img src="https://brussel.ekbri.id/assets/images/email/line1.png" width="405" height="30" border="0" alt=""/></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td align="center">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>
          <table width="100%" border="0" cellspacing="0" cellpadding="0"
             style="font-family: ''Open Sans''">
              <tr>
                <td width="10%">&nbsp;</td>
                <td width="80%" align="left" valign="top">
				WNI yang terhormat,<br><br>

Email anda alimin1313@gmail.com didaftarkan dalam sistem eKBRI atas nama alimin. <br><br>  
Bila anda pemilik email tersebut, untuk melanjutkan proses registrasi ini 
silahkan melakukan konfirmasi dengan mengikuti link berikut ini  
http://localhost/wikitani_frontend/index.php/confirmation/c26026af92108d3e98ce7533ee61f168<br><br>
Bila anda bukan pemilik email ini, anda tidak perlu melakukan apa-apa. <br><br>
Terima kasih.<br><br>
Hormat kami,<br>
KBRI Brussels
				</td>
                <td width="10%">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><img style="margin-left: 3px" src="https://brussel.ekbri.id/assets/images/email/line2.png" width="594" height="10" style="display:block" border="0" alt=""/></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:12px">
		  <strong>KEDUTAAN BESAR REPUBLIK INDONESIA di BRUSSELS, BELGIA</span></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:8px">
		  <strong>
        Boulevard de la Woluwe 38, 1200 Brussels, Belgium | Telepon: (+32) 2775 0120, 2779 0915 |
		<a href="mailto:kbri.brussel@skynet.be" style="color:#010203; text-decoration:none">kbri.brussel@skynet.be</a>
		</strong</span></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
', NULL, 0, 'Registrasi E-KBRI');
INSERT INTO app_email (id, email, kategori, subkategori, sourceid, data, controlid, status, subject) VALUES (33, 'alimin1313@gmail.com', 'layanan', '-', 34, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Notification email template</title>
</head>

<body bgcolor="#8d8e90">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#8d8e90">
  <tr>
    <td><table width="600" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="61"><a href= "http://yourlink" target="_blank"><img src="https://brussel.ekbri.id/assets/images/email/garuda.png" width="45" border="0" alt="" style="margin-left: 10px"/></a></td>
                <td width="130" >
					<span style="font-family: ''Open Sans''; font-size:12px; font-weight:900; letter-spacing: 0.8px">KEDUTAAN BESAR</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; font-weight:900">REPUBLIK INDONESIA</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; letter-spacing: 0.6px">DI BRUSSELS, BELGIA</span>
				</td>
				
                <td width="407"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
						<td height="46" align="right" valign="middle">
						</td>
                    </tr>
                    <tr>
                      <td height="30"><img src="https://brussel.ekbri.id/assets/images/email/line1.png" width="405" height="30" border="0" alt=""/></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td align="center">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>
          <table width="100%" border="0" cellspacing="0" cellpadding="0"
             style="font-family: ''Open Sans''">
              <tr>
                <td width="10%">&nbsp;</td>
                <td width="80%" align="left" valign="top">
				WNI yang terhormat,<br><br>

Email anda alimin1313@gmail.com didaftarkan dalam sistem eKBRI atas nama alimin. <br><br>  
Bila anda pemilik email tersebut, untuk melanjutkan proses registrasi ini 
silahkan melakukan konfirmasi dengan mengikuti link berikut ini  
http://localhost/wikitani_frontend/index.php/confirmation/c59e3e731c1e448829af8a0ec9cba157<br><br>
Bila anda bukan pemilik email ini, anda tidak perlu melakukan apa-apa. <br><br>
Terima kasih.<br><br>
Hormat kami,<br>
KBRI Brussels
				</td>
                <td width="10%">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><img style="margin-left: 3px" src="https://brussel.ekbri.id/assets/images/email/line2.png" width="594" height="10" style="display:block" border="0" alt=""/></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:12px">
		  <strong>KEDUTAAN BESAR REPUBLIK INDONESIA di BRUSSELS, BELGIA</span></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:8px">
		  <strong>
        Boulevard de la Woluwe 38, 1200 Brussels, Belgium | Telepon: (+32) 2775 0120, 2779 0915 |
		<a href="mailto:kbri.brussel@skynet.be" style="color:#010203; text-decoration:none">kbri.brussel@skynet.be</a>
		</strong</span></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
', NULL, 0, 'Registrasi E-KBRI');
INSERT INTO app_email (id, email, kategori, subkategori, sourceid, data, controlid, status, subject) VALUES (34, 'alimin1313@gmail.com', 'layanan', '-', 36, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Notification email template</title>
</head>

<body bgcolor="#8d8e90">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#8d8e90">
  <tr>
    <td><table width="600" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="61"><a href= "http://yourlink" target="_blank"><img src="https://brussel.ekbri.id/assets/images/email/garuda.png" width="45" border="0" alt="" style="margin-left: 10px"/></a></td>
                <td width="130" >
					<span style="font-family: ''Open Sans''; font-size:12px; font-weight:900; letter-spacing: 0.8px">KEDUTAAN BESAR</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; font-weight:900">REPUBLIK INDONESIA</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; letter-spacing: 0.6px">DI BRUSSELS, BELGIA</span>
				</td>
				
                <td width="407"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
						<td height="46" align="right" valign="middle">
						</td>
                    </tr>
                    <tr>
                      <td height="30"><img src="https://brussel.ekbri.id/assets/images/email/line1.png" width="405" height="30" border="0" alt=""/></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td align="center">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>
          <table width="100%" border="0" cellspacing="0" cellpadding="0"
             style="font-family: ''Open Sans''">
              <tr>
                <td width="10%">&nbsp;</td>
                <td width="80%" align="left" valign="top">
				WNI yang terhormat,<br><br>

Email anda alimin1313@gmail.com didaftarkan dalam sistem eKBRI atas nama alimin. <br><br>  
Bila anda pemilik email tersebut, untuk melanjutkan proses registrasi ini 
silahkan melakukan konfirmasi dengan mengikuti link berikut ini  
http://localhost/wikitani_frontend/index.php/confirmation/f70b536dd5cb0726b2383553f3dc4448<br><br>
Bila anda bukan pemilik email ini, anda tidak perlu melakukan apa-apa. <br><br>
Terima kasih.<br><br>
Hormat kami,<br>
KBRI Brussels
				</td>
                <td width="10%">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><img style="margin-left: 3px" src="https://brussel.ekbri.id/assets/images/email/line2.png" width="594" height="10" style="display:block" border="0" alt=""/></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:12px">
		  <strong>KEDUTAAN BESAR REPUBLIK INDONESIA di BRUSSELS, BELGIA</span></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:8px">
		  <strong>
        Boulevard de la Woluwe 38, 1200 Brussels, Belgium | Telepon: (+32) 2775 0120, 2779 0915 |
		<a href="mailto:kbri.brussel@skynet.be" style="color:#010203; text-decoration:none">kbri.brussel@skynet.be</a>
		</strong</span></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
', NULL, 0, 'Registrasi E-KBRI');
INSERT INTO app_email (id, email, kategori, subkategori, sourceid, data, controlid, status, subject) VALUES (35, 'alimin1313@gmail.com', 'layanan', '-', 37, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Notification email template</title>
</head>

<body bgcolor="#8d8e90">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#8d8e90">
  <tr>
    <td><table width="600" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="61"><a href= "http://yourlink" target="_blank"><img src="https://brussel.ekbri.id/assets/images/email/garuda.png" width="45" border="0" alt="" style="margin-left: 10px"/></a></td>
                <td width="130" >
					<span style="font-family: ''Open Sans''; font-size:12px; font-weight:900; letter-spacing: 0.8px">KEDUTAAN BESAR</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; font-weight:900">REPUBLIK INDONESIA</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; letter-spacing: 0.6px">DI BRUSSELS, BELGIA</span>
				</td>
				
                <td width="407"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
						<td height="46" align="right" valign="middle">
						</td>
                    </tr>
                    <tr>
                      <td height="30"><img src="https://brussel.ekbri.id/assets/images/email/line1.png" width="405" height="30" border="0" alt=""/></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td align="center">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>
          <table width="100%" border="0" cellspacing="0" cellpadding="0"
             style="font-family: ''Open Sans''">
              <tr>
                <td width="10%">&nbsp;</td>
                <td width="80%" align="left" valign="top">
				WNI yang terhormat,<br><br>

Email anda alimin1313@gmail.com didaftarkan dalam sistem eKBRI atas nama alimin. <br><br>  
Bila anda pemilik email tersebut, untuk melanjutkan proses registrasi ini 
silahkan melakukan konfirmasi dengan mengikuti link berikut ini  
http://localhost/wikitani_frontend/index.php/confirmation/03596f0e85b266e95e3d7302c9e9c6fa<br><br>
Bila anda bukan pemilik email ini, anda tidak perlu melakukan apa-apa. <br><br>
Terima kasih.<br><br>
Hormat kami,<br>
KBRI Brussels
				</td>
                <td width="10%">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><img style="margin-left: 3px" src="https://brussel.ekbri.id/assets/images/email/line2.png" width="594" height="10" style="display:block" border="0" alt=""/></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:12px">
		  <strong>KEDUTAAN BESAR REPUBLIK INDONESIA di BRUSSELS, BELGIA</span></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:8px">
		  <strong>
        Boulevard de la Woluwe 38, 1200 Brussels, Belgium | Telepon: (+32) 2775 0120, 2779 0915 |
		<a href="mailto:kbri.brussel@skynet.be" style="color:#010203; text-decoration:none">kbri.brussel@skynet.be</a>
		</strong</span></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
', NULL, 0, 'Registrasi E-KBRI');
INSERT INTO app_email (id, email, kategori, subkategori, sourceid, data, controlid, status, subject) VALUES (36, 'alimin1313@gmail.com', 'layanan', '-', 38, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Notification email template</title>
</head>

<body bgcolor="#8d8e90">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#8d8e90">
  <tr>
    <td><table width="600" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="61"><a href= "http://yourlink" target="_blank"><img src="https://brussel.ekbri.id/assets/images/email/garuda.png" width="45" border="0" alt="" style="margin-left: 10px"/></a></td>
                <td width="130" >
					<span style="font-family: ''Open Sans''; font-size:12px; font-weight:900; letter-spacing: 0.8px">KEDUTAAN BESAR</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; font-weight:900">REPUBLIK INDONESIA</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; letter-spacing: 0.6px">DI BRUSSELS, BELGIA</span>
				</td>
				
                <td width="407"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
						<td height="46" align="right" valign="middle">
						</td>
                    </tr>
                    <tr>
                      <td height="30"><img src="https://brussel.ekbri.id/assets/images/email/line1.png" width="405" height="30" border="0" alt=""/></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td align="center">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>
          <table width="100%" border="0" cellspacing="0" cellpadding="0"
             style="font-family: ''Open Sans''">
              <tr>
                <td width="10%">&nbsp;</td>
                <td width="80%" align="left" valign="top">
				WNI yang terhormat,<br><br>

Email anda alimin1313@gmail.com didaftarkan dalam sistem eKBRI atas nama alimin. <br><br>  
Bila anda pemilik email tersebut, untuk melanjutkan proses registrasi ini 
silahkan melakukan konfirmasi dengan mengikuti link berikut ini  
http://localhost/wikitani_frontend/index.php/confirmation/a629eade3e595507da0c45fbf41febdd<br><br>
Bila anda bukan pemilik email ini, anda tidak perlu melakukan apa-apa. <br><br>
Terima kasih.<br><br>
Hormat kami,<br>
KBRI Brussels
				</td>
                <td width="10%">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><img style="margin-left: 3px" src="https://brussel.ekbri.id/assets/images/email/line2.png" width="594" height="10" style="display:block" border="0" alt=""/></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:12px">
		  <strong>KEDUTAAN BESAR REPUBLIK INDONESIA di BRUSSELS, BELGIA</span></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:8px">
		  <strong>
        Boulevard de la Woluwe 38, 1200 Brussels, Belgium | Telepon: (+32) 2775 0120, 2779 0915 |
		<a href="mailto:kbri.brussel@skynet.be" style="color:#010203; text-decoration:none">kbri.brussel@skynet.be</a>
		</strong</span></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
', NULL, 0, 'Registrasi E-KBRI');
INSERT INTO app_email (id, email, kategori, subkategori, sourceid, data, controlid, status, subject) VALUES (37, 'alimin1313@gmail.com', 'layanan', '-', 39, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Notification email template</title>
</head>

<body bgcolor="#8d8e90">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#8d8e90">
  <tr>
    <td><table width="600" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="61"><a href= "http://yourlink" target="_blank"><img src="https://brussel.ekbri.id/assets/images/email/garuda.png" width="45" border="0" alt="" style="margin-left: 10px"/></a></td>
                <td width="130" >
					<span style="font-family: ''Open Sans''; font-size:12px; font-weight:900; letter-spacing: 0.8px">KEDUTAAN BESAR</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; font-weight:900">REPUBLIK INDONESIA</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; letter-spacing: 0.6px">DI BRUSSELS, BELGIA</span>
				</td>
				
                <td width="407"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
						<td height="46" align="right" valign="middle">
						</td>
                    </tr>
                    <tr>
                      <td height="30"><img src="https://brussel.ekbri.id/assets/images/email/line1.png" width="405" height="30" border="0" alt=""/></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td align="center">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>
          <table width="100%" border="0" cellspacing="0" cellpadding="0"
             style="font-family: ''Open Sans''">
              <tr>
                <td width="10%">&nbsp;</td>
                <td width="80%" align="left" valign="top">
				WNI yang terhormat,<br><br>

Email anda alimin1313@gmail.com didaftarkan dalam sistem eKBRI atas nama alimin. <br><br>  
Bila anda pemilik email tersebut, untuk melanjutkan proses registrasi ini 
silahkan melakukan konfirmasi dengan mengikuti link berikut ini  
http://localhost/wikitani_frontend/index.php/confirmation/e8f1901a3af5c277e5caaa589b1708ee<br><br>
Bila anda bukan pemilik email ini, anda tidak perlu melakukan apa-apa. <br><br>
Terima kasih.<br><br>
Hormat kami,<br>
KBRI Brussels
				</td>
                <td width="10%">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><img style="margin-left: 3px" src="https://brussel.ekbri.id/assets/images/email/line2.png" width="594" height="10" style="display:block" border="0" alt=""/></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:12px">
		  <strong>KEDUTAAN BESAR REPUBLIK INDONESIA di BRUSSELS, BELGIA</span></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:8px">
		  <strong>
        Boulevard de la Woluwe 38, 1200 Brussels, Belgium | Telepon: (+32) 2775 0120, 2779 0915 |
		<a href="mailto:kbri.brussel@skynet.be" style="color:#010203; text-decoration:none">kbri.brussel@skynet.be</a>
		</strong</span></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
', NULL, 0, 'Registrasi E-KBRI');
INSERT INTO app_email (id, email, kategori, subkategori, sourceid, data, controlid, status, subject) VALUES (38, 'alimin1313@gmail.com', 'layanan', '-', 40, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Notification email template</title>
</head>

<body bgcolor="#8d8e90">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#8d8e90">
  <tr>
    <td><table width="600" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="61"><a href= "http://yourlink" target="_blank"><img src="https://brussel.ekbri.id/assets/images/email/garuda.png" width="45" border="0" alt="" style="margin-left: 10px"/></a></td>
                <td width="130" >
					<span style="font-family: ''Open Sans''; font-size:12px; font-weight:900; letter-spacing: 0.8px">KEDUTAAN BESAR</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; font-weight:900">REPUBLIK INDONESIA</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; letter-spacing: 0.6px">DI BRUSSELS, BELGIA</span>
				</td>
				
                <td width="407"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
						<td height="46" align="right" valign="middle">
						</td>
                    </tr>
                    <tr>
                      <td height="30"><img src="https://brussel.ekbri.id/assets/images/email/line1.png" width="405" height="30" border="0" alt=""/></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td align="center">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>
          <table width="100%" border="0" cellspacing="0" cellpadding="0"
             style="font-family: ''Open Sans''">
              <tr>
                <td width="10%">&nbsp;</td>
                <td width="80%" align="left" valign="top">
				WNI yang terhormat,<br><br>

Email anda alimin1313@gmail.com didaftarkan dalam sistem eKBRI atas nama alimin. <br><br>  
Bila anda pemilik email tersebut, untuk melanjutkan proses registrasi ini 
silahkan melakukan konfirmasi dengan mengikuti link berikut ini  
http://localhost/wikitani_frontend/index.php/confirmation/bde9f23d52c27f5303351eed6a083080<br><br>
Bila anda bukan pemilik email ini, anda tidak perlu melakukan apa-apa. <br><br>
Terima kasih.<br><br>
Hormat kami,<br>
KBRI Brussels
				</td>
                <td width="10%">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><img style="margin-left: 3px" src="https://brussel.ekbri.id/assets/images/email/line2.png" width="594" height="10" style="display:block" border="0" alt=""/></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:12px">
		  <strong>KEDUTAAN BESAR REPUBLIK INDONESIA di BRUSSELS, BELGIA</span></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:8px">
		  <strong>
        Boulevard de la Woluwe 38, 1200 Brussels, Belgium | Telepon: (+32) 2775 0120, 2779 0915 |
		<a href="mailto:kbri.brussel@skynet.be" style="color:#010203; text-decoration:none">kbri.brussel@skynet.be</a>
		</strong</span></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
', NULL, 0, 'Registrasi E-KBRI');
INSERT INTO app_email (id, email, kategori, subkategori, sourceid, data, controlid, status, subject) VALUES (39, 'alimin1313@gmail.com', 'layanan', '-', 43, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Notification email template</title>
</head>

<body bgcolor="#8d8e90">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#8d8e90">
  <tr>
    <td><table width="600" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="61"><a href= "http://yourlink" target="_blank"><img src="https://brussel.ekbri.id/assets/images/email/garuda.png" width="45" border="0" alt="" style="margin-left: 10px"/></a></td>
                <td width="130" >
					<span style="font-family: ''Open Sans''; font-size:12px; font-weight:900; letter-spacing: 0.8px">KEDUTAAN BESAR</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; font-weight:900">REPUBLIK INDONESIA</span><br>
					<span style="font-family: ''Open Sans''; font-size:11px; letter-spacing: 0.6px">DI BRUSSELS, BELGIA</span>
				</td>
				
                <td width="407"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
						<td height="46" align="right" valign="middle">
						</td>
                    </tr>
                    <tr>
                      <td height="30"><img src="https://brussel.ekbri.id/assets/images/email/line1.png" width="405" height="30" border="0" alt=""/></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td align="center">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>
          <table width="100%" border="0" cellspacing="0" cellpadding="0"
             style="font-family: ''Open Sans''">
              <tr>
                <td width="10%">&nbsp;</td>
                <td width="80%" align="left" valign="top">
				WNI yang terhormat,<br><br>

Email anda alimin1313@gmail.com didaftarkan dalam sistem eKBRI atas nama alimin. <br><br>  
Bila anda pemilik email tersebut, untuk melanjutkan proses registrasi ini 
silahkan melakukan konfirmasi dengan mengikuti link berikut ini  
http://localhost/wikitani_frontend/index.php/confirmation/3443a426667e8b78efab8404873488aa<br><br>
Bila anda bukan pemilik email ini, anda tidak perlu melakukan apa-apa. <br><br>
Terima kasih.<br><br>
Hormat kami,<br>
KBRI Brussels
				</td>
                <td width="10%">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><img style="margin-left: 3px" src="https://brussel.ekbri.id/assets/images/email/line2.png" width="594" height="10" style="display:block" border="0" alt=""/></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:12px">
		  <strong>KEDUTAAN BESAR REPUBLIK INDONESIA di BRUSSELS, BELGIA</span></td>
        </tr>
        <tr>
          <td align="center"><span style="margin-left: 10px; font-family:''Open Sans'', Helvetica, Arial, sans-serif; color:#231f20; font-size:8px">
		  <strong>
        Boulevard de la Woluwe 38, 1200 Brussels, Belgium | Telepon: (+32) 2775 0120, 2779 0915 |
		<a href="mailto:kbri.brussel@skynet.be" style="color:#010203; text-decoration:none">kbri.brussel@skynet.be</a>
		</strong</span></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
', NULL, 0, 'Registrasi E-KBRI');


--
-- TOC entry 2358 (class 0 OID 0)
-- Dependencies: 178
-- Name: app_email_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('app_email_id_seq', 39, true);


--
-- TOC entry 2259 (class 0 OID 45995)
-- Dependencies: 179
-- Data for Name: app_invittation; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO app_invittation (bussines_id, invitation_id, invite_from, invite_to, invite_status_id, invitation_date) VALUES (65, 21, 128, 131, 1, '2017-06-08');
INSERT INTO app_invittation (bussines_id, invitation_id, invite_from, invite_to, invite_status_id, invitation_date) VALUES (NULL, 23, NULL, NULL, NULL, '2017-06-10');
INSERT INTO app_invittation (bussines_id, invitation_id, invite_from, invite_to, invite_status_id, invitation_date) VALUES (64, 24, 128, 131, NULL, '2017-06-12');
INSERT INTO app_invittation (bussines_id, invitation_id, invite_from, invite_to, invite_status_id, invitation_date) VALUES (35, 14, 131, 128, 1, '2017-05-26');
INSERT INTO app_invittation (bussines_id, invitation_id, invite_from, invite_to, invite_status_id, invitation_date) VALUES (63, 15, 131, 128, 1, '2017-05-26');
INSERT INTO app_invittation (bussines_id, invitation_id, invite_from, invite_to, invite_status_id, invitation_date) VALUES (62, 16, 131, 128, 1, '2017-05-30');
INSERT INTO app_invittation (bussines_id, invitation_id, invite_from, invite_to, invite_status_id, invitation_date) VALUES (62, 17, 131, 128, 1, '2017-05-30');


--
-- TOC entry 2359 (class 0 OID 0)
-- Dependencies: 219
-- Name: app_invittation_invitation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('app_invittation_invitation_id_seq', 24, true);


--
-- TOC entry 2307 (class 0 OID 62438)
-- Dependencies: 227
-- Data for Name: app_invittation_status; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO app_invittation_status (invite_status_id, invittation_status_name) VALUES (1, 'Not Approved');
INSERT INTO app_invittation_status (invite_status_id, invittation_status_name) VALUES (2, 'Approved');


--
-- TOC entry 2360 (class 0 OID 0)
-- Dependencies: 226
-- Name: app_invittation_status_invittation_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('app_invittation_status_invittation_status_id_seq', 2, true);


--
-- TOC entry 2260 (class 0 OID 46000)
-- Dependencies: 180
-- Data for Name: app_key_konfirmasi; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO app_key_konfirmasi (id, key, expired, regid, status) VALUES (1, '33d667e85f2c5745646d5174fd811325', '2017-05-14 05:00:54+07', 2, 0);
INSERT INTO app_key_konfirmasi (id, key, expired, regid, status) VALUES (2, 'f436372fb1ca829cffc6be46b5e4db96', '2017-05-14 05:00:54+07', 3, 0);
INSERT INTO app_key_konfirmasi (id, key, expired, regid, status) VALUES (3, '7b08dcdbfae108b5e56ed3a4e4af06f8', '2017-05-14 05:00:54+07', 4, 0);
INSERT INTO app_key_konfirmasi (id, key, expired, regid, status) VALUES (4, '076bcf266832ccdda9c936dc16a3ed63', '2017-05-24 05:00:54+07', 5, 0);
INSERT INTO app_key_konfirmasi (id, key, expired, regid, status) VALUES (5, 'dbce4f188b93857a3fe39e04791e8a34', '2017-05-24 05:00:54+07', 6, 0);
INSERT INTO app_key_konfirmasi (id, key, expired, regid, status) VALUES (6, 'e3f7277afe848a1ebaae61f7a6a77c18', '2017-05-24 05:00:54+07', 7, 0);
INSERT INTO app_key_konfirmasi (id, key, expired, regid, status) VALUES (7, '8c4094fb768b9de9a825d38f1f41ee84', '2017-05-25 05:00:54+07', 8, 0);
INSERT INTO app_key_konfirmasi (id, key, expired, regid, status) VALUES (8, '89195754e66be6d402353605c52d5757', '2017-05-25 05:00:54+07', 9, 0);
INSERT INTO app_key_konfirmasi (id, key, expired, regid, status) VALUES (9, 'ff548a7c086ce134aaf072dcadffc7be', '2017-05-25 05:00:54+07', 10, 0);
INSERT INTO app_key_konfirmasi (id, key, expired, regid, status) VALUES (10, '56c8f781fa7d88f88e2c6d3896eeb1a9', '2017-05-25 05:00:54+07', 11, 0);
INSERT INTO app_key_konfirmasi (id, key, expired, regid, status) VALUES (11, '0fb37e7f96d8ec84ef68920557759002', '2017-05-25 05:00:54+07', 12, 0);
INSERT INTO app_key_konfirmasi (id, key, expired, regid, status) VALUES (12, 'dd86e8ad3bc2762626782dfe5dafb261', '2017-05-25 05:00:54+07', 13, 0);
INSERT INTO app_key_konfirmasi (id, key, expired, regid, status) VALUES (13, '0a01e42a4676e1afd72685cb1f6d14e2', '2017-05-25 05:00:54+07', 14, 0);
INSERT INTO app_key_konfirmasi (id, key, expired, regid, status) VALUES (14, 'd950219fdbfd5cc8beb1b120a3ae7dfa', '2017-05-25 05:00:54+07', 15, 0);
INSERT INTO app_key_konfirmasi (id, key, expired, regid, status) VALUES (15, 'b477e7dad1bf49e2b439aa4c3d10a089', '2017-05-25 05:00:54+07', 16, 0);
INSERT INTO app_key_konfirmasi (id, key, expired, regid, status) VALUES (16, '517ee146882e073fb454a24e663d434d', '2017-05-25 05:00:54+07', 17, 0);
INSERT INTO app_key_konfirmasi (id, key, expired, regid, status) VALUES (17, 'f04cd1767a9db82be098173b178b4063', '2017-05-25 05:00:54+07', 18, 0);
INSERT INTO app_key_konfirmasi (id, key, expired, regid, status) VALUES (18, '6b04a3e506eccfce694ecfba415906d1', '2017-05-25 05:00:54+07', 19, 0);
INSERT INTO app_key_konfirmasi (id, key, expired, regid, status) VALUES (19, '10dd394f16027b00db41d287ceea0f87', '2017-05-25 05:00:54+07', 20, 0);
INSERT INTO app_key_konfirmasi (id, key, expired, regid, status) VALUES (20, 'bafeb92922a7f1be39785d108d93b122', '2017-05-25 05:00:54+07', 21, 0);
INSERT INTO app_key_konfirmasi (id, key, expired, regid, status) VALUES (21, 'c26c56c1a6312afefa2a2ce80c938ed1', '2017-05-26 05:00:54+07', 22, 0);
INSERT INTO app_key_konfirmasi (id, key, expired, regid, status) VALUES (22, 'b8d974b6d291779e3774847ab8848071', '2017-05-26 05:00:54+07', 23, 0);
INSERT INTO app_key_konfirmasi (id, key, expired, regid, status) VALUES (23, 'bf6a3fb76ab108e6e2a4abe9367fde13', '2017-05-26 05:00:54+07', 24, 0);
INSERT INTO app_key_konfirmasi (id, key, expired, regid, status) VALUES (24, '47369aad86c312d955d079b7ab608057', '2017-05-26 05:00:54+07', 25, 0);
INSERT INTO app_key_konfirmasi (id, key, expired, regid, status) VALUES (25, '441de305f2f6357154f267dc3b2913e6', '2017-05-26 05:00:54+07', 26, 0);
INSERT INTO app_key_konfirmasi (id, key, expired, regid, status) VALUES (26, 'f47c243a64fd9f148ea4c98d2ec83427', '2017-05-26 05:00:54+07', 27, 0);
INSERT INTO app_key_konfirmasi (id, key, expired, regid, status) VALUES (27, 'bcbc2fc66fe72fcfdc298018aed031d1', '2017-05-26 05:00:54+07', 28, 0);
INSERT INTO app_key_konfirmasi (id, key, expired, regid, status) VALUES (28, 'a008f91918b0728fc84af245a9ba1e00', '2017-05-26 05:00:54+07', 29, 0);
INSERT INTO app_key_konfirmasi (id, key, expired, regid, status) VALUES (29, '4cc5cfb36307f8d054b06f7d6f618876', '2017-05-26 05:00:54+07', 30, 0);
INSERT INTO app_key_konfirmasi (id, key, expired, regid, status) VALUES (30, 'fcef3e49330261101827f3b900d0ba06', '2017-05-26 05:00:54+07', 31, 0);
INSERT INTO app_key_konfirmasi (id, key, expired, regid, status) VALUES (31, '8459cac7a5ade9e95c8f3400d73eab0a', '2017-05-26 05:00:54+07', 32, 0);
INSERT INTO app_key_konfirmasi (id, key, expired, regid, status) VALUES (32, 'c26026af92108d3e98ce7533ee61f168', '2017-05-26 05:00:54+07', 33, 0);
INSERT INTO app_key_konfirmasi (id, key, expired, regid, status) VALUES (33, 'c59e3e731c1e448829af8a0ec9cba157', '2017-05-26 05:00:54+07', 34, 0);
INSERT INTO app_key_konfirmasi (id, key, expired, regid, status) VALUES (34, 'f4c0f37f91120a329f071dc68bce75f7', '2017-05-28 05:00:54+07', 35, 0);
INSERT INTO app_key_konfirmasi (id, key, expired, regid, status) VALUES (35, 'f70b536dd5cb0726b2383553f3dc4448', '2017-05-28 05:00:54+07', 36, 0);
INSERT INTO app_key_konfirmasi (id, key, expired, regid, status) VALUES (37, 'a629eade3e595507da0c45fbf41febdd', '2017-05-28 05:00:54+07', 38, 0);
INSERT INTO app_key_konfirmasi (id, key, expired, regid, status) VALUES (38, 'e8f1901a3af5c277e5caaa589b1708ee', '2017-05-28 05:00:54+07', 39, 0);
INSERT INTO app_key_konfirmasi (id, key, expired, regid, status) VALUES (39, 'bde9f23d52c27f5303351eed6a083080', '2017-05-28 05:00:54+07', 40, 0);
INSERT INTO app_key_konfirmasi (id, key, expired, regid, status) VALUES (40, 'a4fa507a4fd2b867e1cd574e6d65a330', '2017-05-28 05:00:54+07', 41, 0);
INSERT INTO app_key_konfirmasi (id, key, expired, regid, status) VALUES (41, '9efdd2fb164f5c1187e8e023c10fb034', '2017-05-28 05:00:54+07', 42, 0);
INSERT INTO app_key_konfirmasi (id, key, expired, regid, status) VALUES (42, '3443a426667e8b78efab8404873488aa', '2017-05-28 05:00:54+07', 43, 0);


--
-- TOC entry 2361 (class 0 OID 0)
-- Dependencies: 181
-- Name: app_key_konfirmasi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('app_key_konfirmasi_id_seq', 42, true);


--
-- TOC entry 2262 (class 0 OID 46008)
-- Dependencies: 182
-- Data for Name: app_key_pass; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO app_key_pass (id, key, userid) VALUES (1, '33d667e85f2c5745646d5174fd811325', 54);
INSERT INTO app_key_pass (id, key, userid) VALUES (2, 'f436372fb1ca829cffc6be46b5e4db96', 60);
INSERT INTO app_key_pass (id, key, userid) VALUES (3, '7b08dcdbfae108b5e56ed3a4e4af06f8', 67);
INSERT INTO app_key_pass (id, key, userid) VALUES (4, '076bcf266832ccdda9c936dc16a3ed63', 68);
INSERT INTO app_key_pass (id, key, userid) VALUES (5, 'dbce4f188b93857a3fe39e04791e8a34', 68);
INSERT INTO app_key_pass (id, key, userid) VALUES (6, 'e3f7277afe848a1ebaae61f7a6a77c18', 64);


--
-- TOC entry 2362 (class 0 OID 0)
-- Dependencies: 183
-- Name: app_key_pass_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('app_key_pass_id_seq', 6, true);


--
-- TOC entry 2311 (class 0 OID 70648)
-- Dependencies: 231
-- Data for Name: app_latter_category; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2363 (class 0 OID 0)
-- Dependencies: 230
-- Name: app_latter_category_latter_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('app_latter_category_latter_category_id_seq', 1, false);


--
-- TOC entry 2301 (class 0 OID 53921)
-- Dependencies: 221
-- Data for Name: app_message; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2364 (class 0 OID 0)
-- Dependencies: 220
-- Name: app_message_message_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('app_message_message_id_seq', 1, false);


--
-- TOC entry 2264 (class 0 OID 46016)
-- Dependencies: 184
-- Data for Name: app_mou; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2365 (class 0 OID 0)
-- Dependencies: 185
-- Name: app_mou_berkas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('app_mou_berkas_id_seq', 1, false);


--
-- TOC entry 2305 (class 0 OID 62427)
-- Dependencies: 225
-- Data for Name: app_photo_bussines; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO app_photo_bussines (photo_bussines_id, photo_bussines_name, bussines_id) VALUES (1, '1', 1);
INSERT INTO app_photo_bussines (photo_bussines_id, photo_bussines_name, bussines_id) VALUES (2, '2', 1);
INSERT INTO app_photo_bussines (photo_bussines_id, photo_bussines_name, bussines_id) VALUES (3, '3', 1);
INSERT INTO app_photo_bussines (photo_bussines_id, photo_bussines_name, bussines_id) VALUES (4, '4', 1);
INSERT INTO app_photo_bussines (photo_bussines_id, photo_bussines_name, bussines_id) VALUES (5, '5', 1);
INSERT INTO app_photo_bussines (photo_bussines_id, photo_bussines_name, bussines_id) VALUES (6, '6', 128);
INSERT INTO app_photo_bussines (photo_bussines_id, photo_bussines_name, bussines_id) VALUES (7, '7', 60);


--
-- TOC entry 2366 (class 0 OID 0)
-- Dependencies: 224
-- Name: app_photo_bussines_photo_bussines_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('app_photo_bussines_photo_bussines_id_seq', 7, true);


--
-- TOC entry 2266 (class 0 OID 46024)
-- Dependencies: 186
-- Data for Name: app_rate; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO app_rate (rate_id, rate, artikel_id, userid) VALUES (1, 3, 23, 1);
INSERT INTO app_rate (rate_id, rate, artikel_id, userid) VALUES (2, 4, 1, 1);
INSERT INTO app_rate (rate_id, rate, artikel_id, userid) VALUES (3, 4, 23, 1);
INSERT INTO app_rate (rate_id, rate, artikel_id, userid) VALUES (4, 3, 1, 1);
INSERT INTO app_rate (rate_id, rate, artikel_id, userid) VALUES (5, 2, 1, 1);
INSERT INTO app_rate (rate_id, rate, artikel_id, userid) VALUES (6, 2, 1, 1);


--
-- TOC entry 2367 (class 0 OID 0)
-- Dependencies: 187
-- Name: app_rate_rate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('app_rate_rate_id_seq', 6, true);


--
-- TOC entry 2268 (class 0 OID 46029)
-- Dependencies: 188
-- Data for Name: app_registration; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO app_registration (id, email, full_name, gender, birth_city, birth_date, jenkelid, password, pwd_key) VALUES (2, 'ekhazuyyin@gmail.com', 'soleha', NULL, 'pemalang', '2017-04-12', 1, '4ab4a0eee637', '43');
INSERT INTO app_registration (id, email, full_name, gender, birth_city, birth_date, jenkelid, password, pwd_key) VALUES (5, 'ujang@gmail.com', 'ujang', NULL, 'bandung', '1989-02-08', 1, '88178bd5b4', '94');
INSERT INTO app_registration (id, email, full_name, gender, birth_city, birth_date, jenkelid, password, pwd_key) VALUES (6, 'comble@gmail.com', 'comble', NULL, 'bandung', '2017-04-05', 1, 'add5eb70445c', '54');
INSERT INTO app_registration (id, email, full_name, gender, birth_city, birth_date, jenkelid, password, pwd_key) VALUES (43, 'alimin1313@gmail.com', 'alimin', NULL, 'pemalang', '2017-04-12', 1, '382880f88c0c', '17');


--
-- TOC entry 2368 (class 0 OID 0)
-- Dependencies: 189
-- Name: app_registration_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('app_registration_id_seq', 43, true);


--
-- TOC entry 2270 (class 0 OID 46037)
-- Dependencies: 190
-- Data for Name: app_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO app_user (user_name, user_id, password, email) VALUES ('rizqi', 1, '254a46772b94b548b77891e4', 'rizqipratomo.rp@gmail.com');


--
-- TOC entry 2303 (class 0 OID 62416)
-- Dependencies: 223
-- Data for Name: app_user_photo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO app_user_photo (photo_id, photo_name, userid) VALUES (1, '1', 1);
INSERT INTO app_user_photo (photo_id, photo_name, userid) VALUES (2, '2', 128);
INSERT INTO app_user_photo (photo_id, photo_name, userid) VALUES (3, '3', 128);
INSERT INTO app_user_photo (photo_id, photo_name, userid) VALUES (4, '4', 128);
INSERT INTO app_user_photo (photo_id, photo_name, userid) VALUES (5, '5', 128);
INSERT INTO app_user_photo (photo_id, photo_name, userid) VALUES (6, '6', 128);
INSERT INTO app_user_photo (photo_id, photo_name, userid) VALUES (7, '7', 128);
INSERT INTO app_user_photo (photo_id, photo_name, userid) VALUES (8, '8', 128);
INSERT INTO app_user_photo (photo_id, photo_name, userid) VALUES (9, '9', 128);
INSERT INTO app_user_photo (photo_id, photo_name, userid) VALUES (10, '10', 128);
INSERT INTO app_user_photo (photo_id, photo_name, userid) VALUES (11, '11', 128);
INSERT INTO app_user_photo (photo_id, photo_name, userid) VALUES (12, '12', 128);
INSERT INTO app_user_photo (photo_id, photo_name, userid) VALUES (13, '13', 128);
INSERT INTO app_user_photo (photo_id, photo_name, userid) VALUES (14, '14', 128);
INSERT INTO app_user_photo (photo_id, photo_name, userid) VALUES (15, '15', 128);
INSERT INTO app_user_photo (photo_id, photo_name, userid) VALUES (16, '16', 128);
INSERT INTO app_user_photo (photo_id, photo_name, userid) VALUES (17, '17', 128);
INSERT INTO app_user_photo (photo_id, photo_name, userid) VALUES (18, '18', 128);
INSERT INTO app_user_photo (photo_id, photo_name, userid) VALUES (19, '19', 128);
INSERT INTO app_user_photo (photo_id, photo_name, userid) VALUES (20, '20', 128);
INSERT INTO app_user_photo (photo_id, photo_name, userid) VALUES (21, '21', 128);
INSERT INTO app_user_photo (photo_id, photo_name, userid) VALUES (22, '22', 128);
INSERT INTO app_user_photo (photo_id, photo_name, userid) VALUES (23, '23', 128);
INSERT INTO app_user_photo (photo_id, photo_name, userid) VALUES (24, '24', 128);
INSERT INTO app_user_photo (photo_id, photo_name, userid) VALUES (25, '25', 128);
INSERT INTO app_user_photo (photo_id, photo_name, userid) VALUES (26, '26', 128);
INSERT INTO app_user_photo (photo_id, photo_name, userid) VALUES (27, '27', 128);
INSERT INTO app_user_photo (photo_id, photo_name, userid) VALUES (28, '28', 128);
INSERT INTO app_user_photo (photo_id, photo_name, userid) VALUES (29, '29', 128);
INSERT INTO app_user_photo (photo_id, photo_name, userid) VALUES (30, '30', 128);
INSERT INTO app_user_photo (photo_id, photo_name, userid) VALUES (31, '31', 128);
INSERT INTO app_user_photo (photo_id, photo_name, userid) VALUES (32, '32', 128);
INSERT INTO app_user_photo (photo_id, photo_name, userid) VALUES (33, '33', 128);
INSERT INTO app_user_photo (photo_id, photo_name, userid) VALUES (34, '34', 128);
INSERT INTO app_user_photo (photo_id, photo_name, userid) VALUES (35, '35', 128);
INSERT INTO app_user_photo (photo_id, photo_name, userid) VALUES (36, '36', 128);
INSERT INTO app_user_photo (photo_id, photo_name, userid) VALUES (37, '37', 128);
INSERT INTO app_user_photo (photo_id, photo_name, userid) VALUES (38, '38', 128);
INSERT INTO app_user_photo (photo_id, photo_name, userid) VALUES (39, '39', 131);
INSERT INTO app_user_photo (photo_id, photo_name, userid) VALUES (40, '40', 128);
INSERT INTO app_user_photo (photo_id, photo_name, userid) VALUES (41, '41', 2);


--
-- TOC entry 2369 (class 0 OID 0)
-- Dependencies: 222
-- Name: app_user_photo_photo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('app_user_photo_photo_id_seq', 41, true);


--
-- TOC entry 2370 (class 0 OID 0)
-- Dependencies: 217
-- Name: session_counter_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('session_counter_seq', 2000759, true);


--
-- TOC entry 2271 (class 0 OID 46043)
-- Dependencies: 191
-- Data for Name: sys_application; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO sys_application (appid, appcode, appname, appkey) VALUES (1, 'AX1234', 'Pulsanium Test Client', 'AXY2789SS');


--
-- TOC entry 2371 (class 0 OID 0)
-- Dependencies: 192
-- Name: sys_application_appid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sys_application_appid_seq', 1, true);


--
-- TOC entry 2273 (class 0 OID 46051)
-- Dependencies: 193
-- Data for Name: sys_contexts; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2372 (class 0 OID 0)
-- Dependencies: 194
-- Name: sys_contexts_contextid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sys_contexts_contextid_seq', 1, false);


--
-- TOC entry 2275 (class 0 OID 46059)
-- Dependencies: 195
-- Data for Name: sys_files; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO sys_files (id, name, filepath, type, size, basetype, filetime, hashid) VALUES (375, '5_-green-Agriculture-logo-bar (1).png', '20170406/file375', 'image/png', 287319, 'image', '2017-04-06 05:32:21.349+07', '45b482d071bc8addc658e190f6dadeb9');
INSERT INTO sys_files (id, name, filepath, type, size, basetype, filetime, hashid) VALUES (376, 'agreee.jpg', '20170406/file376', 'image/jpeg', 19163, 'image', '2017-04-06 05:36:07.471+07', '1526cfdaecdf74feeda729942b2cbda1');
INSERT INTO sys_files (id, name, filepath, type, size, basetype, filetime, hashid) VALUES (377, '5_-green-Agriculture-logo-bar.png', '20170406/file377', 'image/png', 287319, 'image', '2017-04-06 05:36:44.993+07', 'f4c541e2beed4cc81dc8e1ec560cf0d5');
INSERT INTO sys_files (id, name, filepath, type, size, basetype, filetime, hashid) VALUES (378, 'think twice.jpg', '20170406/file378', 'image/jpeg', 61846, 'image', '2017-04-06 05:40:32.964+07', '70d52b1d82d9a2a3bb01bed0a9dd35a7');
INSERT INTO sys_files (id, name, filepath, type, size, basetype, filetime, hashid) VALUES (379, 'newProfile.jpg', '20170406/file379', 'image/jpeg', 29192, 'image', '2017-04-06 06:33:56.506+07', '923740c0bc50869a7b2257dbd57041f1');
INSERT INTO sys_files (id, name, filepath, type, size, basetype, filetime, hashid) VALUES (380, 'bisnis-ikan-lele.jpg', '20170408/file380', 'image/jpeg', 52203, 'image', '2017-04-08 06:35:12.205+07', '156c233011de6ed0a93c8bf7096df208');


--
-- TOC entry 2373 (class 0 OID 0)
-- Dependencies: 196
-- Name: sys_files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sys_files_id_seq', 380, true);


--
-- TOC entry 2277 (class 0 OID 46068)
-- Dependencies: 197
-- Data for Name: sys_menu; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO sys_menu (menuid, viewindex, menuname, caption, description, parentid, menulevel, frontbar, command, context, visible, iconname, menuoptions, ismenu) VALUES (10, 2, 'user_management', 'User Management', 'User Management', 2, 2, 0, NULL, NULL, 1, NULL, NULL, 1);
INSERT INTO sys_menu (menuid, viewindex, menuname, caption, description, parentid, menulevel, frontbar, command, context, visible, iconname, menuoptions, ismenu) VALUES (2, 100, 'system', 'System', 'System', 0, 1, 0, NULL, NULL, 1, 'fa fa-gears', NULL, 1);
INSERT INTO sys_menu (menuid, viewindex, menuname, caption, description, parentid, menulevel, frontbar, command, context, visible, iconname, menuoptions, ismenu) VALUES (11, 1, 'users', 'Users', 'Users', 10, 3, 0, 'crud', 'users', 1, 'fa fa-user', NULL, 1);
INSERT INTO sys_menu (menuid, viewindex, menuname, caption, description, parentid, menulevel, frontbar, command, context, visible, iconname, menuoptions, ismenu) VALUES (95, 1, 'kategori', 'Kategori', 'kategori', 93, 1, 0, 'crud', 'kategori', 1, 'fa fa-user-times', NULL, 0);
INSERT INTO sys_menu (menuid, viewindex, menuname, caption, description, parentid, menulevel, frontbar, command, context, visible, iconname, menuoptions, ismenu) VALUES (12, 2, 'roles', 'Roles', 'Roles', 10, 3, 0, 'crud', 'roles', 1, 'fa fa-users', NULL, 1);
INSERT INTO sys_menu (menuid, viewindex, menuname, caption, description, parentid, menulevel, frontbar, command, context, visible, iconname, menuoptions, ismenu) VALUES (186, NULL, 'tambahkonten', NULL, 'tambahkonten', 0, 1, 0, 'artikel', 'artikel/tambah_konten', 1, NULL, NULL, 0);
INSERT INTO sys_menu (menuid, viewindex, menuname, caption, description, parentid, menulevel, frontbar, command, context, visible, iconname, menuoptions, ismenu) VALUES (188, NULL, 'tambahkontenitem', NULL, 'tambahkontenitem', 0, 1, 0, 'artikel/showContentItemForm', NULL, 1, NULL, NULL, 0);
INSERT INTO sys_menu (menuid, viewindex, menuname, caption, description, parentid, menulevel, frontbar, command, context, visible, iconname, menuoptions, ismenu) VALUES (93, 51, 'referensi', 'Referensi', 'Referensi', 0, 0, 0, NULL, NULL, 1, 'fa  fa-book', NULL, 1);
INSERT INTO sys_menu (menuid, viewindex, menuname, caption, description, parentid, menulevel, frontbar, command, context, visible, iconname, menuoptions, ismenu) VALUES (183, 98, 'komoditi', 'Komoditi', 'komoditi', 93, 1, 0, 'crud', 'komoditi', 1, NULL, NULL, 1);
INSERT INTO sys_menu (menuid, viewindex, menuname, caption, description, parentid, menulevel, frontbar, command, context, visible, iconname, menuoptions, ismenu) VALUES (184, 99, 'nonkomoditi', 'Nonkomoditi', 'nonkomoditi', 93, 1, 0, 'crud', 'nonkomoditi', 1, NULL, NULL, 1);
INSERT INTO sys_menu (menuid, viewindex, menuname, caption, description, parentid, menulevel, frontbar, command, context, visible, iconname, menuoptions, ismenu) VALUES (185, 3, 'tanaman', 'Tanaman', 'tanaman', 93, 1, 0, 'crud', 'tanaman', 1, NULL, NULL, 0);
INSERT INTO sys_menu (menuid, viewindex, menuname, caption, description, parentid, menulevel, frontbar, command, context, visible, iconname, menuoptions, ismenu) VALUES (103, 2, 'sub_kategori', 'sub kategori', 'sub_kategori', 93, 1, 0, 'crud', 'subkategori', 1, NULL, NULL, 0);
INSERT INTO sys_menu (menuid, viewindex, menuname, caption, description, parentid, menulevel, frontbar, command, context, visible, iconname, menuoptions, ismenu) VALUES (189, NULL, 'editkonten', NULL, 'editkonten', 0, 1, 0, 'crud', 'editkonten', 1, NULL, NULL, 0);
INSERT INTO sys_menu (menuid, viewindex, menuname, caption, description, parentid, menulevel, frontbar, command, context, visible, iconname, menuoptions, ismenu) VALUES (190, NULL, 'editkontenitem', NULL, 'editkontenitem', 0, 1, 0, 'artikel/showEditContentItemForm', NULL, 1, NULL, NULL, 0);
INSERT INTO sys_menu (menuid, viewindex, menuname, caption, description, parentid, menulevel, frontbar, command, context, visible, iconname, menuoptions, ismenu) VALUES (69, 50, 'artikel', 'Artikel', 'Artikel', 0, 1, 0, 'crud', 'artikel', 1, 'fa fa-pencil', NULL, 1);
INSERT INTO sys_menu (menuid, viewindex, menuname, caption, description, parentid, menulevel, frontbar, command, context, visible, iconname, menuoptions, ismenu) VALUES (191, NULL, 'updatedartikel_konten', NULL, 'updatedartikel_konten', 0, 1, 0, 'crud', 'updatedartikel_konten', 1, NULL, NULL, 0);
INSERT INTO sys_menu (menuid, viewindex, menuname, caption, description, parentid, menulevel, frontbar, command, context, visible, iconname, menuoptions, ismenu) VALUES (199, NULL, 'improvement_page', NULL, NULL, 0, 1, 0, 'crud', 'improvement_page', 1, NULL, NULL, 0);
INSERT INTO sys_menu (menuid, viewindex, menuname, caption, description, parentid, menulevel, frontbar, command, context, visible, iconname, menuoptions, ismenu) VALUES (200, NULL, 'improvementform', NULL, NULL, 0, 1, 0, 'artikel/showImprovementForm', NULL, 1, NULL, NULL, 0);
INSERT INTO sys_menu (menuid, viewindex, menuname, caption, description, parentid, menulevel, frontbar, command, context, visible, iconname, menuoptions, ismenu) VALUES (187, NULL, 'saveartikel', NULL, NULL, 0, 1, 0, 'artikel', 'artikel', 1, NULL, NULL, 0);
INSERT INTO sys_menu (menuid, viewindex, menuname, caption, description, parentid, menulevel, frontbar, command, context, visible, iconname, menuoptions, ismenu) VALUES (1, 0, 'home', 'Home', 'Home', 0, 1, 0, 'home', NULL, 1, 'fa fa-home', NULL, 1);
INSERT INTO sys_menu (menuid, viewindex, menuname, caption, description, parentid, menulevel, frontbar, command, context, visible, iconname, menuoptions, ismenu) VALUES (201, NULL, 'search_engine', NULL, NULL, 0, 1, 0, 'search_engine/doSearch', NULL, 1, NULL, NULL, 0);
INSERT INTO sys_menu (menuid, viewindex, menuname, caption, description, parentid, menulevel, frontbar, command, context, visible, iconname, menuoptions, ismenu) VALUES (202, NULL, 'tambahkontenitemdetail', NULL, NULL, 0, 1, 0, 'artikel/showContentItemDetailForm', NULL, 1, NULL, NULL, 0);


--
-- TOC entry 2374 (class 0 OID 0)
-- Dependencies: 198
-- Name: sys_menu_menuid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sys_menu_menuid_seq', 202, true);


--
-- TOC entry 2279 (class 0 OID 46081)
-- Dependencies: 199
-- Data for Name: sys_methods; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO sys_methods (methodid, objectname, methodname, status) VALUES (1, 'system', 'login', 1);
INSERT INTO sys_methods (methodid, objectname, methodname, status) VALUES (2, 'system', 'logout', 1);
INSERT INTO sys_methods (methodid, objectname, methodname, status) VALUES (4, 'database', 'query', 1);
INSERT INTO sys_methods (methodid, objectname, methodname, status) VALUES (5, 'database', 'execute', 1);
INSERT INTO sys_methods (methodid, objectname, methodname, status) VALUES (3, 'system', 'echo', 1);
INSERT INTO sys_methods (methodid, objectname, methodname, status) VALUES (6, 'menu', 'listitem', 1);
INSERT INTO sys_methods (methodid, objectname, methodname, status) VALUES (7, 'menu', 'additem', 1);
INSERT INTO sys_methods (methodid, objectname, methodname, status) VALUES (8, 'menu', 'deleteitem', 1);
INSERT INTO sys_methods (methodid, objectname, methodname, status) VALUES (9, 'menu', 'updateitem', 1);
INSERT INTO sys_methods (methodid, objectname, methodname, status) VALUES (10, 'menu', 'getoptions', 1);
INSERT INTO sys_methods (methodid, objectname, methodname, status) VALUES (11, 'query', 'paraminfo', 1);
INSERT INTO sys_methods (methodid, objectname, methodname, status) VALUES (12, 'query', 'querydata', 1);
INSERT INTO sys_methods (methodid, objectname, methodname, status) VALUES (13, 'query', 'getoptions', 1);
INSERT INTO sys_methods (methodid, objectname, methodname, status) VALUES (14, 'entrydata', 'paraminfo', 1);
INSERT INTO sys_methods (methodid, objectname, methodname, status) VALUES (15, 'entrydata', 'querydata', 1);
INSERT INTO sys_methods (methodid, objectname, methodname, status) VALUES (16, 'entrydata', 'getoptions', 1);
INSERT INTO sys_methods (methodid, objectname, methodname, status) VALUES (17, 'entrydata', 'browsedata', 1);
INSERT INTO sys_methods (methodid, objectname, methodname, status) VALUES (18, 'entrydata', 'getconfig', 1);
INSERT INTO sys_methods (methodid, objectname, methodname, status) VALUES (19, 'workflow', 'execute', 1);
INSERT INTO sys_methods (methodid, objectname, methodname, status) VALUES (20, 'workflow', 'batch', 1);
INSERT INTO sys_methods (methodid, objectname, methodname, status) VALUES (21, 'workflow', 'process', 1);
INSERT INTO sys_methods (methodid, objectname, methodname, status) VALUES (22, 'query', 'execute', 1);


--
-- TOC entry 2375 (class 0 OID 0)
-- Dependencies: 200
-- Name: sys_methods_methodid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sys_methods_methodid_seq', 22, true);


--
-- TOC entry 2281 (class 0 OID 46089)
-- Dependencies: 201
-- Data for Name: sys_objectpermissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2376 (class 0 OID 0)
-- Dependencies: 202
-- Name: sys_objectpermissions_objectpermissionid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sys_objectpermissions_objectpermissionid_seq', 1, false);


--
-- TOC entry 2283 (class 0 OID 46094)
-- Dependencies: 203
-- Data for Name: sys_objects; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO sys_objects (objectid, objectname, status) VALUES (2, 'metadata', 1);
INSERT INTO sys_objects (objectid, objectname, status) VALUES (1, 'system', 1);
INSERT INTO sys_objects (objectid, objectname, status) VALUES (3, 'database', 1);
INSERT INTO sys_objects (objectid, objectname, status) VALUES (4, 'menu', 1);
INSERT INTO sys_objects (objectid, objectname, status) VALUES (5, 'query', 1);
INSERT INTO sys_objects (objectid, objectname, status) VALUES (6, 'entrydata', 1);
INSERT INTO sys_objects (objectid, objectname, status) VALUES (7, 'workflow', 1);


--
-- TOC entry 2377 (class 0 OID 0)
-- Dependencies: 204
-- Name: sys_objects_objectid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sys_objects_objectid_seq', 7, true);


--
-- TOC entry 2285 (class 0 OID 46102)
-- Dependencies: 205
-- Data for Name: sys_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO sys_permissions (permissionid, category, permissionname, description, active) VALUES (1, 'menu', 'home', 'Home', 1);
INSERT INTO sys_permissions (permissionid, category, permissionname, description, active) VALUES (2, 'menu', 'artikel', 'artikel', 1);
INSERT INTO sys_permissions (permissionid, category, permissionname, description, active) VALUES (5, 'menu', 'referensi', 'referensi', 1);
INSERT INTO sys_permissions (permissionid, category, permissionname, description, active) VALUES (6, 'menu', 'system', 'System', 1);
INSERT INTO sys_permissions (permissionid, category, permissionname, description, active) VALUES (51, 'menu', 'kategori', 'kategori', 1);
INSERT INTO sys_permissions (permissionid, category, permissionname, description, active) VALUES (52, 'menu', 'sub_kategori', 'sub kategori', 1);
INSERT INTO sys_permissions (permissionid, category, permissionname, description, active) VALUES (61, 'menu', 'user_management', 'User Management', 1);
INSERT INTO sys_permissions (permissionid, category, permissionname, description, active) VALUES (62, 'menu', 'users', 'Users', 1);
INSERT INTO sys_permissions (permissionid, category, permissionname, description, active) VALUES (53, 'menu', 'tanaman', 'tanaman', 1);
INSERT INTO sys_permissions (permissionid, category, permissionname, description, active) VALUES (54, 'menu', 'komoditi', 'komoditi', 1);
INSERT INTO sys_permissions (permissionid, category, permissionname, description, active) VALUES (55, 'menu', 'nonkomoditi', 'nonkomoditi', 1);
INSERT INTO sys_permissions (permissionid, category, permissionname, description, active) VALUES (63, 'menu', 'roles', 'Roles', 1);
INSERT INTO sys_permissions (permissionid, category, permissionname, description, active) VALUES (88, 'menu', 'tambahkonten', 'tambahkonten', 1);
INSERT INTO sys_permissions (permissionid, category, permissionname, description, active) VALUES (33, 'menu', 'saveartikel', NULL, 1);
INSERT INTO sys_permissions (permissionid, category, permissionname, description, active) VALUES (89, 'menu', 'tambahkontenitem', 'tambahkontenitem', 1);
INSERT INTO sys_permissions (permissionid, category, permissionname, description, active) VALUES (90, 'menu', 'editkonten', 'editkonten', 1);
INSERT INTO sys_permissions (permissionid, category, permissionname, description, active) VALUES (91, 'menu', 'editkontenitem', 'editkontenitem', 1);
INSERT INTO sys_permissions (permissionid, category, permissionname, description, active) VALUES (92, 'menu', 'updatedartikel_konten', 'updatedartikel_konten', 1);
INSERT INTO sys_permissions (permissionid, category, permissionname, description, active) VALUES (93, 'menu', 'improvementform', NULL, 1);
INSERT INTO sys_permissions (permissionid, category, permissionname, description, active) VALUES (94, 'menu', 'search_engine', NULL, 1);
INSERT INTO sys_permissions (permissionid, category, permissionname, description, active) VALUES (95, 'menu', 'showContentItemDetailForm', NULL, 1);


--
-- TOC entry 2378 (class 0 OID 0)
-- Dependencies: 206
-- Name: sys_permissions_permissionid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sys_permissions_permissionid_seq', 95, true);


--
-- TOC entry 2287 (class 0 OID 46111)
-- Dependencies: 207
-- Data for Name: sys_rolepermissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO sys_rolepermissions (rolepermissionid, roleid, permissionid) VALUES (775, 1, 88);
INSERT INTO sys_rolepermissions (rolepermissionid, roleid, permissionid) VALUES (776, 1, 33);
INSERT INTO sys_rolepermissions (rolepermissionid, roleid, permissionid) VALUES (687, 1, 1);
INSERT INTO sys_rolepermissions (rolepermissionid, roleid, permissionid) VALUES (688, 1, 2);
INSERT INTO sys_rolepermissions (rolepermissionid, roleid, permissionid) VALUES (777, 1, 87);
INSERT INTO sys_rolepermissions (rolepermissionid, roleid, permissionid) VALUES (780, 1, 90);
INSERT INTO sys_rolepermissions (rolepermissionid, roleid, permissionid) VALUES (691, 1, 5);
INSERT INTO sys_rolepermissions (rolepermissionid, roleid, permissionid) VALUES (785, 1, 91);
INSERT INTO sys_rolepermissions (rolepermissionid, roleid, permissionid) VALUES (786, 1, 92);
INSERT INTO sys_rolepermissions (rolepermissionid, roleid, permissionid) VALUES (731, 1, 6);
INSERT INTO sys_rolepermissions (rolepermissionid, roleid, permissionid) VALUES (732, 1, 7);
INSERT INTO sys_rolepermissions (rolepermissionid, roleid, permissionid) VALUES (735, 1, 51);
INSERT INTO sys_rolepermissions (rolepermissionid, roleid, permissionid) VALUES (736, 1, 52);
INSERT INTO sys_rolepermissions (rolepermissionid, roleid, permissionid) VALUES (737, 1, 61);
INSERT INTO sys_rolepermissions (rolepermissionid, roleid, permissionid) VALUES (738, 1, 62);
INSERT INTO sys_rolepermissions (rolepermissionid, roleid, permissionid) VALUES (740, 1, 53);
INSERT INTO sys_rolepermissions (rolepermissionid, roleid, permissionid) VALUES (744, 1, 54);
INSERT INTO sys_rolepermissions (rolepermissionid, roleid, permissionid) VALUES (746, 1, 55);
INSERT INTO sys_rolepermissions (rolepermissionid, roleid, permissionid) VALUES (748, 1, 63);
INSERT INTO sys_rolepermissions (rolepermissionid, roleid, permissionid) VALUES (787, 1, 93);
INSERT INTO sys_rolepermissions (rolepermissionid, roleid, permissionid) VALUES (788, 1, 94);
INSERT INTO sys_rolepermissions (rolepermissionid, roleid, permissionid) VALUES (789, 1, 95);


--
-- TOC entry 2379 (class 0 OID 0)
-- Dependencies: 208
-- Name: sys_rolepermissions_rolepermissionid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sys_rolepermissions_rolepermissionid_seq', 788, true);


--
-- TOC entry 2289 (class 0 OID 46116)
-- Dependencies: 209
-- Data for Name: sys_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO sys_roles (roleid, rolename, description, active) VALUES (2, 'user', 'User', 1);
INSERT INTO sys_roles (roleid, rolename, description, active) VALUES (1, 'admin', 'Administrator', 1);


--
-- TOC entry 2380 (class 0 OID 0)
-- Dependencies: 210
-- Name: sys_roles_roleid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sys_roles_roleid_seq', 7, true);


--
-- TOC entry 2291 (class 0 OID 46125)
-- Dependencies: 211
-- Data for Name: sys_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1291, '0dbf667f5c49ad63ea9ffe2c6b90139d', '2016-09-12 15:18:48+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1292, 'f18045da3f1f7de9c70024ff51b8b8b8', '2016-09-12 15:19:54+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1293, 'eb62a2a16d1beec940bb694becf4382f', '2016-09-13 08:31:53+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1295, '8c487da2b2bff9e31ccdc4324fbaac5a', '2016-09-13 09:01:28+07', 'harimurpi@live.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1300, 'b95603923387c9b48646f30ef361dea8', '2016-09-13 09:44:50+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1301, '24d576c57cb8eb5cb55cf0cffad9ad32', '2016-09-13 09:52:54+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1302, 'b0a9aa1cf35c7b67f51672e4c801f571', '2016-09-13 10:00:39+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1303, 'ec982bff0f393899c987717440790712', '2016-09-13 15:10:28+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1304, '2deb9c98ea313314f9eac43e2607d03c', '2016-09-13 16:20:14+07', 'harimurpi@live.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1305, 'ae781a3f5693a20c599cd97ab464aa24', '2016-09-13 17:22:43+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1306, 'ae241fac8c42ea6bb9b782ccd3012ba3', '2016-09-16 10:15:04+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1307, 'a2e3334a3568f39f78d00965d3afe0cd', '2016-09-16 10:15:34+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1308, '5f204563e0f555c667a8e90ad6ed3c65', '2016-09-16 10:31:49+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1309, '9a20e7fdea666cf4498d83ec3d13a74f', '2016-09-16 10:40:26+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1310, '975a2cbeb6a6e9849473f0133e3c2e9b', '2016-09-16 10:44:54+07', 'harimurpi@live.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1311, '97759b86fdb6f02eb4a7d5fc893e2c41', '2016-09-16 13:28:33+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1312, '63a3f9cf10eb5f93ac3da424272de869', '2016-09-17 08:22:02+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1313, '3648ae44f582bad814e9df10b9a97414', '2016-09-17 08:57:16+07', 'harimurpi@live.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1314, '83e1c3a2beec6923b2dffd4b4cf02301', '2016-09-17 09:05:43+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1315, 'afe1b19128988e4338cafa9bfc26e2bd', '2016-09-17 09:13:31+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1317, '110f63d24ce81643c7061a4cefe7961f', '2016-09-18 08:19:38+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1318, 'af5c569f7b7c14c7f4f9219e092c00fc', '2016-09-18 10:37:45+07', 'harimurpi@live.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1319, '196f7a92742754974c690fa3346c3bc8', '2016-09-18 15:54:24+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1320, '314da53f90705ded3664d343817f8c61', '2016-09-19 08:48:31+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1321, 'cc51d48ad72f0e1f032dcd4031f12c6f', '2016-09-19 13:32:24+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1322, '52efc89166845913268bf27cf11c115d', '2016-09-20 08:46:22+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1323, 'f7ef468de5af6a56ab7eb87c1fba4427', '2016-09-20 13:59:47+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1324, '96b3d97cedea06b715e2a5cc5027525b', '2016-09-23 08:13:33+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1329, '6dabc02c8e9e210b99516e78198f36f9', '2016-09-24 05:27:17+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1330, '59d5f81a10f91e56d37c525e2e04556c', '2016-09-24 09:23:16+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1333, '3f838457b1ac61983d5aa146596f33d0', '2016-09-25 10:20:04+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1342, '0a4ca41116e65be61361cb3bc421c27f', '2016-09-26 14:17:02+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1346, '66f26b3fdad22ba85721ff31ba345703', '2016-09-26 14:31:44+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1347, 'e495cc6b0d7f7ce26ad8bc46e2fa2b8c', '2016-09-26 15:05:56+07', 'boi.cinobi@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1348, '596cd18e72851c3941863eb950871415', '2016-09-26 15:48:23+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1349, 'a04339c4e6371d23c7c62d0d6a871afc', '2016-09-26 15:54:35+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1350, '1782324780083aa94c3390b8f2f517cd', '2016-09-26 16:24:49+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1353, 'd21ee16dabc5102e4a02f3ca8749e0d8', '2016-09-27 08:30:17+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1356, 'faded2b3fcd8f4042bc2359fdfa92b0d', '2016-09-27 11:22:30+07', 'arkhanmahdi@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1357, '933fe9f528ac0bf99c24ae5bbacb894a', '2016-09-27 11:25:41+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1360, '072285f9ce1e48c60be945d92397a2ec', '2016-09-27 13:26:56+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1361, '055686f3d3bdec2d8d17d3bd78244eb9', '2016-09-27 14:59:02+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1363, '8167ba733bf2efd15fc5944b14f74358', '2016-09-27 16:26:19+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1364, 'c0de8aacf32a2afa87d25d82b5c4e4f3', '2016-09-27 16:26:56+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1365, '4682e994043df96c976be376ba09e108', '2016-09-27 17:09:47+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1366, '901a8a9aa04ee16b0c7f9bcffeb15a65', '2016-10-04 16:45:29+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1367, '9909626ab066e44414f1566a4de10e7f', '2016-10-07 10:26:47+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1368, 'fa829abbfe7c032f33931b76a6c7401d', '2016-10-07 15:54:49+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1369, 'ba99585d2c55e56210567fa2584d67d3', '2016-10-08 09:16:43+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1370, '480d47aa8ea712cad33affff7e475610', '2016-10-08 15:11:31+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1371, '303a81987b3f383108bc4e6ba188b5a7', '2016-10-09 10:18:06+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1372, '5e0db132b888baa58b3fb88d2925463a', '2016-10-10 08:22:02+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1373, '6055cdadcd8f9a82ebc479205384e81e', '2016-10-10 17:43:42+07', 'anwarpermana98@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1374, '4383c827889c25b7d1c738f85cb92631', '2016-10-10 19:47:50+07', 'sarah.permana@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1375, 'da5245616be6f49509cdb986ee51d2c3', '2016-10-11 08:41:53+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1376, '65ebf79c880ee996bbbab17a2bc814fd', '2016-10-11 14:07:40+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1377, '5ec3e00a797ccbbcbdb025054828e2b4', '2016-10-14 07:11:40+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1378, '41ae623b6027ae2b8640c6ae632e6e95', '2016-10-14 09:38:59+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1379, 'aa83f77fc5b938b0039b2993568969d6', '2016-10-14 17:10:54+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1380, '850dd3a4a12afc850aff98d33399689e', '2016-10-18 02:01:34+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1381, 'c018292cea6a1b67e129f69c7018f2f1', '2016-10-18 13:57:11+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1382, 'd525a0c036952aa8abeab0fe5c35dc13', '2016-10-23 08:55:30+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1383, '87183d2273f0b0feeba9fbf2b305eed0', '2016-10-24 08:21:10+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1385, '89fc219789fbdc898eb66f6d54883ef4', '2016-10-30 10:50:17+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1386, 'd26eed08826c65fb223f300b11471c14', '2016-10-30 14:28:31+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1387, 'aee50da74db7dc47c97628276cc23bac', '2016-10-31 08:22:08+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1388, '91aa34c7a2053a8a928d1f537dac6e59', '2016-10-31 09:26:30+07', 'harimurpi@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1389, '22a2f0389c68bab8293c5c822ac5c1be', '2016-10-31 09:42:18+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1390, '74515d35e2a66c60b6d138aa0af44fda', '2016-10-31 14:32:35+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1391, 'fee15f5cfa5e6107496c3673efc22248', '2016-11-01 08:27:57+07', 'harimurpi@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1393, '899a30c21867cfdd9f582b44973faf5c', '2016-11-01 09:07:49+07', 'harimurpi@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1394, 'b94c788b9868b01ebe48611e831e6b5f', '2016-11-01 09:22:46+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1395, '60aef4256525e805a3f15b31b2aff642', '2016-11-01 11:24:28+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1397, 'e7ed2c7cfb74ef253a1549928e46309a', '2016-11-01 15:43:13+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1400, '73a12fcf8ea0264b73fa77a8e591cd77', '2016-11-01 18:08:58+07', 'harimurpi@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1405, '1f4c9ce5f66921a47b88720ed6e49ce7', '2016-11-03 06:14:26+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1406, '0bb7d49e1e9debd61b122750ad1a6d1f', '2016-11-04 08:43:41+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1408, '707386b1bb4197575eabedc6216cd06f', '2016-11-04 09:39:35+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1410, '78046c550fb6d61b2aa7bbdd9741ca12', '2016-11-04 10:32:07+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1412, 'ea67d1b6353f6e987d9e967c18f8e4d0', '2016-11-04 11:17:44+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1413, '4db7311c958e48c95dabb50d965b0e50', '2016-11-04 15:41:15+07', 'rekysenjaya@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1415, '0071ac2b87990466ef90b8cafffe9b74', '2016-11-04 17:22:07+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1416, '61551f4c80edc7cbc135efb2ab9d4d8e', '2016-11-04 17:22:54+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1417, '4ffe4e7935b49f2529bece738a85a511', '2017-05-17 01:54:47+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1421, '5b798b0ee1735c065b9238ca2d4917bc', '2017-05-18 12:45:22+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1422, '0d6f0d79d065e39de90bb30e80f667b0', '2017-05-18 23:01:11+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1428, 'db59d53798b319e03e82eb22582f8f22', '2017-05-19 09:53:39+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1432, '04e27ce97e8c59368199572cc367fe14', '2017-05-20 18:19:50+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1436, '3f8b0459efd7579cdf370a86dab02eb1', '2017-05-20 21:25:13+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1442, '38a68039e2ed7dbb03f92ab66ab5d327', '2017-05-20 23:22:33+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1444, 'c53dc4cc52944f967e1eed97e9df1204', '2017-05-20 23:42:30+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1445, '85128fc9260c3eca1f9487863d76702c', '2017-05-21 03:57:34+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1446, '555b2f13b752b6f8d902f83de9eae84a', '2017-05-21 13:37:04+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1447, '2ffd3d614ae272c3003443fa25174d8e', '2017-05-21 14:01:48+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1448, '18581542b46a650b0816e8d9eef74d29', '2017-05-21 14:02:05+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1449, '58967c6bf1073e0fbf6a3c363f1f2b16', '2017-05-21 14:02:35+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1450, '6e5c0ad7da3fcc7ae96e220d606e7c81', '2017-05-21 14:25:54+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1452, '1f68366c453530126127c8d969dc01a8', '2017-05-21 20:56:00+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1453, 'c06fd88b2a2844628a36989146d10ed6', '2017-05-21 22:59:36+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1454, '31f90e6ae4e8379a6edd09af62abefc2', '2017-05-22 00:57:35+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1455, '89cea0081d9030d7407c5fc00781e693', '2017-05-22 10:49:24+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1456, '8834b7f13a10bbdcacffc03822ae29c1', '2017-05-22 16:36:56+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1457, '18238a46ced81970d206cbb06d94b2d2', '2017-05-23 14:35:31+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1458, '2b65177f9990aa3b30e05a7208e0b199', '2017-05-23 19:04:33+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1459, '80e4cc6f7b6081c3f07b84d113b67c9a', '2017-05-24 15:41:01+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1460, '16cd5afe36c0c357e9f99a8f5cc5f486', '2017-05-24 15:41:17+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1461, 'cb9db1801d832ad32d5279c6f16444be', '2017-05-24 15:41:43+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1462, '40c388284b6427e15b96aa3bef275038', '2017-05-24 15:42:09+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1463, '2c2094b79e011bc68a29e98bf17ecb56', '2017-05-24 15:42:53+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1464, '804113e280b81ef801186c5f71fc0c28', '2017-05-24 15:45:55+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1465, 'c43ec8b04636797b421e6d1be4e169ae', '2017-05-24 15:46:59+07', 'totok');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1466, '2821aa0292f1da9d51b3c044593697f0', '2017-05-24 15:58:43+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1467, 'aa53801f6a8a28dabcbbf6ec2b95a658', '2017-05-25 01:11:39+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1468, '37e33c5034a8624597c56e40f4380f6c', '2017-05-25 01:14:20+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1469, '8fc9828cb2afcfbdc60645d7d7bde507', '2017-05-25 11:25:46+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1470, 'e776744967a9dca6635244b3155328e5', '2017-05-25 12:04:26+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1471, 'b0575f142cff2561a1157aaf8770d0e1', '2017-05-25 23:58:12+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1472, '174a2972d2588dbee8a5b4af8dfb2845', '2017-05-26 22:23:21+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1473, '90d9bb7cca43426ec6c00a0569937b8e', '2017-05-27 15:38:14+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1474, '44d44dcfe87360571d4e853b3bebd4e5', '2017-05-28 03:06:25+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1475, 'fcb5a84147bc326ee2e88305c2de531d', '2017-05-29 13:00:03+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1476, 'ea895b428ff25595368cf4e49b100fa8', '2017-05-29 14:45:26+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1477, '618b8567018fd294fc0b00f3d33d0034', '2017-05-29 19:48:12+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1478, 'b8bedd8c4bca4d52151df431adf329a1', '2017-05-30 15:38:17+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1479, '307974d8fe075748d9711d67e8f27ffb', '2017-05-31 22:18:47+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1482, '7e8c80ae194dba31bdc4d0030a8fafcd', '2017-06-03 22:43:52+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1483, '230a2c53c182958f60d0a3b998c2729d', '2017-06-04 04:38:05+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1484, '8f522db87a549f420ae2089b936f86b0', '2017-06-04 17:50:17+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1485, '982b96043ddfe2112ed98634f483e856', '2017-06-05 03:29:40+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1486, '4b2c0c9ac9a094c5001606791c40bf1d', '2017-06-06 22:11:42+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1487, '84c69e8d5855d32a1e6c87e57a166ff3', '2017-06-11 04:45:45+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1488, '8192f18477dc29349192a0486c2600bc', '2017-06-13 04:24:52+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1492, '331502b7d89e9ee396f9237c97f6b0ca', '2017-06-27 02:20:22+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1493, 'c76948bafda7ba1c9c8dbff7af3a3cde', '2017-06-27 02:37:14+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1494, 'cd6431eda6d57539ddd6a2231ae15250', '2017-06-27 02:39:31+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1495, '108d98206913c6774190a24f2716c7af', '2017-06-27 02:39:37+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1496, '8d7bdb1e8c56aa1cc4c5be1b6df858a9', '2017-06-27 02:39:57+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1497, '82bc82234815e55bc5148b038f62d79b', '2017-06-27 02:40:00+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1500, '642e2509fdb572de93f63cc794c17c8d', '2017-06-27 03:30:01+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1501, '2967bebe7e4daf73ae70f97465f6de59', '2017-06-27 03:31:39+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1502, '5807056c28d70769375006b87e1a09b8', '2017-06-27 04:15:11+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1503, 'ab0700e4b4fb1965dbc52f40b0d3b7e6', '2017-06-27 05:11:06+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1504, 'ff9cb3b05fb03b0a05f89e3d8bca9241', '2017-06-27 05:11:26+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1506, '380771091ae4ac6613c132f5d2a0bfd0', '2017-06-27 05:12:41+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1508, '4c519f3c922683a96006e3393cf4e410', '2017-06-27 05:13:27+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1509, 'ba5a5d79eae69d7ca2bccd366f03e8d6', '2017-06-27 05:17:43+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1510, '1ab70e13add19c4af7634edbe811e8ae', '2017-06-27 05:18:22+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1511, 'e32f15501dc9468446d13e184d9dbe46', '2017-06-27 05:19:23+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1512, 'dd6c63bdb88bb8b25e4cd3e631181d0d', '2017-06-27 16:21:34+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1513, 'c28a6cce82bfdea257ae42d2764c8908', '2017-06-27 16:22:04+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1514, 'e9d6418009a29bfcacd9e9e2a05e3c1c', '2017-06-27 16:22:42+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1515, 'f2e203ffa2ea25ad09c0d6cf69679672', '2017-06-27 16:25:56+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1516, 'f141c587236edc54bf5af8331eecd240', '2017-06-27 16:27:24+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1517, '6197ed658960014fb972a84efba40635', '2017-06-27 16:32:44+07', 'admin');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1518, 'de59345a10f91d113e582ff73e504108', '2017-06-27 16:35:52+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1520, 'a9dd1588583dfa96897fa35502b6c823', '2017-06-27 20:35:28+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1522, '91863d3cce34d73035c57b17fb4db324', '2017-06-27 21:05:59+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1554, '2996492e1f235523459026173637f766', '2017-06-30 04:04:53+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1559, 'e33c0db36990ea11a345a033ba3dcb4a', '2017-07-11 00:48:07+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1561, 'd6219a28fe43331e789169933d3a840e', '2017-07-12 20:38:20+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1585, '74467751ec6411b4596b51d54213e1dc', '2017-07-18 17:13:11+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1586, '109b2e7ab013a16d4a1e4354599ce694', '2017-07-18 21:12:31+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1587, '97359da64b0e1e4af174004dc83c5d92', '2017-07-19 22:43:33+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1588, '5b0f76366ee68c4be3c3fa0cf8e10004', '2017-07-21 00:32:42+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1593, '3964f2f48036884f77e3b5fb55e20b62', '2017-07-22 08:26:19+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1594, 'd9fd9b18bcb0c474838c1800e29f3e6d', '2017-07-22 08:32:18+07', 'ekhazuyyin@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1596, '22afc2a835e58f32fa715fe2bc62e793', '2017-07-23 02:51:34+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1597, '4a5cd0c3d832c97966e18f4faf5150f4', '2017-07-23 03:20:27+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1598, '10037618fb9208418760390ee0ae6971', '2017-07-24 20:31:20+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1599, '19fccf953f65c0c7bae282c2f764c992', '2017-07-25 02:57:46+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1600, '6daf653a6a623b81243d5d47c8df0dee', '2017-07-25 07:55:49+07', 'ekhazuyyin@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1601, 'ec7b7e57b81a694394715813b0132bce', '2017-07-25 08:46:15+07', 'ekhazuyyin@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1602, '6b52d674231167aacd5ca3f2fd5c76e0', '2017-07-25 20:40:51+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1603, 'e13817f2487c2e8195e18a3836445e87', '2017-07-27 14:49:54+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1604, '7e8605c1822177c32d5f48f237114c1d', '2017-07-27 16:32:44+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1606, '2e9225a56f36b9c4d715eee5efdb3282', '2017-07-27 17:18:11+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1607, '21df87ad272a61fe6ff0afc2444f945c', '2017-07-28 05:32:38+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1608, 'f34735b34e27f79e339d1cedacf0efec', '2017-07-29 00:02:27+07', 'ekhazuyyin@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1609, 'f378f2d781dda7362e1f5e2418f4a029', '2017-07-29 00:04:27+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1610, '9219971e808a981c0724346927e43f8e', '2017-08-03 21:09:42+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1612, '09e0f39d6aeff233e737887c1e1d764d', '2017-08-04 11:08:48+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1615, '7bc819c07de2662c64b1c999d84fdb43', '2017-08-07 00:35:24+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1616, 'da5f1a7549b24bb9cb8e293941a76a5d', '2017-08-07 17:31:59+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1617, '5be6d8d1c222b9925fba30c198376372', '2017-08-07 22:50:12+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1618, '4544f586cc5c0b0d920a1a68bdfb9823', '2017-08-08 16:45:59+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1619, 'c099635a6dd9b5ab52607af424f51942', '2017-08-09 20:38:12+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1621, '9d5d2c77535eacfae48d19d5e766a2e8', '2017-08-10 18:42:09+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1622, '6f7e7364ba85e01ebbb5d37210b652dd', '2017-08-10 18:44:48+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1623, 'ebf0248dd8c3c4c50894045fb8cadbe3', '2017-08-10 18:49:20+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1624, '79c115d0154c101231ba7598b4f8799c', '2017-08-10 21:52:06+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1625, 'cbe3c966a542cc925d88d9a1b57a2b69', '2017-08-11 18:36:23+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1626, '76c64d10964b9bee7c6dc391bbccc685', '2017-08-11 21:02:35+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1627, 'cbc7f891b6da8d2729387f5cd98fcec3', '2017-08-11 21:06:58+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1628, 'd97f330269852674b55f093176feecf6', '2017-08-12 01:07:39+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1629, '6e74194102fa6c46ab792cec37928246', '2017-08-12 02:29:00+07', 'alimin1313@gmail.com');
INSERT INTO sys_session (sessionid, sessioncode, sessionexpired, username) VALUES (1630, '5463a1f66dcf4ec2050fd2631c5ae60f', '2017-08-13 21:15:28+07', 'alimin1313@gmail.com');


--
-- TOC entry 2381 (class 0 OID 0)
-- Dependencies: 212
-- Name: sys_session_sessionid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sys_session_sessionid_seq', 1630, true);


--
-- TOC entry 2293 (class 0 OID 46133)
-- Dependencies: 213
-- Data for Name: sys_userroles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (8, 31, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (9, 32, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (10, 33, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (11, 34, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (12, 38, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (13, 40, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (14, 41, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (15, 42, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (16, 44, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (17, 46, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (18, 48, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (19, 52, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (20, 53, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (22, 55, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (23, 56, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (24, 57, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (31, 64, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (32, 65, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (33, 66, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (34, 67, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (35, 68, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (38, 71, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (39, 72, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (40, 73, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (41, 74, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (43, 76, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (44, 77, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (45, 78, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (46, 79, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (47, 80, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (48, 81, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (49, 82, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (50, 83, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (52, 93, 1);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (53, 94, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (54, 95, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (55, 96, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (58, 99, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (59, 100, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (60, 101, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (61, 102, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (62, 103, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (63, 104, 1);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (64, 104, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (65, 105, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (66, 106, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (67, 107, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (68, 108, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (69, 109, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (70, 110, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (71, 1, 1);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (72, 111, 1);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (73, 112, 1);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (74, 113, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (75, 115, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (76, 116, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (77, 118, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (78, 119, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (79, 120, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (80, 121, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (81, 122, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (82, 123, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (83, 123, 1);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (84, 124, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (85, 125, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (86, 127, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (87, 128, 2);
INSERT INTO sys_userroles (userroleid, userid, roleid) VALUES (88, 131, 2);


--
-- TOC entry 2382 (class 0 OID 0)
-- Dependencies: 214
-- Name: sys_userroles_userroleid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sys_userroles_userroleid_seq', 88, true);


--
-- TOC entry 2295 (class 0 OID 46138)
-- Dependencies: 215
-- Data for Name: sys_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO sys_users (userid, username, password, lastlogin, active, fullname, enctype, isadmin, isemailverified, isverified, addres) VALUES (4, 'totok', '3647516f2c', NULL, 1, 'Tester', 1, 1, 0, 0, NULL);
INSERT INTO sys_users (userid, username, password, lastlogin, active, fullname, enctype, isadmin, isemailverified, isverified, addres) VALUES (99, 'kusnassriyanto@gmail.com', '234c486929', NULL, 1, 'Kusnassriyanto Saiful Bhari', 1, 0, 1, 0, NULL);
INSERT INTO sys_users (userid, username, password, lastlogin, active, fullname, enctype, isadmin, isemailverified, isverified, addres) VALUES (100, 'kus.nassriyanto@gmail.com', '234c486929', NULL, 1, 'Totok', 1, 0, 1, 1, NULL);
INSERT INTO sys_users (userid, username, password, lastlogin, active, fullname, enctype, isadmin, isemailverified, isverified, addres) VALUES (101, 'boi.cinobi@gmail.com', '354c553574d7f11af5', NULL, 1, 'Mahdi Hari Murpi', 1, 0, 1, 1, NULL);
INSERT INTO sys_users (userid, username, password, lastlogin, active, fullname, enctype, isadmin, isemailverified, isverified, addres) VALUES (103, 'k.u.s.nassriyanto@gmail.com', '234c486929', NULL, 1, 'Kus Totok', 1, 0, 1, 0, NULL);
INSERT INTO sys_users (userid, username, password, lastlogin, active, fullname, enctype, isadmin, isemailverified, isverified, addres) VALUES (102, 'arkhanmahdi@gmail.com', '354c553574d7f11af5', NULL, 1, 'arkhan', 1, 0, 1, 1, NULL);
INSERT INTO sys_users (userid, username, password, lastlogin, active, fullname, enctype, isadmin, isemailverified, isverified, addres) VALUES (105, 'anwarpermana98@gmail.com', '274c5f692c83f345aa7199', NULL, 1, 'Anwar Permana', 1, 0, 1, 0, NULL);
INSERT INTO sys_users (userid, username, password, lastlogin, active, fullname, enctype, isadmin, isemailverified, isverified, addres) VALUES (106, 'sarah.permana@gmail.com', '1f5350632b8af418f124', NULL, 1, 'Sarah Fadhilah Amatullah Permana', 1, 0, 1, 0, NULL);
INSERT INTO sys_users (userid, username, password, lastlogin, active, fullname, enctype, isadmin, isemailverified, isverified, addres) VALUES (107, 'harimurpi@gmail.com', '354c553574d7f11af5', NULL, 1, 'Arkhan', 1, 0, 1, 1, NULL);
INSERT INTO sys_users (userid, username, password, lastlogin, active, fullname, enctype, isadmin, isemailverified, isverified, addres) VALUES (109, 'rekysenjaya@gmail.com', '2546577f', NULL, 1, 'reky', 1, 0, 1, 1, NULL);
INSERT INTO sys_users (userid, username, password, lastlogin, active, fullname, enctype, isadmin, isemailverified, isverified, addres) VALUES (96, 'harimurpi@live.com', '354c553574d7f11af5', NULL, 1, 'Mahdi Hari Murpi', 1, 0, 1, 1, NULL);
INSERT INTO sys_users (userid, username, password, lastlogin, active, fullname, enctype, isadmin, isemailverified, isverified, addres) VALUES (111, 'tomo', '3c4c4c633685ab48b0', NULL, 1, 'tomo', 1, 0, 0, 0, NULL);
INSERT INTO sys_users (userid, username, password, lastlogin, active, fullname, enctype, isadmin, isemailverified, isverified, addres) VALUES (1, 'admin', '254a46772b94b548b77891e4', NULL, 1, 'rizqi', 1, 1, 0, 0, NULL);
INSERT INTO sys_users (userid, username, password, lastlogin, active, fullname, enctype, isadmin, isemailverified, isverified, addres) VALUES (114, 'guest ', '3c48576d29', NULL, 1, 'Guest', 1, 0, 0, 0, NULL);
INSERT INTO sys_users (userid, username, password, lastlogin, active, fullname, enctype, isadmin, isemailverified, isverified, addres) VALUES (128, 'alimin1313@gmail.com', '364f556b2b8a', NULL, 1, 'Alimin', 1, 0, 1, 0, 'pemalang indonesia');
INSERT INTO sys_users (userid, username, password, lastlogin, active, fullname, enctype, isadmin, isemailverified, isverified, addres) VALUES (113, 'rizqi', '364f556b2b8a', NULL, 1, 'tomo', 1, 0, 0, 0, NULL);
INSERT INTO sys_users (userid, username, password, lastlogin, active, fullname, enctype, isadmin, isemailverified, isverified, addres) VALUES (131, 'ekhazuyyin@gmail.com', '244c50632a85', NULL, 1, 'soleha', 1, 0, 1, 0, NULL);


--
-- TOC entry 2383 (class 0 OID 0)
-- Dependencies: 216
-- Name: sys_users_userid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sys_users_userid_seq', 143, true);


--
-- TOC entry 2141 (class 2606 OID 70645)
-- Name: app_bussines_contract_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY app_bussines_latter
    ADD CONSTRAINT app_bussines_contract_pkey PRIMARY KEY (bussines_latter_id);


--
-- TOC entry 2067 (class 2606 OID 53904)
-- Name: app_bussines_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY app_bussines
    ADD CONSTRAINT app_bussines_pkey PRIMARY KEY (bussinesid);


--
-- TOC entry 2069 (class 2606 OID 53906)
-- Name: app_bussines_role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY app_bussines_role
    ADD CONSTRAINT app_bussines_role_pkey PRIMARY KEY (bussines_role_id);


--
-- TOC entry 2071 (class 2606 OID 46175)
-- Name: app_email_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY app_email
    ADD CONSTRAINT app_email_id_key PRIMARY KEY (id);


--
-- TOC entry 2073 (class 2606 OID 53931)
-- Name: app_invittation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY app_invittation
    ADD CONSTRAINT app_invittation_pkey PRIMARY KEY (invitation_id);


--
-- TOC entry 2139 (class 2606 OID 62446)
-- Name: app_invittation_status_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY app_invittation_status
    ADD CONSTRAINT app_invittation_status_pkey PRIMARY KEY (invite_status_id);


--
-- TOC entry 2143 (class 2606 OID 70656)
-- Name: app_latter_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY app_latter_category
    ADD CONSTRAINT app_latter_category_pkey PRIMARY KEY (latter_category_id);


--
-- TOC entry 2133 (class 2606 OID 53929)
-- Name: app_message_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY app_message
    ADD CONSTRAINT app_message_pkey PRIMARY KEY (message_id);


--
-- TOC entry 2137 (class 2606 OID 62435)
-- Name: app_photo_bussines_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY app_photo_bussines
    ADD CONSTRAINT app_photo_bussines_pkey PRIMARY KEY (photo_bussines_id);


--
-- TOC entry 2075 (class 2606 OID 46177)
-- Name: app_rate_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY app_rate
    ADD CONSTRAINT app_rate_pkey PRIMARY KEY (rate_id);


--
-- TOC entry 2077 (class 2606 OID 46179)
-- Name: app_registration_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY app_registration
    ADD CONSTRAINT app_registration_pkey PRIMARY KEY (id);


--
-- TOC entry 2079 (class 2606 OID 46181)
-- Name: app_registration_uq_email; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY app_registration
    ADD CONSTRAINT app_registration_uq_email UNIQUE (email);


--
-- TOC entry 2135 (class 2606 OID 62424)
-- Name: app_user_photo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY app_user_photo
    ADD CONSTRAINT app_user_photo_pkey PRIMARY KEY (photo_id);


--
-- TOC entry 2081 (class 2606 OID 46183)
-- Name: app_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY app_user
    ADD CONSTRAINT app_user_pkey PRIMARY KEY (user_id);


--
-- TOC entry 2083 (class 2606 OID 46185)
-- Name: application_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sys_application
    ADD CONSTRAINT application_pkey PRIMARY KEY (appid);


--
-- TOC entry 2085 (class 2606 OID 46187)
-- Name: application_unique_appcode; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sys_application
    ADD CONSTRAINT application_unique_appcode UNIQUE (appcode);


--
-- TOC entry 2087 (class 2606 OID 46189)
-- Name: contexts_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sys_contexts
    ADD CONSTRAINT contexts_pk PRIMARY KEY (contextid);


--
-- TOC entry 2089 (class 2606 OID 46191)
-- Name: contexts_unique_contextname; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sys_contexts
    ADD CONSTRAINT contexts_unique_contextname UNIQUE (contextname);


--
-- TOC entry 2093 (class 2606 OID 46193)
-- Name: menu_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sys_menu
    ADD CONSTRAINT menu_pk PRIMARY KEY (menuid);


--
-- TOC entry 2095 (class 2606 OID 46195)
-- Name: menu_unique_menuname; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sys_menu
    ADD CONSTRAINT menu_unique_menuname UNIQUE (menuname);


--
-- TOC entry 2097 (class 2606 OID 46197)
-- Name: methods_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sys_methods
    ADD CONSTRAINT methods_pk PRIMARY KEY (methodid);


--
-- TOC entry 2099 (class 2606 OID 46199)
-- Name: methods_unique_methodname; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sys_methods
    ADD CONSTRAINT methods_unique_methodname UNIQUE (objectname, methodname);


--
-- TOC entry 2101 (class 2606 OID 46201)
-- Name: objectpermissions_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sys_objectpermissions
    ADD CONSTRAINT objectpermissions_pk PRIMARY KEY (objectpermissionid);


--
-- TOC entry 2103 (class 2606 OID 46203)
-- Name: objectpermissions_unique; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sys_objectpermissions
    ADD CONSTRAINT objectpermissions_unique UNIQUE (objectid, permissionid);


--
-- TOC entry 2105 (class 2606 OID 46205)
-- Name: objects_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sys_objects
    ADD CONSTRAINT objects_pk PRIMARY KEY (objectid);


--
-- TOC entry 2107 (class 2606 OID 46207)
-- Name: objects_unique_objectname; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sys_objects
    ADD CONSTRAINT objects_unique_objectname UNIQUE (objectname);


--
-- TOC entry 2109 (class 2606 OID 46209)
-- Name: permissions_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sys_permissions
    ADD CONSTRAINT permissions_pk PRIMARY KEY (permissionid);


--
-- TOC entry 2111 (class 2606 OID 46211)
-- Name: permissions_unique_permissionname; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sys_permissions
    ADD CONSTRAINT permissions_unique_permissionname UNIQUE (category, permissionname);


--
-- TOC entry 2117 (class 2606 OID 46213)
-- Name: role_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sys_roles
    ADD CONSTRAINT role_pk PRIMARY KEY (roleid);


--
-- TOC entry 2113 (class 2606 OID 46215)
-- Name: rolepermissions_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sys_rolepermissions
    ADD CONSTRAINT rolepermissions_pk PRIMARY KEY (rolepermissionid);


--
-- TOC entry 2115 (class 2606 OID 46217)
-- Name: rolepermissions_unique; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sys_rolepermissions
    ADD CONSTRAINT rolepermissions_unique UNIQUE (roleid, permissionid);


--
-- TOC entry 2119 (class 2606 OID 46219)
-- Name: roles_unique_rolename; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sys_roles
    ADD CONSTRAINT roles_unique_rolename UNIQUE (rolename);


--
-- TOC entry 2121 (class 2606 OID 46221)
-- Name: session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sys_session
    ADD CONSTRAINT session_pkey PRIMARY KEY (sessionid);


--
-- TOC entry 2123 (class 2606 OID 46223)
-- Name: session_unique_sessioncode; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sys_session
    ADD CONSTRAINT session_unique_sessioncode UNIQUE (sessioncode);


--
-- TOC entry 2091 (class 2606 OID 46225)
-- Name: sys_files_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sys_files
    ADD CONSTRAINT sys_files_pkey PRIMARY KEY (id);


--
-- TOC entry 2129 (class 2606 OID 46227)
-- Name: user_spkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sys_users
    ADD CONSTRAINT user_spkey PRIMARY KEY (userid);


--
-- TOC entry 2125 (class 2606 OID 46229)
-- Name: userroles_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sys_userroles
    ADD CONSTRAINT userroles_pk PRIMARY KEY (userroleid);


--
-- TOC entry 2127 (class 2606 OID 46231)
-- Name: userroles_unique; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sys_userroles
    ADD CONSTRAINT userroles_unique UNIQUE (userid, roleid);


--
-- TOC entry 2131 (class 2606 OID 46233)
-- Name: users_unique_username; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sys_users
    ADD CONSTRAINT users_unique_username UNIQUE (username);


--
-- TOC entry 2318 (class 0 OID 0)
-- Dependencies: 7
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2017-06-19 19:50:53

--
-- PostgreSQL database dump complete
--

