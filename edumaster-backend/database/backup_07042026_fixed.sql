?--
-- PostgreSQL database dump
--

\restrict edKhnqX2DFatc3Ti7qfbBWVCvhVQkIXbuXW2M0RLBXRDZ8kyLYULKlT9BXgMsyj

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.3

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
-- Name: admin_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    action_parameters jsonb,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.admin_permissions OWNER TO postgres;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_permissions_id_seq OWNER TO postgres;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;


--
-- Name: admin_permissions_role_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);


ALTER TABLE public.admin_permissions_role_lnk OWNER TO postgres;

--
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_permissions_role_lnk_id_seq OWNER TO postgres;

--
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_permissions_role_lnk_id_seq OWNED BY public.admin_permissions_role_lnk.id;


--
-- Name: admin_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.admin_roles OWNER TO postgres;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_roles_id_seq OWNER TO postgres;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_users (
    id integer NOT NULL,
    document_id character varying(255),
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.admin_users OWNER TO postgres;

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_users_id_seq OWNER TO postgres;

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- Name: admin_users_roles_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_users_roles_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_ord double precision,
    user_ord double precision
);


ALTER TABLE public.admin_users_roles_lnk OWNER TO postgres;

--
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_users_roles_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_users_roles_lnk_id_seq OWNER TO postgres;

--
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_users_roles_lnk_id_seq OWNED BY public.admin_users_roles_lnk.id;


--
-- Name: audit_logs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.audit_logs (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    actor character varying(255),
    details text,
    entity_id character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.audit_logs OWNER TO postgres;

--
-- Name: audit_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.audit_logs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.audit_logs_id_seq OWNER TO postgres;

--
-- Name: audit_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.audit_logs_id_seq OWNED BY public.audit_logs.id;


--
-- Name: class_decisions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.class_decisions (
    id integer NOT NULL,
    document_id character varying(255),
    decision_number character varying(255),
    training_course character varying(255),
    signed_date date,
    signer_name character varying(255),
    notes text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    type character varying(255),
    start_date date,
    end_date date,
    class_type character varying(255)
);


ALTER TABLE public.class_decisions OWNER TO postgres;

--
-- Name: class_decisions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.class_decisions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.class_decisions_id_seq OWNER TO postgres;

--
-- Name: class_decisions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.class_decisions_id_seq OWNED BY public.class_decisions.id;


--
-- Name: class_decisions_related_decision_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.class_decisions_related_decision_lnk (
    id integer NOT NULL,
    class_decision_id integer,
    inv_class_decision_id integer
);


ALTER TABLE public.class_decisions_related_decision_lnk OWNER TO postgres;

--
-- Name: class_decisions_related_decision_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.class_decisions_related_decision_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.class_decisions_related_decision_lnk_id_seq OWNER TO postgres;

--
-- Name: class_decisions_related_decision_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.class_decisions_related_decision_lnk_id_seq OWNED BY public.class_decisions_related_decision_lnk.id;


--
-- Name: class_decisions_school_class_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.class_decisions_school_class_lnk (
    id integer NOT NULL,
    class_decision_id integer,
    school_class_id integer
);


ALTER TABLE public.class_decisions_school_class_lnk OWNER TO postgres;

--
-- Name: class_decisions_school_class_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.class_decisions_school_class_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.class_decisions_school_class_lnk_id_seq OWNER TO postgres;

--
-- Name: class_decisions_school_class_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.class_decisions_school_class_lnk_id_seq OWNED BY public.class_decisions_school_class_lnk.id;


--
-- Name: class_decisions_students_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.class_decisions_students_lnk (
    id integer NOT NULL,
    class_decision_id integer,
    student_id integer,
    student_ord double precision
);


ALTER TABLE public.class_decisions_students_lnk OWNER TO postgres;

--
-- Name: class_decisions_students_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.class_decisions_students_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.class_decisions_students_lnk_id_seq OWNER TO postgres;

--
-- Name: class_decisions_students_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.class_decisions_students_lnk_id_seq OWNED BY public.class_decisions_students_lnk.id;


--
-- Name: class_subjects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.class_subjects (
    class_id character varying(255),
    subject_id character varying(255),
    id integer NOT NULL,
    document_id character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.class_subjects OWNER TO postgres;

--
-- Name: class_subjects_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.class_subjects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.class_subjects_id_seq OWNER TO postgres;

--
-- Name: class_subjects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.class_subjects_id_seq OWNED BY public.class_subjects.id;


--
-- Name: classes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.classes (
    id integer NOT NULL,
    document_id character varying(255),
    code character varying(255),
    name character varying(255),
    notes text,
    status character varying(255),
    start_date character varying(255),
    end_date character varying(255),
    student_count integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.classes OWNER TO postgres;

--
-- Name: classes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.classes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.classes_id_seq OWNER TO postgres;

--
-- Name: classes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.classes_id_seq OWNED BY public.classes.id;


--
-- Name: classes_subjects_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.classes_subjects_lnk (
    id integer NOT NULL,
    school_class_id integer,
    subject_id integer,
    subject_ord double precision
);


ALTER TABLE public.classes_subjects_lnk OWNER TO postgres;

--
-- Name: classes_subjects_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.classes_subjects_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.classes_subjects_lnk_id_seq OWNER TO postgres;

--
-- Name: classes_subjects_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.classes_subjects_lnk_id_seq OWNED BY public.classes_subjects_lnk.id;


--
-- Name: classrooms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.classrooms (
    id integer NOT NULL,
    document_id character varying(255),
    code character varying(255),
    name character varying(255),
    capacity integer,
    building character varying(255),
    status character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.classrooms OWNER TO postgres;

--
-- Name: classrooms_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.classrooms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.classrooms_id_seq OWNER TO postgres;

--
-- Name: classrooms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.classrooms_id_seq OWNED BY public.classrooms.id;


--
-- Name: exam_approvals; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.exam_approvals (
    id integer NOT NULL,
    document_id character varying(255),
    approvals jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.exam_approvals OWNER TO postgres;

--
-- Name: exam_approvals_decision_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.exam_approvals_decision_lnk (
    id integer NOT NULL,
    exam_approval_id integer,
    class_decision_id integer
);


ALTER TABLE public.exam_approvals_decision_lnk OWNER TO postgres;

--
-- Name: exam_approvals_decision_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.exam_approvals_decision_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.exam_approvals_decision_lnk_id_seq OWNER TO postgres;

--
-- Name: exam_approvals_decision_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.exam_approvals_decision_lnk_id_seq OWNED BY public.exam_approvals_decision_lnk.id;


--
-- Name: exam_approvals_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.exam_approvals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.exam_approvals_id_seq OWNER TO postgres;

--
-- Name: exam_approvals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.exam_approvals_id_seq OWNED BY public.exam_approvals.id;


--
-- Name: exam_grades; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.exam_grades (
    id integer NOT NULL,
    document_id character varying(255),
    grades jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.exam_grades OWNER TO postgres;

--
-- Name: exam_grades_decision_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.exam_grades_decision_lnk (
    id integer NOT NULL,
    exam_grade_id integer,
    class_decision_id integer
);


ALTER TABLE public.exam_grades_decision_lnk OWNER TO postgres;

--
-- Name: exam_grades_decision_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.exam_grades_decision_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.exam_grades_decision_lnk_id_seq OWNER TO postgres;

--
-- Name: exam_grades_decision_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.exam_grades_decision_lnk_id_seq OWNED BY public.exam_grades_decision_lnk.id;


--
-- Name: exam_grades_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.exam_grades_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.exam_grades_id_seq OWNER TO postgres;

--
-- Name: exam_grades_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.exam_grades_id_seq OWNED BY public.exam_grades.id;


--
-- Name: files; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.files (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    alternative_text text,
    caption text,
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url text,
    preview_url text,
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    focal_point jsonb
);


ALTER TABLE public.files OWNER TO postgres;

--
-- Name: files_folder_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.files_folder_lnk (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_ord double precision
);


ALTER TABLE public.files_folder_lnk OWNER TO postgres;

--
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.files_folder_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_folder_lnk_id_seq OWNER TO postgres;

--
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.files_folder_lnk_id_seq OWNED BY public.files_folder_lnk.id;


--
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_id_seq OWNER TO postgres;

--
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- Name: files_related_mph; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.files_related_mph (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.files_related_mph OWNER TO postgres;

--
-- Name: files_related_mph_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.files_related_mph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_related_mph_id_seq OWNER TO postgres;

--
-- Name: files_related_mph_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.files_related_mph_id_seq OWNED BY public.files_related_mph.id;


--
-- Name: i18n_locale; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.i18n_locale OWNER TO postgres;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.i18n_locale_id_seq OWNER TO postgres;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;


--
-- Name: nations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nations (
    id integer NOT NULL,
    document_id character varying(255),
    code character varying(255),
    name character varying(255),
    abbr character varying(255),
    status character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.nations OWNER TO postgres;

--
-- Name: nations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.nations_id_seq OWNER TO postgres;

--
-- Name: nations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nations_id_seq OWNED BY public.nations.id;


--
-- Name: print_templates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.print_templates (
    id integer NOT NULL,
    document_id character varying(255),
    type character varying(255),
    name character varying(255),
    content jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.print_templates OWNER TO postgres;

--
-- Name: print_templates_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.print_templates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.print_templates_id_seq OWNER TO postgres;

--
-- Name: print_templates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.print_templates_id_seq OWNED BY public.print_templates.id;


--
-- Name: strapi_ai_localization_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_ai_localization_jobs (
    id integer NOT NULL,
    content_type character varying(255) NOT NULL,
    related_document_id character varying(255) NOT NULL,
    source_locale character varying(255) NOT NULL,
    target_locales jsonb NOT NULL,
    status character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.strapi_ai_localization_jobs OWNER TO postgres;

--
-- Name: strapi_ai_localization_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_ai_localization_jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_ai_localization_jobs_id_seq OWNER TO postgres;

--
-- Name: strapi_ai_localization_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_ai_localization_jobs_id_seq OWNED BY public.strapi_ai_localization_jobs.id;


--
-- Name: strapi_ai_metadata_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_ai_metadata_jobs (
    id integer NOT NULL,
    status character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    completed_at timestamp(6) without time zone
);


ALTER TABLE public.strapi_ai_metadata_jobs OWNER TO postgres;

--
-- Name: strapi_ai_metadata_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_ai_metadata_jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_ai_metadata_jobs_id_seq OWNER TO postgres;

--
-- Name: strapi_ai_metadata_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_ai_metadata_jobs_id_seq OWNED BY public.strapi_ai_metadata_jobs.id;


--
-- Name: strapi_api_token_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_api_token_permissions OWNER TO postgres;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNER TO postgres;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;


--
-- Name: strapi_api_token_permissions_token_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_api_token_permissions_token_lnk (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_ord double precision
);


ALTER TABLE public.strapi_api_token_permissions_token_lnk OWNER TO postgres;

--
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq OWNER TO postgres;

--
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq OWNED BY public.strapi_api_token_permissions_token_lnk.id;


--
-- Name: strapi_api_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    encrypted_key text,
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_api_tokens OWNER TO postgres;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNER TO postgres;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;


--
-- Name: strapi_core_store_settings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.strapi_core_store_settings OWNER TO postgres;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNER TO postgres;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;


--
-- Name: strapi_database_schema; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


ALTER TABLE public.strapi_database_schema OWNER TO postgres;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_database_schema_id_seq OWNER TO postgres;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;


--
-- Name: strapi_history_versions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_history_versions (
    id integer NOT NULL,
    content_type character varying(255) NOT NULL,
    related_document_id character varying(255),
    locale character varying(255),
    status character varying(255),
    data jsonb,
    schema jsonb,
    created_at timestamp(6) without time zone,
    created_by_id integer
);


ALTER TABLE public.strapi_history_versions OWNER TO postgres;

--
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_history_versions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_history_versions_id_seq OWNER TO postgres;

--
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_history_versions_id_seq OWNED BY public.strapi_history_versions.id;


--
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations OWNER TO postgres;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_migrations_id_seq OWNER TO postgres;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;


--
-- Name: strapi_migrations_internal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_migrations_internal (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations_internal OWNER TO postgres;

--
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_migrations_internal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_migrations_internal_id_seq OWNER TO postgres;

--
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_migrations_internal_id_seq OWNED BY public.strapi_migrations_internal.id;


--
-- Name: strapi_release_actions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_release_actions (
    id integer NOT NULL,
    document_id character varying(255),
    type character varying(255),
    content_type character varying(255),
    entry_document_id character varying(255),
    locale character varying(255),
    is_entry_valid boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_release_actions OWNER TO postgres;

--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_release_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_release_actions_id_seq OWNER TO postgres;

--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_release_actions_id_seq OWNED BY public.strapi_release_actions.id;


--
-- Name: strapi_release_actions_release_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_release_actions_release_lnk (
    id integer NOT NULL,
    release_action_id integer,
    release_id integer,
    release_action_ord double precision
);


ALTER TABLE public.strapi_release_actions_release_lnk OWNER TO postgres;

--
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_release_actions_release_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_release_actions_release_lnk_id_seq OWNER TO postgres;

--
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_release_actions_release_lnk_id_seq OWNED BY public.strapi_release_actions_release_lnk.id;


--
-- Name: strapi_releases; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_releases (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    released_at timestamp(6) without time zone,
    scheduled_at timestamp(6) without time zone,
    timezone character varying(255),
    status character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_releases OWNER TO postgres;

--
-- Name: strapi_releases_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_releases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_releases_id_seq OWNER TO postgres;

--
-- Name: strapi_releases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_releases_id_seq OWNED BY public.strapi_releases.id;


--
-- Name: strapi_sessions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_sessions (
    id integer NOT NULL,
    document_id character varying(255),
    user_id character varying(255),
    session_id character varying(255),
    child_id character varying(255),
    device_id character varying(255),
    origin character varying(255),
    expires_at timestamp(6) without time zone,
    absolute_expires_at timestamp(6) without time zone,
    status character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_sessions OWNER TO postgres;

--
-- Name: strapi_sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_sessions_id_seq OWNER TO postgres;

--
-- Name: strapi_sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_sessions_id_seq OWNED BY public.strapi_sessions.id;


--
-- Name: strapi_transfer_token_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_transfer_token_permissions OWNER TO postgres;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNER TO postgres;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;


--
-- Name: strapi_transfer_token_permissions_token_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_transfer_token_permissions_token_lnk (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_ord double precision
);


ALTER TABLE public.strapi_transfer_token_permissions_token_lnk OWNER TO postgres;

--
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq OWNER TO postgres;

--
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq OWNED BY public.strapi_transfer_token_permissions_token_lnk.id;


--
-- Name: strapi_transfer_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_transfer_tokens OWNER TO postgres;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNER TO postgres;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO postgres;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_webhooks_id_seq OWNER TO postgres;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: strapi_workflows; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_workflows (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    content_types jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_workflows OWNER TO postgres;

--
-- Name: strapi_workflows_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_workflows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_id_seq OWNER TO postgres;

--
-- Name: strapi_workflows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_workflows_id_seq OWNED BY public.strapi_workflows.id;


--
-- Name: strapi_workflows_stage_required_to_publish_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_workflows_stage_required_to_publish_lnk (
    id integer NOT NULL,
    workflow_id integer,
    workflow_stage_id integer
);


ALTER TABLE public.strapi_workflows_stage_required_to_publish_lnk OWNER TO postgres;

--
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq OWNER TO postgres;

--
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq OWNED BY public.strapi_workflows_stage_required_to_publish_lnk.id;


--
-- Name: strapi_workflows_stages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_workflows_stages (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    color character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_workflows_stages OWNER TO postgres;

--
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_workflows_stages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_stages_id_seq OWNER TO postgres;

--
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_workflows_stages_id_seq OWNED BY public.strapi_workflows_stages.id;


--
-- Name: strapi_workflows_stages_permissions_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_workflows_stages_permissions_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    permission_id integer,
    permission_ord double precision
);


ALTER TABLE public.strapi_workflows_stages_permissions_lnk OWNER TO postgres;

--
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq OWNER TO postgres;

--
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq OWNED BY public.strapi_workflows_stages_permissions_lnk.id;


--
-- Name: strapi_workflows_stages_workflow_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_workflows_stages_workflow_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    workflow_id integer,
    workflow_stage_ord double precision
);


ALTER TABLE public.strapi_workflows_stages_workflow_lnk OWNER TO postgres;

--
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq OWNER TO postgres;

--
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq OWNED BY public.strapi_workflows_stages_workflow_lnk.id;


--
-- Name: student_documents; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student_documents (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    url text,
    date character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.student_documents OWNER TO postgres;

--
-- Name: student_documents_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.student_documents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.student_documents_id_seq OWNER TO postgres;

--
-- Name: student_documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.student_documents_id_seq OWNED BY public.student_documents.id;


--
-- Name: student_documents_student_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student_documents_student_lnk (
    id integer NOT NULL,
    student_document_id integer,
    student_id integer,
    student_document_ord double precision
);


ALTER TABLE public.student_documents_student_lnk OWNER TO postgres;

--
-- Name: student_documents_student_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.student_documents_student_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.student_documents_student_lnk_id_seq OWNER TO postgres;

--
-- Name: student_documents_student_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.student_documents_student_lnk_id_seq OWNED BY public.student_documents_student_lnk.id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students (
    id integer NOT NULL,
    document_id character varying(255),
    stt integer,
    "group" character varying(255),
    class_code character varying(255),
    class_name character varying(255),
    card_number character varying(255),
    student_code character varying(255),
    id_number character varying(255),
    first_name character varying(255),
    last_name character varying(255),
    full_name character varying(255),
    gender character varying(255),
    dob character varying(255),
    pob character varying(255),
    ethnicity character varying(255),
    nationality character varying(255),
    company character varying(255),
    address text,
    score character varying(255),
    photo text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    phone character varying(255),
    is_approved boolean,
    notes text
);


ALTER TABLE public.students OWNER TO postgres;

--
-- Name: students_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.students_id_seq OWNER TO postgres;

--
-- Name: students_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;


--
-- Name: students_school_class_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students_school_class_lnk (
    id integer NOT NULL,
    student_id integer,
    school_class_id integer
);


ALTER TABLE public.students_school_class_lnk OWNER TO postgres;

--
-- Name: students_school_class_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.students_school_class_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.students_school_class_lnk_id_seq OWNER TO postgres;

--
-- Name: students_school_class_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.students_school_class_lnk_id_seq OWNED BY public.students_school_class_lnk.id;


--
-- Name: subjects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subjects (
    id integer NOT NULL,
    document_id character varying(255),
    code character varying(255),
    name character varying(255),
    sessions integer,
    total_hours numeric(10,2),
    theory_hours numeric(10,2),
    practice_hours numeric(10,2),
    exercise_hours numeric(10,2),
    exam_hours numeric(10,2),
    notes text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    has_theory boolean,
    has_practice boolean
);


ALTER TABLE public.subjects OWNER TO postgres;

--
-- Name: subjects_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.subjects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.subjects_id_seq OWNER TO postgres;

--
-- Name: subjects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.subjects_id_seq OWNED BY public.subjects.id;


--
-- Name: suppliers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.suppliers (
    id integer NOT NULL,
    document_id character varying(255),
    code character varying(255),
    name character varying(255),
    tax_id character varying(255),
    phone character varying(255),
    email character varying(255),
    address text,
    status character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.suppliers OWNER TO postgres;

--
-- Name: suppliers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.suppliers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.suppliers_id_seq OWNER TO postgres;

--
-- Name: suppliers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.suppliers_id_seq OWNED BY public.suppliers.id;


--
-- Name: teacher_subjects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teacher_subjects (
    teacher_id character varying(255),
    subject_id character varying(255),
    id integer NOT NULL,
    document_id character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.teacher_subjects OWNER TO postgres;

--
-- Name: teacher_subjects_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.teacher_subjects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.teacher_subjects_id_seq OWNER TO postgres;

--
-- Name: teacher_subjects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.teacher_subjects_id_seq OWNED BY public.teacher_subjects.id;


--
-- Name: teachers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teachers (
    id integer NOT NULL,
    document_id character varying(255),
    code character varying(255),
    name character varying(255),
    specialization character varying(255),
    phone character varying(255),
    email character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.teachers OWNER TO postgres;

--
-- Name: teachers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.teachers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.teachers_id_seq OWNER TO postgres;

--
-- Name: teachers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.teachers_id_seq OWNED BY public.teachers.id;


--
-- Name: teachers_subjects_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teachers_subjects_lnk (
    id integer NOT NULL,
    teacher_id integer,
    subject_id integer,
    subject_ord double precision
);


ALTER TABLE public.teachers_subjects_lnk OWNER TO postgres;

--
-- Name: teachers_subjects_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.teachers_subjects_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.teachers_subjects_lnk_id_seq OWNER TO postgres;

--
-- Name: teachers_subjects_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.teachers_subjects_lnk_id_seq OWNED BY public.teachers_subjects_lnk.id;


--
-- Name: training_assignments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.training_assignments (
    id integer NOT NULL,
    document_id character varying(255),
    schedule jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.training_assignments OWNER TO postgres;

--
-- Name: training_assignments_decision_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.training_assignments_decision_lnk (
    id integer NOT NULL,
    training_assignment_id integer,
    class_decision_id integer
);


ALTER TABLE public.training_assignments_decision_lnk OWNER TO postgres;

--
-- Name: training_assignments_decision_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.training_assignments_decision_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.training_assignments_decision_lnk_id_seq OWNER TO postgres;

--
-- Name: training_assignments_decision_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.training_assignments_decision_lnk_id_seq OWNED BY public.training_assignments_decision_lnk.id;


--
-- Name: training_assignments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.training_assignments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.training_assignments_id_seq OWNER TO postgres;

--
-- Name: training_assignments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.training_assignments_id_seq OWNED BY public.training_assignments.id;


--
-- Name: up_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.up_permissions OWNER TO postgres;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_permissions_id_seq OWNER TO postgres;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;


--
-- Name: up_permissions_role_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);


ALTER TABLE public.up_permissions_role_lnk OWNER TO postgres;

--
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_permissions_role_lnk_id_seq OWNER TO postgres;

--
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_permissions_role_lnk_id_seq OWNED BY public.up_permissions_role_lnk.id;


--
-- Name: up_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_roles (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.up_roles OWNER TO postgres;

--
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_roles_id_seq OWNER TO postgres;

--
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;


--
-- Name: up_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_users (
    id integer NOT NULL,
    document_id character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    permissions jsonb
);


ALTER TABLE public.up_users OWNER TO postgres;

--
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_users_id_seq OWNER TO postgres;

--
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;


--
-- Name: up_users_role_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_users_role_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_ord double precision
);


ALTER TABLE public.up_users_role_lnk OWNER TO postgres;

--
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_users_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_users_role_lnk_id_seq OWNER TO postgres;

--
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_users_role_lnk_id_seq OWNED BY public.up_users_role_lnk.id;


--
-- Name: upload_folders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.upload_folders OWNER TO postgres;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.upload_folders_id_seq OWNER TO postgres;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;


--
-- Name: upload_folders_parent_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.upload_folders_parent_lnk (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_ord double precision
);


ALTER TABLE public.upload_folders_parent_lnk OWNER TO postgres;

--
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.upload_folders_parent_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.upload_folders_parent_lnk_id_seq OWNER TO postgres;

--
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.upload_folders_parent_lnk_id_seq OWNED BY public.upload_folders_parent_lnk.id;


--
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);


--
-- Name: admin_permissions_role_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_lnk_id_seq'::regclass);


--
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);


--
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- Name: admin_users_roles_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_lnk ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_lnk_id_seq'::regclass);


--
-- Name: audit_logs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.audit_logs ALTER COLUMN id SET DEFAULT nextval('public.audit_logs_id_seq'::regclass);


--
-- Name: class_decisions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.class_decisions ALTER COLUMN id SET DEFAULT nextval('public.class_decisions_id_seq'::regclass);


--
-- Name: class_decisions_related_decision_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.class_decisions_related_decision_lnk ALTER COLUMN id SET DEFAULT nextval('public.class_decisions_related_decision_lnk_id_seq'::regclass);


--
-- Name: class_decisions_school_class_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.class_decisions_school_class_lnk ALTER COLUMN id SET DEFAULT nextval('public.class_decisions_school_class_lnk_id_seq'::regclass);


--
-- Name: class_decisions_students_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.class_decisions_students_lnk ALTER COLUMN id SET DEFAULT nextval('public.class_decisions_students_lnk_id_seq'::regclass);


--
-- Name: class_subjects id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.class_subjects ALTER COLUMN id SET DEFAULT nextval('public.class_subjects_id_seq'::regclass);


--
-- Name: classes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classes ALTER COLUMN id SET DEFAULT nextval('public.classes_id_seq'::regclass);


--
-- Name: classes_subjects_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classes_subjects_lnk ALTER COLUMN id SET DEFAULT nextval('public.classes_subjects_lnk_id_seq'::regclass);


--
-- Name: classrooms id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classrooms ALTER COLUMN id SET DEFAULT nextval('public.classrooms_id_seq'::regclass);


--
-- Name: exam_approvals id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exam_approvals ALTER COLUMN id SET DEFAULT nextval('public.exam_approvals_id_seq'::regclass);


--
-- Name: exam_approvals_decision_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exam_approvals_decision_lnk ALTER COLUMN id SET DEFAULT nextval('public.exam_approvals_decision_lnk_id_seq'::regclass);


--
-- Name: exam_grades id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exam_grades ALTER COLUMN id SET DEFAULT nextval('public.exam_grades_id_seq'::regclass);


--
-- Name: exam_grades_decision_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exam_grades_decision_lnk ALTER COLUMN id SET DEFAULT nextval('public.exam_grades_decision_lnk_id_seq'::regclass);


--
-- Name: files id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- Name: files_folder_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_lnk ALTER COLUMN id SET DEFAULT nextval('public.files_folder_lnk_id_seq'::regclass);


--
-- Name: files_related_mph id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_related_mph ALTER COLUMN id SET DEFAULT nextval('public.files_related_mph_id_seq'::regclass);


--
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);


--
-- Name: nations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nations ALTER COLUMN id SET DEFAULT nextval('public.nations_id_seq'::regclass);


--
-- Name: print_templates id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.print_templates ALTER COLUMN id SET DEFAULT nextval('public.print_templates_id_seq'::regclass);


--
-- Name: strapi_ai_localization_jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_ai_localization_jobs ALTER COLUMN id SET DEFAULT nextval('public.strapi_ai_localization_jobs_id_seq'::regclass);


--
-- Name: strapi_ai_metadata_jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_ai_metadata_jobs ALTER COLUMN id SET DEFAULT nextval('public.strapi_ai_metadata_jobs_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions_token_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_lnk_id_seq'::regclass);


--
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);


--
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);


--
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);


--
-- Name: strapi_history_versions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_history_versions ALTER COLUMN id SET DEFAULT nextval('public.strapi_history_versions_id_seq'::regclass);


--
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);


--
-- Name: strapi_migrations_internal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_migrations_internal ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_internal_id_seq'::regclass);


--
-- Name: strapi_release_actions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_id_seq'::regclass);


--
-- Name: strapi_release_actions_release_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_release_lnk_id_seq'::regclass);


--
-- Name: strapi_releases id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_releases ALTER COLUMN id SET DEFAULT nextval('public.strapi_releases_id_seq'::regclass);


--
-- Name: strapi_sessions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_sessions ALTER COLUMN id SET DEFAULT nextval('public.strapi_sessions_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions_token_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_lnk_id_seq'::regclass);


--
-- Name: strapi_transfer_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: strapi_workflows id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_id_seq'::regclass);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stage_required_to_publish_lnk_id_seq'::regclass);


--
-- Name: strapi_workflows_stages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_id_seq'::regclass);


--
-- Name: strapi_workflows_stages_permissions_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_permissions_lnk_id_seq'::regclass);


--
-- Name: strapi_workflows_stages_workflow_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_workflow_lnk_id_seq'::regclass);


--
-- Name: student_documents id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_documents ALTER COLUMN id SET DEFAULT nextval('public.student_documents_id_seq'::regclass);


--
-- Name: student_documents_student_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_documents_student_lnk ALTER COLUMN id SET DEFAULT nextval('public.student_documents_student_lnk_id_seq'::regclass);


--
-- Name: students id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_id_seq'::regclass);


--
-- Name: students_school_class_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students_school_class_lnk ALTER COLUMN id SET DEFAULT nextval('public.students_school_class_lnk_id_seq'::regclass);


--
-- Name: subjects id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subjects ALTER COLUMN id SET DEFAULT nextval('public.subjects_id_seq'::regclass);


--
-- Name: suppliers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.suppliers ALTER COLUMN id SET DEFAULT nextval('public.suppliers_id_seq'::regclass);


--
-- Name: teacher_subjects id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teacher_subjects ALTER COLUMN id SET DEFAULT nextval('public.teacher_subjects_id_seq'::regclass);


--
-- Name: teachers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teachers ALTER COLUMN id SET DEFAULT nextval('public.teachers_id_seq'::regclass);


--
-- Name: teachers_subjects_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teachers_subjects_lnk ALTER COLUMN id SET DEFAULT nextval('public.teachers_subjects_lnk_id_seq'::regclass);


--
-- Name: training_assignments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.training_assignments ALTER COLUMN id SET DEFAULT nextval('public.training_assignments_id_seq'::regclass);


--
-- Name: training_assignments_decision_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.training_assignments_decision_lnk ALTER COLUMN id SET DEFAULT nextval('public.training_assignments_decision_lnk_id_seq'::regclass);


--
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);


--
-- Name: up_permissions_role_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_lnk_id_seq'::regclass);


--
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);


--
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);


--
-- Name: up_users_role_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_lnk_id_seq'::regclass);


--
-- Name: upload_folders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);


--
-- Name: upload_folders_parent_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_lnk ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_lnk_id_seq'::regclass);


--
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_permissions (id, document_id, action, action_parameters, subject, properties, conditions, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	ul339tyrrx0brdpbpxj89llt	plugin::upload.read	{}	\N	{}	[]	2026-02-09 15:13:37.147	2026-02-09 15:13:37.147	2026-02-09 15:13:37.147	\N	\N	en
2	juzt4gjrcnebt62klf27qt7a	plugin::upload.configure-view	{}	\N	{}	[]	2026-02-09 15:13:37.157	2026-02-09 15:13:37.157	2026-02-09 15:13:37.157	\N	\N	en
3	bpkm1pr3limemy7dq7t66krv	plugin::upload.assets.create	{}	\N	{}	[]	2026-02-09 15:13:37.163	2026-02-09 15:13:37.163	2026-02-09 15:13:37.163	\N	\N	en
4	fwqrqkpq0iz9a3p8lmvj6vz8	plugin::upload.assets.update	{}	\N	{}	[]	2026-02-09 15:13:37.166	2026-02-09 15:13:37.166	2026-02-09 15:13:37.167	\N	\N	en
5	qrsv4w8rtrdzmnhost3z65av	plugin::upload.assets.download	{}	\N	{}	[]	2026-02-09 15:13:37.178	2026-02-09 15:13:37.178	2026-02-09 15:13:37.178	\N	\N	en
6	lqs4z89jdzm0oe9xeow14rmf	plugin::upload.assets.copy-link	{}	\N	{}	[]	2026-02-09 15:13:37.181	2026-02-09 15:13:37.181	2026-02-09 15:13:37.181	\N	\N	en
7	booyfw4r3rz9cna9gcrkdaa7	plugin::upload.read	{}	\N	{}	["admin::is-creator"]	2026-02-09 15:13:37.185	2026-02-09 15:13:37.185	2026-02-09 15:13:37.186	\N	\N	en
330	ux70d5yxkymq465w0qoktco3	plugin::content-manager.explorer.update	{}	api::print-template.print-template	{"fields": ["type", "name", "content"]}	[]	2026-02-26 09:59:06.976	2026-02-26 09:59:06.976	2026-02-26 09:59:06.976	\N	\N	en
331	cl5tfer7jogs451h912oob4w	plugin::content-manager.explorer.delete	{}	api::print-template.print-template	{}	[]	2026-02-26 09:59:06.98	2026-02-26 09:59:06.98	2026-02-26 09:59:06.98	\N	\N	en
332	xhkqe54v3t644p4dqnkavyh9	plugin::content-manager.explorer.publish	{}	api::print-template.print-template	{}	[]	2026-02-26 09:59:06.983	2026-02-26 09:59:06.983	2026-02-26 09:59:06.983	\N	\N	en
333	zlsby8p28siklm75lv1g6pe7	plugin::content-manager.explorer.create	{}	api::student.student	{"fields": ["stt", "group", "class_code", "class_name", "card_number", "student_code", "id_number", "first_name", "last_name", "full_name", "gender", "dob", "pob", "ethnicity", "nationality", "company", "address", "score", "photo", "phone", "school_class", "documents", "is_approved"]}	[]	2026-02-26 09:59:06.986	2026-02-26 09:59:06.986	2026-02-26 09:59:06.986	\N	\N	en
334	l94k1zbqamvvmti7acqd6abe	plugin::content-manager.explorer.read	{}	api::student.student	{"fields": ["stt", "group", "class_code", "class_name", "card_number", "student_code", "id_number", "first_name", "last_name", "full_name", "gender", "dob", "pob", "ethnicity", "nationality", "company", "address", "score", "photo", "phone", "school_class", "documents", "is_approved"]}	[]	2026-02-26 09:59:06.99	2026-02-26 09:59:06.99	2026-02-26 09:59:06.99	\N	\N	en
335	zjeotd2255p4cikvpshq80fe	plugin::content-manager.explorer.update	{}	api::student.student	{"fields": ["stt", "group", "class_code", "class_name", "card_number", "student_code", "id_number", "first_name", "last_name", "full_name", "gender", "dob", "pob", "ethnicity", "nationality", "company", "address", "score", "photo", "phone", "school_class", "documents", "is_approved"]}	[]	2026-02-26 09:59:06.994	2026-02-26 09:59:06.994	2026-02-26 09:59:06.995	\N	\N	en
54	al99fq1sfx4d7acb0a13y73n	admin::roles.read	{}	\N	{}	[]	2026-02-09 15:13:37.346	2026-02-09 15:13:37.346	2026-02-09 15:13:37.346	\N	\N	en
55	w69z67y6l50f4gnumvd5v2r1	admin::roles.update	{}	\N	{}	[]	2026-02-09 15:13:37.349	2026-02-09 15:13:37.349	2026-02-09 15:13:37.349	\N	\N	en
56	e9vvinp2ukbkyl89t7b4kyfh	admin::roles.delete	{}	\N	{}	[]	2026-02-09 15:13:37.352	2026-02-09 15:13:37.352	2026-02-09 15:13:37.352	\N	\N	en
57	ngm979m98lji1h15djiw5yq0	admin::api-tokens.access	{}	\N	{}	[]	2026-02-09 15:13:37.354	2026-02-09 15:13:37.354	2026-02-09 15:13:37.354	\N	\N	en
58	rbazmqzj27h5odwnu19iah2w	admin::api-tokens.create	{}	\N	{}	[]	2026-02-09 15:13:37.356	2026-02-09 15:13:37.356	2026-02-09 15:13:37.356	\N	\N	en
59	e7ttv2nyp20krmcg9dax3ibo	admin::api-tokens.read	{}	\N	{}	[]	2026-02-09 15:13:37.358	2026-02-09 15:13:37.358	2026-02-09 15:13:37.358	\N	\N	en
171	j0tdk4iycoiywkn2dxylrpdy	plugin::content-manager.explorer.update	{}	api::student-document.student-document	{"fields": ["name", "url", "date", "type", "student"]}	[]	2026-02-15 20:40:37.491	2026-02-15 20:40:37.491	2026-02-15 20:40:37.491	\N	\N	en
173	cliu0xqrgn0lju6zcata82h5	plugin::content-manager.explorer.update	{}	api::supplier.supplier	{"fields": ["code", "name", "tax_id", "phone", "email", "address", "status"]}	[]	2026-02-15 20:40:37.498	2026-02-15 20:40:37.498	2026-02-15 20:40:37.498	\N	\N	en
174	at85btn5vu1u2mxk6dr0ifcu	plugin::content-manager.explorer.update	{}	api::teacher.teacher	{"fields": ["code", "name", "specialization", "phone", "email", "subjects"]}	[]	2026-02-15 20:40:37.503	2026-02-15 20:40:37.503	2026-02-15 20:40:37.503	\N	\N	en
210	vb4bjsyxo5ytzr3moahd6q0o	plugin::content-manager.explorer.publish	{}	api::school-class.school-class	{}	[]	2026-02-16 12:19:57.562	2026-02-16 12:19:57.562	2026-02-16 12:19:57.562	\N	\N	en
350	csrveqwmc9400le3agb22sds	plugin::content-manager.explorer.read	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role", "permissions"]}	[]	2026-02-26 09:59:24.679	2026-02-26 09:59:24.679	2026-02-26 09:59:24.679	\N	\N	en
351	xjtum61xh7alp0d0crsztasi	plugin::content-manager.explorer.update	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role", "permissions"]}	[]	2026-02-26 09:59:24.682	2026-02-26 09:59:24.682	2026-02-26 09:59:24.682	\N	\N	en
352	l5oprwd9oo16885dafc4zk2m	plugin::content-manager.explorer.delete	{}	plugin::users-permissions.user	{}	[]	2026-02-26 09:59:24.684	2026-02-26 09:59:24.684	2026-02-26 09:59:24.684	\N	\N	en
353	zfpp829n96hs06hutjseu0he	plugin::content-manager.explorer.publish	{}	plugin::users-permissions.user	{}	[]	2026-02-26 09:59:24.688	2026-02-26 09:59:24.688	2026-02-26 09:59:24.688	\N	\N	en
354	xpb0lxk77dbwxuf1q9mgmvfb	plugin::content-manager.explorer.create	{}	api::audit-log.audit-log	{"fields": ["action", "actor", "details", "entity_id"]}	[]	2026-02-26 09:59:24.691	2026-02-26 09:59:24.691	2026-02-26 09:59:24.691	\N	\N	en
355	vsbgkh46h9dk15skzmcu9sn4	plugin::content-manager.explorer.read	{}	api::audit-log.audit-log	{"fields": ["action", "actor", "details", "entity_id"]}	[]	2026-02-26 09:59:24.694	2026-02-26 09:59:24.694	2026-02-26 09:59:24.694	\N	\N	en
356	qwyl6cqc6bn13k5gzkytewby	plugin::content-manager.explorer.update	{}	api::audit-log.audit-log	{"fields": ["action", "actor", "details", "entity_id"]}	[]	2026-02-26 09:59:24.699	2026-02-26 09:59:24.699	2026-02-26 09:59:24.699	\N	\N	en
357	ki6zc5wilewy1ql5n6obn2be	plugin::content-manager.explorer.delete	{}	api::audit-log.audit-log	{}	[]	2026-02-26 09:59:24.702	2026-02-26 09:59:24.702	2026-02-26 09:59:24.702	\N	\N	en
358	bozjhcrvnuu1ez9wkidhnolx	plugin::content-manager.explorer.publish	{}	api::audit-log.audit-log	{}	[]	2026-02-26 09:59:24.705	2026-02-26 09:59:24.705	2026-02-26 09:59:24.705	\N	\N	en
359	h6nzo9un0jdvvs21r2fr9n4w	plugin::content-manager.explorer.create	{}	api::class-decision.class-decision	{"fields": ["decision_number", "type", "training_course", "signed_date", "signer_name", "school_class", "students", "notes", "related_decision"]}	[]	2026-02-26 09:59:24.707	2026-02-26 09:59:24.707	2026-02-26 09:59:24.707	\N	\N	en
360	obngcttryhwtm4fbf3oqxqww	plugin::content-manager.explorer.read	{}	api::class-decision.class-decision	{"fields": ["decision_number", "type", "training_course", "signed_date", "signer_name", "school_class", "students", "notes", "related_decision"]}	[]	2026-02-26 09:59:24.71	2026-02-26 09:59:24.71	2026-02-26 09:59:24.71	\N	\N	en
412	xl2nz29jtu6wzt5wyrv51e0r	plugin::content-manager.explorer.delete	{}	api::subject.subject	{}	[]	2026-02-26 09:59:24.856	2026-02-26 09:59:24.856	2026-02-26 09:59:24.856	\N	\N	en
245	e3po8ldmerdo2r84ha5zgbq1	plugin::content-manager.explorer.delete	{}	api::class-decision.class-decision	{}	[]	2026-02-17 13:44:20.642	2026-02-17 13:44:20.642	2026-02-17 13:44:20.643	\N	\N	en
246	da64zr28cwtjb2lz5656vew2	plugin::content-manager.explorer.publish	{}	api::class-decision.class-decision	{}	[]	2026-02-17 13:44:20.646	2026-02-17 13:44:20.646	2026-02-17 13:44:20.646	\N	\N	en
300	nddh88l0tcsik1t4kplq1xv4	plugin::content-manager.explorer.create	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role", "permissions"]}	[]	2026-02-26 09:59:06.837	2026-02-26 09:59:06.837	2026-02-26 09:59:06.837	\N	\N	en
301	x9hs095uu6f0boh8x26wd9ug	plugin::content-manager.explorer.read	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role", "permissions"]}	[]	2026-02-26 09:59:06.853	2026-02-26 09:59:06.853	2026-02-26 09:59:06.853	\N	\N	en
302	fdel3lhnchbwcpud9z8r4beg	plugin::content-manager.explorer.update	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role", "permissions"]}	[]	2026-02-26 09:59:06.856	2026-02-26 09:59:06.856	2026-02-26 09:59:06.856	\N	\N	en
303	da3aax2aetdtpa07w14iry2j	plugin::content-manager.explorer.create	{}	api::audit-log.audit-log	{"fields": ["action", "actor", "details", "entity_id"]}	[]	2026-02-26 09:59:06.858	2026-02-26 09:59:06.858	2026-02-26 09:59:06.859	\N	\N	en
304	fndypoqi8a0o5g0pr66rbcj9	plugin::content-manager.explorer.read	{}	api::audit-log.audit-log	{"fields": ["action", "actor", "details", "entity_id"]}	[]	2026-02-26 09:59:06.861	2026-02-26 09:59:06.861	2026-02-26 09:59:06.861	\N	\N	en
305	no0orim8lq6zr0338s99j122	plugin::content-manager.explorer.update	{}	api::audit-log.audit-log	{"fields": ["action", "actor", "details", "entity_id"]}	[]	2026-02-26 09:59:06.864	2026-02-26 09:59:06.864	2026-02-26 09:59:06.865	\N	\N	en
306	jf7xz6kpmvhr7f52722u0nc3	plugin::content-manager.explorer.delete	{}	api::audit-log.audit-log	{}	[]	2026-02-26 09:59:06.867	2026-02-26 09:59:06.867	2026-02-26 09:59:06.868	\N	\N	en
307	qz9i0023d0qzoft93wokvxft	plugin::content-manager.explorer.publish	{}	api::audit-log.audit-log	{}	[]	2026-02-26 09:59:06.873	2026-02-26 09:59:06.873	2026-02-26 09:59:06.873	\N	\N	en
308	m58x4vzz5pigvi9qeb8frrkb	plugin::content-manager.explorer.create	{}	api::class-decision.class-decision	{"fields": ["decision_number", "type", "training_course", "signed_date", "signer_name", "school_class", "students", "notes", "related_decision"]}	[]	2026-02-26 09:59:06.878	2026-02-26 09:59:06.878	2026-02-26 09:59:06.878	\N	\N	en
309	yv76x9p6qhapa2a62avlqonb	plugin::content-manager.explorer.read	{}	api::class-decision.class-decision	{"fields": ["decision_number", "type", "training_course", "signed_date", "signer_name", "school_class", "students", "notes", "related_decision"]}	[]	2026-02-26 09:59:06.882	2026-02-26 09:59:06.882	2026-02-26 09:59:06.882	\N	\N	en
310	g154o38qqyld9pktnl3tk4zl	plugin::content-manager.explorer.update	{}	api::class-decision.class-decision	{"fields": ["decision_number", "type", "training_course", "signed_date", "signer_name", "school_class", "students", "notes", "related_decision"]}	[]	2026-02-26 09:59:06.886	2026-02-26 09:59:06.886	2026-02-26 09:59:06.886	\N	\N	en
311	ppy0oo3sz5psnncas5q22il3	plugin::content-manager.explorer.delete	{}	api::class-decision.class-decision	{}	[]	2026-02-26 09:59:06.89	2026-02-26 09:59:06.89	2026-02-26 09:59:06.89	\N	\N	en
8	s0a8pgbtxwkjegzunbcmwcy8	plugin::upload.configure-view	{}	\N	{}	[]	2026-02-09 15:13:37.188	2026-02-09 15:13:37.188	2026-02-09 15:13:37.189	\N	\N	en
9	fj3mq4u890ljiw61gcfjatyb	plugin::upload.assets.create	{}	\N	{}	[]	2026-02-09 15:13:37.192	2026-02-09 15:13:37.192	2026-02-09 15:13:37.192	\N	\N	en
10	ks1y3eltwewaq6myg1cfxwqf	plugin::upload.assets.update	{}	\N	{}	["admin::is-creator"]	2026-02-09 15:13:37.195	2026-02-09 15:13:37.195	2026-02-09 15:13:37.195	\N	\N	en
11	hhg1io9ef52zi62vtu43cjec	plugin::upload.assets.download	{}	\N	{}	[]	2026-02-09 15:13:37.2	2026-02-09 15:13:37.2	2026-02-09 15:13:37.2	\N	\N	en
12	jxakg38mrpmbq94o2ikyo9pl	plugin::upload.assets.copy-link	{}	\N	{}	[]	2026-02-09 15:13:37.203	2026-02-09 15:13:37.203	2026-02-09 15:13:37.203	\N	\N	en
16	k0wfwqm686q7zq2zkib2cwcf	plugin::content-manager.explorer.delete	{}	plugin::users-permissions.user	{}	[]	2026-02-09 15:13:37.237	2026-02-09 15:13:37.237	2026-02-09 15:13:37.237	\N	\N	en
17	z36xcix77oowuudzf05kwbx2	plugin::content-manager.explorer.publish	{}	plugin::users-permissions.user	{}	[]	2026-02-09 15:13:37.24	2026-02-09 15:13:37.24	2026-02-09 15:13:37.24	\N	\N	en
18	qylkcdtmyk5n7oqdgqg8hy5c	plugin::content-manager.single-types.configure-view	{}	\N	{}	[]	2026-02-09 15:13:37.243	2026-02-09 15:13:37.243	2026-02-09 15:13:37.243	\N	\N	en
19	q2cllnezhhjtmqmxx21jjkiy	plugin::content-manager.collection-types.configure-view	{}	\N	{}	[]	2026-02-09 15:13:37.247	2026-02-09 15:13:37.247	2026-02-09 15:13:37.247	\N	\N	en
20	cih2syuc4bonqfo2ipwmgchm	plugin::content-manager.components.configure-layout	{}	\N	{}	[]	2026-02-09 15:13:37.25	2026-02-09 15:13:37.25	2026-02-09 15:13:37.25	\N	\N	en
21	pspayc9wvj9s4rzhcqa9m4tj	plugin::content-type-builder.read	{}	\N	{}	[]	2026-02-09 15:13:37.254	2026-02-09 15:13:37.254	2026-02-09 15:13:37.254	\N	\N	en
22	m4wnd2molz4zrxxreyoj5nok	plugin::email.settings.read	{}	\N	{}	[]	2026-02-09 15:13:37.256	2026-02-09 15:13:37.256	2026-02-09 15:13:37.256	\N	\N	en
23	b627e6k49t9ppshz85lhp8p2	plugin::upload.read	{}	\N	{}	[]	2026-02-09 15:13:37.259	2026-02-09 15:13:37.259	2026-02-09 15:13:37.259	\N	\N	en
24	xl4s3fi0w1s4xlbux70axdit	plugin::upload.assets.create	{}	\N	{}	[]	2026-02-09 15:13:37.262	2026-02-09 15:13:37.262	2026-02-09 15:13:37.262	\N	\N	en
25	ae5w6ua7dd4kud0nno5aqp8p	plugin::upload.assets.update	{}	\N	{}	[]	2026-02-09 15:13:37.265	2026-02-09 15:13:37.265	2026-02-09 15:13:37.265	\N	\N	en
26	quahq5o59uu0exfqfdtwxbr7	plugin::upload.assets.download	{}	\N	{}	[]	2026-02-09 15:13:37.268	2026-02-09 15:13:37.268	2026-02-09 15:13:37.268	\N	\N	en
27	scxmsbupycpb74sgb1yixy04	plugin::upload.assets.copy-link	{}	\N	{}	[]	2026-02-09 15:13:37.271	2026-02-09 15:13:37.271	2026-02-09 15:13:37.271	\N	\N	en
28	kiu8lyoio30hz2pib73pm95v	plugin::upload.configure-view	{}	\N	{}	[]	2026-02-09 15:13:37.273	2026-02-09 15:13:37.273	2026-02-09 15:13:37.273	\N	\N	en
29	zoerlwhh8r42hmd8gzrzw9p7	plugin::upload.settings.read	{}	\N	{}	[]	2026-02-09 15:13:37.276	2026-02-09 15:13:37.276	2026-02-09 15:13:37.276	\N	\N	en
30	uzzr1nj09uikip04ugipjoys	plugin::i18n.locale.create	{}	\N	{}	[]	2026-02-09 15:13:37.279	2026-02-09 15:13:37.279	2026-02-09 15:13:37.279	\N	\N	en
31	hxwpcplgyfk8woiqigsm4jjv	plugin::i18n.locale.read	{}	\N	{}	[]	2026-02-09 15:13:37.281	2026-02-09 15:13:37.281	2026-02-09 15:13:37.281	\N	\N	en
32	ucrzxrxvch4k55xjopbpni2v	plugin::i18n.locale.update	{}	\N	{}	[]	2026-02-09 15:13:37.283	2026-02-09 15:13:37.283	2026-02-09 15:13:37.283	\N	\N	en
33	bsbctqcau1x9kmtctcwx26gx	plugin::i18n.locale.delete	{}	\N	{}	[]	2026-02-09 15:13:37.286	2026-02-09 15:13:37.286	2026-02-09 15:13:37.286	\N	\N	en
34	wfi083ldv0vaa81pm0tj0d8y	plugin::users-permissions.roles.create	{}	\N	{}	[]	2026-02-09 15:13:37.288	2026-02-09 15:13:37.288	2026-02-09 15:13:37.288	\N	\N	en
289	hifdvpvxdslle08cfl1rxz6x	plugin::content-manager.explorer.create	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role", "permissions"]}	[]	2026-02-24 10:22:29.207	2026-02-24 10:22:29.207	2026-02-24 10:22:29.207	\N	\N	en
290	w2pggwz798cqh6msheivp7sv	plugin::content-manager.explorer.read	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role", "permissions"]}	[]	2026-02-24 10:22:29.214	2026-02-24 10:22:29.214	2026-02-24 10:22:29.214	\N	\N	en
295	wss3oeqj06vafvee9432wufr	plugin::content-manager.explorer.create	{}	api::print-template.print-template	{"fields": ["type", "name", "content"]}	[]	2026-02-26 08:33:37.819	2026-02-26 08:33:37.819	2026-02-26 08:33:37.82	\N	\N	en
35	uje256pf1un93gotabz3rmim	plugin::users-permissions.roles.read	{}	\N	{}	[]	2026-02-09 15:13:37.293	2026-02-09 15:13:37.293	2026-02-09 15:13:37.293	\N	\N	en
36	yxph19doqy2zrw6rguxar50d	plugin::users-permissions.roles.update	{}	\N	{}	[]	2026-02-09 15:13:37.296	2026-02-09 15:13:37.296	2026-02-09 15:13:37.296	\N	\N	en
37	r6pw0gdlkvg6qy1zl7k6ng0l	plugin::users-permissions.roles.delete	{}	\N	{}	[]	2026-02-09 15:13:37.298	2026-02-09 15:13:37.298	2026-02-09 15:13:37.298	\N	\N	en
38	dj1ctvf48h2ejp2xf7v4t767	plugin::users-permissions.providers.read	{}	\N	{}	[]	2026-02-09 15:13:37.301	2026-02-09 15:13:37.301	2026-02-09 15:13:37.301	\N	\N	en
39	h9ohr9e88xutl9mxyn0wd0xu	plugin::users-permissions.providers.update	{}	\N	{}	[]	2026-02-09 15:13:37.303	2026-02-09 15:13:37.303	2026-02-09 15:13:37.303	\N	\N	en
40	bj7m89yj6rwlh5mmkepau6iu	plugin::users-permissions.email-templates.read	{}	\N	{}	[]	2026-02-09 15:13:37.306	2026-02-09 15:13:37.306	2026-02-09 15:13:37.306	\N	\N	en
41	fvp5uvpzg0870x7h6pth3v5g	plugin::users-permissions.email-templates.update	{}	\N	{}	[]	2026-02-09 15:13:37.309	2026-02-09 15:13:37.309	2026-02-09 15:13:37.309	\N	\N	en
42	vc7gu5ftwjcn0mm51erwx601	plugin::users-permissions.advanced-settings.read	{}	\N	{}	[]	2026-02-09 15:13:37.312	2026-02-09 15:13:37.312	2026-02-09 15:13:37.312	\N	\N	en
43	nba7d3brh351s4di3cqejsh9	plugin::users-permissions.advanced-settings.update	{}	\N	{}	[]	2026-02-09 15:13:37.315	2026-02-09 15:13:37.315	2026-02-09 15:13:37.315	\N	\N	en
44	pdav50ny0tun4eul2kr0losm	admin::marketplace.read	{}	\N	{}	[]	2026-02-09 15:13:37.318	2026-02-09 15:13:37.318	2026-02-09 15:13:37.318	\N	\N	en
45	eqb28x8e4ki8udvzpjwjjnlt	admin::webhooks.create	{}	\N	{}	[]	2026-02-09 15:13:37.32	2026-02-09 15:13:37.32	2026-02-09 15:13:37.321	\N	\N	en
46	ng9atmqutlnxbkuovcdzktxe	admin::webhooks.read	{}	\N	{}	[]	2026-02-09 15:13:37.323	2026-02-09 15:13:37.323	2026-02-09 15:13:37.323	\N	\N	en
47	wtbjj13tj2epifebn2t1tbiv	admin::webhooks.update	{}	\N	{}	[]	2026-02-09 15:13:37.327	2026-02-09 15:13:37.327	2026-02-09 15:13:37.327	\N	\N	en
48	eltk48kgazwj2hpjfj8ererx	admin::webhooks.delete	{}	\N	{}	[]	2026-02-09 15:13:37.331	2026-02-09 15:13:37.331	2026-02-09 15:13:37.331	\N	\N	en
49	s3l4syyjzjpgxehwwm7qmoe6	admin::users.create	{}	\N	{}	[]	2026-02-09 15:13:37.334	2026-02-09 15:13:37.334	2026-02-09 15:13:37.334	\N	\N	en
50	e4ah0hw8mh34df9d38v81pzw	admin::users.read	{}	\N	{}	[]	2026-02-09 15:13:37.337	2026-02-09 15:13:37.337	2026-02-09 15:13:37.337	\N	\N	en
51	c2w9oagz7ntpvhf9x6ar5y74	admin::users.update	{}	\N	{}	[]	2026-02-09 15:13:37.34	2026-02-09 15:13:37.34	2026-02-09 15:13:37.34	\N	\N	en
52	tp2lx2miotrat8jmxvi1o33r	admin::users.delete	{}	\N	{}	[]	2026-02-09 15:13:37.342	2026-02-09 15:13:37.342	2026-02-09 15:13:37.342	\N	\N	en
53	y2ait0bkoegh7suszc4wavoc	admin::roles.create	{}	\N	{}	[]	2026-02-09 15:13:37.344	2026-02-09 15:13:37.344	2026-02-09 15:13:37.344	\N	\N	en
60	kbm32aqn2x5figqthurikpbe	admin::api-tokens.update	{}	\N	{}	[]	2026-02-09 15:13:37.36	2026-02-09 15:13:37.36	2026-02-09 15:13:37.361	\N	\N	en
61	wzmpz4yyw56j80lvpllgzmei	admin::api-tokens.regenerate	{}	\N	{}	[]	2026-02-09 15:13:37.363	2026-02-09 15:13:37.363	2026-02-09 15:13:37.363	\N	\N	en
62	qdjzukjvdf8y9cjecpi9wrnl	admin::api-tokens.delete	{}	\N	{}	[]	2026-02-09 15:13:37.366	2026-02-09 15:13:37.366	2026-02-09 15:13:37.366	\N	\N	en
63	jj298kq7vyjwdmqctrjjx583	admin::project-settings.update	{}	\N	{}	[]	2026-02-09 15:13:37.368	2026-02-09 15:13:37.368	2026-02-09 15:13:37.368	\N	\N	en
64	g71uadv3x41aj24qtczh1j35	admin::project-settings.read	{}	\N	{}	[]	2026-02-09 15:13:37.372	2026-02-09 15:13:37.372	2026-02-09 15:13:37.372	\N	\N	en
65	rhfr016gc48vyaaq2dvf7xlx	admin::transfer.tokens.access	{}	\N	{}	[]	2026-02-09 15:13:37.375	2026-02-09 15:13:37.375	2026-02-09 15:13:37.375	\N	\N	en
66	p07mkdv1ica74kn412ot5s6y	admin::transfer.tokens.create	{}	\N	{}	[]	2026-02-09 15:13:37.378	2026-02-09 15:13:37.378	2026-02-09 15:13:37.379	\N	\N	en
67	m0gwuyosaldgt3vevmcyua0a	admin::transfer.tokens.read	{}	\N	{}	[]	2026-02-09 15:13:37.382	2026-02-09 15:13:37.382	2026-02-09 15:13:37.382	\N	\N	en
68	k1ueavi72hqlnlk6i694nfr4	admin::transfer.tokens.update	{}	\N	{}	[]	2026-02-09 15:13:37.385	2026-02-09 15:13:37.385	2026-02-09 15:13:37.385	\N	\N	en
69	ngtc05occdeeaink4galuayg	admin::transfer.tokens.regenerate	{}	\N	{}	[]	2026-02-09 15:13:37.388	2026-02-09 15:13:37.388	2026-02-09 15:13:37.388	\N	\N	en
70	cwqbpuz06yhba04b4dg0o57j	admin::transfer.tokens.delete	{}	\N	{}	[]	2026-02-09 15:13:37.391	2026-02-09 15:13:37.391	2026-02-09 15:13:37.391	\N	\N	en
151	q0yttmtzewltzgxvaanz3gqr	plugin::content-manager.explorer.create	{}	api::classroom.classroom	{"fields": ["code", "name", "capacity", "building", "status"]}	[]	2026-02-15 20:40:37.393	2026-02-15 20:40:37.393	2026-02-15 20:40:37.394	\N	\N	en
152	m279x9rho8szabqqrtk3iis9	plugin::content-manager.explorer.create	{}	api::nation.nation	{"fields": ["code", "name", "abbr", "status"]}	[]	2026-02-15 20:40:37.426	2026-02-15 20:40:37.426	2026-02-15 20:40:37.426	\N	\N	en
153	jgq9xv785rcaktau3rct6zg2	plugin::content-manager.explorer.create	{}	api::school-class.school-class	{"fields": ["code", "name", "notes", "status", "start_date", "end_date", "student_count", "subjects"]}	[]	2026-02-15 20:40:37.429	2026-02-15 20:40:37.429	2026-02-15 20:40:37.43	\N	\N	en
155	jt2k6y42kehiua4kdbo52c0b	plugin::content-manager.explorer.create	{}	api::student-document.student-document	{"fields": ["name", "url", "date", "type", "student"]}	[]	2026-02-15 20:40:37.437	2026-02-15 20:40:37.437	2026-02-15 20:40:37.437	\N	\N	en
157	mar0yjxlwri2pnuijfgs3pgh	plugin::content-manager.explorer.create	{}	api::supplier.supplier	{"fields": ["code", "name", "tax_id", "phone", "email", "address", "status"]}	[]	2026-02-15 20:40:37.444	2026-02-15 20:40:37.444	2026-02-15 20:40:37.444	\N	\N	en
158	xuzhbg0gg4vjrpwnuvxy04wl	plugin::content-manager.explorer.create	{}	api::teacher.teacher	{"fields": ["code", "name", "specialization", "phone", "email", "subjects"]}	[]	2026-02-15 20:40:37.448	2026-02-15 20:40:37.448	2026-02-15 20:40:37.448	\N	\N	en
159	zt0du9b4qt90mxa35nz1fmc1	plugin::content-manager.explorer.read	{}	api::classroom.classroom	{"fields": ["code", "name", "capacity", "building", "status"]}	[]	2026-02-15 20:40:37.452	2026-02-15 20:40:37.452	2026-02-15 20:40:37.452	\N	\N	en
160	fx2ypslonp2u7emnbtaxnddc	plugin::content-manager.explorer.read	{}	api::nation.nation	{"fields": ["code", "name", "abbr", "status"]}	[]	2026-02-15 20:40:37.455	2026-02-15 20:40:37.455	2026-02-15 20:40:37.455	\N	\N	en
161	v8d08ohsdfu2uc3k7ozwi0eq	plugin::content-manager.explorer.read	{}	api::school-class.school-class	{"fields": ["code", "name", "notes", "status", "start_date", "end_date", "student_count", "subjects"]}	[]	2026-02-15 20:40:37.458	2026-02-15 20:40:37.458	2026-02-15 20:40:37.458	\N	\N	en
163	pql69rrqprq3vxnhh8df85x2	plugin::content-manager.explorer.read	{}	api::student-document.student-document	{"fields": ["name", "url", "date", "type", "student"]}	[]	2026-02-15 20:40:37.464	2026-02-15 20:40:37.464	2026-02-15 20:40:37.464	\N	\N	en
165	c908m7k000qrjx7t02eoqr3h	plugin::content-manager.explorer.read	{}	api::supplier.supplier	{"fields": ["code", "name", "tax_id", "phone", "email", "address", "status"]}	[]	2026-02-15 20:40:37.469	2026-02-15 20:40:37.469	2026-02-15 20:40:37.47	\N	\N	en
166	okv5nyfungatnl5wn6eymdjc	plugin::content-manager.explorer.read	{}	api::teacher.teacher	{"fields": ["code", "name", "specialization", "phone", "email", "subjects"]}	[]	2026-02-15 20:40:37.472	2026-02-15 20:40:37.472	2026-02-15 20:40:37.472	\N	\N	en
167	uniljhrf1vy7eyshes6bk21t	plugin::content-manager.explorer.update	{}	api::classroom.classroom	{"fields": ["code", "name", "capacity", "building", "status"]}	[]	2026-02-15 20:40:37.475	2026-02-15 20:40:37.475	2026-02-15 20:40:37.475	\N	\N	en
168	st5ndgntthmb437rf2ag4bxc	plugin::content-manager.explorer.update	{}	api::nation.nation	{"fields": ["code", "name", "abbr", "status"]}	[]	2026-02-15 20:40:37.477	2026-02-15 20:40:37.477	2026-02-15 20:40:37.477	\N	\N	en
169	p4o6cuwp9pne4tzf6chnmyw4	plugin::content-manager.explorer.update	{}	api::school-class.school-class	{"fields": ["code", "name", "notes", "status", "start_date", "end_date", "student_count", "subjects"]}	[]	2026-02-15 20:40:37.481	2026-02-15 20:40:37.481	2026-02-15 20:40:37.482	\N	\N	en
209	yjt1jw4p8m6757rgca4munq9	plugin::content-manager.explorer.delete	{}	api::school-class.school-class	{}	[]	2026-02-16 12:19:57.559	2026-02-16 12:19:57.559	2026-02-16 12:19:57.559	\N	\N	en
175	lwhy2c7rfwx1gtl3oj69m2sg	plugin::content-manager.explorer.delete	{}	api::classroom.classroom	{}	[]	2026-02-15 20:40:37.51	2026-02-15 20:40:37.51	2026-02-15 20:40:37.511	\N	\N	en
176	c10vcjk84jfj3pa7894n38gn	plugin::content-manager.explorer.delete	{}	api::nation.nation	{}	[]	2026-02-15 20:40:37.515	2026-02-15 20:40:37.515	2026-02-15 20:40:37.515	\N	\N	en
177	bjxy5ibivagsm5zf1zpx14cd	plugin::content-manager.explorer.delete	{}	api::school-class.school-class	{}	[]	2026-02-15 20:40:37.52	2026-02-15 20:40:37.52	2026-02-15 20:40:37.52	\N	\N	en
178	fth3q266nz8g1k7pnwku32df	plugin::content-manager.explorer.delete	{}	api::student.student	{}	[]	2026-02-15 20:40:37.524	2026-02-15 20:40:37.524	2026-02-15 20:40:37.524	\N	\N	en
179	sp284xj38lmj16c4sfm4a6c4	plugin::content-manager.explorer.delete	{}	api::student-document.student-document	{}	[]	2026-02-15 20:40:37.528	2026-02-15 20:40:37.528	2026-02-15 20:40:37.528	\N	\N	en
180	txjxmbljbawva38g0lac0kcu	plugin::content-manager.explorer.delete	{}	api::subject.subject	{}	[]	2026-02-15 20:40:37.531	2026-02-15 20:40:37.531	2026-02-15 20:40:37.531	\N	\N	en
181	vab8cinodaq2015jb9uc6voe	plugin::content-manager.explorer.delete	{}	api::supplier.supplier	{}	[]	2026-02-15 20:40:37.534	2026-02-15 20:40:37.534	2026-02-15 20:40:37.535	\N	\N	en
182	plmqe04v3wqy5y5eibxe7c32	plugin::content-manager.explorer.delete	{}	api::teacher.teacher	{}	[]	2026-02-15 20:40:37.541	2026-02-15 20:40:37.541	2026-02-15 20:40:37.541	\N	\N	en
183	pk5arp1mrurj4laj0218qb6i	plugin::content-manager.explorer.publish	{}	api::classroom.classroom	{}	[]	2026-02-15 20:40:37.544	2026-02-15 20:40:37.544	2026-02-15 20:40:37.544	\N	\N	en
184	mdm0p8ccldw9id9y8hg49f6k	plugin::content-manager.explorer.publish	{}	api::nation.nation	{}	[]	2026-02-15 20:40:37.548	2026-02-15 20:40:37.548	2026-02-15 20:40:37.548	\N	\N	en
185	col2p10tvejqflr9s3cnmoj0	plugin::content-manager.explorer.publish	{}	api::school-class.school-class	{}	[]	2026-02-15 20:40:37.551	2026-02-15 20:40:37.551	2026-02-15 20:40:37.552	\N	\N	en
186	tlhin99dltuwdwc7tt71tj8a	plugin::content-manager.explorer.publish	{}	api::student.student	{}	[]	2026-02-15 20:40:37.557	2026-02-15 20:40:37.557	2026-02-15 20:40:37.557	\N	\N	en
187	mzjzrt0848bh2rigqaa2z4gh	plugin::content-manager.explorer.publish	{}	api::student-document.student-document	{}	[]	2026-02-15 20:40:37.56	2026-02-15 20:40:37.56	2026-02-15 20:40:37.56	\N	\N	en
188	n2ygrketbsfjcp93cfotqyfc	plugin::content-manager.explorer.publish	{}	api::subject.subject	{}	[]	2026-02-15 20:40:37.563	2026-02-15 20:40:37.563	2026-02-15 20:40:37.563	\N	\N	en
189	o2mo2jw7q5cxklz0xpuc5ix7	plugin::content-manager.explorer.publish	{}	api::supplier.supplier	{}	[]	2026-02-15 20:40:37.566	2026-02-15 20:40:37.566	2026-02-15 20:40:37.566	\N	\N	en
190	yvj48lj61l3mtg5ugal23dp6	plugin::content-manager.explorer.publish	{}	api::teacher.teacher	{}	[]	2026-02-15 20:40:37.568	2026-02-15 20:40:37.568	2026-02-15 20:40:37.568	\N	\N	en
194	xhw2crlj1wpxg07qen9uqng8	plugin::content-manager.explorer.delete	{}	plugin::users-permissions.user	{}	[]	2026-02-16 12:19:57.467	2026-02-16 12:19:57.467	2026-02-16 12:19:57.468	\N	\N	en
195	qu3fws8c4duiqnp7g98zesi4	plugin::content-manager.explorer.publish	{}	plugin::users-permissions.user	{}	[]	2026-02-16 12:19:57.472	2026-02-16 12:19:57.472	2026-02-16 12:19:57.472	\N	\N	en
196	bzm0nsmt7lu4uh8p6wyw0nym	plugin::content-manager.explorer.create	{}	api::classroom.classroom	{"fields": ["code", "name", "capacity", "building", "status"]}	[]	2026-02-16 12:19:57.476	2026-02-16 12:19:57.476	2026-02-16 12:19:57.476	\N	\N	en
197	v1zglx9x8r3j0vmlfb6ghx6e	plugin::content-manager.explorer.read	{}	api::classroom.classroom	{"fields": ["code", "name", "capacity", "building", "status"]}	[]	2026-02-16 12:19:57.479	2026-02-16 12:19:57.479	2026-02-16 12:19:57.48	\N	\N	en
198	cz39e79wjq1ccvd3wfrsjksp	plugin::content-manager.explorer.update	{}	api::classroom.classroom	{"fields": ["code", "name", "capacity", "building", "status"]}	[]	2026-02-16 12:19:57.489	2026-02-16 12:19:57.489	2026-02-16 12:19:57.491	\N	\N	en
199	gvwljmncupwduic2s7fe64ob	plugin::content-manager.explorer.delete	{}	api::classroom.classroom	{}	[]	2026-02-16 12:19:57.508	2026-02-16 12:19:57.508	2026-02-16 12:19:57.508	\N	\N	en
200	sxgn6m1o44a3q8wagrayj8jg	plugin::content-manager.explorer.publish	{}	api::classroom.classroom	{}	[]	2026-02-16 12:19:57.516	2026-02-16 12:19:57.516	2026-02-16 12:19:57.517	\N	\N	en
201	hjop4l5bszaznrsaickze9xp	plugin::content-manager.explorer.create	{}	api::nation.nation	{"fields": ["code", "name", "abbr", "status"]}	[]	2026-02-16 12:19:57.521	2026-02-16 12:19:57.521	2026-02-16 12:19:57.521	\N	\N	en
202	e5eljii9o22m3yel9jnbichq	plugin::content-manager.explorer.read	{}	api::nation.nation	{"fields": ["code", "name", "abbr", "status"]}	[]	2026-02-16 12:19:57.525	2026-02-16 12:19:57.525	2026-02-16 12:19:57.526	\N	\N	en
203	xmquaw84bklznig0y6jv1dp5	plugin::content-manager.explorer.update	{}	api::nation.nation	{"fields": ["code", "name", "abbr", "status"]}	[]	2026-02-16 12:19:57.53	2026-02-16 12:19:57.53	2026-02-16 12:19:57.53	\N	\N	en
204	b1bh8nh0909q10p39q59qebw	plugin::content-manager.explorer.delete	{}	api::nation.nation	{}	[]	2026-02-16 12:19:57.535	2026-02-16 12:19:57.535	2026-02-16 12:19:57.535	\N	\N	en
205	ttqchcfv0e30hzyole7dj9e0	plugin::content-manager.explorer.publish	{}	api::nation.nation	{}	[]	2026-02-16 12:19:57.54	2026-02-16 12:19:57.54	2026-02-16 12:19:57.541	\N	\N	en
206	ik56taru9xtqfn4c0gn1cu5e	plugin::content-manager.explorer.create	{}	api::school-class.school-class	{"fields": ["code", "name", "notes", "status", "start_date", "end_date", "student_count", "subjects"]}	[]	2026-02-16 12:19:57.545	2026-02-16 12:19:57.545	2026-02-16 12:19:57.545	\N	\N	en
207	s5v372ox31894jte2ivkf9el	plugin::content-manager.explorer.read	{}	api::school-class.school-class	{"fields": ["code", "name", "notes", "status", "start_date", "end_date", "student_count", "subjects"]}	[]	2026-02-16 12:19:57.549	2026-02-16 12:19:57.549	2026-02-16 12:19:57.55	\N	\N	en
208	na7t4n2nq1ywy8e2gmal8974	plugin::content-manager.explorer.update	{}	api::school-class.school-class	{"fields": ["code", "name", "notes", "status", "start_date", "end_date", "student_count", "subjects"]}	[]	2026-02-16 12:19:57.555	2026-02-16 12:19:57.555	2026-02-16 12:19:57.556	\N	\N	en
214	vq0ubeatl4h2wkk9r6paxj07	plugin::content-manager.explorer.delete	{}	api::student.student	{}	[]	2026-02-16 12:19:57.581	2026-02-16 12:19:57.581	2026-02-16 12:19:57.581	\N	\N	en
215	vfndff5mb8ybf05e9bkotnd1	plugin::content-manager.explorer.publish	{}	api::student.student	{}	[]	2026-02-16 12:19:57.584	2026-02-16 12:19:57.584	2026-02-16 12:19:57.584	\N	\N	en
216	mbvz3ajtq30kmiaogg1hq1b0	plugin::content-manager.explorer.create	{}	api::student-document.student-document	{"fields": ["name", "url", "date", "type", "student"]}	[]	2026-02-16 12:19:57.587	2026-02-16 12:19:57.587	2026-02-16 12:19:57.587	\N	\N	en
217	biiwjt0avghfn2s0m1xpxpql	plugin::content-manager.explorer.read	{}	api::student-document.student-document	{"fields": ["name", "url", "date", "type", "student"]}	[]	2026-02-16 12:19:57.589	2026-02-16 12:19:57.589	2026-02-16 12:19:57.589	\N	\N	en
218	ext3frgye9c1xtxz1mad4vef	plugin::content-manager.explorer.update	{}	api::student-document.student-document	{"fields": ["name", "url", "date", "type", "student"]}	[]	2026-02-16 12:19:57.592	2026-02-16 12:19:57.592	2026-02-16 12:19:57.592	\N	\N	en
219	imfn416fq9s4ntz4z83oic3c	plugin::content-manager.explorer.delete	{}	api::student-document.student-document	{}	[]	2026-02-16 12:19:57.595	2026-02-16 12:19:57.595	2026-02-16 12:19:57.595	\N	\N	en
220	najdbup3x3syyrfpj5ebo98s	plugin::content-manager.explorer.publish	{}	api::student-document.student-document	{}	[]	2026-02-16 12:19:57.599	2026-02-16 12:19:57.599	2026-02-16 12:19:57.599	\N	\N	en
224	cjazn63bi9oigol09id8qcdu	plugin::content-manager.explorer.delete	{}	api::subject.subject	{}	[]	2026-02-16 12:19:57.612	2026-02-16 12:19:57.612	2026-02-16 12:19:57.612	\N	\N	en
225	gciq3jetuj87v6mg6slkgu1z	plugin::content-manager.explorer.publish	{}	api::subject.subject	{}	[]	2026-02-16 12:19:57.615	2026-02-16 12:19:57.615	2026-02-16 12:19:57.615	\N	\N	en
226	xerfwy1bq6uph6rrx88ed8fw	plugin::content-manager.explorer.create	{}	api::supplier.supplier	{"fields": ["code", "name", "tax_id", "phone", "email", "address", "status"]}	[]	2026-02-16 12:19:57.618	2026-02-16 12:19:57.618	2026-02-16 12:19:57.618	\N	\N	en
227	t4wmt9shhq21vqkzvd6s0iqm	plugin::content-manager.explorer.read	{}	api::supplier.supplier	{"fields": ["code", "name", "tax_id", "phone", "email", "address", "status"]}	[]	2026-02-16 12:19:57.621	2026-02-16 12:19:57.621	2026-02-16 12:19:57.621	\N	\N	en
228	pmazka4gvr5mr26o9qq970cf	plugin::content-manager.explorer.update	{}	api::supplier.supplier	{"fields": ["code", "name", "tax_id", "phone", "email", "address", "status"]}	[]	2026-02-16 12:19:57.624	2026-02-16 12:19:57.624	2026-02-16 12:19:57.624	\N	\N	en
229	jhwug2nt2q9vkqvorxe12z7a	plugin::content-manager.explorer.delete	{}	api::supplier.supplier	{}	[]	2026-02-16 12:19:57.627	2026-02-16 12:19:57.627	2026-02-16 12:19:57.627	\N	\N	en
230	hv333a88z8dkzgtkm4ex98pl	plugin::content-manager.explorer.publish	{}	api::supplier.supplier	{}	[]	2026-02-16 12:19:57.63	2026-02-16 12:19:57.63	2026-02-16 12:19:57.63	\N	\N	en
231	pircpnrg16bfhwyc1blcnkxn	plugin::content-manager.explorer.create	{}	api::teacher.teacher	{"fields": ["code", "name", "specialization", "phone", "email", "subjects"]}	[]	2026-02-16 12:19:57.633	2026-02-16 12:19:57.633	2026-02-16 12:19:57.633	\N	\N	en
232	qkjjiohaqschn69noxrgilr6	plugin::content-manager.explorer.read	{}	api::teacher.teacher	{"fields": ["code", "name", "specialization", "phone", "email", "subjects"]}	[]	2026-02-16 12:19:57.638	2026-02-16 12:19:57.638	2026-02-16 12:19:57.638	\N	\N	en
233	wrfeutrqjcts7cjc5msn8j7h	plugin::content-manager.explorer.update	{}	api::teacher.teacher	{"fields": ["code", "name", "specialization", "phone", "email", "subjects"]}	[]	2026-02-16 12:19:57.642	2026-02-16 12:19:57.642	2026-02-16 12:19:57.642	\N	\N	en
234	urdf17t85i9j0320zqylhicb	plugin::content-manager.explorer.delete	{}	api::teacher.teacher	{}	[]	2026-02-16 12:19:57.645	2026-02-16 12:19:57.645	2026-02-16 12:19:57.645	\N	\N	en
235	l5wgl1a2h5jf08b8c3cancnj	plugin::content-manager.explorer.publish	{}	api::teacher.teacher	{}	[]	2026-02-16 12:19:57.648	2026-02-16 12:19:57.648	2026-02-16 12:19:57.649	\N	\N	en
247	w7p79di92o21yfb6lnfuijp2	plugin::content-manager.explorer.create	{}	api::training-assignment.training-assignment	{"fields": ["decision", "schedule"]}	[]	2026-02-17 14:35:18.286	2026-02-17 14:35:18.286	2026-02-17 14:35:18.287	\N	\N	en
248	ex0i47hjddlmwtlqm7y3ly86	plugin::content-manager.explorer.read	{}	api::training-assignment.training-assignment	{"fields": ["decision", "schedule"]}	[]	2026-02-17 14:35:18.315	2026-02-17 14:35:18.315	2026-02-17 14:35:18.315	\N	\N	en
249	jzk6yzeef5z2jx8dtf5nuy3u	plugin::content-manager.explorer.update	{}	api::training-assignment.training-assignment	{"fields": ["decision", "schedule"]}	[]	2026-02-17 14:35:18.319	2026-02-17 14:35:18.319	2026-02-17 14:35:18.32	\N	\N	en
250	j35rjvb0si0pqc8wri28meoh	plugin::content-manager.explorer.delete	{}	api::training-assignment.training-assignment	{}	[]	2026-02-17 14:35:18.324	2026-02-17 14:35:18.324	2026-02-17 14:35:18.325	\N	\N	en
251	k5p3w27jqcmmxzu85evr7x9b	plugin::content-manager.explorer.publish	{}	api::training-assignment.training-assignment	{}	[]	2026-02-17 14:35:18.329	2026-02-17 14:35:18.329	2026-02-17 14:35:18.329	\N	\N	en
252	jieo8ee8ywubx5q95jd9fjc5	plugin::content-manager.explorer.create	{}	api::exam-approval.exam-approval	{"fields": ["decision", "approvals"]}	[]	2026-02-17 15:12:10.978	2026-02-17 15:12:10.978	2026-02-17 15:12:10.979	\N	\N	en
253	tn8tb5ifl54szr0592bnns2d	plugin::content-manager.explorer.read	{}	api::exam-approval.exam-approval	{"fields": ["decision", "approvals"]}	[]	2026-02-17 15:12:10.987	2026-02-17 15:12:10.987	2026-02-17 15:12:10.987	\N	\N	en
254	uwzh8mvrm2q5zi6z0rtwqlu8	plugin::content-manager.explorer.update	{}	api::exam-approval.exam-approval	{"fields": ["decision", "approvals"]}	[]	2026-02-17 15:12:10.993	2026-02-17 15:12:10.993	2026-02-17 15:12:10.993	\N	\N	en
255	bvdi8b98o85qvy9d34vfzucf	plugin::content-manager.explorer.delete	{}	api::exam-approval.exam-approval	{}	[]	2026-02-17 15:12:10.998	2026-02-17 15:12:10.998	2026-02-17 15:12:10.998	\N	\N	en
256	x26ppg39073cisocz5879xjg	plugin::content-manager.explorer.publish	{}	api::exam-approval.exam-approval	{}	[]	2026-02-17 15:12:11.002	2026-02-17 15:12:11.002	2026-02-17 15:12:11.002	\N	\N	en
257	lbp5uozjkix4aqxqckgrjdxm	plugin::content-manager.explorer.create	{}	api::exam-grade.exam-grade	{"fields": ["decision", "grades"]}	[]	2026-02-17 15:16:18.432	2026-02-17 15:16:18.432	2026-02-17 15:16:18.432	\N	\N	en
258	m16pnurmgxmhcf5pds0pzkop	plugin::content-manager.explorer.read	{}	api::exam-grade.exam-grade	{"fields": ["decision", "grades"]}	[]	2026-02-17 15:16:18.449	2026-02-17 15:16:18.449	2026-02-17 15:16:18.45	\N	\N	en
259	qg24g60t0nh0a8g6pqlnwkuf	plugin::content-manager.explorer.update	{}	api::exam-grade.exam-grade	{"fields": ["decision", "grades"]}	[]	2026-02-17 15:16:18.453	2026-02-17 15:16:18.453	2026-02-17 15:16:18.454	\N	\N	en
260	pltq1fx1agblya5nfhek7697	plugin::content-manager.explorer.delete	{}	api::exam-grade.exam-grade	{}	[]	2026-02-17 15:16:18.458	2026-02-17 15:16:18.458	2026-02-17 15:16:18.458	\N	\N	en
261	k72ec5c8m2ad0e8m9490au50	plugin::content-manager.explorer.publish	{}	api::exam-grade.exam-grade	{}	[]	2026-02-17 15:16:18.461	2026-02-17 15:16:18.461	2026-02-17 15:16:18.462	\N	\N	en
268	zlb24wa7qi74dyg57ijet80t	plugin::content-manager.explorer.create	{}	api::audit-log.audit-log	{"fields": ["action", "actor", "details", "entity_id"]}	[]	2026-02-19 15:08:12.778	2026-02-19 15:08:12.778	2026-02-19 15:08:12.779	\N	\N	en
269	h6kycq1hnxj926yn1gz8alrm	plugin::content-manager.explorer.read	{}	api::audit-log.audit-log	{"fields": ["action", "actor", "details", "entity_id"]}	[]	2026-02-19 15:08:12.803	2026-02-19 15:08:12.803	2026-02-19 15:08:12.803	\N	\N	en
270	keuqfph7c0vray41vwg5fjq2	plugin::content-manager.explorer.update	{}	api::audit-log.audit-log	{"fields": ["action", "actor", "details", "entity_id"]}	[]	2026-02-19 15:08:12.807	2026-02-19 15:08:12.807	2026-02-19 15:08:12.807	\N	\N	en
271	kmmn00hsb9bq0fzg26valkcx	plugin::content-manager.explorer.delete	{}	api::audit-log.audit-log	{}	[]	2026-02-19 15:08:12.811	2026-02-19 15:08:12.811	2026-02-19 15:08:12.811	\N	\N	en
272	wew2f03mlbikjnixmxya4rzk	plugin::content-manager.explorer.publish	{}	api::audit-log.audit-log	{}	[]	2026-02-19 15:08:12.814	2026-02-19 15:08:12.814	2026-02-19 15:08:12.814	\N	\N	en
291	qzttowl7xaiyhxkg6vm7ubs8	plugin::content-manager.explorer.update	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role", "permissions"]}	[]	2026-02-24 10:22:29.218	2026-02-24 10:22:29.218	2026-02-24 10:22:29.218	\N	\N	en
292	vmc470rtp7adbrfo5llnkb5j	plugin::content-manager.explorer.create	{}	api::subject.subject	{"fields": ["code", "name", "sessions", "total_hours", "theory_hours", "practice_hours", "exercise_hours", "exam_hours", "notes", "has_theory", "has_practice"]}	[]	2026-02-25 09:36:21.89	2026-02-25 09:36:21.89	2026-02-25 09:36:21.89	\N	\N	en
293	sc5czmzo00ejzq7k9kczc4pv	plugin::content-manager.explorer.read	{}	api::subject.subject	{"fields": ["code", "name", "sessions", "total_hours", "theory_hours", "practice_hours", "exercise_hours", "exam_hours", "notes", "has_theory", "has_practice"]}	[]	2026-02-25 09:36:21.915	2026-02-25 09:36:21.915	2026-02-25 09:36:21.915	\N	\N	en
294	f14ymb7ahied4gkk60cbq4g1	plugin::content-manager.explorer.update	{}	api::subject.subject	{"fields": ["code", "name", "sessions", "total_hours", "theory_hours", "practice_hours", "exercise_hours", "exam_hours", "notes", "has_theory", "has_practice"]}	[]	2026-02-25 09:36:21.919	2026-02-25 09:36:21.919	2026-02-25 09:36:21.919	\N	\N	en
296	bf00noxyvue0imsxaowa1oxc	plugin::content-manager.explorer.read	{}	api::print-template.print-template	{"fields": ["type", "name", "content"]}	[]	2026-02-26 08:33:37.845	2026-02-26 08:33:37.845	2026-02-26 08:33:37.846	\N	\N	en
297	q33svrvy8x1bujtc3x3b5h2a	plugin::content-manager.explorer.update	{}	api::print-template.print-template	{"fields": ["type", "name", "content"]}	[]	2026-02-26 08:33:37.849	2026-02-26 08:33:37.849	2026-02-26 08:33:37.849	\N	\N	en
298	z9b3etd7pnax6gaa1meoyhz1	plugin::content-manager.explorer.delete	{}	api::print-template.print-template	{}	[]	2026-02-26 08:33:37.852	2026-02-26 08:33:37.852	2026-02-26 08:33:37.852	\N	\N	en
299	gwq24ceponriajo9d6udfjmy	plugin::content-manager.explorer.publish	{}	api::print-template.print-template	{}	[]	2026-02-26 08:33:37.856	2026-02-26 08:33:37.856	2026-02-26 08:33:37.856	\N	\N	en
312	ohdpn1uwzv51ar49y4jmqwgk	plugin::content-manager.explorer.publish	{}	api::class-decision.class-decision	{}	[]	2026-02-26 09:59:06.894	2026-02-26 09:59:06.894	2026-02-26 09:59:06.894	\N	\N	en
318	z95a19edmlv2q97hd7vui6y7	plugin::content-manager.explorer.create	{}	api::exam-approval.exam-approval	{"fields": ["decision", "approvals"]}	[]	2026-02-26 09:59:06.944	2026-02-26 09:59:06.944	2026-02-26 09:59:06.944	\N	\N	en
319	wja3st7561yvuqvf1cmhosdh	plugin::content-manager.explorer.read	{}	api::exam-approval.exam-approval	{"fields": ["decision", "approvals"]}	[]	2026-02-26 09:59:06.946	2026-02-26 09:59:06.946	2026-02-26 09:59:06.946	\N	\N	en
320	ojm1g9m1847puqwnct5kkc6v	plugin::content-manager.explorer.update	{}	api::exam-approval.exam-approval	{"fields": ["decision", "approvals"]}	[]	2026-02-26 09:59:06.949	2026-02-26 09:59:06.949	2026-02-26 09:59:06.949	\N	\N	en
321	a53skkevyfelq7egs8u4pywx	plugin::content-manager.explorer.delete	{}	api::exam-approval.exam-approval	{}	[]	2026-02-26 09:59:06.952	2026-02-26 09:59:06.952	2026-02-26 09:59:06.952	\N	\N	en
322	nggzcpunl107icuemvdk96pd	plugin::content-manager.explorer.publish	{}	api::exam-approval.exam-approval	{}	[]	2026-02-26 09:59:06.955	2026-02-26 09:59:06.955	2026-02-26 09:59:06.955	\N	\N	en
323	eclqkd243ibty9nqzh1sedrk	plugin::content-manager.explorer.create	{}	api::exam-grade.exam-grade	{"fields": ["decision", "grades"]}	[]	2026-02-26 09:59:06.957	2026-02-26 09:59:06.957	2026-02-26 09:59:06.957	\N	\N	en
324	jr83n0ag2xt9u96n66pap7o9	plugin::content-manager.explorer.read	{}	api::exam-grade.exam-grade	{"fields": ["decision", "grades"]}	[]	2026-02-26 09:59:06.96	2026-02-26 09:59:06.96	2026-02-26 09:59:06.96	\N	\N	en
325	w806b4renpx7bg0cy0nq5ubx	plugin::content-manager.explorer.update	{}	api::exam-grade.exam-grade	{"fields": ["decision", "grades"]}	[]	2026-02-26 09:59:06.962	2026-02-26 09:59:06.962	2026-02-26 09:59:06.963	\N	\N	en
326	d05vqmu8gdogsfjhxc2rn4rx	plugin::content-manager.explorer.delete	{}	api::exam-grade.exam-grade	{}	[]	2026-02-26 09:59:06.965	2026-02-26 09:59:06.965	2026-02-26 09:59:06.965	\N	\N	en
327	u3dwyzl6ui6fg5yhzwcbsekd	plugin::content-manager.explorer.publish	{}	api::exam-grade.exam-grade	{}	[]	2026-02-26 09:59:06.968	2026-02-26 09:59:06.968	2026-02-26 09:59:06.968	\N	\N	en
328	k2m9nl1je6ff8jt0ajnev2r1	plugin::content-manager.explorer.create	{}	api::print-template.print-template	{"fields": ["type", "name", "content"]}	[]	2026-02-26 09:59:06.97	2026-02-26 09:59:06.97	2026-02-26 09:59:06.97	\N	\N	en
329	qhhqvmjxsv0ukjf29wtdkjyx	plugin::content-manager.explorer.read	{}	api::print-template.print-template	{"fields": ["type", "name", "content"]}	[]	2026-02-26 09:59:06.973	2026-02-26 09:59:06.973	2026-02-26 09:59:06.973	\N	\N	en
336	wulscvqz4fiicf6oh6tla803	plugin::content-manager.explorer.create	{}	api::subject.subject	{"fields": ["code", "name", "sessions", "total_hours", "theory_hours", "practice_hours", "exercise_hours", "exam_hours", "notes", "has_theory", "has_practice"]}	[]	2026-02-26 09:59:06.998	2026-02-26 09:59:06.998	2026-02-26 09:59:06.998	\N	\N	en
337	q5cwa2vrqvgbjvnndgihiqew	plugin::content-manager.explorer.read	{}	api::subject.subject	{"fields": ["code", "name", "sessions", "total_hours", "theory_hours", "practice_hours", "exercise_hours", "exam_hours", "notes", "has_theory", "has_practice"]}	[]	2026-02-26 09:59:07	2026-02-26 09:59:07	2026-02-26 09:59:07	\N	\N	en
338	pru2228w4wp95xq7wiwxqtdu	plugin::content-manager.explorer.update	{}	api::subject.subject	{"fields": ["code", "name", "sessions", "total_hours", "theory_hours", "practice_hours", "exercise_hours", "exam_hours", "notes", "has_theory", "has_practice"]}	[]	2026-02-26 09:59:07.003	2026-02-26 09:59:07.003	2026-02-26 09:59:07.003	\N	\N	en
344	xw59qnr2g11jbfs4nbd6xszi	plugin::content-manager.explorer.create	{}	api::training-assignment.training-assignment	{"fields": ["decision", "schedule"]}	[]	2026-02-26 09:59:07.021	2026-02-26 09:59:07.021	2026-02-26 09:59:07.021	\N	\N	en
345	j66o9lm5hzb8zcwkanxyt1ze	plugin::content-manager.explorer.read	{}	api::training-assignment.training-assignment	{"fields": ["decision", "schedule"]}	[]	2026-02-26 09:59:07.025	2026-02-26 09:59:07.025	2026-02-26 09:59:07.025	\N	\N	en
346	gy1sxe18ao903op0q1tfwurs	plugin::content-manager.explorer.update	{}	api::training-assignment.training-assignment	{"fields": ["decision", "schedule"]}	[]	2026-02-26 09:59:07.027	2026-02-26 09:59:07.027	2026-02-26 09:59:07.028	\N	\N	en
347	ubfr0iyrledx9zqw6m7j0d12	plugin::content-manager.explorer.delete	{}	api::training-assignment.training-assignment	{}	[]	2026-02-26 09:59:07.03	2026-02-26 09:59:07.03	2026-02-26 09:59:07.03	\N	\N	en
348	b5jg8fl05vn0gr3azi74mbtw	plugin::content-manager.explorer.publish	{}	api::training-assignment.training-assignment	{}	[]	2026-02-26 09:59:07.033	2026-02-26 09:59:07.033	2026-02-26 09:59:07.033	\N	\N	en
349	gu8sa8i47yo6k3ozvp2at98n	plugin::content-manager.explorer.create	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role", "permissions"]}	[]	2026-02-26 09:59:24.674	2026-02-26 09:59:24.674	2026-02-26 09:59:24.674	\N	\N	en
361	jyadp3v0qac0giyqrgq0of1c	plugin::content-manager.explorer.update	{}	api::class-decision.class-decision	{"fields": ["decision_number", "type", "training_course", "signed_date", "signer_name", "school_class", "students", "notes", "related_decision"]}	[]	2026-02-26 09:59:24.713	2026-02-26 09:59:24.713	2026-02-26 09:59:24.713	\N	\N	en
362	lzir87zzfv4jhu0wm4wxik4s	plugin::content-manager.explorer.delete	{}	api::class-decision.class-decision	{}	[]	2026-02-26 09:59:24.716	2026-02-26 09:59:24.716	2026-02-26 09:59:24.716	\N	\N	en
363	i2lus5i3xo56b9xssldpgvl8	plugin::content-manager.explorer.publish	{}	api::class-decision.class-decision	{}	[]	2026-02-26 09:59:24.718	2026-02-26 09:59:24.718	2026-02-26 09:59:24.718	\N	\N	en
369	odujuurfvcc3pqiw7i546q46	plugin::content-manager.explorer.create	{}	api::classroom.classroom	{"fields": ["code", "name", "capacity", "building", "status"]}	[]	2026-02-26 09:59:24.735	2026-02-26 09:59:24.735	2026-02-26 09:59:24.735	\N	\N	en
370	o73ty5qcwsrexdhtxlff76j2	plugin::content-manager.explorer.read	{}	api::classroom.classroom	{"fields": ["code", "name", "capacity", "building", "status"]}	[]	2026-02-26 09:59:24.738	2026-02-26 09:59:24.738	2026-02-26 09:59:24.738	\N	\N	en
371	quxq086c4tv1d93v38glpajn	plugin::content-manager.explorer.update	{}	api::classroom.classroom	{"fields": ["code", "name", "capacity", "building", "status"]}	[]	2026-02-26 09:59:24.741	2026-02-26 09:59:24.741	2026-02-26 09:59:24.741	\N	\N	en
372	guntmxlpdu8ihbkqkjjm0whk	plugin::content-manager.explorer.delete	{}	api::classroom.classroom	{}	[]	2026-02-26 09:59:24.743	2026-02-26 09:59:24.743	2026-02-26 09:59:24.744	\N	\N	en
373	wjiwnk3svq7c11ara1wapzal	plugin::content-manager.explorer.publish	{}	api::classroom.classroom	{}	[]	2026-02-26 09:59:24.746	2026-02-26 09:59:24.746	2026-02-26 09:59:24.746	\N	\N	en
374	prf3szr1zo7777fccszejmjl	plugin::content-manager.explorer.create	{}	api::exam-approval.exam-approval	{"fields": ["decision", "approvals"]}	[]	2026-02-26 09:59:24.749	2026-02-26 09:59:24.749	2026-02-26 09:59:24.749	\N	\N	en
375	o3b9iq20ouzlxkc98zanrifw	plugin::content-manager.explorer.read	{}	api::exam-approval.exam-approval	{"fields": ["decision", "approvals"]}	[]	2026-02-26 09:59:24.752	2026-02-26 09:59:24.752	2026-02-26 09:59:24.752	\N	\N	en
376	kwvpfvo987075geuo8ncnw3p	plugin::content-manager.explorer.update	{}	api::exam-approval.exam-approval	{"fields": ["decision", "approvals"]}	[]	2026-02-26 09:59:24.754	2026-02-26 09:59:24.754	2026-02-26 09:59:24.754	\N	\N	en
377	yx6c4mqimnk3qqg5apqy06ej	plugin::content-manager.explorer.delete	{}	api::exam-approval.exam-approval	{}	[]	2026-02-26 09:59:24.757	2026-02-26 09:59:24.757	2026-02-26 09:59:24.757	\N	\N	en
378	ycyvhf5s12uk47muwhwcj8z7	plugin::content-manager.explorer.publish	{}	api::exam-approval.exam-approval	{}	[]	2026-02-26 09:59:24.76	2026-02-26 09:59:24.76	2026-02-26 09:59:24.76	\N	\N	en
379	es8amgebo6zynh3lh7v89dbb	plugin::content-manager.explorer.create	{}	api::exam-grade.exam-grade	{"fields": ["decision", "grades"]}	[]	2026-02-26 09:59:24.763	2026-02-26 09:59:24.763	2026-02-26 09:59:24.763	\N	\N	en
380	zvjbz6hur0ddgvxaxjvwy9y4	plugin::content-manager.explorer.read	{}	api::exam-grade.exam-grade	{"fields": ["decision", "grades"]}	[]	2026-02-26 09:59:24.765	2026-02-26 09:59:24.765	2026-02-26 09:59:24.765	\N	\N	en
381	tfn0ewizzsnx9njeqajtlpqv	plugin::content-manager.explorer.update	{}	api::exam-grade.exam-grade	{"fields": ["decision", "grades"]}	[]	2026-02-26 09:59:24.768	2026-02-26 09:59:24.768	2026-02-26 09:59:24.768	\N	\N	en
382	qhug721u0cfod6nplwog0d36	plugin::content-manager.explorer.delete	{}	api::exam-grade.exam-grade	{}	[]	2026-02-26 09:59:24.771	2026-02-26 09:59:24.771	2026-02-26 09:59:24.771	\N	\N	en
383	x4ij029zc521o4cinm58skql	plugin::content-manager.explorer.publish	{}	api::exam-grade.exam-grade	{}	[]	2026-02-26 09:59:24.775	2026-02-26 09:59:24.775	2026-02-26 09:59:24.775	\N	\N	en
384	ch16i49k3hmveit1bzxnyayd	plugin::content-manager.explorer.create	{}	api::nation.nation	{"fields": ["code", "name", "abbr", "status"]}	[]	2026-02-26 09:59:24.778	2026-02-26 09:59:24.778	2026-02-26 09:59:24.779	\N	\N	en
385	kz77eswei9exaely67weelac	plugin::content-manager.explorer.read	{}	api::nation.nation	{"fields": ["code", "name", "abbr", "status"]}	[]	2026-02-26 09:59:24.781	2026-02-26 09:59:24.781	2026-02-26 09:59:24.782	\N	\N	en
386	fzipwobmtjm4jh106jdbi7wu	plugin::content-manager.explorer.update	{}	api::nation.nation	{"fields": ["code", "name", "abbr", "status"]}	[]	2026-02-26 09:59:24.784	2026-02-26 09:59:24.784	2026-02-26 09:59:24.785	\N	\N	en
387	f8o2virvzqmocyzd6ulsrejb	plugin::content-manager.explorer.delete	{}	api::nation.nation	{}	[]	2026-02-26 09:59:24.787	2026-02-26 09:59:24.787	2026-02-26 09:59:24.787	\N	\N	en
388	m6chovs863tvqsv80a4u5pxf	plugin::content-manager.explorer.publish	{}	api::nation.nation	{}	[]	2026-02-26 09:59:24.79	2026-02-26 09:59:24.79	2026-02-26 09:59:24.79	\N	\N	en
389	go8yssp55czzvr3q41q1pkun	plugin::content-manager.explorer.create	{}	api::print-template.print-template	{"fields": ["type", "name", "content"]}	[]	2026-02-26 09:59:24.793	2026-02-26 09:59:24.793	2026-02-26 09:59:24.793	\N	\N	en
390	vmj3pfecazwrh73gjl4r6g64	plugin::content-manager.explorer.read	{}	api::print-template.print-template	{"fields": ["type", "name", "content"]}	[]	2026-02-26 09:59:24.796	2026-02-26 09:59:24.796	2026-02-26 09:59:24.796	\N	\N	en
391	es7it84gzkh6gycj9cs4g5qu	plugin::content-manager.explorer.update	{}	api::print-template.print-template	{"fields": ["type", "name", "content"]}	[]	2026-02-26 09:59:24.798	2026-02-26 09:59:24.798	2026-02-26 09:59:24.798	\N	\N	en
392	a3x871rjl0z7gm8v6tx50ode	plugin::content-manager.explorer.delete	{}	api::print-template.print-template	{}	[]	2026-02-26 09:59:24.801	2026-02-26 09:59:24.801	2026-02-26 09:59:24.801	\N	\N	en
393	b4l798dvp300gltvsp73dm0k	plugin::content-manager.explorer.publish	{}	api::print-template.print-template	{}	[]	2026-02-26 09:59:24.803	2026-02-26 09:59:24.803	2026-02-26 09:59:24.803	\N	\N	en
394	wwzjdj9wq1wc7akdctbbivas	plugin::content-manager.explorer.create	{}	api::school-class.school-class	{"fields": ["code", "name", "notes", "status", "start_date", "end_date", "student_count", "subjects"]}	[]	2026-02-26 09:59:24.806	2026-02-26 09:59:24.806	2026-02-26 09:59:24.806	\N	\N	en
395	nzg7xmffm48fyyv7hgodusye	plugin::content-manager.explorer.read	{}	api::school-class.school-class	{"fields": ["code", "name", "notes", "status", "start_date", "end_date", "student_count", "subjects"]}	[]	2026-02-26 09:59:24.808	2026-02-26 09:59:24.808	2026-02-26 09:59:24.808	\N	\N	en
396	y8l91rnnwcykvf8s8desdfol	plugin::content-manager.explorer.update	{}	api::school-class.school-class	{"fields": ["code", "name", "notes", "status", "start_date", "end_date", "student_count", "subjects"]}	[]	2026-02-26 09:59:24.811	2026-02-26 09:59:24.811	2026-02-26 09:59:24.811	\N	\N	en
397	pbreny20vbz0sllgd6vjq6c6	plugin::content-manager.explorer.delete	{}	api::school-class.school-class	{}	[]	2026-02-26 09:59:24.813	2026-02-26 09:59:24.813	2026-02-26 09:59:24.813	\N	\N	en
398	bonhsoz09mw0pcf1nymtkelw	plugin::content-manager.explorer.publish	{}	api::school-class.school-class	{}	[]	2026-02-26 09:59:24.816	2026-02-26 09:59:24.816	2026-02-26 09:59:24.816	\N	\N	en
399	r2nu7g1u22wh183m7q0wnds5	plugin::content-manager.explorer.create	{}	api::student.student	{"fields": ["stt", "group", "class_code", "class_name", "card_number", "student_code", "id_number", "first_name", "last_name", "full_name", "gender", "dob", "pob", "ethnicity", "nationality", "company", "address", "score", "photo", "phone", "school_class", "documents", "is_approved"]}	[]	2026-02-26 09:59:24.819	2026-02-26 09:59:24.819	2026-02-26 09:59:24.819	\N	\N	en
400	jjwa31g2bh5qe573ipcwtlh7	plugin::content-manager.explorer.read	{}	api::student.student	{"fields": ["stt", "group", "class_code", "class_name", "card_number", "student_code", "id_number", "first_name", "last_name", "full_name", "gender", "dob", "pob", "ethnicity", "nationality", "company", "address", "score", "photo", "phone", "school_class", "documents", "is_approved"]}	[]	2026-02-26 09:59:24.822	2026-02-26 09:59:24.822	2026-02-26 09:59:24.822	\N	\N	en
401	wy403kgrtpnxul2qaogo94ee	plugin::content-manager.explorer.update	{}	api::student.student	{"fields": ["stt", "group", "class_code", "class_name", "card_number", "student_code", "id_number", "first_name", "last_name", "full_name", "gender", "dob", "pob", "ethnicity", "nationality", "company", "address", "score", "photo", "phone", "school_class", "documents", "is_approved"]}	[]	2026-02-26 09:59:24.825	2026-02-26 09:59:24.825	2026-02-26 09:59:24.825	\N	\N	en
402	gl3hh8yhdf3wxrvvr0hexauh	plugin::content-manager.explorer.delete	{}	api::student.student	{}	[]	2026-02-26 09:59:24.828	2026-02-26 09:59:24.828	2026-02-26 09:59:24.828	\N	\N	en
403	l2udl5iemg6hfmcwzoyaofsi	plugin::content-manager.explorer.publish	{}	api::student.student	{}	[]	2026-02-26 09:59:24.831	2026-02-26 09:59:24.831	2026-02-26 09:59:24.831	\N	\N	en
404	g95igdu678vsqieyi6i6yb3z	plugin::content-manager.explorer.create	{}	api::student-document.student-document	{"fields": ["name", "url", "date", "type", "student"]}	[]	2026-02-26 09:59:24.834	2026-02-26 09:59:24.834	2026-02-26 09:59:24.834	\N	\N	en
405	jizp6pperpvm2tr5lyf5drki	plugin::content-manager.explorer.read	{}	api::student-document.student-document	{"fields": ["name", "url", "date", "type", "student"]}	[]	2026-02-26 09:59:24.836	2026-02-26 09:59:24.836	2026-02-26 09:59:24.836	\N	\N	en
406	qx1wufceuj8dgx6a8ukbl6vk	plugin::content-manager.explorer.update	{}	api::student-document.student-document	{"fields": ["name", "url", "date", "type", "student"]}	[]	2026-02-26 09:59:24.84	2026-02-26 09:59:24.84	2026-02-26 09:59:24.84	\N	\N	en
407	l4y9c4kipo51mpodvwrr71xy	plugin::content-manager.explorer.delete	{}	api::student-document.student-document	{}	[]	2026-02-26 09:59:24.842	2026-02-26 09:59:24.842	2026-02-26 09:59:24.842	\N	\N	en
408	fo58xz874v3irgya87rzi41v	plugin::content-manager.explorer.publish	{}	api::student-document.student-document	{}	[]	2026-02-26 09:59:24.845	2026-02-26 09:59:24.845	2026-02-26 09:59:24.845	\N	\N	en
409	prm0zjf7d2w4rtwhvuoyeoa5	plugin::content-manager.explorer.create	{}	api::subject.subject	{"fields": ["code", "name", "sessions", "total_hours", "theory_hours", "practice_hours", "exercise_hours", "exam_hours", "notes", "has_theory", "has_practice"]}	[]	2026-02-26 09:59:24.847	2026-02-26 09:59:24.847	2026-02-26 09:59:24.847	\N	\N	en
410	rrlez50ed29nyt0taifbks5v	plugin::content-manager.explorer.read	{}	api::subject.subject	{"fields": ["code", "name", "sessions", "total_hours", "theory_hours", "practice_hours", "exercise_hours", "exam_hours", "notes", "has_theory", "has_practice"]}	[]	2026-02-26 09:59:24.85	2026-02-26 09:59:24.85	2026-02-26 09:59:24.85	\N	\N	en
411	d0ix8f502hnpq6tgxw5fr5vt	plugin::content-manager.explorer.update	{}	api::subject.subject	{"fields": ["code", "name", "sessions", "total_hours", "theory_hours", "practice_hours", "exercise_hours", "exam_hours", "notes", "has_theory", "has_practice"]}	[]	2026-02-26 09:59:24.854	2026-02-26 09:59:24.854	2026-02-26 09:59:24.854	\N	\N	en
413	c3isalgelhx6mwv5t0c46vbd	plugin::content-manager.explorer.publish	{}	api::subject.subject	{}	[]	2026-02-26 09:59:24.859	2026-02-26 09:59:24.859	2026-02-26 09:59:24.859	\N	\N	en
414	mmn4j479puutypjjvbubrfu3	plugin::content-manager.explorer.create	{}	api::supplier.supplier	{"fields": ["code", "name", "tax_id", "phone", "email", "address", "status"]}	[]	2026-02-26 09:59:24.862	2026-02-26 09:59:24.862	2026-02-26 09:59:24.862	\N	\N	en
415	w3avnql7o3fcs5e8pvr0kwe0	plugin::content-manager.explorer.read	{}	api::supplier.supplier	{"fields": ["code", "name", "tax_id", "phone", "email", "address", "status"]}	[]	2026-02-26 09:59:24.864	2026-02-26 09:59:24.864	2026-02-26 09:59:24.864	\N	\N	en
416	zby9r38dxawm8t2p5qc8kis0	plugin::content-manager.explorer.update	{}	api::supplier.supplier	{"fields": ["code", "name", "tax_id", "phone", "email", "address", "status"]}	[]	2026-02-26 09:59:24.867	2026-02-26 09:59:24.867	2026-02-26 09:59:24.867	\N	\N	en
417	hvzt7kn62c41ku41b7wh9o5p	plugin::content-manager.explorer.delete	{}	api::supplier.supplier	{}	[]	2026-02-26 09:59:24.869	2026-02-26 09:59:24.869	2026-02-26 09:59:24.87	\N	\N	en
418	ks1ehvfod24mldetbhiag9fe	plugin::content-manager.explorer.publish	{}	api::supplier.supplier	{}	[]	2026-02-26 09:59:24.872	2026-02-26 09:59:24.872	2026-02-26 09:59:24.872	\N	\N	en
419	x5leopxeygubgqw8on6k24aq	plugin::content-manager.explorer.create	{}	api::teacher.teacher	{"fields": ["code", "name", "specialization", "phone", "email", "subjects"]}	[]	2026-02-26 09:59:24.875	2026-02-26 09:59:24.875	2026-02-26 09:59:24.875	\N	\N	en
420	u594onm6m80s3qajtfz8w4dn	plugin::content-manager.explorer.read	{}	api::teacher.teacher	{"fields": ["code", "name", "specialization", "phone", "email", "subjects"]}	[]	2026-02-26 09:59:24.877	2026-02-26 09:59:24.877	2026-02-26 09:59:24.877	\N	\N	en
421	ual8gtqkcwngie6r72xusckp	plugin::content-manager.explorer.update	{}	api::teacher.teacher	{"fields": ["code", "name", "specialization", "phone", "email", "subjects"]}	[]	2026-02-26 09:59:24.88	2026-02-26 09:59:24.88	2026-02-26 09:59:24.88	\N	\N	en
422	kiluo51p3pxz71u02wc1sbhw	plugin::content-manager.explorer.delete	{}	api::teacher.teacher	{}	[]	2026-02-26 09:59:24.882	2026-02-26 09:59:24.882	2026-02-26 09:59:24.882	\N	\N	en
423	dwgdni4ugpys1rk1lkf98w4i	plugin::content-manager.explorer.publish	{}	api::teacher.teacher	{}	[]	2026-02-26 09:59:24.885	2026-02-26 09:59:24.885	2026-02-26 09:59:24.885	\N	\N	en
429	qa4ywuf5rgr8uf7a5c37y284	plugin::content-manager.explorer.create	{}	api::training-assignment.training-assignment	{"fields": ["decision", "schedule"]}	[]	2026-02-26 09:59:24.902	2026-02-26 09:59:24.902	2026-02-26 09:59:24.902	\N	\N	en
430	u6cf1uw9z964ldtur3visag6	plugin::content-manager.explorer.read	{}	api::training-assignment.training-assignment	{"fields": ["decision", "schedule"]}	[]	2026-02-26 09:59:24.905	2026-02-26 09:59:24.905	2026-02-26 09:59:24.905	\N	\N	en
431	v6hq2l8akobm4d9vd81yr87x	plugin::content-manager.explorer.update	{}	api::training-assignment.training-assignment	{"fields": ["decision", "schedule"]}	[]	2026-02-26 09:59:24.909	2026-02-26 09:59:24.909	2026-02-26 09:59:24.909	\N	\N	en
432	mpfyvtu9pfvpsuadgo5fnr3y	plugin::content-manager.explorer.delete	{}	api::training-assignment.training-assignment	{}	[]	2026-02-26 09:59:24.912	2026-02-26 09:59:24.912	2026-02-26 09:59:24.912	\N	\N	en
433	hepv7kc46v9reyooyl0fk9mi	plugin::content-manager.explorer.publish	{}	api::training-assignment.training-assignment	{}	[]	2026-02-26 09:59:24.915	2026-02-26 09:59:24.915	2026-02-26 09:59:24.916	\N	\N	en
440	uoued5u2p8mjm9yqkn0imhmb	plugin::content-manager.explorer.create	{}	api::class-decision.class-decision	{"fields": ["decision_number", "type", "training_course", "signed_date", "signer_name", "school_class", "students", "notes", "related_decision", "start_date", "end_date", "class_type"]}	[]	2026-02-27 16:42:15.037	2026-02-27 16:42:15.037	2026-02-27 16:42:15.038	\N	\N	en
441	ynpy4bgrs0e80tn1wxer5s9z	plugin::content-manager.explorer.read	{}	api::class-decision.class-decision	{"fields": ["decision_number", "type", "training_course", "signed_date", "signer_name", "school_class", "students", "notes", "related_decision", "start_date", "end_date", "class_type"]}	[]	2026-02-27 16:42:15.043	2026-02-27 16:42:15.043	2026-02-27 16:42:15.044	\N	\N	en
442	v5vs3vds0mq2i0v4a14vtpmr	plugin::content-manager.explorer.update	{}	api::class-decision.class-decision	{"fields": ["decision_number", "type", "training_course", "signed_date", "signer_name", "school_class", "students", "notes", "related_decision", "start_date", "end_date", "class_type"]}	[]	2026-02-27 16:42:15.047	2026-02-27 16:42:15.047	2026-02-27 16:42:15.047	\N	\N	en
443	p7ecxb784aqfv0szzlyhrfwi	plugin::content-manager.explorer.create	{}	api::student.student	{"fields": ["stt", "group", "class_code", "class_name", "card_number", "student_code", "id_number", "first_name", "last_name", "full_name", "gender", "dob", "pob", "ethnicity", "nationality", "company", "address", "score", "photo", "phone", "school_class", "documents", "notes", "is_approved"]}	[]	2026-03-30 03:55:53.12	2026-03-30 03:55:53.12	2026-03-30 03:55:53.121	\N	\N	\N
444	x3r4j45uiwf38bwcuib5gkul	plugin::content-manager.explorer.read	{}	api::student.student	{"fields": ["stt", "group", "class_code", "class_name", "card_number", "student_code", "id_number", "first_name", "last_name", "full_name", "gender", "dob", "pob", "ethnicity", "nationality", "company", "address", "score", "photo", "phone", "school_class", "documents", "notes", "is_approved"]}	[]	2026-03-30 03:55:53.143	2026-03-30 03:55:53.143	2026-03-30 03:55:53.143	\N	\N	\N
445	o0awab959icgh3rhbr0nqhh5	plugin::content-manager.explorer.update	{}	api::student.student	{"fields": ["stt", "group", "class_code", "class_name", "card_number", "student_code", "id_number", "first_name", "last_name", "full_name", "gender", "dob", "pob", "ethnicity", "nationality", "company", "address", "score", "photo", "phone", "school_class", "documents", "notes", "is_approved"]}	[]	2026-03-30 03:55:53.156	2026-03-30 03:55:53.156	2026-03-30 03:55:53.156	\N	\N	\N
\.


--
-- Data for Name: admin_permissions_role_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
1	1	2	1
2	2	2	2
3	3	2	3
4	4	2	4
5	5	2	5
6	6	2	6
7	7	3	1
8	8	3	2
9	9	3	3
10	10	3	4
11	11	3	5
12	12	3	6
16	16	1	4
17	17	1	5
18	18	1	6
19	19	1	7
20	20	1	8
21	21	1	9
22	22	1	10
23	23	1	11
24	24	1	12
25	25	1	13
26	26	1	14
27	27	1	15
28	28	1	16
29	29	1	17
30	30	1	18
31	31	1	19
32	32	1	20
33	33	1	21
34	34	1	22
35	35	1	23
36	36	1	24
37	37	1	25
38	38	1	26
39	39	1	27
40	40	1	28
41	41	1	29
42	42	1	30
43	43	1	31
44	44	1	32
45	45	1	33
46	46	1	34
47	47	1	35
48	48	1	36
49	49	1	37
50	50	1	38
51	51	1	39
52	52	1	40
53	53	1	41
54	54	1	42
55	55	1	43
56	56	1	44
57	57	1	45
58	58	1	46
59	59	1	47
60	60	1	48
61	61	1	49
62	62	1	50
63	63	1	51
64	64	1	52
65	65	1	53
66	66	1	54
67	67	1	55
68	68	1	56
69	69	1	57
70	70	1	58
151	151	1	59
152	152	1	60
153	153	1	61
155	155	1	63
157	157	1	65
158	158	1	66
159	159	1	67
160	160	1	68
161	161	1	69
163	163	1	71
165	165	1	73
166	166	1	74
167	167	1	75
168	168	1	76
169	169	1	77
171	171	1	79
173	173	1	81
174	174	1	82
175	175	1	83
176	176	1	84
177	177	1	85
178	178	1	86
179	179	1	87
180	180	1	88
181	181	1	89
182	182	1	90
183	183	1	91
184	184	1	92
185	185	1	93
186	186	1	94
187	187	1	95
188	188	1	96
189	189	1	97
190	190	1	98
194	194	3	10
195	195	3	11
196	196	3	12
197	197	3	13
198	198	3	14
199	199	3	15
200	200	3	16
201	201	3	17
202	202	3	18
203	203	3	19
204	204	3	20
205	205	3	21
206	206	3	22
207	207	3	23
208	208	3	24
209	209	3	25
210	210	3	26
214	214	3	30
215	215	3	31
216	216	3	32
217	217	3	33
218	218	3	34
219	219	3	35
220	220	3	36
224	224	3	40
225	225	3	41
226	226	3	42
227	227	3	43
228	228	3	44
229	229	3	45
230	230	3	46
231	231	3	47
232	232	3	48
233	233	3	49
234	234	3	50
235	235	3	51
245	245	1	105
246	246	1	106
247	247	1	107
248	248	1	108
249	249	1	109
250	250	1	110
251	251	1	111
252	252	1	112
253	253	1	113
254	254	1	114
255	255	1	115
256	256	1	116
257	257	1	117
258	258	1	118
259	259	1	119
260	260	1	120
261	261	1	121
268	268	1	125
269	269	1	126
270	270	1	127
271	271	1	128
272	272	1	129
289	289	1	140
290	290	1	141
291	291	1	142
292	292	1	143
293	293	1	144
294	294	1	145
295	295	1	146
296	296	1	147
297	297	1	148
298	298	1	149
299	299	1	150
300	300	3	52
301	301	3	53
302	302	3	54
303	303	3	55
304	304	3	56
305	305	3	57
306	306	3	58
307	307	3	59
308	308	3	60
309	309	3	61
310	310	3	62
311	311	3	63
312	312	3	64
318	318	3	70
319	319	3	71
320	320	3	72
321	321	3	73
322	322	3	74
323	323	3	75
324	324	3	76
325	325	3	77
326	326	3	78
327	327	3	79
328	328	3	80
329	329	3	81
330	330	3	82
331	331	3	83
332	332	3	84
333	333	3	85
334	334	3	86
335	335	3	87
336	336	3	88
337	337	3	89
338	338	3	90
344	344	3	96
345	345	3	97
346	346	3	98
347	347	3	99
348	348	3	100
349	349	2	7
350	350	2	8
351	351	2	9
352	352	2	10
353	353	2	11
354	354	2	12
355	355	2	13
356	356	2	14
357	357	2	15
358	358	2	16
359	359	2	17
360	360	2	18
361	361	2	19
362	362	2	20
363	363	2	21
369	369	2	27
370	370	2	28
371	371	2	29
372	372	2	30
373	373	2	31
374	374	2	32
375	375	2	33
376	376	2	34
377	377	2	35
378	378	2	36
379	379	2	37
380	380	2	38
381	381	2	39
382	382	2	40
383	383	2	41
384	384	2	42
385	385	2	43
386	386	2	44
387	387	2	45
388	388	2	46
389	389	2	47
390	390	2	48
391	391	2	49
392	392	2	50
393	393	2	51
394	394	2	52
395	395	2	53
396	396	2	54
397	397	2	55
398	398	2	56
399	399	2	57
400	400	2	58
401	401	2	59
402	402	2	60
403	403	2	61
404	404	2	62
405	405	2	63
406	406	2	64
407	407	2	65
408	408	2	66
409	409	2	67
410	410	2	68
411	411	2	69
412	412	2	70
413	413	2	71
414	414	2	72
415	415	2	73
416	416	2	74
417	417	2	75
418	418	2	76
419	419	2	77
420	420	2	78
421	421	2	79
422	422	2	80
423	423	2	81
429	429	2	87
430	430	2	88
431	431	2	89
432	432	2	90
433	433	2	91
440	440	1	151
441	441	1	152
442	442	1	153
443	443	1	154
444	444	1	155
445	445	1	156
\.


--
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_roles (id, document_id, name, code, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	ne6sqpvb1eqmqkgqsmikegp1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2026-02-09 15:13:37.127	2026-02-09 15:13:37.127	2026-02-09 15:13:37.127	\N	\N	en
2	uc74ty0dgzorh5lf5hadf12a	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2026-02-09 15:13:37.139	2026-02-26 09:59:24.519	2026-02-09 15:13:37.139	\N	\N	en
3	cb8j1j65lzk6pq14j3a80vtg	Author	strapi-author	Authors can manage the content they have created.	2026-02-09 15:13:37.143	2026-02-26 09:59:34.753	2026-02-09 15:13:37.143	\N	\N	en
\.


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_users (id, document_id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	hsrlz29skxhw13pjp59rd979	Dương	Nguyễn	Duong	adsxaluan@gmail.com	$2a$10$QeAIGMOp2VG/vrN6fPm6HeywgO8JKuMoGTRRV3jRZqKNJffWE/c26	939419718a62b3f96e1a6370a293a2ebb60041cc	\N	t	f	\N	2026-02-09 15:14:07.651	2026-03-23 09:28:56.12	2026-02-09 15:14:07.652	\N	\N	en
2	j6uo02845bvkl8q0jgpl1qn2	Thai	Nguyen	thainguyen	adsxaluan09@gmail.com	$2a$10$9xvRgfNgrdxosJdHy29THuI7fhI2y4MOiyU0PJ0jOTZP97tuMQlSq	\N	c5d8271d16d0acea69622dabbb55135c70e592a2	t	f	\N	2026-03-23 08:16:37.16	2026-03-23 09:31:56.888	2026-03-23 08:16:37.16	\N	\N	\N
\.


--
-- Data for Name: admin_users_roles_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_users_roles_lnk (id, user_id, role_id, role_ord, user_ord) FROM stdin;
1	1	1	1	1
3	1	2	2	1
4	1	3	3	1
8	2	2	1	2
9	2	3	2	2
17	2	1	3	2
\.


--
-- Data for Name: audit_logs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.audit_logs (id, document_id, action, actor, details, entity_id, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
64	pke4r72eucj9sjdu4zqs3ojr	CREATE_DECISION	admin	Tạo mới Quyết định OPENING số 393/QĐ-CĐHHĐTI	sr254rx9mb73ptng8cdtfyz1	2026-03-24 06:45:14.283	2026-03-24 06:45:14.283	2026-03-24 06:45:14.283	\N	\N	\N
66	pgr9uh95w6gi97021e361t2b	CREATE_DECISION	admin	Tạo mới Quyết định RECOGNITION số 437/QĐ-CĐHHĐTI	ou5mclmv6rvenizy51ctcpe2	2026-03-24 07:20:06.617	2026-03-24 07:20:06.617	2026-03-24 07:20:06.616	\N	\N	\N
69	h2vjegsh27g0i3s3s6rryvhc	CREATE_DECISION	admin	Tạo mới Quyết định OPENING số 393/QĐ-CĐHHĐTI	pythcdf98or220rnrivtwfwn	2026-03-24 07:54:32.075	2026-03-24 07:54:32.075	2026-03-24 07:54:32.073	\N	\N	\N
70	spc6llzosf90ih8si1r5qnb0	CREATE_DECISION	admin	Tạo mới Quyết định RECOGNITION số 437/QĐ-CĐHHĐTI	ujmcghbxte5pv19jku8is8go	2026-03-24 08:01:08.991	2026-03-24 08:01:08.991	2026-03-24 08:01:08.99	\N	\N	\N
71	skpxpnrhpchc0fqkbqsmmrdz	CREATE_DECISION	admin	Tạo mới Quyết định OPENING số 345/QĐ-CĐHHĐTI	dvcicrxh2oyfd3rwl2ll914q	2026-03-25 09:00:12.957	2026-03-25 09:00:12.957	2026-03-25 09:00:12.956	\N	\N	\N
72	drofo32t470pzu0qw5t5ret9	CREATE_DECISION	admin	Tạo mới Quyết định RECOGNITION số 458/QĐ-CĐHHĐTI	fpchoyqzmk6myjfjfd4bfj5w	2026-03-25 09:32:50.687	2026-03-25 09:32:50.687	2026-03-25 09:32:50.686	\N	\N	\N
73	of8kqivtx8r8nmo47yk1maa6	UPDATE_DECISION	admin	Cập nhật Quyết định RECOGNITION số 438/QĐ-CĐHHĐTI	ujmcghbxte5pv19jku8is8go	2026-03-25 09:33:13.213	2026-03-25 09:33:13.213	2026-03-25 09:33:13.213	\N	\N	\N
74	wd6lt2vo2jsx35i24dl5g3hb	CREATE_DECISION	admin	Tạo mới Quyết định OPENING số 01/AAA	db27zzopgp25qdjr44i2n69g	2026-03-26 01:30:15.256	2026-03-26 01:30:15.256	2026-03-26 01:30:15.254	\N	\N	\N
75	xqhgfynl5l7a4srhqn0d4e0n	DELETE_DECISION	admin	Xóa Quyết định OPENING số 01/AAA	db27zzopgp25qdjr44i2n69g	2026-03-26 01:52:19.154	2026-03-26 01:52:19.154	2026-03-26 01:52:19.15	\N	\N	\N
76	v55fqdj8ibzr01x40a15t5r9	UNLOCK_DECISION	admin	Mở khóa QĐ Mở lớp bằng cách xóa QĐ Công nhận số 438/QĐ-CĐHHĐTI	pythcdf98or220rnrivtwfwn	2026-03-26 07:27:00.789	2026-03-26 07:27:00.789	2026-03-26 07:27:00.783	\N	\N	\N
77	ufetqxb3n7g1us0p6f8a6e41	UPDATE_DECISION	admin	Cập nhật Quyết định RECOGNITION số 458/QĐ-CĐHHĐTI	fpchoyqzmk6myjfjfd4bfj5w	2026-03-26 07:38:15.165	2026-03-26 07:38:15.165	2026-03-26 07:38:15.162	\N	\N	\N
78	acf0maqowdhu77ileqvsyyfz	UPDATE_DECISION	admin	Cập nhật Quyết định RECOGNITION số 458/QĐ-CĐHHĐTI	fpchoyqzmk6myjfjfd4bfj5w	2026-03-26 07:40:53.995	2026-03-26 07:40:53.995	2026-03-26 07:40:53.994	\N	\N	\N
79	zukfljx70u3vu6oysn4zqgjw	CREATE_DECISION	admin	Tạo mới Quyết định OPENING số 372/QĐ-CĐHHĐTI	l5m66thd0suohxd8e22910uk	2026-03-27 05:44:17.076	2026-03-27 05:44:17.076	2026-03-27 05:44:17.075	\N	\N	\N
80	h5hqyk623wv12h0oyrj0j9yx	UNLOCK_DECISION	admin	Mở khóa QĐ Mở lớp bằng cách xóa QĐ Công nhận số 458/QĐ-CĐHHĐTI	dvcicrxh2oyfd3rwl2ll914q	2026-03-27 10:00:53.419	2026-03-27 10:00:53.419	2026-03-27 10:00:53.417	\N	\N	\N
81	wvdlehb23wyq8mjku8l87lyk	UPDATE_DECISION	admin	Cập nhật Quyết định OPENING số 345/QĐ-CĐHHĐTI	dvcicrxh2oyfd3rwl2ll914q	2026-03-27 10:05:55.53	2026-03-27 10:05:55.53	2026-03-27 10:05:55.529	\N	\N	\N
82	s6fpscjxgae6djg9y2kx9ig4	CREATE_DECISION	admin	Tạo mới Quyết định RECOGNITION số 34234	pvx7cvbs7y1jpfhw1lgnt14f	2026-03-27 10:22:47.761	2026-03-27 10:22:47.761	2026-03-27 10:22:47.76	\N	\N	\N
83	lfrs30viic7zv5u2dfs7khyq	CREATE_DECISION	admin	Tạo mới Quyết định OPENING số 411/QĐ-CĐHHĐTI	wf6wjigcn5nek4calfm4j48p	2026-03-28 03:02:54.444	2026-03-28 03:02:54.444	2026-03-28 03:02:54.443	\N	\N	\N
84	p02yvrzn9s62m5wtzt1kgfer	UPDATE_DECISION	admin	Cập nhật Quyết định OPENING số 411/QĐ-CĐHHĐTI	wf6wjigcn5nek4calfm4j48p	2026-03-28 03:22:41.039	2026-03-28 03:22:41.039	2026-03-28 03:22:41.038	\N	\N	\N
85	y9prmrb4oyflyjbxqa6x4z40	UPDATE_DECISION	admin	Cập nhật Quyết định OPENING số 411/QĐ-CĐHHĐTI	wf6wjigcn5nek4calfm4j48p	2026-03-28 04:03:08.62	2026-03-28 04:03:08.62	2026-03-28 04:03:08.619	\N	\N	\N
86	xzfk68mvg0ozlgbcolavnqt3	CREATE_DECISION	admin	Tạo mới Quyết định RECOGNITION số 500/QĐ-CĐHHĐTI	ihe5p3selqbbwaswnpzoliu3	2026-03-28 04:10:27.406	2026-03-28 04:10:27.406	2026-03-28 04:10:27.406	\N	\N	\N
87	x4mndk2z0hgmqv2irgbb1db0	DELETE_DECISION	admin	Xóa Quyết định RECOGNITION số 0202	fu09qaxce9o6rngb8bvmn1cb	2026-03-28 09:08:36.387	2026-03-28 09:08:36.387	2026-03-28 09:08:36.386	\N	\N	\N
88	z9s0d0xhl5retiuwvoqbpk13	DELETE_DECISION	admin	Xóa Quyết định RECOGNITION số 0203	jngynlv8zca32k8alwcbn1kr	2026-03-28 09:08:38.885	2026-03-28 09:08:38.885	2026-03-28 09:08:38.884	\N	\N	\N
89	hn8e7w25tngq0ap4k4qvnkoj	CREATE_DECISION	admin	Tạo mới Quyết định OPENING số 458/QĐ-CĐHHĐTI	y30zo2sf5h44mrh7ib332qte	2026-03-30 07:36:47.793	2026-03-30 07:36:47.793	2026-03-30 07:36:47.793	\N	\N	\N
90	snf8emxkuqe82yvf2y2r2bdm	CREATE_DECISION	admin	Tạo mới Quyết định RECOGNITION số 3003	xzsv7r12oasn39marftoa6kg	2026-03-30 07:43:15.383	2026-03-30 07:43:15.383	2026-03-30 07:43:15.382	\N	\N	\N
91	b8lzmxn7r66awxf32ks41ej4	CREATE_DECISION	admin	Tạo mới Quyết định OPENING số 461/QĐ-CĐHHĐTI	cr35rwkq5ysv0xz3foymuonu	2026-03-31 07:32:04.501	2026-03-31 07:32:04.501	2026-03-31 07:32:04.5	\N	\N	\N
92	b4uqg47lagvgf3vlx87mk8pk	CREATE_DECISION	admin	Tạo mới Quyết định RECOGNITION số 3103	e6dq5jvveelovky2xq5ml7mp	2026-03-31 07:35:43.212	2026-03-31 07:35:43.212	2026-03-31 07:35:43.211	\N	\N	\N
93	bx6xaeo987vssfj0vny4paed	UPDATE_DECISION	admin	Cập nhật Quyết định RECOGNITION số 3003	xzsv7r12oasn39marftoa6kg	2026-04-01 07:09:21.377	2026-04-01 07:09:21.377	2026-04-01 07:09:21.376	\N	\N	\N
94	pdrvm5x54i4e20qbwaslzv15	UPDATE_DECISION	admin	Cập nhật Quyết định RECOGNITION số 500/QĐ-CĐHHĐTI	ihe5p3selqbbwaswnpzoliu3	2026-04-02 08:16:37.422	2026-04-02 08:16:37.422	2026-04-02 08:16:37.42	\N	\N	\N
95	gfipx478d0avssdiflg9dptj	CREATE_DECISION	admin	Tạo mới Quyết định OPENING số 477/QĐ-CĐHHĐTI	z1cnrur6thohq6u54jg8tw7b	2026-04-06 08:20:00.32	2026-04-06 08:20:00.32	2026-04-06 08:20:00.319	\N	\N	\N
96	l7h9o0wadc18z0stoa49prp4	UPDATE_DECISION	admin	Cập nhật Quyết định OPENING số 477/QĐ-CĐHHĐTI	z1cnrur6thohq6u54jg8tw7b	2026-04-06 08:21:11.669	2026-04-06 08:21:11.669	2026-04-06 08:21:11.667	\N	\N	\N
97	vbpybcxmlb5bg4vplpbrmjw6	CREATE_DECISION	admin	Tạo mới Quyết định RECOGNITION số 0604	aepq9dsjm8n9jdiboml0fogy	2026-04-06 08:34:07.253	2026-04-06 08:34:07.253	2026-04-06 08:34:07.252	\N	\N	\N
\.


--
-- Data for Name: class_decisions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.class_decisions (id, document_id, decision_number, training_course, signed_date, signer_name, notes, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, type, start_date, end_date, class_type) FROM stdin;
163	pythcdf98or220rnrivtwfwn	393/QĐ-CĐHHĐTI	K01/2026	2026-03-16	PHÓ HIỆU TRƯỞNG		2026-03-24 07:54:32.031	2026-03-24 07:54:32.031	2026-03-24 07:54:32.022	\N	\N	\N	OPENING	\N	\N	\N
168	l5m66thd0suohxd8e22910uk	372/QĐ-CĐHHĐTI	BLG-K01/2026	2026-03-12	PHÓ HIỆU TRƯỞNG		2026-03-27 05:44:17.013	2026-03-27 05:44:17.013	2026-03-27 05:44:17.004	\N	\N	\N	OPENING	\N	\N	\N
165	dvcicrxh2oyfd3rwl2ll914q	345/QĐ-CĐHHĐTI	K03/2026	2026-03-05	PHÓ HIỆU TRƯỞNG		2026-03-25 09:00:12.912	2026-03-27 10:05:55.458	2026-03-27 10:05:55.452	\N	\N	\N	OPENING	\N	\N	\N
169	pvx7cvbs7y1jpfhw1lgnt14f	34234	K03/2026	2026-03-27	HIỆU TRƯỞNG		2026-03-27 10:22:47.709	2026-03-27 10:22:47.709	2026-03-27 10:22:47.698	\N	\N	\N	RECOGNITION	\N	\N	\N
170	wf6wjigcn5nek4calfm4j48p	411/QĐ-CĐHHĐTI	SSO-K02/2026	2026-03-19	PHÓ HIỆU TRƯỞNG		2026-03-28 03:02:54.398	2026-03-28 04:03:08.575	2026-03-28 04:03:08.567	\N	\N	\N	OPENING	\N	\N	\N
174	y30zo2sf5h44mrh7ib332qte	458/QĐ-CĐHHĐTI	SSD-K02/2026	2026-03-25	PHÓ HIỆU TRƯỞNG		2026-03-30 07:36:47.741	2026-03-30 07:36:47.741	2026-03-30 07:36:47.731	\N	\N	\N	OPENING	\N	\N	\N
176	cr35rwkq5ysv0xz3foymuonu	461/QĐ-CĐHHĐTI	UBTC-K26/2026	2026-03-25	PHÓ HIỆU TRƯỞNG		2026-03-31 07:32:04.419	2026-03-31 07:32:04.419	2026-03-31 07:32:04.413	\N	\N	\N	OPENING	\N	\N	\N
177	e6dq5jvveelovky2xq5ml7mp	3103	UBTC-K26/2026	2026-03-31	PHÓ HIỆU TRƯỞNG		2026-03-31 07:35:43.159	2026-03-31 07:35:43.159	2026-03-31 07:35:43.153	\N	\N	\N	RECOGNITION	\N	\N	\N
175	xzsv7r12oasn39marftoa6kg	3003	SSD-K02/2026	2026-03-30	PHÓ HIỆU TRƯỞNG		2026-03-30 07:43:15.311	2026-04-01 07:09:21.316	2026-04-01 07:09:21.308	\N	\N	\N	RECOGNITION	\N	\N	\N
171	ihe5p3selqbbwaswnpzoliu3	500/QĐ-CĐHHĐTI	SSO-K02/2026	2026-03-30	PHÓ HIỆU TRƯỞNG		2026-03-28 04:10:27.349	2026-04-02 08:16:37.35	2026-04-02 08:16:37.333	\N	\N	\N	RECOGNITION	\N	\N	\N
178	z1cnrur6thohq6u54jg8tw7b	477/QĐ-CĐHHĐTI	SSD-K04/2026	2026-03-30	PHÓ HIỆU TRƯỞNG		2026-04-06 08:20:00.249	2026-04-06 08:21:11.601	2026-04-06 08:21:11.594	\N	\N	\N	OPENING	\N	\N	\N
179	aepq9dsjm8n9jdiboml0fogy	0604	SSD-K04/2026	2026-04-06	PHÓ HIỆU TRƯỞNG		2026-04-06 08:34:07.176	2026-04-06 08:34:07.176	2026-04-06 08:34:07.169	\N	\N	\N	RECOGNITION	\N	\N	\N
\.


--
-- Data for Name: class_decisions_related_decision_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.class_decisions_related_decision_lnk (id, class_decision_id, inv_class_decision_id) FROM stdin;
81	169	165
82	171	170
83	175	174
84	177	176
87	179	178
\.


--
-- Data for Name: class_decisions_school_class_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.class_decisions_school_class_lnk (id, class_decision_id, school_class_id) FROM stdin;
174	163	250
176	165	232
182	168	192
184	169	232
185	170	83
188	171	83
190	174	180
191	175	180
192	176	244
193	177	244
196	178	180
198	179	180
\.


--
-- Data for Name: class_decisions_students_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.class_decisions_students_lnk (id, class_decision_id, student_id, student_ord) FROM stdin;
390	169	214	1
391	169	215	2
392	169	217	3
393	169	218	4
394	169	219	5
395	169	212	6
396	169	220	7
397	169	221	8
398	169	222	9
399	169	223	10
400	169	224	11
401	169	213	12
402	169	216	13
427	171	234	1
428	171	235	2
429	171	236	3
430	171	237	4
431	171	238	5
370	168	226	1
371	168	227	2
372	168	228	3
373	168	229	4
374	168	230	5
375	168	231	6
432	171	239	6
433	171	240	7
434	171	241	8
444	175	243	1
445	175	244	2
446	175	245	3
447	175	246	4
448	175	242	5
449	175	247	6
257	163	193	1
258	163	194	2
259	163	195	3
260	163	196	4
261	163	197	5
262	163	198	6
263	163	199	7
264	163	200	8
265	163	201	9
266	163	202	10
267	163	203	11
268	163	204	12
269	163	205	13
270	163	206	14
271	163	207	15
272	163	208	16
273	163	209	17
274	163	210	18
275	163	211	19
276	163	192	20
450	175	248	7
451	175	249	8
297	165	214	1
298	165	215	2
299	165	217	3
300	165	218	4
301	165	219	5
302	165	212	6
303	165	220	7
304	165	221	8
305	165	222	9
306	165	223	10
307	165	224	11
308	165	213	12
309	165	216	13
389	165	233	14
403	170	234	1
404	170	235	2
405	170	236	3
406	170	237	4
407	170	238	5
408	170	239	6
409	170	240	7
410	170	241	8
435	174	243	1
436	174	244	2
437	174	245	3
438	174	246	4
439	174	242	5
440	174	247	6
441	174	248	7
442	174	249	8
443	174	250	9
452	176	266	1
453	176	267	2
454	176	251	3
455	176	252	4
456	176	253	5
457	176	254	6
458	176	255	7
459	176	256	8
460	176	257	9
461	176	258	10
462	176	259	11
463	176	260	12
464	176	261	13
465	176	262	14
466	176	263	15
467	177	266	1
468	177	267	2
469	177	251	3
470	177	252	4
471	177	253	5
472	177	254	6
473	177	255	7
474	177	256	8
475	177	257	9
476	177	258	10
477	177	259	11
478	177	260	12
479	177	261	13
480	177	262	14
481	177	263	15
498	178	271	1
499	178	272	2
500	178	273	3
501	178	274	4
502	178	275	5
503	178	276	6
504	178	277	7
505	178	278	8
506	178	279	9
507	178	280	10
508	178	281	11
509	178	282	12
510	178	285	13
511	178	268	14
512	178	269	15
513	178	270	16
530	179	271	1
531	179	272	2
532	179	273	3
533	179	274	4
534	179	275	5
535	179	276	6
536	179	277	7
537	179	278	8
538	179	279	9
539	179	280	10
540	179	281	11
541	179	282	12
542	179	285	13
543	179	268	14
544	179	269	15
545	179	270	16
\.


--
-- Data for Name: class_subjects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.class_subjects (class_id, subject_id, id, document_id, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
cls1	sub2	1	\N	\N	\N	\N	\N	\N	en
cls1	sub3	2	\N	\N	\N	\N	\N	\N	en
cls1	sub6	3	\N	\N	\N	\N	\N	\N	en
cls2	sub1	4	\N	\N	\N	\N	\N	\N	en
cls2	sub4	5	\N	\N	\N	\N	\N	\N	en
cls2	sub5	6	\N	\N	\N	\N	\N	\N	en
cls3	sub1	7	\N	\N	\N	\N	\N	\N	en
cls3	sub5	8	\N	\N	\N	\N	\N	\N	en
cls4	sub2	9	\N	\N	\N	\N	\N	\N	en
cls4	sub3	10	\N	\N	\N	\N	\N	\N	en
\.


--
-- Data for Name: classes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.classes (id, document_id, code, name, notes, status, start_date, end_date, student_count, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
103	jjkrmxrzekxbilchhmn9qne8	MH004	Huấn luyện an toàn cho nhân viên phục vụ trực tiếp trong khoang hành khách và tàu khách Ro - Ro.		active	2026-02-16	2026-02-16	0	2026-02-16 13:13:59.155	2026-02-26 10:31:34.299	2026-02-26 10:31:34.283	\N	\N	en
243	ow4pzccbn1j6d6x8dy6gatqu	MH002	Bếp trưởng, cấp dưỡng		active	2026-02-16	2026-02-16	0	2026-02-16 13:13:59.06	2026-02-26 10:31:43.508	2026-02-26 10:31:43.504	\N	\N	en
119	j221297t7f1iqwj8i5gg1dcv	MH012	Huấn luyện nâng cao thuyền viên làm việc trên tàu hoạt động tại các vùng nước cực		active	2026-02-16	2026-02-16	0	2026-02-16 13:13:59.419	2026-02-16 19:15:53.094	2026-02-26 01:48:57.502	\N	\N	en
172	qdo05k12v5lnyx27zhabqg9f	RAM	Sử dụng Radar và Arpa hàng hải mức quản lý		active	2026-02-16	2026-02-16	0	2026-02-24 08:28:22.423	2026-02-24 08:28:22.423	2026-02-26 01:48:57.502	\N	\N	en
190	puzrweo06o3qpdj31s7pojc8	MH011	Huấn luyện cơ bản thuyền viên làm việc trên tàu hoạt động tại các vùng nước cực		active	2026-02-16	2026-02-16	0	2026-02-24 08:29:18.069	2026-02-24 08:29:18.069	2026-02-26 01:48:57.502	\N	\N	en
186	pz3ubjcoulmh5w3c319pzqpi	MH009	Huấn luyện cơ bản thuyền viên làm việc trên tàu cao tốc		active	2026-02-16	2026-02-16	0	2026-02-24 08:29:11.072	2026-02-24 08:29:11.072	2026-02-26 01:48:57.502	\N	\N	en
188	p2zx8jquo71c8mdeg3j3uku2	MH010	Huấn luyện nâng cao thuyền viên làm việc trên tàu cao tốc		active	2026-02-16	2026-02-16	0	2026-02-24 08:29:14.65	2026-02-24 08:29:14.65	2026-02-26 01:48:57.502	\N	\N	en
107	ibqgviogwdcvpnabm447o8tv	MH006	Quản lý khủng hoảng và phản ứng của con người trên tàu khách và tàu khách Ro-Ro		active	2026-02-16	2026-02-16	0	2026-02-16 13:13:59.222	2026-02-16 19:13:03.8	2026-02-26 01:48:57.502	\N	\N	en
106	tbi5m7m8u4ii93rdoayyfsb1	MH005	An toàn hành khách, an toàn hàng hóa và tính nguyên vẹn của vỏ tàu đối với tàu khách và tàu khách Ro-Ro		active	2026-02-16	2026-02-16	0	2026-02-16 13:13:59.212	2026-02-16 19:11:56.902	2026-02-26 01:48:57.502	\N	\N	en
110	gstt1i6g8ecwm9hqi4rrgerw	MH007	Huấn luyện cơ bản thuyền viên làm việc trên tàu sử dụng nhiên liệu có điểm cháy thấp theo Bộ luật IGF		active	2026-02-16	2026-02-16	0	2026-02-16 13:13:59.291	2026-02-16 19:13:39.094	2026-02-26 01:48:57.502	\N	\N	en
102	cpq2t8kqwa4gg9ggqmo3mk8j	MH003	Quản lý đám đông đối với tàu khách và tàu khách Ro-Ro.		active	2026-02-16	2026-02-16	0	2026-02-16 13:13:59.124	2026-02-16 19:11:16.93	2026-02-26 01:48:57.502	\N	\N	en
240	oq3p75hykgwli8pftz1av3u0	RAO	Sử dụng Radar và Arpa hàng hải mức vận hành		active	2026-02-16	2026-02-16	0	2026-02-24 08:28:14.769	2026-02-26 10:37:52.189	2026-02-26 10:37:52.183	\N	\N	en
111	c20fcf633945518227f6cf0e	MH008	Huấn luyện nâng cao thuyền viên làm việc trên tàu sử dụng nhiên liệu có điểm cháy thấp theo Bộ luật IGF		active	2026-02-16	2026-02-16	0	2026-02-16 13:13:59.293	2026-02-16 19:14:27.583	2026-02-26 01:48:57.502	\N	\N	en
98	7114e261d3656498f98d9460	MH001	Sỹ quan an toàn tàu biển		active	2026-02-16	2026-02-16	0	2026-02-16 13:13:59.049	2026-02-17 09:29:23.801	2026-02-26 01:48:57.502	\N	\N	en
239	s1esjmadfgkxdc8eobp3e1i5	BOC	Cơ bản tàu dầu và hóa chất	Danh mục tài liệu 01 bộ gồm: 02 quyển đóng bìa màu + dán gáy.\t\t\t\n1- Tài liệu  Cơ bản tầu dầu 57 tờ A4 x 2 mặt (114 trang)\t\t\t\n2- Tài liệu  cơ bản tầu hóa chất  gồm  71 tờ A4 x 2 mặt (142 trang)\t\t\t\n	active	2026-02-16	2026-02-16	0	2026-02-24 08:28:29.597	2026-04-03 01:52:25.978	2026-04-03 01:52:25.972	\N	\N	en
182	nl1sdx8pu1ksi6khano0nbp7	AFF	Phòng cháy chữa cháy nâng cao	Tài liệu Phòng cháy chữa cháy nâng cao gồm 36 tờ A4 x 2 mặt (72 trang) đóng  quyển bìa máu + dán gáy	active	2026-02-16	2026-02-16	0	2026-02-24 08:29:00.553	2026-04-03 01:43:39.868	2026-04-03 01:43:39.862	\N	\N	en
234	g0xzk6n6uvfiq53r12itc78o	SCR	Nghiệp vụ trên bè cứu sinh và xuồng cứu nạn, xuồng cứu nạn cao tốc	Tài liệu Nghiệp vụ Xuồng cứu nạn cao tốc gồm 14 tờ A4 x 2 mặt (28 trang) đóng thành quyển bìa màu + dán gáy	active	2026-02-16	2026-02-16	0	2026-02-16 13:13:58.231	2026-04-03 01:44:40.245	2026-04-03 01:44:40.238	\N	\N	en
233	izdtvrn4ts518j2nrins8ppa	MFC	Sơ cứu Y tế và chăm sóc Y tế	Tài liệu Chăm sóc y tế gồm 96 tờ A4 x 2 mặt (192 trang) đóng  thành quyển bìa màu + dán gáy\t\t\t\t\n	active	2026-02-16	2026-02-16	0	2026-02-24 08:27:36.975	2026-04-03 01:48:15.581	2026-04-03 01:48:15.572	\N	\N	en
184	kx6g603tnm3fvzk89b02zvwp	MH013	Huấn luyện viên chính	Tài liệu Huấn luyện viên chính gồm 24 tờ A4 x 2 mặt (48 trang) đóng thành quyển bìa màu + dán gáy.	active	2026-02-16	2026-02-16	0	2026-02-24 08:29:04.992	2026-04-03 01:48:36.608	2026-04-03 01:48:36.602	\N	\N	en
244	gchx5mvlrcxynx7hmkafb5dz	U.BTC	Cập nhật Huấn luyện An toàn sinh mạng và trách nhiệm xã hội theo  Nghị quyết MSC.560 (108) của IMO)	Tài liệu Cập nhật An toàn sinh mạng và trách nhiệm xã hội có 24 tờ A4 x 2 mặt (48 trang) đóng thành quyển bìa màu + dán gáy.	active	\N	\N	0	2026-03-12 09:33:29.757	2026-04-03 01:48:59.735	2026-04-03 01:48:59.731	\N	\N	en
192	hlhytb396hgvc20zhruk1wmu	BLG	Cơ bản tàu khí hóa lỏng	Tài liệu  Cơ bản tàu Khí hóa lỏng 47 tờ A4 x 2 mặt (94 trang) đóng thành quyển bìa màu + dán gáy.	active	2026-02-16	2026-02-16	0	2026-02-24 08:29:20.934	2026-04-03 01:52:47.752	2026-04-03 01:52:47.747	\N	\N	en
176	pzcbgg8gbqbykojxl3f4q235	AOT	Nâng cao tàu dầu	Tài liệu  Nâng cao tầu dầu gồm 50 tờ A4 x 2 mặt (100 trang) đóng thành quyển bìa màu + dán gáy.	active	2026-02-16	2026-02-16	0	2026-02-24 08:28:41.57	2026-04-03 01:53:09.292	2026-04-03 01:53:09.287	\N	\N	en
194	mdaiw3kihkdmj7sd7cd470x4	ALG	Nâng cao tàu khí hóa lỏng 	Tài liệu  Nâng cao tầu Gas gồm có 45 tờ A4 x 2 mặt (90 trang) đóng thành quyển bìa màu + dán gáy.	active	2026-02-16	2026-02-16	0	2026-02-24 08:29:24.254	2026-04-03 01:54:06.269	2026-04-03 01:54:06.263	\N	\N	en
242	z9rzvpzoyasfxgm71xyn8f9n	BRM	Quản lý đội ngũ hoặc nguồn lực buồng lái	Tài liệu  Huấn luyện đội ngũ/nguồn lực buồng lái  gồm có 37 tờ A4 x 2 mặt (74 trang) đóng thành quyển bìa màu + dán gáy.	active	2026-02-16	2026-02-16	0	2026-02-24 08:27:47.618	2026-04-03 01:55:09.442	2026-04-03 01:55:09.431	\N	\N	en
178	eujbcpwp0cz0wpujdlsfv7pr	ECDIS	Khai thác hệ thống thông tin và chỉ báo hải đồ điện tử	Tài liệu  Huấn luyệnKhai thác hệ thồng thông tin và chỉ báo Hải đồ điện tử (ECDIS) gồm có 24 tờ A4 x 2 mặt (48 trang) đóng thành quyển bìa màu + dán gáy.	active	2026-02-16	2026-02-16	0	2026-02-24 08:28:52.546	2026-04-03 01:58:09.639	2026-04-03 01:58:09.633	\N	\N	en
250	iuif31kwratiaczz820tjswt	PFSO	Cán bộ an ninh cảng biển		active	\N	\N	0	2026-03-24 05:42:13.417	2026-03-24 07:28:49.605	2026-03-24 07:28:49.599	\N	\N	\N
235	0c7297d308851058ef9dc6f9	ACT	Nâng cao tàu hóa chất	Tài liệu  Nâng cao tầu Hóa chất gồm có 65 tờ A4 x 2 mặt (130 trang) đóng thành quyển bìa màu + dán gáy.	active	2026-02-16	2026-02-16	0	2026-02-16 13:13:58.814	2026-04-03 01:53:31.84	2026-04-03 01:53:31.834	\N	1	en
180	pf22jn34h2p3ud4yc4phbr4u	SSD	Thuyền viên có nhiệm vụ an ninh tàu biển cụ thể	Tài liệu  Huấn luyện Thuyền viên có nhiệm vụ an ninh cụ thể gồm có 26 tờ A4 x 2 mặt (52 trang) đóng thành quyển bìa màu + dán gáy.	active	2026-02-16	2026-02-16	0	2026-02-24 08:28:56.525	2026-04-03 01:54:39.748	2026-04-03 01:54:39.742	\N	\N	en
238	zpl0006djsba76n4cko2oj1q	ERM	Quản lý đội ngũ hoặc nguồn lực buồng máy	Tài liệu  Huấn luyện đội ngũ/nguồn lực buồng máy gồm có 27 tờ A4 x 2 mặt (54 trang) đóng thành quyển bìa màu + dán gáy.	active	2026-02-16	2026-02-16	0	2026-02-24 08:28:09.258	2026-04-03 01:55:21.649	2026-04-03 01:55:21.645	\N	\N	en
83	70315ea831175646bbcd5db1	SSO	Sỹ quan an ninh tàu biển	Tài liệu  Huấn luyện Sỹ quan an ninh tàu biển gồm có 72 tờ A4 x 2 mặt (144 trang) đóng thành quyển bìa màu + dán gáy.	active	2026-02-16	2026-02-16	0	2026-02-16 13:13:58.576	2026-04-03 01:58:41.575	2026-04-03 01:58:41.568	\N	\N	en
232	o8y8mp1v9xcmaonwm48moj6i	BTC	Huấn luyện nghiệp vụ cơ bản	01 bộ gồm: 05 quyển đóng bìa màu + dán gáy; 1- Tài liệu Cứu sinh cơ bản gồm  28 tờ A4 x 2 mặt (56 trang); 2- Tài liệu PCCC cơ bản gồm  28 tờ A4 x 2 mặt (56 trang); 3- Tài liệu An toàn sinh mạng và TNXH  gồm  29 tờ A4 x 2 mặt (58 trang); 4- Tài liệu Sơ cứu y tế cơ bản gồm  43 tờ A4 x 2 mặt (86 trang); 5- Tài liệu Nhận thức  an ninh gồm 23 tờ A4 x 2 mặt (46trang)\t\t\t\n	active	2026-02-16	2026-02-16	1	2026-02-26 09:48:39.816	2026-04-03 07:15:49.996	2026-04-03 07:15:49.986	\N	\N	en
\.


--
-- Data for Name: classes_subjects_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.classes_subjects_lnk (id, school_class_id, subject_id, subject_ord) FROM stdin;
51	103	292	1
183	243	284	1
185	240	260	1
49	102	291	1
53	106	293	1
57	107	294	1
61	110	295	1
105	188	304	1
67	111	296	1
69	119	306	1
107	190	305	1
45	98	283	1
103	186	303	1
89	172	267	1
217	250	377	1
99	182	271	1
197	234	321	1
198	234	255	2
190	233	257	1
196	233	256	2
101	184	307	1
204	244	376	1
186	239	272	1
109	192	282	1
93	176	280	1
188	235	279	1
111	194	281	1
97	180	269	1
187	242	258	1
184	238	259	1
95	178	268	1
33	83	270	1
191	232	317	1
192	232	339	2
193	232	245	3
194	232	246	4
203	232	323	5
\.


--
-- Data for Name: classrooms; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.classrooms (id, document_id, code, name, capacity, building, status, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
2	xc3tes0y0nz66pnq4i5a38zc	P101	Phòng 101	40	B2	active	2026-02-16 18:58:21.82	2026-02-16 18:58:21.82	2026-02-16 18:58:21.849	\N	\N	en
3	59b64f046ae700bc2e94373c	P102	Phòng Lý thuyết 102	40	Nhà A	active	2026-02-26 01:37:16.208	2026-02-26 01:37:16.208	2026-02-26 01:37:16.208	\N	\N	en
4	c111b0c458ab491623da5157	P201	Phòng Máy tính 01	30	Nhà B	active	2026-02-26 01:37:16.208	2026-02-26 01:37:16.208	2026-02-26 01:37:16.208	\N	\N	en
5	16dd94437bb8a6a7e945f44d	P202	Phòng Máy tính 02	30	Nhà B	active	2026-02-26 01:37:16.208	2026-02-26 01:37:16.208	2026-02-26 01:37:16.208	\N	\N	en
6	b1de8d90a66b841f496f07d7	X1	Xưởng Thực hành Điện	20	Nhà D	active	2026-02-26 01:37:16.208	2026-02-26 01:37:16.208	2026-02-26 01:37:16.208	\N	\N	en
7	2de97775b3e992bb572dfa79	X2	Xưởng Thực hành Cơ khí	20	Nhà D	active	2026-02-26 01:37:16.208	2026-02-26 01:37:16.208	2026-02-26 01:37:16.208	\N	\N	en
8	dd1d7589460f4e5f35bdd266	H1	Hội trường lớn	200	Nhà C	active	2026-02-26 01:37:16.208	2026-02-26 01:37:16.208	2026-02-26 01:37:16.208	\N	\N	en
\.


--
-- Data for Name: exam_approvals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.exam_approvals (id, document_id, approvals, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
41	rjh3wtteva6imcyx4vhgfsut	{"377": {"034067008297": {"practicePass": true, "theoryApproved": true}, "036082025190": {"practicePass": true, "theoryApproved": true}, "038086018793": {"practicePass": true, "theoryApproved": true}, "038088005081": {"practicePass": true, "theoryApproved": true}, "042095011413": {"practicePass": true, "theoryApproved": true}, "045080004361": {"practicePass": true, "theoryApproved": true}, "045088004194": {"practicePass": true, "theoryApproved": true}, "045092002587": {"practicePass": true, "theoryApproved": true}, "045093004300": {"practicePass": true, "theoryApproved": true}, "045093010371": {"practicePass": true, "theoryApproved": true}, "045094004558": {"practicePass": true, "theoryApproved": true}, "045094006740": {"practicePass": true, "theoryApproved": true}, "045095004270": {"practicePass": true, "theoryApproved": true}, "045096003641": {"practicePass": true, "theoryApproved": true}, "045096004532": {"practicePass": true, "theoryApproved": true}, "045096006453": {"practicePass": true, "theoryApproved": true}, "045191008082": {"practicePass": true, "theoryApproved": true}, "045200008049": {"practicePass": true, "theoryApproved": true}, "049085004743": {"practicePass": true, "theoryApproved": true}, "049202010438": {"practicePass": true, "theoryApproved": true}}}	2026-03-24 07:58:59.976	2026-03-24 07:58:59.976	2026-03-24 07:58:59.969	\N	\N	\N
43	wznkqy9cgxc715v7pemv8f1n	{"307": {"616546464666": {"practicePass": true, "theoryApproved": true}}}	2026-03-26 01:30:36.489	2026-03-26 01:30:36.489	2026-03-26 01:30:36.484	\N	\N	\N
44	dildhxc62gefly78yjrmbyx0	{"282": {"034087013437": {"practicePass": true, "theoryApproved": true}, "034095003257": {"practicePass": true, "theoryApproved": true}, "035091000241": {"practicePass": true, "theoryApproved": true}, "042097004307": {"practicePass": true, "theoryApproved": true}, "068086003981": {"practicePass": true, "theoryApproved": true}, "068093002639": {"practicePass": true, "theoryApproved": true}}}	2026-03-27 05:45:52.689	2026-03-27 05:45:52.689	2026-03-27 05:45:52.685	\N	\N	\N
42	ldkfoxtbx0b30h9982fuagru	{"245": {"031087012414": {"practicePass": true, "theoryApproved": true}, "031092000534": {"practicePass": true, "theoryApproved": true}, "031204009659": {"practicePass": true, "theoryApproved": true}, "034087013437": {"practicePass": true, "theoryApproved": true}, "034089011946": {"practicePass": true, "theoryApproved": true}, "034095003257": {"practicePass": true, "theoryApproved": true}, "035091000241": {"practicePass": true, "theoryApproved": true}, "037085010532": {"practicePass": true, "theoryApproved": true}, "038205012068": {"practicePass": true, "theoryApproved": true}, "042097004307": {"practicePass": true, "theoryApproved": true}, "066088009741": {"practicePass": true, "theoryApproved": true}, "068086003981": {"practicePass": true, "theoryApproved": true}, "068093002639": {"practicePass": true, "theoryApproved": true}}, "246": {"031087012414": {"practicePass": true, "theoryApproved": true}, "031092000534": {"practicePass": true, "theoryApproved": true}, "031204009659": {"practicePass": true, "theoryApproved": true}, "034087013437": {"practicePass": true, "theoryApproved": true}, "034089011946": {"practicePass": true, "theoryApproved": true}, "034095003257": {"practicePass": true, "theoryApproved": true}, "035091000241": {"practicePass": true, "theoryApproved": true}, "037085010532": {"practicePass": true, "theoryApproved": true}, "038205012068": {"practicePass": true, "theoryApproved": true}, "042097004307": {"practicePass": true, "theoryApproved": true}, "066088009741": {"practicePass": true, "theoryApproved": true}, "068086003981": {"practicePass": true, "theoryApproved": true}, "068093002639": {"practicePass": true, "theoryApproved": true}}, "317": {"031087012414": {"practicePass": true, "theoryApproved": true}, "031092000534": {"practicePass": true, "theoryApproved": true}, "031204009659": {"practicePass": true, "theoryApproved": true}, "034087013437": {"practicePass": true, "theoryApproved": true}, "034089011946": {"practicePass": true, "theoryApproved": true}, "034095003257": {"practicePass": true, "theoryApproved": true}, "035091000241": {"practicePass": true, "theoryApproved": true}, "037085010532": {"practicePass": true, "theoryApproved": true}, "038205012068": {"practicePass": true, "theoryApproved": true}, "042097004307": {"practicePass": true, "theoryApproved": true}, "066088009741": {"practicePass": true, "theoryApproved": true}, "068086003981": {"practicePass": true, "theoryApproved": true}, "068093002639": {"practicePass": true, "theoryApproved": true}}, "323": {"031087012414": {"practicePass": true, "theoryApproved": true}, "031092000534": {"practicePass": true, "theoryApproved": true}, "031204009659": {"practicePass": true, "theoryApproved": true}, "034087013437": {"practicePass": true, "theoryApproved": true}, "034089011946": {"practicePass": true, "theoryApproved": true}, "034095003257": {"practicePass": true, "theoryApproved": true}, "035091000241": {"practicePass": true, "theoryApproved": true}, "037085010532": {"practicePass": true, "theoryApproved": true}, "038205012068": {"practicePass": true, "theoryApproved": true}, "042097004307": {"practicePass": true, "theoryApproved": true}, "066088009741": {"practicePass": true, "theoryApproved": true}, "068086003981": {"practicePass": true, "theoryApproved": true}, "068093002639": {"practicePass": true, "theoryApproved": true}}, "339": {"031087012414": {"practicePass": true, "theoryApproved": true}, "031092000534": {"practicePass": true, "theoryApproved": true}, "031204009659": {"practicePass": true, "theoryApproved": true}, "034087013437": {"practicePass": true, "theoryApproved": true}, "034089011946": {"practicePass": true, "theoryApproved": true}, "034095003257": {"practicePass": true, "theoryApproved": true}, "035091000241": {"practicePass": true, "theoryApproved": true}, "037085010532": {"practicePass": true, "theoryApproved": true}, "038205012068": {"practicePass": true, "theoryApproved": true}, "042097004307": {"practicePass": true, "theoryApproved": true}, "066088009741": {"practicePass": true, "theoryApproved": true}, "068086003981": {"practicePass": true, "theoryApproved": true}, "068093002639": {"practicePass": true, "theoryApproved": true}}}	2026-03-25 09:05:25.966	2026-03-27 10:07:28.992	2026-03-27 10:07:28.984	\N	\N	\N
45	yq365dfldhm667mjl3i0zn22	{"270": {"031094014957": {"practicePass": true, "theoryApproved": true}, "034082007050": {"practicePass": true, "theoryApproved": true}, "034084024035": {"practicePass": true, "theoryApproved": true}, "034089012280": {"practicePass": true, "theoryApproved": true}, "036090005449": {"practicePass": true, "theoryApproved": true}, "040086001233": {"practicePass": true, "theoryApproved": true}, "040094023739": {"practicePass": true, "theoryApproved": true}, "052088008372": {"practicePass": true, "theoryApproved": true}}}	2026-03-28 04:04:45.392	2026-03-28 04:04:45.392	2026-03-28 04:04:45.388	\N	\N	\N
46	ew2eacxcjt41cidw2vx9gcn4	{"269": {"031087012414": {"practicePass": true, "theoryApproved": true}, "031092000534": {"practicePass": true, "theoryApproved": true}, "031099013753": {"practicePass": true, "theoryApproved": true}, "031204009659": {"practicePass": true, "theoryApproved": true}, "035203005102": {"practicePass": true, "theoryApproved": true}, "037085010532": {"practicePass": true, "theoryApproved": true}, "038205012068": {"practicePass": true, "theoryApproved": true}, "040087009554": {"practicePass": true, "theoryApproved": true}, "066097020342": {"practicePass": true, "theoryApproved": false}}}	2026-03-30 07:37:27.375	2026-03-30 07:37:27.375	2026-03-30 07:37:27.369	\N	\N	\N
47	ut3x7em1su4omatfmpumab7a	{"376": {"024085000564": {"practicePass": true, "theoryApproved": true}, "025093010347": {"practicePass": true, "theoryApproved": true}, "030203003659": {"practicePass": true, "theoryApproved": true}, "031087011297": {"practicePass": true, "theoryApproved": true}, "031089020698": {"practicePass": true, "theoryApproved": true}, "031090009418": {"practicePass": true, "theoryApproved": true}, "031091001486": {"practicePass": true, "theoryApproved": true}, "031204003110": {"practicePass": true, "theoryApproved": true}, "031205004479": {"practicePass": true, "theoryApproved": true}, "031205004743": {"practicePass": true, "theoryApproved": true}, "034204008407": {"practicePass": true, "theoryApproved": true}, "036084004204": {"practicePass": true, "theoryApproved": true}, "036085009154": {"practicePass": true, "theoryApproved": true}, "040091012217": {"practicePass": true, "theoryApproved": true}, "042204005419": {"practicePass": true, "theoryApproved": true}}}	2026-03-31 07:33:24.882	2026-03-31 07:34:17.395	2026-03-31 07:34:17.387	\N	\N	\N
48	hwcp45pkf3mlp6tg7xubb86x	{"269": {"001206022459": {"practicePass": true, "theoryApproved": true}, "010205004933": {"practicePass": true, "theoryApproved": true}, "031206007431": {"practicePass": true, "theoryApproved": true}, "031206007636": {"practicePass": true, "theoryApproved": true}, "031206011722": {"practicePass": true, "theoryApproved": true}, "034206004813": {"practicePass": true, "theoryApproved": true}, "034206005785": {"practicePass": true, "theoryApproved": true}, "036206001791": {"practicePass": true, "theoryApproved": true}, "036206022623": {"practicePass": true, "theoryApproved": true}, "036206025417": {"practicePass": true, "theoryApproved": true}, "037205006284": {"practicePass": true, "theoryApproved": true}, "037206004108": {"practicePass": true, "theoryApproved": true}, "038206025475": {"practicePass": true, "theoryApproved": true}, "040205018303": {"practicePass": true, "theoryApproved": true}, "040206015433": {"practicePass": true, "theoryApproved": true}, "066206001625": {"practicePass": true, "theoryApproved": true}}}	2026-04-06 08:22:05.671	2026-04-06 08:22:05.671	2026-04-06 08:22:05.666	\N	\N	\N
\.


--
-- Data for Name: exam_approvals_decision_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.exam_approvals_decision_lnk (id, exam_approval_id, class_decision_id) FROM stdin;
116	41	163
117	42	165
124	44	168
130	45	170
131	46	174
132	47	176
134	48	178
\.


--
-- Data for Name: exam_grades; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.exam_grades (id, document_id, grades, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
37	fivfet3z03k9j2x0c0uoiv1d	{"279": {"564564649846": {"theory": "8", "practice": ""}}}	2026-03-23 07:11:11.509	2026-03-23 07:11:11.509	2026-03-23 07:11:11.505	\N	\N	\N
38	r8dzrlyqgwnivndfh2sqyanc	{"377": {"034067008297": {"theory": "9", "practice": ""}, "036082025190": {"theory": "9", "practice": ""}, "038086018793": {"theory": "9", "practice": ""}, "038088005081": {"theory": "9", "practice": ""}, "042095011413": {"theory": "9", "practice": ""}, "045080004361": {"theory": "9", "practice": ""}, "045088004194": {"theory": "9", "practice": ""}, "045092002587": {"theory": "9", "practice": ""}, "045093004300": {"theory": "9", "practice": ""}, "045093010371": {"theory": "9", "practice": ""}, "045094004558": {"theory": "9", "practice": ""}, "045094006740": {"theory": "9", "practice": ""}, "045095004270": {"theory": "9", "practice": ""}, "045096003641": {"theory": "9", "practice": ""}, "045096004532": {"theory": "9", "practice": ""}, "045096006453": {"theory": "9", "practice": ""}, "045191008082": {"theory": "9", "practice": ""}, "045200008049": {"theory": "9", "practice": ""}, "049085004743": {"theory": "9", "practice": ""}, "049202010438": {"theory": "9", "practice": ""}}}	2026-03-24 07:16:26.58	2026-03-24 07:16:26.58	2026-03-24 07:16:26.575	\N	\N	\N
39	bo1mkyvjn8grq1qlzwt6kjgb	{"377": {"034067008297": {"theory": "9", "practice": ""}, "036082025190": {"theory": "9", "practice": ""}, "038086018793": {"theory": "9", "practice": ""}, "038088005081": {"theory": "9", "practice": ""}, "042095011413": {"theory": "9", "practice": ""}, "045080004361": {"theory": "9", "practice": ""}, "045088004194": {"theory": "9", "practice": ""}, "045092002587": {"theory": "9", "practice": ""}, "045093004300": {"theory": "9", "practice": ""}, "045093010371": {"theory": "9", "practice": ""}, "045094004558": {"theory": "9", "practice": ""}, "045094006740": {"theory": "9", "practice": ""}, "045095004270": {"theory": "9", "practice": ""}, "045096003641": {"theory": "9", "practice": ""}, "045096004532": {"theory": "9", "practice": ""}, "045096006453": {"theory": "9", "practice": ""}, "045191008082": {"theory": "9", "practice": ""}, "045200008049": {"theory": "9", "practice": ""}, "049085004743": {"theory": "9", "practice": ""}, "049202010438": {"theory": "9", "practice": ""}}}	2026-03-24 07:59:41.149	2026-03-24 07:59:47.721	2026-03-24 07:59:47.714	\N	\N	\N
41	q6u9i1crpbxlb7g6lg1hzjym	{"307": {"616546464666": {"theory": "8", "practice": ""}}}	2026-03-26 01:30:45.638	2026-03-26 01:30:45.638	2026-03-26 01:30:45.634	\N	\N	\N
42	lwb8owfa93b7aq89ykrt2o49	{"282": {"034087013437": {"theory": "9", "practice": ""}, "034095003257": {"theory": "9", "practice": ""}, "035091000241": {"theory": "8", "practice": ""}, "042097004307": {"theory": "9", "practice": ""}, "068086003981": {"theory": "9", "practice": ""}, "068093002639": {"theory": "9", "practice": ""}}}	2026-03-27 05:54:53.263	2026-03-27 05:54:53.263	2026-03-27 05:54:53.255	\N	\N	\N
40	kaj75h0u20enw5otx6vukrcm	{"245": {"031087012414": {"theory": "9", "practice": ""}, "031092000534": {"theory": "9", "practice": ""}, "031204009659": {"theory": "8", "practice": ""}, "034087013437": {"theory": "9", "practice": ""}, "034089011946": {"theory": "8", "practice": ""}, "034095003257": {"theory": "9", "practice": ""}, "035091000241": {"theory": "9", "practice": ""}, "037085010532": {"theory": "9", "practice": ""}, "038205012068": {"theory": "9", "practice": ""}, "042097004307": {"theory": "9", "practice": ""}, "066088009741": {"theory": "8", "practice": ""}, "068086003981": {"theory": "8", "practice": ""}, "068093002639": {"theory": "8", "practice": ""}}, "246": {"031087012414": {"theory": "8", "practice": ""}, "031092000534": {"theory": "8", "practice": ""}, "031204009659": {"theory": "8", "practice": ""}, "034087013437": {"theory": "9", "practice": ""}, "034089011946": {"theory": "9", "practice": ""}, "034095003257": {"theory": "9", "practice": ""}, "035091000241": {"theory": "9", "practice": ""}, "037085010532": {"theory": "8", "practice": ""}, "038205012068": {"theory": "9", "practice": ""}, "042097004307": {"theory": "8", "practice": ""}, "066088009741": {"theory": "8", "practice": ""}, "068086003981": {"theory": "9", "practice": ""}, "068093002639": {"theory": "8", "practice": ""}}, "317": {"031087012414": {"theory": "9", "practice": ""}, "031092000534": {"theory": "8", "practice": ""}, "031204009659": {"theory": "8", "practice": ""}, "034087013437": {"theory": "9", "practice": ""}, "034089011946": {"theory": "8", "practice": ""}, "034095003257": {"theory": "9", "practice": ""}, "035091000241": {"theory": "8", "practice": ""}, "037085010532": {"theory": "8", "practice": ""}, "038205012068": {"theory": "8", "practice": ""}, "042097004307": {"theory": "8", "practice": ""}, "066088009741": {"theory": "8", "practice": ""}, "068086003981": {"theory": "8", "practice": ""}, "068093002639": {"theory": "8", "practice": ""}}, "323": {"031087012414": {"theory": "8", "practice": ""}, "031092000534": {"theory": "7", "practice": ""}, "031204009659": {"theory": "7", "practice": ""}, "034087013437": {"theory": "7", "practice": ""}, "034089011946": {"theory": "7", "practice": ""}, "034095003257": {"theory": "7", "practice": ""}, "035091000241": {"theory": "7", "practice": ""}, "037085010532": {"theory": "7", "practice": ""}, "038205012068": {"theory": "7", "practice": ""}, "042097004307": {"theory": "7", "practice": ""}, "066088009741": {"theory": "8", "practice": ""}, "068086003981": {"theory": "7", "practice": ""}, "068093002639": {"theory": "7", "practice": ""}}, "339": {"031087012414": {"theory": "9", "practice": ""}, "031092000534": {"theory": "9", "practice": ""}, "031204009659": {"theory": "9", "practice": ""}, "034087013437": {"theory": "8", "practice": ""}, "034089011946": {"theory": "8", "practice": ""}, "034095003257": {"theory": "9", "practice": ""}, "035091000241": {"theory": "7", "practice": ""}, "037085010532": {"theory": "9", "practice": ""}, "038205012068": {"theory": "9", "practice": ""}, "042097004307": {"theory": "9", "practice": ""}, "066088009741": {"theory": "8", "practice": ""}, "068086003981": {"theory": "9", "practice": ""}, "068093002639": {"theory": "8", "practice": ""}}}	2026-03-25 09:11:56.955	2026-03-27 10:08:18.513	2026-03-27 10:08:18.502	\N	\N	\N
43	vcmgoht6szndz430qr36pivs	{"270": {"031094014957": {"theory": "8", "practice": ""}, "034082007050": {"theory": "8", "practice": ""}, "034084024035": {"theory": "8", "practice": ""}, "034089012280": {"theory": "8", "practice": ""}, "036090005449": {"theory": "8", "practice": ""}, "040086001233": {"theory": "8", "practice": ""}, "040094023739": {"theory": "8", "practice": ""}, "052088008372": {"theory": "8", "practice": ""}}}	2026-03-28 04:05:16.686	2026-03-28 04:05:16.686	2026-03-28 04:05:16.681	\N	\N	\N
44	ui6zv0bk3f88fkh60frbd2mu	{"269": {"031087012414": {"theory": "8", "practice": ""}, "031092000534": {"theory": "8", "practice": ""}, "031099013753": {"theory": "8", "practice": ""}, "031204009659": {"theory": "8", "practice": ""}, "035203005102": {"theory": "8", "practice": ""}, "037085010532": {"theory": "8", "practice": ""}, "038205012068": {"theory": "8", "practice": ""}, "040087009554": {"theory": "8", "practice": ""}}}	2026-03-30 07:38:06.957	2026-03-30 07:38:06.957	2026-03-30 07:38:06.951	\N	\N	\N
45	f6gkyrzm7zzbfrm4diwal2s6	{"376": {"024085000564": {"theory": "8", "practice": ""}, "025093010347": {"theory": "8", "practice": ""}, "030203003659": {"theory": "8", "practice": ""}, "031087011297": {"theory": "8", "practice": ""}, "031089020698": {"theory": "8", "practice": ""}, "031090009418": {"theory": "8", "practice": ""}, "031091001486": {"theory": "8", "practice": ""}, "031204003110": {"theory": "8", "practice": ""}, "031205004479": {"theory": "8", "practice": ""}, "031205004743": {"theory": "8", "practice": ""}, "034204008407": {"theory": "8", "practice": ""}, "036084004204": {"theory": "8", "practice": ""}, "036085009154": {"theory": "8", "practice": ""}, "040091012217": {"theory": "8", "practice": ""}, "042204005419": {"theory": "8", "practice": ""}}}	2026-03-31 07:34:49.131	2026-03-31 07:34:49.131	2026-03-31 07:34:49.125	\N	\N	\N
46	inakkxtctlnan8687zsw8ma9	{"269": {"001206022459": {"theory": "9", "practice": ""}, "010205004933": {"theory": "8", "practice": ""}, "031206007431": {"theory": "9", "practice": ""}, "031206007636": {"theory": "9", "practice": ""}, "031206011722": {"theory": "9", "practice": ""}, "034206004813": {"theory": "8", "practice": ""}, "034206005785": {"theory": "8", "practice": ""}, "036206001791": {"theory": "9", "practice": ""}, "036206022623": {"theory": "9", "practice": ""}, "036206025417": {"theory": "9", "practice": ""}, "037205006284": {"theory": "9", "practice": ""}, "037206004108": {"theory": "9", "practice": ""}, "038206025475": {"theory": "9", "practice": ""}, "040205018303": {"theory": "8", "practice": ""}, "040206015433": {"theory": "9", "practice": ""}, "066206001625": {"theory": "9", "practice": ""}}}	2026-04-06 08:23:02.65	2026-04-06 08:23:02.65	2026-04-06 08:23:02.646	\N	\N	\N
\.


--
-- Data for Name: exam_grades_decision_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.exam_grades_decision_lnk (id, exam_grade_id, class_decision_id) FROM stdin;
93	39	163
95	40	165
101	42	168
107	43	170
108	44	174
109	45	176
110	46	178
\.


--
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.files (id, document_id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, focal_point) FROM stdin;
\.


--
-- Data for Name: files_folder_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.files_folder_lnk (id, file_id, folder_id, file_ord) FROM stdin;
\.


--
-- Data for Name: files_related_mph; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.files_related_mph (id, file_id, related_id, related_type, field, "order") FROM stdin;
\.


--
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.i18n_locale (id, document_id, name, code, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	txl2xgd9mzqt2isxowo4yaoy	English (en)	en	2026-02-09 15:13:37.031	2026-02-09 15:13:37.031	2026-02-09 15:13:37.032	\N	\N	en
\.


--
-- Data for Name: nations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nations (id, document_id, code, name, abbr, status, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
8	rr3r68zqgxd64zx0mlfox0k7	VN	Việt Nam	VN	active	2026-02-24 08:08:50.702	2026-02-24 08:08:50.702	2026-02-24 08:08:50.706	\N	\N	en
11	d1aa7ccc058119653aa1a1a5	LAO	Lào	LAO	active	2026-02-26 01:37:16.208	2026-02-26 01:37:16.208	2026-02-26 01:37:16.208	\N	\N	en
12	eb0f198133bd3ef8e9ac3517	KH	Campuchia	KH	active	2026-02-26 01:37:16.208	2026-02-26 01:37:16.208	2026-02-26 01:37:16.208	\N	\N	en
13	a17a7a37a903a4fe435bcbbc	JP	Nhật Bản	JP	active	2026-02-26 01:37:16.208	2026-02-26 01:37:16.208	2026-02-26 01:37:16.208	\N	\N	en
6	pdhwutsrriftcrqv0rnpa4s5	SG	Singapo	SG	active	2026-02-24 08:07:34.107	2026-02-26 10:50:09.568	2026-02-26 10:50:09.561	\N	\N	en
25	g35wey1rm4j8ufme0d8vn701	US	USA	USA	active	2026-02-26 10:51:26.636	2026-02-26 10:51:26.636	2026-02-26 10:51:26.628	\N	\N	en
26	\N	CN	Trung Quốc	CN	active	2026-03-21 03:46:38.857	2026-03-21 03:46:38.857	2026-03-21 03:46:38.857	\N	\N	en
\.


--
-- Data for Name: print_templates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.print_templates (id, document_id, type, name, content, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
2	164cef5d8cf487982283e59e	recognition	Quyết định công nhận	{"motto": "Độc lập - Tự do - Hạnh phúc", "title": "QUYẾT ĐỊNH", "nation": "CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM", "article1": "Công nhận học viên lớp {{CLASS_NAME}} {{TRAINING_COURSE}} đã hoàn thành khóa học...", "article2": "Các học viên có tên trong danh sách được cấp chứng chỉ theo quy định...", "article3": "Các Phòng, Ban, Khoa, Trung tâm và các học viên có tên tại Điều 1 chịu trách nhiệm thi hành Quyết định này.", "preamble": "Căn cứ Quyết định số 1275/QĐ-BGDĐT ngày 12/5/2025...;\\nCăn cứ Quy chế đào tạo...;\\nTheo đề nghị của Hội đồng xét tốt nghiệp.", "subtitle": "Về việc Công nhận tốt nghiệp {{CLASS_NAME}} {{TRAINING_COURSE}}", "authority": "HIỆU TRƯỞNG TRƯỜNG CAO ĐẲNG HÀNG HẢI VÀ ĐƯỜNG THỦY I", "recipients": "- Như Điều 3;\\n- Lưu: VT, ĐT.", "signerName": "đỗ hồng hải", "headerLine1": "CỤC HÀNG HẢI VÀ ĐƯỜNG THỦY VIỆT NAM", "headerLine2": "TRƯỜNG CAO ĐẲNG", "headerLine3": "HÀNG HẢI VÀ ĐƯỜNG THỦY I", "signerTitle": "Kt hiệu trưởng\\nPhó hiệu TRƯỞNG"}	2026-02-26 01:35:37.916	2026-02-27 09:48:01.229	2026-02-27 09:48:01.227	\N	\N	en
3	d7d1706e50aec867a3506f30	certificate_list	Danh sách cấp GCN	{"motto": "Độc lập - Tự do - Hạnh phúc", "title": "DANH SÁCH ĐỀ NGHỊ CẤP GIẤY CHỨNG NHẬN", "nation": "CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM", "article1": "", "article2": "", "article3": "", "preamble": "Từ {{START_DATE}} đến {{END_DATE}} ", "subtitle": "{{CLASS_NAME}}; {{TRAINING_COURSE}} ", "authority": "", "recipients": "", "signerName": "NGUYỄN TẤT QUYỀN", "headerLine1": "TRƯỜNG CAO ĐẲNG HÀNG HẢI VÀ ĐƯỜNG THỦY I", "headerLine2": "TT ĐÀO TẠO PHÁT TRIỂN NGUỒN LỰC", "headerLine3": "", "signerName2": "ĐỖ HỒNG HẢI", "signerTitle": "GIÁM ĐỐC", "signerTitle2": "KT.HIỆU TRƯỞNG\\nPHÓ HIỆU TRƯỞNG"}	2026-02-26 01:35:37.917	2026-03-26 01:40:54.714	2026-03-26 01:40:54.707	\N	\N	en
1	ddf1c2e31438e0e72e3c5ac3	decision	Quyết định mở lớp	{"motto": "Độc lập - Tự do - Hạnh phúc", "title": "QUYẾT ĐỊNH", "nation": "CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM", "article1": "Mở lớp {{CLASS_NAME}}: {{TRAINING_COURSE}} (có danh sách kèm theo) tại Trung tâm Đào tạo Phát triển nguồn lực, Trường Cao đẳng Hàng hải và Đường thủy I.\\nThời gian mở lớp:", "article2": "Giao cho Trung tâm Đào tạo Phát triển nguồn lực chịu trách nhiệm tổ chức lớp huấn luyện; bố trí giảng viên, huấn luyện viên giảng dạy theo nội dung chương trình huấn luyện, đào tạo đã được phê duyệt.\\n", "article3": "Giám đốc Trung tâm Đào tạo Phát triển nguồn lực, Trưởng các đơn vị có liên quan trong trường chịu trách nhiệm thi hành quyết định này.\\n", "preamble": "Căn cứ Quyết định số 1275/QĐ-BGDĐT ngày 12/5/2025 của Bộ trưởng Bộ Giáo dục và Đào tạo về việc sáp nhập Trường Cao đẳng Giao thông vận tải Đường thủy I vào Trường Cao đẳng Hàng hải I và đổi tên thành Trường Cao đẳng Hàng hải và Đường thủy I;\\nCăn cứ Quyết định số 1878/QĐ-CĐHHĐTI ngày 31/12/2025 của Hiệu trưởng trường Cao đẳng Hàng hải và Đường thuỷ I về việc ban hành Quy chế Tổ chức, hoạt động của Trường Cao đẳng Hàng hải và Đường thuỷ I;\\nCăn cứ Thông tư số 20/2023/TT-BGTVT ngày 30/06/2023 của Bộ trưởng Bộ GTVT về tiêu chuẩn chuyên môn, chứng chỉ chuyên môn của thuyền viên và định biên an toàn tối thiểu của tàu biển Việt Nam;\\nCăn cứ Thông tư số 57/2023/TT-BGTVT ngày 31/12/2023 của Bộ trưởng Bộ GTVT về Chương trình đào tạo, huấn luyện thuyền viên, hoa tiêu hàng hải;\\nCăn cứ Giấy chứng nhận số 03/GCN-CHHĐTVN ngày 12/09/2025 của Cục Hàng hải và Đường thủy Việt Nam về việc chứng nhận Trường Cao đẳng Hàng hải và Đường thủy I  đủ điều kiện tổ chức các khóa đào tạo, huấn luyện thuyền viên hàng hải và cấp chứng chỉ huấn luyện;\\nCăn cứ Quyết định số 152/QĐ-CĐHHĐTI ngày 16/06/2025 của Hiệu trưởng trường Cao đẳng Hàng hải và Đường thủy I về việc phê duyệt và đưa vào sử dụng các giáo trình, tài liệu đào tạo Chương trình đào tạo, huấn luyện thuyền viên năm 2024 theo Thông tư 57/2023/TT-BGTVT ngày 31/12/2023 của Bộ Giao thông vận tải;\\nTheo đề nghị của Giám đốc Trung tâm Đào tạo Phát triển nguồn lực.", "subtitle": "Về việc Mở lớp {{CLASS_NAME}} {{TRAINING_COURSE}}", "authority": "HIỆU TRƯỞNG TRƯỜNG CAO ĐẲNG HÀNG HẢI VÀ ĐƯỜNG THỦY I", "recipients": "- Báo cáo Hiệu trưởng;\\n- Như Điều 3;\\n- Lưu: VT, TTĐTPTNL.", "signerName": "ĐỖ HỒNG HẢI", "headerLine1": "CỤC HÀNG HẢI VÀ ĐƯỜNG THỦY VIỆT NAM", "headerLine2": "TRƯỜNG CAO ĐẲNG ", "headerLine3": "HÀNG HẢI VÀ ĐƯỜNG THỦY I", "signerTitle": "KT.HIỆU TRƯỞNG\\nPHÓ HIỆU TRƯỞNG"}	2026-02-26 01:35:37.911	2026-03-28 03:51:22.99	2026-03-28 03:51:22.987	\N	\N	en
\.


--
-- Data for Name: strapi_ai_localization_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_ai_localization_jobs (id, content_type, related_document_id, source_locale, target_locales, status, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: strapi_ai_metadata_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_ai_metadata_jobs (id, status, created_at, completed_at) FROM stdin;
\.


--
-- Data for Name: strapi_api_token_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_api_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_api_token_permissions_token_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_api_token_permissions_token_lnk (id, api_token_permission_id, api_token_id, api_token_permission_ord) FROM stdin;
\.


--
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_api_tokens (id, document_id, name, description, type, access_key, encrypted_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	kfh76izsrikwi9yvujzp1qxi	Read Only	A default API token with read-only permissions, only used for accessing resources	read-only	9682039e5d2e99a236ed947c26b76c2a1bf7dcc834942f75698a62888b5ccd7ff1b67029997dff46cf5da30131af8dce262a82f2724ba6cab07158236e8966a1	\N	\N	\N	\N	2026-02-09 15:13:37.426	2026-02-09 15:13:37.426	2026-02-09 15:13:37.426	\N	\N	en
2	jy3ftpx8xr08rc2biec76wqh	Full Access	A default API token with full access permissions, used for accessing or modifying resources	full-access	ee4ad6fe662275fe523cd4d07d6bda65a9e5eff6f004e7ab0eb98915617a4ad878023618ce848567318ad6932278f4471dcf4249968f1411322a38ec096e4997	\N	\N	\N	\N	2026-02-09 15:13:37.434	2026-02-09 15:13:37.434	2026-02-09 15:13:37.434	\N	\N	en
\.


--
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
1	strapi_unidirectional-join-table-repair-ran	true	boolean	\N	\N
4	plugin_content_manager_configuration_content_types::plugin::upload.folder	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"parent","size":6},{"name":"children","size":6}],[{"name":"files","size":6},{"name":"path","size":6}]]},"uid":"plugin::upload.folder"}	object	\N	\N
5	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]},"uid":"plugin::i18n.locale"}	object	\N	\N
6	plugin_content_manager_configuration_content_types::admin::permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"actionParameters":{"edit":{"label":"actionParameters","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"actionParameters","searchable":false,"sortable":false}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"edit":[[{"name":"action","size":6}],[{"name":"actionParameters","size":12}],[{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}],[{"name":"role","size":6}]]},"uid":"admin::permission"}	object	\N	\N
7	plugin_content_manager_configuration_content_types::plugin::content-releases.release	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"releasedAt":{"edit":{"label":"releasedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"releasedAt","searchable":true,"sortable":true}},"scheduledAt":{"edit":{"label":"scheduledAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"scheduledAt","searchable":true,"sortable":true}},"timezone":{"edit":{"label":"timezone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"timezone","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"actions":{"edit":{"label":"actions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"contentType"},"list":{"label":"actions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","releasedAt","scheduledAt"],"edit":[[{"name":"name","size":6},{"name":"releasedAt","size":6}],[{"name":"scheduledAt","size":6},{"name":"timezone","size":6}],[{"name":"status","size":6},{"name":"actions","size":6}]]},"uid":"plugin::content-releases.release"}	object	\N	\N
8	plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"stages":{"edit":{"label":"stages","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"stages","searchable":false,"sortable":false}},"stageRequiredToPublish":{"edit":{"label":"stageRequiredToPublish","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"stageRequiredToPublish","searchable":true,"sortable":true}},"contentTypes":{"edit":{"label":"contentTypes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentTypes","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","stages","stageRequiredToPublish"],"edit":[[{"name":"name","size":6},{"name":"stages","size":6}],[{"name":"stageRequiredToPublish","size":6}],[{"name":"contentTypes","size":12}]]},"uid":"plugin::review-workflows.workflow"}	object	\N	\N
9	plugin_content_manager_configuration_content_types::admin::user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"isActive","size":4}],[{"name":"roles","size":6},{"name":"blocked","size":4}],[{"name":"preferedLanguage","size":6}]]},"uid":"admin::user"}	object	\N	\N
11	plugin_content_manager_configuration_content_types::plugin::content-releases.release-action	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"contentType","defaultSortBy":"contentType","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"contentType":{"edit":{"label":"contentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentType","searchable":true,"sortable":true}},"entryDocumentId":{"edit":{"label":"entryDocumentId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"entryDocumentId","searchable":true,"sortable":true}},"release":{"edit":{"label":"release","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"release","searchable":true,"sortable":true}},"isEntryValid":{"edit":{"label":"isEntryValid","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isEntryValid","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","contentType","entryDocumentId"],"edit":[[{"name":"type","size":6},{"name":"contentType","size":6}],[{"name":"entryDocumentId","size":6},{"name":"release","size":6}],[{"name":"isEntryValid","size":4}]]},"uid":"plugin::content-releases.release-action"}	object	\N	\N
51	plugin_content_manager_configuration_content_types::api::teacher.teacher	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"code","defaultSortBy":"code","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"specialization":{"edit":{"label":"specialization","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"specialization","searchable":true,"sortable":true}},"phone":{"edit":{"label":"phone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"phone","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"subjects":{"edit":{"label":"subjects","description":"","placeholder":"","visible":true,"editable":true,"mainField":"code"},"list":{"label":"subjects","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","code","name","specialization"],"edit":[[{"name":"code","size":6},{"name":"name","size":6}],[{"name":"specialization","size":6},{"name":"phone","size":6}],[{"name":"email","size":6},{"name":"subjects","size":6}]]},"uid":"api::teacher.teacher"}	object	\N	\N
45	plugin_content_manager_configuration_content_types::api::classroom.classroom	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"code","defaultSortBy":"code","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"capacity":{"edit":{"label":"capacity","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"capacity","searchable":true,"sortable":true}},"building":{"edit":{"label":"building","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"building","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","code","name","capacity"],"edit":[[{"name":"code","size":6},{"name":"name","size":6}],[{"name":"capacity","size":4},{"name":"building","size":6}],[{"name":"status","size":6}]]},"uid":"api::classroom.classroom"}	object	\N	\N
2	strapi_content_types_schema	{"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"text","configurable":false},"caption":{"type":"text","configurable":false},"focalPoint":{"type":"json","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"text","configurable":false,"required":true},"previewUrl":{"type":"text","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","minLength":1,"required":true,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"files"}}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"plugin":"upload","globalId":"UploadFile","uid":"plugin::upload.file","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"text","configurable":false},"caption":{"type":"text","configurable":false},"focalPoint":{"type":"json","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"text","configurable":false,"required":true},"previewUrl":{"type":"text","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","minLength":1,"required":true,"private":true,"searchable":false}},"kind":"collectionType"},"modelName":"file"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","minLength":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"upload_folders"}}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"plugin":"upload","globalId":"UploadFolder","uid":"plugin::upload.folder","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","minLength":1,"required":true}},"kind":"collectionType"},"modelName":"folder"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::i18n.locale","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"i18n_locale"}}},"plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale","uid":"plugin::i18n.locale","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"i18n_locale","info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelName":"locale"},"plugin::content-releases.release":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_releases"}}},"plugin":"content-releases","globalId":"ContentReleasesRelease","uid":"plugin::content-releases.release","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"}},"kind":"collectionType"},"modelName":"release"},"plugin::content-releases.release-action":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"contentType":{"type":"string","required":true},"entryDocumentId":{"type":"string"},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_release_actions"}}},"plugin":"content-releases","globalId":"ContentReleasesReleaseAction","uid":"plugin::content-releases.release-action","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"contentType":{"type":"string","required":true},"entryDocumentId":{"type":"string"},"locale":{"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"}},"kind":"collectionType"},"modelName":"release-action"},"plugin::review-workflows.workflow":{"collectionName":"strapi_workflows","info":{"name":"Workflow","description":"","singularName":"workflow","pluralName":"workflows","displayName":"Workflow"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true,"unique":true},"stages":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToMany","mappedBy":"workflow"},"stageRequiredToPublish":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToOne","required":false},"contentTypes":{"type":"json","required":true,"default":"[]"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::review-workflows.workflow","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_workflows"}}},"plugin":"review-workflows","globalId":"ReviewWorkflowsWorkflow","uid":"plugin::review-workflows.workflow","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_workflows","info":{"name":"Workflow","description":"","singularName":"workflow","pluralName":"workflows","displayName":"Workflow"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true,"unique":true},"stages":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToMany","mappedBy":"workflow"},"stageRequiredToPublish":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToOne","required":false},"contentTypes":{"type":"json","required":true,"default":"[]"}},"kind":"collectionType"},"modelName":"workflow"},"plugin::review-workflows.workflow-stage":{"collectionName":"strapi_workflows_stages","info":{"name":"Workflow Stage","description":"","singularName":"workflow-stage","pluralName":"workflow-stages","displayName":"Stages"},"options":{"version":"1.1.0","draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false},"color":{"type":"string","configurable":false,"default":"#4945FF"},"workflow":{"type":"relation","target":"plugin::review-workflows.workflow","relation":"manyToOne","inversedBy":"stages","configurable":false},"permissions":{"type":"relation","target":"admin::permission","relation":"manyToMany","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::review-workflows.workflow-stage","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_workflows_stages"}}},"plugin":"review-workflows","globalId":"ReviewWorkflowsWorkflowStage","uid":"plugin::review-workflows.workflow-stage","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_workflows_stages","info":{"name":"Workflow Stage","description":"","singularName":"workflow-stage","pluralName":"workflow-stages","displayName":"Stages"},"options":{"version":"1.1.0"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false},"color":{"type":"string","configurable":false,"default":"#4945FF"},"workflow":{"type":"relation","target":"plugin::review-workflows.workflow","relation":"manyToOne","inversedBy":"stages","configurable":false},"permissions":{"type":"relation","target":"admin::permission","relation":"manyToMany","configurable":false}},"kind":"collectionType"},"modelName":"workflow-stage"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_permissions"}}},"plugin":"users-permissions","globalId":"UsersPermissionsPermission","uid":"plugin::users-permissions.permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelName":"permission","options":{"draftAndPublish":false}},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.role","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_roles"}}},"plugin":"users-permissions","globalId":"UsersPermissionsRole","uid":"plugin::users-permissions.role","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelName":"role","options":{"draftAndPublish":false}},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"timestamps":true,"draftAndPublish":false},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_users"}},"permissions":{"type":"json","configurable":false}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"plugin":"users-permissions","globalId":"UsersPermissionsUser","uid":"plugin::users-permissions.user","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelName":"user"},"api::audit-log.audit-log":{"kind":"collectionType","collectionName":"audit_logs","info":{"singularName":"audit-log","pluralName":"audit-logs","displayName":"Lịch sử hệ thống","description":"System activity logs"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"action":{"type":"string","required":true},"actor":{"type":"string"},"details":{"type":"text"},"entity_id":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::audit-log.audit-log","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"audit_logs"}}},"apiName":"audit-log","globalId":"AuditLog","uid":"api::audit-log.audit-log","modelType":"contentType","__schema__":{"collectionName":"audit_logs","info":{"singularName":"audit-log","pluralName":"audit-logs","displayName":"Lịch sử hệ thống","description":"System activity logs"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"action":{"type":"string","required":true},"actor":{"type":"string"},"details":{"type":"text"},"entity_id":{"type":"string"}},"kind":"collectionType"},"modelName":"audit-log","actions":{},"lifecycles":{}},"api::class-decision.class-decision":{"kind":"collectionType","collectionName":"class_decisions","info":{"singularName":"class-decision","pluralName":"class-decisions","displayName":"Quyết định","description":"Decision to open a class or recognize completion"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"decision_number":{"type":"string","required":true},"type":{"type":"enumeration","enum":["OPENING","RECOGNITION"],"default":"OPENING"},"training_course":{"type":"string"},"signed_date":{"type":"date"},"signer_name":{"type":"string"},"school_class":{"type":"relation","relation":"manyToOne","target":"api::school-class.school-class"},"students":{"type":"relation","relation":"manyToMany","target":"api::student.student","onDelete":"CASCADE"},"notes":{"type":"text"},"related_decision":{"type":"relation","relation":"oneToOne","target":"api::class-decision.class-decision"},"start_date":{"type":"date"},"end_date":{"type":"date"},"class_type":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::class-decision.class-decision","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"class_decisions"}}},"apiName":"class-decision","globalId":"ClassDecision","uid":"api::class-decision.class-decision","modelType":"contentType","__schema__":{"collectionName":"class_decisions","info":{"singularName":"class-decision","pluralName":"class-decisions","displayName":"Quyết định","description":"Decision to open a class or recognize completion"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"decision_number":{"type":"string","required":true},"type":{"type":"enumeration","enum":["OPENING","RECOGNITION"],"default":"OPENING"},"training_course":{"type":"string"},"signed_date":{"type":"date"},"signer_name":{"type":"string"},"school_class":{"type":"relation","relation":"manyToOne","target":"api::school-class.school-class"},"students":{"type":"relation","relation":"manyToMany","target":"api::student.student","onDelete":"CASCADE"},"notes":{"type":"text"},"related_decision":{"type":"relation","relation":"oneToOne","target":"api::class-decision.class-decision"},"start_date":{"type":"date"},"end_date":{"type":"date"},"class_type":{"type":"string"}},"kind":"collectionType"},"modelName":"class-decision","actions":{},"lifecycles":{}},"api::class-subject.class-subject":{"kind":"collectionType","collectionName":"class_subjects","info":{"singularName":"class-subject","pluralName":"class-subjects","displayName":"Lớp học - Môn học (Legacy)","description":"Mapping từ bảng class_subjects"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"class_id":{"type":"string"},"subject_id":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::class-subject.class-subject","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"class_subjects"}}},"apiName":"class-subject","globalId":"ClassSubject","uid":"api::class-subject.class-subject","modelType":"contentType","__schema__":{"collectionName":"class_subjects","info":{"singularName":"class-subject","pluralName":"class-subjects","displayName":"Lớp học - Môn học (Legacy)","description":"Mapping từ bảng class_subjects"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"class_id":{"type":"string"},"subject_id":{"type":"string"}},"kind":"collectionType"},"modelName":"class-subject","actions":{},"lifecycles":{}},"api::classroom.classroom":{"kind":"collectionType","collectionName":"classrooms","info":{"singularName":"classroom","pluralName":"classrooms","displayName":"Phòng học","description":"Classrooms table"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"code":{"type":"string","unique":true},"name":{"type":"string"},"capacity":{"type":"integer"},"building":{"type":"string"},"status":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::classroom.classroom","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"classrooms"}}},"apiName":"classroom","globalId":"Classroom","uid":"api::classroom.classroom","modelType":"contentType","__schema__":{"collectionName":"classrooms","info":{"singularName":"classroom","pluralName":"classrooms","displayName":"Phòng học","description":"Classrooms table"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"code":{"type":"string","unique":true},"name":{"type":"string"},"capacity":{"type":"integer"},"building":{"type":"string"},"status":{"type":"string"}},"kind":"collectionType"},"modelName":"classroom","actions":{},"lifecycles":{}},"api::exam-approval.exam-approval":{"kind":"collectionType","collectionName":"exam_approvals","info":{"singularName":"exam-approval","pluralName":"exam-approvals","displayName":"Duyệt thi","description":"Stores exam approval status for students in a class decision"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"decision":{"type":"relation","relation":"oneToOne","target":"api::class-decision.class-decision"},"approvals":{"type":"json"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::exam-approval.exam-approval","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"exam_approvals"}}},"apiName":"exam-approval","globalId":"ExamApproval","uid":"api::exam-approval.exam-approval","modelType":"contentType","__schema__":{"collectionName":"exam_approvals","info":{"singularName":"exam-approval","pluralName":"exam-approvals","displayName":"Duyệt thi","description":"Stores exam approval status for students in a class decision"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"decision":{"type":"relation","relation":"oneToOne","target":"api::class-decision.class-decision"},"approvals":{"type":"json"}},"kind":"collectionType"},"modelName":"exam-approval","actions":{},"lifecycles":{}},"api::exam-grade.exam-grade":{"kind":"collectionType","collectionName":"exam_grades","info":{"singularName":"exam-grade","pluralName":"exam-grades","displayName":"Điểm thi","description":"Stores exam grades for a class decision"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"decision":{"type":"relation","relation":"oneToOne","target":"api::class-decision.class-decision"},"grades":{"type":"json"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::exam-grade.exam-grade","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"exam_grades"}}},"apiName":"exam-grade","globalId":"ExamGrade","uid":"api::exam-grade.exam-grade","modelType":"contentType","__schema__":{"collectionName":"exam_grades","info":{"singularName":"exam-grade","pluralName":"exam-grades","displayName":"Điểm thi","description":"Stores exam grades for a class decision"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"decision":{"type":"relation","relation":"oneToOne","target":"api::class-decision.class-decision"},"grades":{"type":"json"}},"kind":"collectionType"},"modelName":"exam-grade","actions":{},"lifecycles":{}},"api::nation.nation":{"kind":"collectionType","collectionName":"nations","info":{"singularName":"nation","pluralName":"nations","displayName":"Quốc tịch","description":"Nations table"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"code":{"type":"string","unique":true},"name":{"type":"string"},"abbr":{"type":"string"},"status":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::nation.nation","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"nations"}}},"apiName":"nation","globalId":"Nation","uid":"api::nation.nation","modelType":"contentType","__schema__":{"collectionName":"nations","info":{"singularName":"nation","pluralName":"nations","displayName":"Quốc tịch","description":"Nations table"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"code":{"type":"string","unique":true},"name":{"type":"string"},"abbr":{"type":"string"},"status":{"type":"string"}},"kind":"collectionType"},"modelName":"nation","actions":{},"lifecycles":{}},"api::print-template.print-template":{"kind":"collectionType","collectionName":"print_templates","info":{"singularName":"print-template","pluralName":"print-templates","displayName":"Mẫu in ấn","description":"Stores print templates for decisions and certificates"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"type":{"type":"string","unique":true,"required":true},"name":{"type":"string"},"content":{"type":"json"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::print-template.print-template","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"print_templates"}}},"apiName":"print-template","globalId":"PrintTemplate","uid":"api::print-template.print-template","modelType":"contentType","__schema__":{"collectionName":"print_templates","info":{"singularName":"print-template","pluralName":"print-templates","displayName":"Mẫu in ấn","description":"Stores print templates for decisions and certificates"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"type":{"type":"string","unique":true,"required":true},"name":{"type":"string"},"content":{"type":"json"}},"kind":"collectionType"},"modelName":"print-template","actions":{},"lifecycles":{}},"api::school-class.school-class":{"kind":"collectionType","collectionName":"classes","info":{"singularName":"school-class","pluralName":"school-classes","displayName":"Lớp học","description":"Classes table"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"code":{"type":"string","unique":true},"name":{"type":"string"},"notes":{"type":"text"},"status":{"type":"string"},"start_date":{"type":"string"},"end_date":{"type":"string"},"student_count":{"type":"integer","default":0},"subjects":{"type":"relation","relation":"manyToMany","target":"api::subject.subject"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::school-class.school-class","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"classes"}}},"apiName":"school-class","globalId":"SchoolClass","uid":"api::school-class.school-class","modelType":"contentType","__schema__":{"collectionName":"classes","info":{"singularName":"school-class","pluralName":"school-classes","displayName":"Lớp học","description":"Classes table"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"code":{"type":"string","unique":true},"name":{"type":"string"},"notes":{"type":"text"},"status":{"type":"string"},"start_date":{"type":"string"},"end_date":{"type":"string"},"student_count":{"type":"integer","default":0},"subjects":{"type":"relation","relation":"manyToMany","target":"api::subject.subject"}},"kind":"collectionType"},"modelName":"school-class","actions":{},"lifecycles":{}},"api::student.student":{"kind":"collectionType","collectionName":"students","info":{"singularName":"student","pluralName":"students","displayName":"Học viên","description":"Students table"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"stt":{"type":"integer"},"group":{"type":"string"},"class_code":{"type":"string"},"class_name":{"type":"string"},"card_number":{"type":"string"},"student_code":{"type":"string"},"id_number":{"type":"string"},"first_name":{"type":"string"},"last_name":{"type":"string"},"full_name":{"type":"string"},"gender":{"type":"string"},"dob":{"type":"string"},"pob":{"type":"string"},"ethnicity":{"type":"string"},"nationality":{"type":"string"},"company":{"type":"string"},"address":{"type":"text"},"score":{"type":"string"},"photo":{"type":"text"},"phone":{"type":"string"},"school_class":{"type":"relation","relation":"manyToOne","target":"api::school-class.school-class"},"documents":{"type":"relation","relation":"oneToMany","target":"api::student-document.student-document","mappedBy":"student"},"notes":{"type":"text"},"is_approved":{"type":"boolean","default":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::student.student","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"students"}}},"apiName":"student","globalId":"Student","uid":"api::student.student","modelType":"contentType","__schema__":{"collectionName":"students","info":{"singularName":"student","pluralName":"students","displayName":"Học viên","description":"Students table"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"stt":{"type":"integer"},"group":{"type":"string"},"class_code":{"type":"string"},"class_name":{"type":"string"},"card_number":{"type":"string"},"student_code":{"type":"string"},"id_number":{"type":"string"},"first_name":{"type":"string"},"last_name":{"type":"string"},"full_name":{"type":"string"},"gender":{"type":"string"},"dob":{"type":"string"},"pob":{"type":"string"},"ethnicity":{"type":"string"},"nationality":{"type":"string"},"company":{"type":"string"},"address":{"type":"text"},"score":{"type":"string"},"photo":{"type":"text"},"phone":{"type":"string"},"school_class":{"type":"relation","relation":"manyToOne","target":"api::school-class.school-class"},"documents":{"type":"relation","relation":"oneToMany","target":"api::student-document.student-document","mappedBy":"student"},"notes":{"type":"text"},"is_approved":{"type":"boolean","default":false}},"kind":"collectionType"},"modelName":"student","actions":{},"lifecycles":{}},"api::student-document.student-document":{"kind":"collectionType","collectionName":"student_documents","info":{"singularName":"student-document","pluralName":"student-documents","displayName":"Hồ sơ học viên","description":"Student Documents table"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string"},"url":{"type":"text"},"date":{"type":"string"},"type":{"type":"string"},"student":{"type":"relation","relation":"manyToOne","target":"api::student.student","inversedBy":"documents","onDelete":"CASCADE"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::student-document.student-document","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"student_documents"}}},"apiName":"student-document","globalId":"StudentDocument","uid":"api::student-document.student-document","modelType":"contentType","__schema__":{"collectionName":"student_documents","info":{"singularName":"student-document","pluralName":"student-documents","displayName":"Hồ sơ học viên","description":"Student Documents table"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string"},"url":{"type":"text"},"date":{"type":"string"},"type":{"type":"string"},"student":{"type":"relation","relation":"manyToOne","target":"api::student.student","inversedBy":"documents","onDelete":"CASCADE"}},"kind":"collectionType"},"modelName":"student-document","actions":{},"lifecycles":{}},"api::subject.subject":{"kind":"collectionType","collectionName":"subjects","info":{"singularName":"subject","pluralName":"subjects","displayName":"Môn học","description":"Subjects table"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"code":{"type":"string","unique":true},"name":{"type":"string"},"sessions":{"type":"integer"},"total_hours":{"type":"decimal"},"theory_hours":{"type":"decimal"},"practice_hours":{"type":"decimal"},"exercise_hours":{"type":"decimal"},"exam_hours":{"type":"decimal"},"notes":{"type":"text"},"has_theory":{"type":"boolean","default":true},"has_practice":{"type":"boolean","default":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::subject.subject","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"subjects"}}},"apiName":"subject","globalId":"Subject","uid":"api::subject.subject","modelType":"contentType","__schema__":{"collectionName":"subjects","info":{"singularName":"subject","pluralName":"subjects","displayName":"Môn học","description":"Subjects table"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"code":{"type":"string","unique":true},"name":{"type":"string"},"sessions":{"type":"integer"},"total_hours":{"type":"decimal"},"theory_hours":{"type":"decimal"},"practice_hours":{"type":"decimal"},"exercise_hours":{"type":"decimal"},"exam_hours":{"type":"decimal"},"notes":{"type":"text"},"has_theory":{"type":"boolean","default":true},"has_practice":{"type":"boolean","default":false}},"kind":"collectionType"},"modelName":"subject","actions":{},"lifecycles":{}},"api::supplier.supplier":{"kind":"collectionType","collectionName":"suppliers","info":{"singularName":"supplier","pluralName":"suppliers","displayName":"Dãy nhà","description":"Suppliers table"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"code":{"type":"string","unique":true},"name":{"type":"string"},"tax_id":{"type":"string"},"phone":{"type":"string"},"email":{"type":"string"},"address":{"type":"text"},"status":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::supplier.supplier","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"suppliers"}}},"apiName":"supplier","globalId":"Supplier","uid":"api::supplier.supplier","modelType":"contentType","__schema__":{"collectionName":"suppliers","info":{"singularName":"supplier","pluralName":"suppliers","displayName":"Dãy nhà","description":"Suppliers table"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"code":{"type":"string","unique":true},"name":{"type":"string"},"tax_id":{"type":"string"},"phone":{"type":"string"},"email":{"type":"string"},"address":{"type":"text"},"status":{"type":"string"}},"kind":"collectionType"},"modelName":"supplier","actions":{},"lifecycles":{}},"api::teacher.teacher":{"kind":"collectionType","collectionName":"teachers","info":{"singularName":"teacher","pluralName":"teachers","displayName":"Giảng viên","description":"Teachers table"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"code":{"type":"string","unique":true},"name":{"type":"string"},"specialization":{"type":"string"},"phone":{"type":"string"},"email":{"type":"string"},"subjects":{"type":"relation","relation":"manyToMany","target":"api::subject.subject"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::teacher.teacher","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"teachers"}}},"apiName":"teacher","globalId":"Teacher","uid":"api::teacher.teacher","modelType":"contentType","__schema__":{"collectionName":"teachers","info":{"singularName":"teacher","pluralName":"teachers","displayName":"Giảng viên","description":"Teachers table"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"code":{"type":"string","unique":true},"name":{"type":"string"},"specialization":{"type":"string"},"phone":{"type":"string"},"email":{"type":"string"},"subjects":{"type":"relation","relation":"manyToMany","target":"api::subject.subject"}},"kind":"collectionType"},"modelName":"teacher","actions":{},"lifecycles":{}},"api::teacher-subject.teacher-subject":{"kind":"collectionType","collectionName":"teacher_subjects","info":{"singularName":"teacher-subject","pluralName":"teacher-subjects","displayName":"Giảng viên - Môn học (Legacy)","description":"Mapping từ bảng teacher_subjects"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"teacher_id":{"type":"string"},"subject_id":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::teacher-subject.teacher-subject","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"teacher_subjects"}}},"apiName":"teacher-subject","globalId":"TeacherSubject","uid":"api::teacher-subject.teacher-subject","modelType":"contentType","__schema__":{"collectionName":"teacher_subjects","info":{"singularName":"teacher-subject","pluralName":"teacher-subjects","displayName":"Giảng viên - Môn học (Legacy)","description":"Mapping từ bảng teacher_subjects"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"teacher_id":{"type":"string"},"subject_id":{"type":"string"}},"kind":"collectionType"},"modelName":"teacher-subject","actions":{},"lifecycles":{}},"api::training-assignment.training-assignment":{"kind":"collectionType","collectionName":"training_assignments","info":{"singularName":"training-assignment","pluralName":"training-assignments","displayName":"Phân công giảng dạy","description":"Stores the training schedule for a class decision"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"decision":{"type":"relation","relation":"oneToOne","target":"api::class-decision.class-decision"},"schedule":{"type":"json"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::training-assignment.training-assignment","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"training_assignments"}}},"apiName":"training-assignment","globalId":"TrainingAssignment","uid":"api::training-assignment.training-assignment","modelType":"contentType","__schema__":{"collectionName":"training_assignments","info":{"singularName":"training-assignment","pluralName":"training-assignments","displayName":"Phân công giảng dạy","description":"Stores the training schedule for a class decision"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"decision":{"type":"relation","relation":"oneToOne","target":"api::class-decision.class-decision"},"schedule":{"type":"json"}},"kind":"collectionType"},"modelName":"training-assignment","actions":{},"lifecycles":{}},"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_permissions"}}},"plugin":"admin","globalId":"AdminPermission","uid":"admin::permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelName":"permission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_users"}}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"registrationToken":{"hidden":true}}},"plugin":"admin","globalId":"AdminUser","uid":"admin::user","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false}},"kind":"collectionType"},"modelName":"user","options":{"draftAndPublish":false}},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::role","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_roles"}}},"plugin":"admin","globalId":"AdminRole","uid":"admin::role","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelName":"role"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"encryptedKey":{"type":"text","minLength":1,"configurable":false,"required":false,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::api-token","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_api_tokens"}}},"plugin":"admin","globalId":"AdminApiToken","uid":"admin::api-token","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"encryptedKey":{"type":"text","minLength":1,"configurable":false,"required":false,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelName":"api-token"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::api-token-permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_api_token_permissions"}}},"plugin":"admin","globalId":"AdminApiTokenPermission","uid":"admin::api-token-permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelName":"api-token-permission"},"admin::transfer-token":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::transfer-token","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_transfer_tokens"}}},"plugin":"admin","globalId":"AdminTransferToken","uid":"admin::transfer-token","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelName":"transfer-token"},"admin::transfer-token-permission":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::transfer-token-permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_transfer_token_permissions"}}},"plugin":"admin","globalId":"AdminTransferTokenPermission","uid":"admin::transfer-token-permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"}},"kind":"collectionType"},"modelName":"transfer-token-permission"},"admin::session":{"collectionName":"strapi_sessions","info":{"name":"Session","description":"Session Manager storage","singularName":"session","pluralName":"sessions","displayName":"Session"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false},"i18n":{"localized":false}},"attributes":{"userId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"sessionId":{"type":"string","unique":true,"required":true,"configurable":false,"private":true,"searchable":false},"childId":{"type":"string","configurable":false,"private":true,"searchable":false},"deviceId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"origin":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"expiresAt":{"type":"datetime","required":true,"configurable":false,"private":true,"searchable":false},"absoluteExpiresAt":{"type":"datetime","configurable":false,"private":true,"searchable":false},"status":{"type":"string","configurable":false,"private":true,"searchable":false},"type":{"type":"string","configurable":false,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::session","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_sessions"}}},"plugin":"admin","globalId":"AdminSession","uid":"admin::session","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_sessions","info":{"name":"Session","description":"Session Manager storage","singularName":"session","pluralName":"sessions","displayName":"Session"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false},"i18n":{"localized":false}},"attributes":{"userId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"sessionId":{"type":"string","unique":true,"required":true,"configurable":false,"private":true,"searchable":false},"childId":{"type":"string","configurable":false,"private":true,"searchable":false},"deviceId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"origin":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"expiresAt":{"type":"datetime","required":true,"configurable":false,"private":true,"searchable":false},"absoluteExpiresAt":{"type":"datetime","configurable":false,"private":true,"searchable":false},"status":{"type":"string","configurable":false,"private":true,"searchable":false},"type":{"type":"string","configurable":false,"private":true,"searchable":false}},"kind":"collectionType"},"modelName":"session"}}	object	\N	\N
12	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"documentId"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"permissions","size":6}],[{"name":"users","size":6}]]},"uid":"plugin::users-permissions.role"}	object	\N	\N
17	plugin_content_manager_configuration_content_types::admin::api-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::api-token-permission"}	object	\N	\N
47	plugin_content_manager_configuration_content_types::api::student-document.student-document	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"date":{"edit":{"label":"date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"date","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"student":{"edit":{"label":"student","description":"","placeholder":"","visible":true,"editable":true,"mainField":"group"},"list":{"label":"student","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","url","date"],"edit":[[{"name":"name","size":6},{"name":"url","size":6}],[{"name":"date","size":6},{"name":"type","size":6}],[{"name":"student","size":6}]]},"uid":"api::student-document.student-document"}	object	\N	\N
20	plugin_content_manager_configuration_content_types::admin::session	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"userId","defaultSortBy":"userId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"userId":{"edit":{"label":"userId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"userId","searchable":true,"sortable":true}},"sessionId":{"edit":{"label":"sessionId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sessionId","searchable":true,"sortable":true}},"childId":{"edit":{"label":"childId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"childId","searchable":true,"sortable":true}},"deviceId":{"edit":{"label":"deviceId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"deviceId","searchable":true,"sortable":true}},"origin":{"edit":{"label":"origin","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"origin","searchable":true,"sortable":true}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"absoluteExpiresAt":{"edit":{"label":"absoluteExpiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"absoluteExpiresAt","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","userId","sessionId","childId"],"edit":[[{"name":"userId","size":6},{"name":"sessionId","size":6}],[{"name":"childId","size":6},{"name":"deviceId","size":6}],[{"name":"origin","size":6},{"name":"expiresAt","size":6}],[{"name":"absoluteExpiresAt","size":6},{"name":"status","size":6}],[{"name":"type","size":6}]]},"uid":"admin::session"}	object	\N	\N
52	plugin_content_manager_configuration_content_types::api::subject.subject	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"code","defaultSortBy":"code","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"sessions":{"edit":{"label":"sessions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sessions","searchable":true,"sortable":true}},"total_hours":{"edit":{"label":"total_hours","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"total_hours","searchable":true,"sortable":true}},"theory_hours":{"edit":{"label":"theory_hours","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"theory_hours","searchable":true,"sortable":true}},"practice_hours":{"edit":{"label":"practice_hours","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"practice_hours","searchable":true,"sortable":true}},"exercise_hours":{"edit":{"label":"exercise_hours","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"exercise_hours","searchable":true,"sortable":true}},"exam_hours":{"edit":{"label":"exam_hours","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"exam_hours","searchable":true,"sortable":true}},"notes":{"edit":{"label":"notes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"notes","searchable":true,"sortable":true}},"has_theory":{"edit":{"label":"has_theory","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"has_theory","searchable":true,"sortable":true}},"has_practice":{"edit":{"label":"has_practice","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"has_practice","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","code","name","sessions"],"edit":[[{"name":"code","size":6},{"name":"name","size":6}],[{"name":"sessions","size":4},{"name":"total_hours","size":4},{"name":"theory_hours","size":4}],[{"name":"practice_hours","size":4},{"name":"exercise_hours","size":4},{"name":"exam_hours","size":4}],[{"name":"notes","size":6},{"name":"has_theory","size":4}],[{"name":"has_practice","size":4}]]},"uid":"api::subject.subject"}	object	\N	\N
16	plugin_content_manager_configuration_content_types::admin::api-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"encryptedKey":{"edit":{"label":"encryptedKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"encryptedKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}],[{"name":"encryptedKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]},"uid":"admin::api-token"}	object	\N	\N
48	plugin_content_manager_configuration_content_types::api::student.student	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"group","defaultSortBy":"group","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"stt":{"edit":{"label":"stt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"stt","searchable":true,"sortable":true}},"group":{"edit":{"label":"group","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"group","searchable":true,"sortable":true}},"class_code":{"edit":{"label":"class_code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"class_code","searchable":true,"sortable":true}},"class_name":{"edit":{"label":"class_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"class_name","searchable":true,"sortable":true}},"card_number":{"edit":{"label":"card_number","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"card_number","searchable":true,"sortable":true}},"student_code":{"edit":{"label":"student_code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"student_code","searchable":true,"sortable":true}},"id_number":{"edit":{"label":"id_number","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"id_number","searchable":true,"sortable":true}},"first_name":{"edit":{"label":"first_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"first_name","searchable":true,"sortable":true}},"last_name":{"edit":{"label":"last_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"last_name","searchable":true,"sortable":true}},"full_name":{"edit":{"label":"full_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"full_name","searchable":true,"sortable":true}},"gender":{"edit":{"label":"gender","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"gender","searchable":true,"sortable":true}},"dob":{"edit":{"label":"dob","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"dob","searchable":true,"sortable":true}},"pob":{"edit":{"label":"pob","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pob","searchable":true,"sortable":true}},"ethnicity":{"edit":{"label":"ethnicity","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ethnicity","searchable":true,"sortable":true}},"nationality":{"edit":{"label":"nationality","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"nationality","searchable":true,"sortable":true}},"company":{"edit":{"label":"company","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"company","searchable":true,"sortable":true}},"address":{"edit":{"label":"address","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"address","searchable":true,"sortable":true}},"score":{"edit":{"label":"score","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"score","searchable":true,"sortable":true}},"photo":{"edit":{"label":"photo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"photo","searchable":true,"sortable":true}},"phone":{"edit":{"label":"phone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"phone","searchable":true,"sortable":true}},"school_class":{"edit":{"label":"school_class","description":"","placeholder":"","visible":true,"editable":true,"mainField":"code"},"list":{"label":"school_class","searchable":true,"sortable":true}},"documents":{"edit":{"label":"documents","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"documents","searchable":false,"sortable":false}},"notes":{"edit":{"label":"notes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"notes","searchable":true,"sortable":true}},"is_approved":{"edit":{"label":"is_approved","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"is_approved","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","stt","group","class_code"],"edit":[[{"name":"stt","size":4},{"name":"group","size":6}],[{"name":"class_code","size":6},{"name":"class_name","size":6}],[{"name":"card_number","size":6},{"name":"student_code","size":6}],[{"name":"id_number","size":6},{"name":"first_name","size":6}],[{"name":"last_name","size":6},{"name":"full_name","size":6}],[{"name":"gender","size":6},{"name":"dob","size":6}],[{"name":"pob","size":6},{"name":"ethnicity","size":6}],[{"name":"nationality","size":6},{"name":"company","size":6}],[{"name":"address","size":6},{"name":"score","size":6}],[{"name":"photo","size":6},{"name":"documents","size":6}],[{"name":"phone","size":6},{"name":"school_class","size":6}],[{"name":"is_approved","size":4},{"name":"notes","size":6}]]},"uid":"api::student.student"}	object	\N	\N
46	plugin_content_manager_configuration_content_types::api::nation.nation	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"code","defaultSortBy":"code","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"abbr":{"edit":{"label":"abbr","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"abbr","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","code","name","abbr"],"edit":[[{"name":"code","size":6},{"name":"name","size":6}],[{"name":"abbr","size":6},{"name":"status","size":6}]]},"uid":"api::nation.nation"}	object	\N	\N
14	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"edit":[[{"name":"action","size":6},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.permission"}	object	\N	\N
49	plugin_content_manager_configuration_content_types::api::supplier.supplier	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"code","defaultSortBy":"code","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"tax_id":{"edit":{"label":"tax_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"tax_id","searchable":true,"sortable":true}},"phone":{"edit":{"label":"phone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"phone","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"address":{"edit":{"label":"address","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"address","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","code","name","tax_id"],"edit":[[{"name":"code","size":6},{"name":"name","size":6}],[{"name":"tax_id","size":6},{"name":"phone","size":6}],[{"name":"email","size":6},{"name":"address","size":6}],[{"name":"status","size":6}]]},"uid":"api::supplier.supplier"}	object	\N	\N
18	plugin_content_manager_configuration_content_types::admin::transfer-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","accessKey"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"accessKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]},"uid":"admin::transfer-token"}	object	\N	\N
50	plugin_content_manager_configuration_content_types::api::school-class.school-class	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"code","defaultSortBy":"code","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"notes":{"edit":{"label":"notes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"notes","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"start_date":{"edit":{"label":"start_date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"start_date","searchable":true,"sortable":true}},"end_date":{"edit":{"label":"end_date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"end_date","searchable":true,"sortable":true}},"student_count":{"edit":{"label":"student_count","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"student_count","searchable":true,"sortable":true}},"subjects":{"edit":{"label":"subjects","description":"","placeholder":"","visible":true,"editable":true,"mainField":"code"},"list":{"label":"subjects","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","code","name","notes"],"edit":[[{"name":"code","size":6},{"name":"name","size":6}],[{"name":"notes","size":6},{"name":"status","size":6}],[{"name":"start_date","size":6},{"name":"end_date","size":6}],[{"name":"student_count","size":4},{"name":"subjects","size":6}]]},"uid":"api::school-class.school-class"}	object	\N	\N
19	plugin_content_manager_configuration_content_types::admin::transfer-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::transfer-token-permission"}	object	\N	\N
21	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false,"aiMetadata":true}	object	\N	\N
22	plugin_upload_view_configuration	{"pageSize":10,"sort":"createdAt:DESC"}	object	\N	\N
24	plugin_i18n_default_locale	"en"	string	\N	\N
26	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
53	plugin_content_manager_configuration_content_types::api::class-decision.class-decision	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"decision_number","defaultSortBy":"decision_number","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"decision_number":{"edit":{"label":"decision_number","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"decision_number","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"training_course":{"edit":{"label":"training_course","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"training_course","searchable":true,"sortable":true}},"signed_date":{"edit":{"label":"signed_date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"signed_date","searchable":true,"sortable":true}},"signer_name":{"edit":{"label":"signer_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"signer_name","searchable":true,"sortable":true}},"school_class":{"edit":{"label":"school_class","description":"","placeholder":"","visible":true,"editable":true,"mainField":"code"},"list":{"label":"school_class","searchable":true,"sortable":true}},"students":{"edit":{"label":"students","description":"","placeholder":"","visible":true,"editable":true,"mainField":"group"},"list":{"label":"students","searchable":false,"sortable":false}},"notes":{"edit":{"label":"notes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"notes","searchable":true,"sortable":true}},"related_decision":{"edit":{"label":"related_decision","description":"","placeholder":"","visible":true,"editable":true,"mainField":"decision_number"},"list":{"label":"related_decision","searchable":true,"sortable":true}},"start_date":{"edit":{"label":"start_date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"start_date","searchable":true,"sortable":true}},"end_date":{"edit":{"label":"end_date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"end_date","searchable":true,"sortable":true}},"class_type":{"edit":{"label":"class_type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"class_type","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","decision_number","training_course","signed_date"],"edit":[[{"name":"decision_number","size":6},{"name":"training_course","size":6}],[{"name":"signed_date","size":4},{"name":"signer_name","size":6}],[{"name":"school_class","size":6},{"name":"students","size":6}],[{"name":"notes","size":6},{"name":"type","size":6}],[{"name":"related_decision","size":6},{"name":"start_date","size":4}],[{"name":"end_date","size":4},{"name":"class_type","size":6}]]},"uid":"api::class-decision.class-decision"}	object	\N	\N
3	plugin_content_manager_configuration_content_types::plugin::upload.file	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"focalPoint":{"edit":{"label":"focalPoint","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"focalPoint","searchable":false,"sortable":false}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"folder":{"edit":{"label":"folder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"folder","searchable":true,"sortable":true}},"folderPath":{"edit":{"label":"folderPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"folderPath","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"folder","size":6},{"name":"folderPath","size":6}],[{"name":"focalPoint","size":12}]]},"uid":"plugin::upload.file"}	object	\N	\N
54	plugin_content_manager_configuration_content_types::api::training-assignment.training-assignment	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"decision":{"edit":{"label":"decision","description":"","placeholder":"","visible":true,"editable":true,"mainField":"decision_number"},"list":{"label":"decision","searchable":true,"sortable":true}},"schedule":{"edit":{"label":"schedule","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"schedule","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","decision","createdAt","updatedAt"],"edit":[[{"name":"decision","size":6}],[{"name":"schedule","size":12}]]},"uid":"api::training-assignment.training-assignment"}	object	\N	\N
58	plugin_content_manager_configuration_content_types::api::class-subject.class-subject	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"class_id","defaultSortBy":"class_id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"class_id":{"edit":{"label":"class_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"class_id","searchable":true,"sortable":true}},"subject_id":{"edit":{"label":"subject_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject_id","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","class_id","subject_id","createdAt"],"edit":[[{"name":"class_id","size":6},{"name":"subject_id","size":6}]]},"uid":"api::class-subject.class-subject"}	object	\N	\N
15	plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow-stage	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"color":{"edit":{"label":"color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"color","searchable":true,"sortable":true}},"workflow":{"edit":{"label":"workflow","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"workflow","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","color","workflow"],"edit":[[{"name":"name","size":6},{"name":"color","size":6}],[{"name":"workflow","size":6},{"name":"permissions","size":6}]]},"uid":"plugin::review-workflows.workflow-stage"}	object	\N	\N
27	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated","register_default_role":1}	object	\N	\N
55	plugin_content_manager_configuration_content_types::api::exam-approval.exam-approval	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"decision":{"edit":{"label":"decision","description":"","placeholder":"","visible":true,"editable":true,"mainField":"decision_number"},"list":{"label":"decision","searchable":true,"sortable":true}},"approvals":{"edit":{"label":"approvals","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"approvals","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","decision","createdAt","updatedAt"],"edit":[[{"name":"decision","size":6}],[{"name":"approvals","size":12}]]},"uid":"api::exam-approval.exam-approval"}	object	\N	\N
59	plugin_content_manager_configuration_content_types::api::teacher-subject.teacher-subject	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"teacher_id","defaultSortBy":"teacher_id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"teacher_id":{"edit":{"label":"teacher_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"teacher_id","searchable":true,"sortable":true}},"subject_id":{"edit":{"label":"subject_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject_id","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","teacher_id","subject_id","createdAt"],"edit":[[{"name":"teacher_id","size":6},{"name":"subject_id","size":6}]]},"uid":"api::teacher-subject.teacher-subject"}	object	\N	\N
56	plugin_content_manager_configuration_content_types::api::exam-grade.exam-grade	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"decision":{"edit":{"label":"decision","description":"","placeholder":"","visible":true,"editable":true,"mainField":"decision_number"},"list":{"label":"decision","searchable":true,"sortable":true}},"grades":{"edit":{"label":"grades","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"grades","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","decision","createdAt","updatedAt"],"edit":[[{"name":"decision","size":6}],[{"name":"grades","size":12}]]},"uid":"api::exam-grade.exam-grade"}	object	\N	\N
10	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"role","size":6}],[{"name":"permissions","size":12}]]},"uid":"plugin::users-permissions.user"}	object	\N	\N
57	plugin_content_manager_configuration_content_types::api::audit-log.audit-log	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"actor":{"edit":{"label":"actor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"actor","searchable":true,"sortable":true}},"details":{"edit":{"label":"details","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"details","searchable":true,"sortable":true}},"entity_id":{"edit":{"label":"entity_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"entity_id","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","actor","details"],"edit":[[{"name":"action","size":6},{"name":"actor","size":6}],[{"name":"details","size":6},{"name":"entity_id","size":6}]]},"uid":"api::audit-log.audit-log"}	object	\N	\N
60	plugin_content_manager_configuration_content_types::api::print-template.print-template	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"type","defaultSortBy":"type","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"content":{"edit":{"label":"content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"content","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","name","createdAt"],"edit":[[{"name":"type","size":6},{"name":"name","size":6}],[{"name":"content","size":12}]]},"uid":"api::print-template.print-template"}	object	\N	\N
13	plugin_content_manager_configuration_content_types::admin::role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6},{"name":"users","size":6}],[{"name":"permissions","size":6}]]},"uid":"admin::role"}	object	\N	\N
25	plugin_users-permissions_grant	{"email":{"icon":"envelope","enabled":true},"discord":{"icon":"discord","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/discord/callback","scope":["identify","email"],"redirectUri":"http://localhost:1337/api/connect/discord/callback"},"facebook":{"icon":"facebook-square","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/facebook/callback","scope":["email"],"redirectUri":"http://localhost:1337/api/connect/facebook/callback"},"google":{"icon":"google","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/google/callback","scope":["email"],"redirectUri":"http://localhost:1337/api/connect/google/callback"},"github":{"icon":"github","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/github/callback","scope":["user","user:email"],"redirectUri":"http://localhost:1337/api/connect/github/callback"},"microsoft":{"icon":"windows","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/microsoft/callback","scope":["user.read"],"redirectUri":"http://localhost:1337/api/connect/microsoft/callback"},"twitter":{"icon":"twitter","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/twitter/callback","redirectUri":"http://localhost:1337/api/connect/twitter/callback"},"instagram":{"icon":"instagram","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/instagram/callback","scope":["user_profile"],"redirectUri":"http://localhost:1337/api/connect/instagram/callback"},"vk":{"icon":"vk","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/vk/callback","scope":["email"],"redirectUri":"http://localhost:1337/api/connect/vk/callback"},"twitch":{"icon":"twitch","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/twitch/callback","scope":["user:read:email"],"redirectUri":"http://localhost:1337/api/connect/twitch/callback"},"linkedin":{"icon":"linkedin","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"],"redirectUri":"http://localhost:1337/api/connect/linkedin/callback"},"cognito":{"icon":"aws","enabled":false,"key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"],"redirectUri":"http://localhost:1337/api/connect/cognito/callback"},"reddit":{"icon":"reddit","enabled":false,"key":"","secret":"","callback":"api/auth/reddit/callback","scope":["identity"],"redirectUri":"http://localhost:1337/api/connect/reddit/callback"},"auth0":{"icon":"","enabled":false,"key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"],"redirectUri":"http://localhost:1337/api/connect/auth0/callback"},"cas":{"icon":"book","enabled":false,"key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas","redirectUri":"http://localhost:1337/api/connect/cas/callback"},"patreon":{"icon":"","enabled":false,"key":"","secret":"","callback":"api/auth/patreon/callback","scope":["identity","identity[email]"],"redirectUri":"http://localhost:1337/api/connect/patreon/callback"},"keycloak":{"icon":"","enabled":false,"key":"","secret":"","subdomain":"myKeycloakProvider.com/realms/myrealm","callback":"api/auth/keycloak/callback","scope":["openid","email","profile"],"redirectUri":"http://localhost:1337/api/connect/keycloak/callback"}}	object	\N	\N
28	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null,"ssoLockedRoles":null}}	object	\N	\N
23	plugin_upload_metrics	{"weeklySchedule":"30 37 8 * * 1","lastWeeklyUpdate":1775464650869}	object	\N	\N
61	core_admin_project-settings	{"menuLogo":{"name":"logo.jpg","hash":"logo_e2d7f4605f","url":"/uploads/logo_e2d7f4605f.jpg","width":319,"height":340,"ext":".jpg","size":30.9,"provider":"local"},"authLogo":{"name":"logo.jpg","hash":"logo_9b04b58b80","url":"/uploads/logo_9b04b58b80.jpg","width":319,"height":340,"ext":".jpg","size":30.9,"provider":"local"}}	object	\N	\N
\.


--
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
28	{"tables":[{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null},{"name":"files_documents_idx","columns":["document_id","locale","published_at"]},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"focal_point","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_documents_idx","columns":["document_id","locale","published_at"]},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_documents_idx","columns":["document_id","locale","published_at"]},{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_releases","indexes":[{"name":"strapi_releases_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"released_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"scheduled_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"timezone","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_release_actions","indexes":[{"name":"strapi_release_actions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"entry_document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_entry_valid","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows","indexes":[{"name":"strapi_workflows_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_workflows_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_workflows_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_workflows_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_workflows_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_types","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_workflows_stages","indexes":[{"name":"strapi_workflows_stages_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_workflows_stages_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_workflows_stages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_workflows_stages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_workflows_stages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_roles","indexes":[{"name":"up_roles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_users","indexes":[{"name":"up_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"permissions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"audit_logs","indexes":[{"name":"audit_logs_documents_idx","columns":["document_id","locale","published_at"]},{"name":"audit_logs_created_by_id_fk","columns":["created_by_id"]},{"name":"audit_logs_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"audit_logs_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"audit_logs_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"actor","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"details","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"entity_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"class_decisions","indexes":[{"name":"class_decisions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"class_decisions_created_by_id_fk","columns":["created_by_id"]},{"name":"class_decisions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"class_decisions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"class_decisions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"decision_number","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"training_course","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"signed_date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"signer_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"notes","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"start_date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"end_date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"class_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"class_subjects","indexes":[{"name":"class_subjects_documents_idx","columns":["document_id","locale","published_at"]},{"name":"class_subjects_created_by_id_fk","columns":["created_by_id"]},{"name":"class_subjects_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"class_subjects_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"class_subjects_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"class_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"classrooms","indexes":[{"name":"classrooms_documents_idx","columns":["document_id","locale","published_at"]},{"name":"classrooms_created_by_id_fk","columns":["created_by_id"]},{"name":"classrooms_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"classrooms_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"classrooms_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"capacity","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"building","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"exam_approvals","indexes":[{"name":"exam_approvals_documents_idx","columns":["document_id","locale","published_at"]},{"name":"exam_approvals_created_by_id_fk","columns":["created_by_id"]},{"name":"exam_approvals_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"exam_approvals_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"exam_approvals_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"approvals","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"exam_grades","indexes":[{"name":"exam_grades_documents_idx","columns":["document_id","locale","published_at"]},{"name":"exam_grades_created_by_id_fk","columns":["created_by_id"]},{"name":"exam_grades_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"exam_grades_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"exam_grades_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"grades","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"nations","indexes":[{"name":"nations_documents_idx","columns":["document_id","locale","published_at"]},{"name":"nations_created_by_id_fk","columns":["created_by_id"]},{"name":"nations_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"nations_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"nations_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"abbr","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"print_templates","indexes":[{"name":"print_templates_documents_idx","columns":["document_id","locale","published_at"]},{"name":"print_templates_created_by_id_fk","columns":["created_by_id"]},{"name":"print_templates_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"print_templates_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"print_templates_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"classes","indexes":[{"name":"classes_documents_idx","columns":["document_id","locale","published_at"]},{"name":"classes_created_by_id_fk","columns":["created_by_id"]},{"name":"classes_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"classes_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"classes_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"notes","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"start_date","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"end_date","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"student_count","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"students","indexes":[{"name":"students_documents_idx","columns":["document_id","locale","published_at"]},{"name":"students_created_by_id_fk","columns":["created_by_id"]},{"name":"students_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"students_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"students_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"stt","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"group","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"class_code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"class_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"card_number","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"student_code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"id_number","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"first_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"full_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"gender","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"dob","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"pob","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ethnicity","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"nationality","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"company","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"address","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"score","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"photo","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"phone","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"notes","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_approved","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"student_documents","indexes":[{"name":"student_documents_documents_idx","columns":["document_id","locale","published_at"]},{"name":"student_documents_created_by_id_fk","columns":["created_by_id"]},{"name":"student_documents_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"student_documents_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"student_documents_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"date","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"subjects","indexes":[{"name":"subjects_documents_idx","columns":["document_id","locale","published_at"]},{"name":"subjects_created_by_id_fk","columns":["created_by_id"]},{"name":"subjects_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"subjects_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"subjects_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"sessions","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"total_hours","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"theory_hours","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"practice_hours","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"exercise_hours","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"exam_hours","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"notes","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"has_theory","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"has_practice","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"suppliers","indexes":[{"name":"suppliers_documents_idx","columns":["document_id","locale","published_at"]},{"name":"suppliers_created_by_id_fk","columns":["created_by_id"]},{"name":"suppliers_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"suppliers_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"suppliers_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tax_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"phone","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"address","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"teachers","indexes":[{"name":"teachers_documents_idx","columns":["document_id","locale","published_at"]},{"name":"teachers_created_by_id_fk","columns":["created_by_id"]},{"name":"teachers_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"teachers_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"teachers_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"specialization","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"phone","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"teacher_subjects","indexes":[{"name":"teacher_subjects_documents_idx","columns":["document_id","locale","published_at"]},{"name":"teacher_subjects_created_by_id_fk","columns":["created_by_id"]},{"name":"teacher_subjects_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"teacher_subjects_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"teacher_subjects_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"teacher_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"training_assignments","indexes":[{"name":"training_assignments_documents_idx","columns":["document_id","locale","published_at"]},{"name":"training_assignments_created_by_id_fk","columns":["created_by_id"]},{"name":"training_assignments_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"training_assignments_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"training_assignments_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"schedule","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action_parameters","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_users","indexes":[{"name":"admin_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"encrypted_key","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_transfer_tokens","indexes":[{"name":"strapi_transfer_tokens_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_transfer_token_permissions","indexes":[{"name":"strapi_transfer_token_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_sessions","indexes":[{"name":"strapi_sessions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_sessions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_sessions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_sessions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_sessions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"user_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"session_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"child_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"device_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"origin","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"absolute_expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_history_versions","indexes":[{"name":"strapi_history_versions_created_by_id_fk","columns":["created_by_id"]}],"foreignKeys":[{"name":"strapi_history_versions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"related_document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"data","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"schema","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_ai_metadata_jobs","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"completed_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_ai_localization_jobs","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"related_document_id","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"source_locale","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"target_locales","type":"jsonb","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"files_related_mph","indexes":[{"name":"files_related_mph_fk","columns":["file_id"]},{"name":"files_related_mph_oidx","columns":["order"]},{"name":"files_related_mph_idix","columns":["related_id"]}],"foreignKeys":[{"name":"files_related_mph_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_lnk","indexes":[{"name":"files_folder_lnk_fk","columns":["file_id"]},{"name":"files_folder_lnk_ifk","columns":["folder_id"]},{"name":"files_folder_lnk_uq","columns":["file_id","folder_id"],"type":"unique"},{"name":"files_folder_lnk_oifk","columns":["file_ord"]}],"foreignKeys":[{"name":"files_folder_lnk_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_lnk_ifk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"file_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_lnk","indexes":[{"name":"upload_folders_parent_lnk_fk","columns":["folder_id"]},{"name":"upload_folders_parent_lnk_ifk","columns":["inv_folder_id"]},{"name":"upload_folders_parent_lnk_uq","columns":["folder_id","inv_folder_id"],"type":"unique"},{"name":"upload_folders_parent_lnk_oifk","columns":["folder_ord"]}],"foreignKeys":[{"name":"upload_folders_parent_lnk_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_lnk_ifk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_release_actions_release_lnk","indexes":[{"name":"strapi_release_actions_release_lnk_fk","columns":["release_action_id"]},{"name":"strapi_release_actions_release_lnk_ifk","columns":["release_id"]},{"name":"strapi_release_actions_release_lnk_uq","columns":["release_action_id","release_id"],"type":"unique"},{"name":"strapi_release_actions_release_lnk_oifk","columns":["release_action_ord"]}],"foreignKeys":[{"name":"strapi_release_actions_release_lnk_fk","columns":["release_action_id"],"referencedColumns":["id"],"referencedTable":"strapi_release_actions","onDelete":"CASCADE"},{"name":"strapi_release_actions_release_lnk_ifk","columns":["release_id"],"referencedColumns":["id"],"referencedTable":"strapi_releases","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"release_action_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_action_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stage_required_to_publish_lnk","indexes":[{"name":"strapi_workflows_stage_required_to_publish_lnk_fk","columns":["workflow_id"]},{"name":"strapi_workflows_stage_required_to_publish_lnk_ifk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stage_required_to_publish_lnk_uq","columns":["workflow_id","workflow_stage_id"],"type":"unique"}],"foreignKeys":[{"name":"strapi_workflows_stage_required_to_publish_lnk_fk","columns":["workflow_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows","onDelete":"CASCADE"},{"name":"strapi_workflows_stage_required_to_publish_lnk_ifk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stages_workflow_lnk","indexes":[{"name":"strapi_workflows_stages_workflow_lnk_fk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stages_workflow_lnk_ifk","columns":["workflow_id"]},{"name":"strapi_workflows_stages_workflow_lnk_uq","columns":["workflow_stage_id","workflow_id"],"type":"unique"},{"name":"strapi_workflows_stages_workflow_lnk_oifk","columns":["workflow_stage_ord"]}],"foreignKeys":[{"name":"strapi_workflows_stages_workflow_lnk_fk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"},{"name":"strapi_workflows_stages_workflow_lnk_ifk","columns":["workflow_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_stage_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stages_permissions_lnk","indexes":[{"name":"strapi_workflows_stages_permissions_lnk_fk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stages_permissions_lnk_ifk","columns":["permission_id"]},{"name":"strapi_workflows_stages_permissions_lnk_uq","columns":["workflow_stage_id","permission_id"],"type":"unique"},{"name":"strapi_workflows_stages_permissions_lnk_ofk","columns":["permission_ord"]}],"foreignKeys":[{"name":"strapi_workflows_stages_permissions_lnk_fk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"},{"name":"strapi_workflows_stages_permissions_lnk_ifk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_lnk","indexes":[{"name":"up_permissions_role_lnk_fk","columns":["permission_id"]},{"name":"up_permissions_role_lnk_ifk","columns":["role_id"]},{"name":"up_permissions_role_lnk_uq","columns":["permission_id","role_id"],"type":"unique"},{"name":"up_permissions_role_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"up_permissions_role_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_lnk","indexes":[{"name":"up_users_role_lnk_fk","columns":["user_id"]},{"name":"up_users_role_lnk_ifk","columns":["role_id"]},{"name":"up_users_role_lnk_uq","columns":["user_id","role_id"],"type":"unique"},{"name":"up_users_role_lnk_oifk","columns":["user_ord"]}],"foreignKeys":[{"name":"up_users_role_lnk_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"class_decisions_school_class_lnk","indexes":[{"name":"class_decisions_school_class_lnk_fk","columns":["class_decision_id"]},{"name":"class_decisions_school_class_lnk_ifk","columns":["school_class_id"]},{"name":"class_decisions_school_class_lnk_uq","columns":["class_decision_id","school_class_id"],"type":"unique"}],"foreignKeys":[{"name":"class_decisions_school_class_lnk_fk","columns":["class_decision_id"],"referencedColumns":["id"],"referencedTable":"class_decisions","onDelete":"CASCADE"},{"name":"class_decisions_school_class_lnk_ifk","columns":["school_class_id"],"referencedColumns":["id"],"referencedTable":"classes","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"class_decision_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"school_class_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"class_decisions_students_lnk","indexes":[{"name":"class_decisions_students_lnk_fk","columns":["class_decision_id"]},{"name":"class_decisions_students_lnk_ifk","columns":["student_id"]},{"name":"class_decisions_students_lnk_uq","columns":["class_decision_id","student_id"],"type":"unique"},{"name":"class_decisions_students_lnk_ofk","columns":["student_ord"]}],"foreignKeys":[{"name":"class_decisions_students_lnk_fk","columns":["class_decision_id"],"referencedColumns":["id"],"referencedTable":"class_decisions","onDelete":"CASCADE"},{"name":"class_decisions_students_lnk_ifk","columns":["student_id"],"referencedColumns":["id"],"referencedTable":"students","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"class_decision_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"student_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"student_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"class_decisions_related_decision_lnk","indexes":[{"name":"class_decisions_related_decision_lnk_fk","columns":["class_decision_id"]},{"name":"class_decisions_related_decision_lnk_ifk","columns":["inv_class_decision_id"]},{"name":"class_decisions_related_decision_lnk_uq","columns":["class_decision_id","inv_class_decision_id"],"type":"unique"}],"foreignKeys":[{"name":"class_decisions_related_decision_lnk_fk","columns":["class_decision_id"],"referencedColumns":["id"],"referencedTable":"class_decisions","onDelete":"CASCADE"},{"name":"class_decisions_related_decision_lnk_ifk","columns":["inv_class_decision_id"],"referencedColumns":["id"],"referencedTable":"class_decisions","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"class_decision_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_class_decision_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"exam_approvals_decision_lnk","indexes":[{"name":"exam_approvals_decision_lnk_fk","columns":["exam_approval_id"]},{"name":"exam_approvals_decision_lnk_ifk","columns":["class_decision_id"]},{"name":"exam_approvals_decision_lnk_uq","columns":["exam_approval_id","class_decision_id"],"type":"unique"}],"foreignKeys":[{"name":"exam_approvals_decision_lnk_fk","columns":["exam_approval_id"],"referencedColumns":["id"],"referencedTable":"exam_approvals","onDelete":"CASCADE"},{"name":"exam_approvals_decision_lnk_ifk","columns":["class_decision_id"],"referencedColumns":["id"],"referencedTable":"class_decisions","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"exam_approval_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"class_decision_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"exam_grades_decision_lnk","indexes":[{"name":"exam_grades_decision_lnk_fk","columns":["exam_grade_id"]},{"name":"exam_grades_decision_lnk_ifk","columns":["class_decision_id"]},{"name":"exam_grades_decision_lnk_uq","columns":["exam_grade_id","class_decision_id"],"type":"unique"}],"foreignKeys":[{"name":"exam_grades_decision_lnk_fk","columns":["exam_grade_id"],"referencedColumns":["id"],"referencedTable":"exam_grades","onDelete":"CASCADE"},{"name":"exam_grades_decision_lnk_ifk","columns":["class_decision_id"],"referencedColumns":["id"],"referencedTable":"class_decisions","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"exam_grade_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"class_decision_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"classes_subjects_lnk","indexes":[{"name":"classes_subjects_lnk_fk","columns":["school_class_id"]},{"name":"classes_subjects_lnk_ifk","columns":["subject_id"]},{"name":"classes_subjects_lnk_uq","columns":["school_class_id","subject_id"],"type":"unique"},{"name":"classes_subjects_lnk_ofk","columns":["subject_ord"]}],"foreignKeys":[{"name":"classes_subjects_lnk_fk","columns":["school_class_id"],"referencedColumns":["id"],"referencedTable":"classes","onDelete":"CASCADE"},{"name":"classes_subjects_lnk_ifk","columns":["subject_id"],"referencedColumns":["id"],"referencedTable":"subjects","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"school_class_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"subject_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"subject_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"students_school_class_lnk","indexes":[{"name":"students_school_class_lnk_fk","columns":["student_id"]},{"name":"students_school_class_lnk_ifk","columns":["school_class_id"]},{"name":"students_school_class_lnk_uq","columns":["student_id","school_class_id"],"type":"unique"}],"foreignKeys":[{"name":"students_school_class_lnk_fk","columns":["student_id"],"referencedColumns":["id"],"referencedTable":"students","onDelete":"CASCADE"},{"name":"students_school_class_lnk_ifk","columns":["school_class_id"],"referencedColumns":["id"],"referencedTable":"classes","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"student_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"school_class_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"student_documents_student_lnk","indexes":[{"name":"student_documents_student_lnk_fk","columns":["student_document_id"]},{"name":"student_documents_student_lnk_ifk","columns":["student_id"]},{"name":"student_documents_student_lnk_uq","columns":["student_document_id","student_id"],"type":"unique"},{"name":"student_documents_student_lnk_oifk","columns":["student_document_ord"]}],"foreignKeys":[{"name":"student_documents_student_lnk_fk","columns":["student_document_id"],"referencedColumns":["id"],"referencedTable":"student_documents","onDelete":"CASCADE"},{"name":"student_documents_student_lnk_ifk","columns":["student_id"],"referencedColumns":["id"],"referencedTable":"students","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"student_document_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"student_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"student_document_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"teachers_subjects_lnk","indexes":[{"name":"teachers_subjects_lnk_fk","columns":["teacher_id"]},{"name":"teachers_subjects_lnk_ifk","columns":["subject_id"]},{"name":"teachers_subjects_lnk_uq","columns":["teacher_id","subject_id"],"type":"unique"},{"name":"teachers_subjects_lnk_ofk","columns":["subject_ord"]}],"foreignKeys":[{"name":"teachers_subjects_lnk_fk","columns":["teacher_id"],"referencedColumns":["id"],"referencedTable":"teachers","onDelete":"CASCADE"},{"name":"teachers_subjects_lnk_ifk","columns":["subject_id"],"referencedColumns":["id"],"referencedTable":"subjects","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"teacher_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"subject_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"subject_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"training_assignments_decision_lnk","indexes":[{"name":"training_assignments_decision_lnk_fk","columns":["training_assignment_id"]},{"name":"training_assignments_decision_lnk_ifk","columns":["class_decision_id"]},{"name":"training_assignments_decision_lnk_uq","columns":["training_assignment_id","class_decision_id"],"type":"unique"}],"foreignKeys":[{"name":"training_assignments_decision_lnk_fk","columns":["training_assignment_id"],"referencedColumns":["id"],"referencedTable":"training_assignments","onDelete":"CASCADE"},{"name":"training_assignments_decision_lnk_ifk","columns":["class_decision_id"],"referencedColumns":["id"],"referencedTable":"class_decisions","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"training_assignment_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"class_decision_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_permissions_role_lnk","indexes":[{"name":"admin_permissions_role_lnk_fk","columns":["permission_id"]},{"name":"admin_permissions_role_lnk_ifk","columns":["role_id"]},{"name":"admin_permissions_role_lnk_uq","columns":["permission_id","role_id"],"type":"unique"},{"name":"admin_permissions_role_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"admin_permissions_role_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_lnk","indexes":[{"name":"admin_users_roles_lnk_fk","columns":["user_id"]},{"name":"admin_users_roles_lnk_ifk","columns":["role_id"]},{"name":"admin_users_roles_lnk_uq","columns":["user_id","role_id"],"type":"unique"},{"name":"admin_users_roles_lnk_ofk","columns":["role_ord"]},{"name":"admin_users_roles_lnk_oifk","columns":["user_ord"]}],"foreignKeys":[{"name":"admin_users_roles_lnk_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_lnk","indexes":[{"name":"strapi_api_token_permissions_token_lnk_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_lnk_ifk","columns":["api_token_id"]},{"name":"strapi_api_token_permissions_token_lnk_uq","columns":["api_token_permission_id","api_token_id"],"type":"unique"},{"name":"strapi_api_token_permissions_token_lnk_oifk","columns":["api_token_permission_ord"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_lnk_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_lnk_ifk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions_token_lnk","indexes":[{"name":"strapi_transfer_token_permissions_token_lnk_fk","columns":["transfer_token_permission_id"]},{"name":"strapi_transfer_token_permissions_token_lnk_ifk","columns":["transfer_token_id"]},{"name":"strapi_transfer_token_permissions_token_lnk_uq","columns":["transfer_token_permission_id","transfer_token_id"],"type":"unique"},{"name":"strapi_transfer_token_permissions_token_lnk_oifk","columns":["transfer_token_permission_ord"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_token_lnk_fk","columns":["transfer_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_token_permissions","onDelete":"CASCADE"},{"name":"strapi_transfer_token_permissions_token_lnk_ifk","columns":["transfer_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"transfer_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2026-03-30 03:55:52.113	2fa00e09eb8adf73068844cb7800c4b9e659efa460e46bb52439193a994a5a64
\.


--
-- Data for Name: strapi_history_versions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_history_versions (id, content_type, related_document_id, locale, status, data, schema, created_at, created_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- Data for Name: strapi_migrations_internal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_migrations_internal (id, name, "time") FROM stdin;
1	5.0.0-rename-identifiers-longer-than-max-length	2026-02-09 15:13:35.927
2	5.0.0-02-created-document-id	2026-02-09 15:13:35.966
3	5.0.0-03-created-locale	2026-02-09 15:13:36.003
4	5.0.0-04-created-published-at	2026-02-09 15:13:36.043
5	5.0.0-05-drop-slug-fields-index	2026-02-09 15:13:36.079
6	core::5.0.0-discard-drafts	2026-02-09 15:13:36.113
7	5.0.0-06-add-document-id-indexes	2026-02-09 16:24:56.459
\.


--
-- Data for Name: strapi_release_actions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_release_actions (id, document_id, type, content_type, entry_document_id, locale, is_entry_valid, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_release_actions_release_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_release_actions_release_lnk (id, release_action_id, release_id, release_action_ord) FROM stdin;
\.


--
-- Data for Name: strapi_releases; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_releases (id, document_id, name, released_at, scheduled_at, timezone, status, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_sessions (id, document_id, user_id, session_id, child_id, device_id, origin, expires_at, absolute_expires_at, status, type, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
86	mrphos9ba644m127svtolhcp	1	6160daa28af44b886a5558fdba707465	c32a7b51405d82e648db7715a1d61cfa	66632e56-6e80-46e3-9597-d14ca5382f58	admin	2026-03-24 08:56:54.961	2026-04-23 06:56:54.961	rotated	session	2026-03-24 06:56:54.961	2026-03-24 07:37:46.241	2026-03-24 06:56:54.962	\N	\N	\N
88	c2sap8yad5ldjrhhh0j7rph0	1	935b5c453350b0d8b65ad647454c154a	\N	4c8476d3-37fc-47e6-9256-6ac74fed33c5	admin	2026-03-26 03:39:14.955	2026-04-25 01:39:14.955	active	session	2026-03-26 01:39:14.955	2026-03-26 01:39:14.955	2026-03-26 01:39:14.956	\N	\N	\N
89	ngv3nrkghew9ml2kjw8tqmej	1	0a9adc4ec90cabaecd79ea389f931524	\N	4c8476d3-37fc-47e6-9256-6ac74fed33c5	admin	2026-03-27 03:31:22.743	2026-04-26 01:31:22.743	active	session	2026-03-27 01:31:22.743	2026-03-27 01:31:22.743	2026-03-27 01:31:22.757	\N	\N	\N
91	ttxk8dfe3d7qvuuac3lws8al	1	1882cc07b96a85ca6c2527c6e3669367	\N	e67ae3b7-5996-4462-b41d-3426da2fc102	admin	2026-03-28 04:45:49.483	2026-04-27 01:55:55.911	active	session	2026-03-28 02:45:49.484	2026-03-28 02:45:49.484	2026-03-28 02:45:49.487	\N	\N	\N
93	cmjj36cbcf5vcnqiodm47f5f	1	cd84c58ae8ab179c23e4a317868bd8ff	bc33059b3ab8a3a502eb328d4cd3b18f	e67ae3b7-5996-4462-b41d-3426da2fc102	admin	2026-04-06 11:09:23.52	2026-05-06 09:09:23.52	rotated	session	2026-04-06 09:09:23.521	2026-04-06 10:02:02.384	2026-04-06 09:09:23.522	\N	\N	\N
87	wrmq0a9p4yxrxb2skjp0qq9n	1	c32a7b51405d82e648db7715a1d61cfa	\N	66632e56-6e80-46e3-9597-d14ca5382f58	admin	2026-03-24 09:37:46.232	2026-04-23 06:56:54.961	active	session	2026-03-24 07:37:46.232	2026-03-24 07:37:46.232	2026-03-24 07:37:46.232	\N	\N	\N
90	pe2r0egxjb0pqldt6ppf0xvm	1	f88b92a539d91ce4c923a9f4658d718e	1882cc07b96a85ca6c2527c6e3669367	e67ae3b7-5996-4462-b41d-3426da2fc102	admin	2026-03-28 03:55:55.911	2026-04-27 01:55:55.911	rotated	session	2026-03-28 01:55:55.911	2026-03-28 02:45:49.503	2026-03-28 01:55:55.912	\N	\N	\N
92	uyislk0gezt78s5ocdjoa9dr	1	56edd242fa03967ab362248097074eaa	\N	e67ae3b7-5996-4462-b41d-3426da2fc102	admin	2026-03-30 06:02:46.894	2026-04-29 04:02:46.894	active	session	2026-03-30 04:02:46.894	2026-03-30 04:02:46.894	2026-03-30 04:02:46.895	\N	\N	\N
94	urut8nm9lbw3oq6eawebdn3b	1	bc33059b3ab8a3a502eb328d4cd3b18f	\N	e67ae3b7-5996-4462-b41d-3426da2fc102	admin	2026-04-06 12:02:02.36	2026-05-06 09:09:23.52	active	session	2026-04-06 10:02:02.361	2026-04-06 10:02:02.361	2026-04-06 10:02:02.363	\N	\N	\N
83	zf57jgnkhnvpib3k1cegu4qi	1	6c7dd7646688ee4695322a47817c8c5b	\N	66632e56-6e80-46e3-9597-d14ca5382f58	admin	2026-03-23 11:42:10.16	2026-04-22 09:42:10.16	active	session	2026-03-23 09:42:10.16	2026-03-23 09:42:10.16	2026-03-23 09:42:10.161	\N	\N	\N
85	mfuxw0vr6qyjt76mkug54ld7	1	8885013c25e7762b1834492b666269a7	\N	66632e56-6e80-46e3-9597-d14ca5382f58	admin	2026-03-24 03:11:04.724	2026-04-23 00:28:44.195	active	session	2026-03-24 01:11:04.724	2026-03-24 01:11:04.724	2026-03-24 01:11:04.726	\N	\N	\N
84	w8inpvsmpufafwpnc4stwsu5	1	c8591adceb6b9defa265eef85eb34369	8885013c25e7762b1834492b666269a7	66632e56-6e80-46e3-9597-d14ca5382f58	admin	2026-03-24 02:28:44.195	2026-04-23 00:28:44.195	rotated	session	2026-03-24 00:28:44.195	2026-03-24 01:11:04.739	2026-03-24 00:28:44.196	\N	\N	\N
\.


--
-- Data for Name: strapi_transfer_token_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_transfer_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_token_permissions_token_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_transfer_token_permissions_token_lnk (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_ord) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_transfer_tokens (id, document_id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: strapi_workflows; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_workflows (id, document_id, name, content_types, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_workflows_stage_required_to_publish_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_workflows_stage_required_to_publish_lnk (id, workflow_id, workflow_stage_id) FROM stdin;
\.


--
-- Data for Name: strapi_workflows_stages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_workflows_stages (id, document_id, name, color, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_workflows_stages_permissions_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_workflows_stages_permissions_lnk (id, workflow_stage_id, permission_id, permission_ord) FROM stdin;
\.


--
-- Data for Name: strapi_workflows_stages_workflow_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_workflows_stages_workflow_lnk (id, workflow_stage_id, workflow_id, workflow_stage_ord) FROM stdin;
\.


--
-- Data for Name: student_documents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student_documents (id, document_id, name, url, date, type, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
60	za20766aj988ufb8stij186j	ĐỨC.jpg	data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEAZABkAAD/2wBDAAUDBAQEAwUEBAQFBQUGBwwIBwcHBw8LCwkMEQ8SEhEPERETFhwXExQaFRERGCEYGh0dHx8fExciJCIeJBweHx7/2wBDAQUFBQcGBw4ICA4eFBEUHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh7/wAARCACnAHcDASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD6/msZZZC39pXqAnO1CgA/8dpn9mA/ev79v+2+P5Yq/RQBnnSLduHuL5h73cn9DSnSLIjDG6b63cv/AMVV+igDOOiacSSY5jn1uJD/AOzUHQ9KPW13fWRj/WtGigDN/sHRiMHTrdv95c/zpf7C0TvpFgfrbqf6Vo0UrId2UF0XRk+7pNgv0tkH9Kmj0+wj/wBXZWyY/uxKP6VZop3EIqqowqgD2FLRRQAUHgZoooAium2W7MQSBjgfWiluE3wsmcZxRSAkFFA6UUwCiiigAJABJIAHUmvJ/ib8dfCfhCWSytpP7Vv0yGSFv3aH0Ld/oK86/a/+NLeH0Pgrw/cFLuT5b6dDgoD/AAA/TrXx3qesXl42LSOW4cn5iFyM+9dVLD3XNLYxnUd+WKuz6W1z49+LtblZ7a/NhAT8scBCn9Of1rKf4ufESzXzoPEV4yn+Bjvx+dfO0U/ihQDb2V4gU87Yia29GHjG8+WHSruYtxh1Kj8a6OWiuxjy4jsz6Y8FftTX9jcraeLbBb2Mn/XRKI3Ue+OD+lfRHw9+InhnxxYi40a8xJ/FBNhZB+Gea+BtM+EnjLXI2uDbx2jgZxkj+tR+F7nxF8M/FkdzcxXEN1bPlN53Iwzxj2+lYSp0p6QeppetTV6kdD9K6K4P4J/ESy+I3hQalDH5N3CwjuYf7rY6j2Nd5XK007M3TvqFFFFIYEZ60UUUAA96KRen4n+dLQAUE4BPpRQwyCD3oA/NTxzp934++OWo2yswE97NJKxz8qBjnH6V7H4Z+F2j6XaxR+SrlR1I61y/w+0mS0+OPiXzIz+4lnXkdP3uP6V7jbI5UcYpY6q7qCeh6GXUo8vMzAtfCelwDC28Y/4CK0rXR7CD/VwIv4VqtCSM55pgHzdRXnHrcqL+jpFCu0IvPXArj/jR4ItPE/h2eSGILfQoXhdV5yB0+ldjaRLkNuH51dYERkMQcjFawnKLTRy1qcZXTPCP2Jddu9O+IEugkuIbyFxKjDGHTkH+Yr7Ur5F/Zs0Ew/tCas4j2x2aTvwMAZbA/nX11Xo1XeVzwYrl0CiiisygooooABRRRQAUUU2ZxHE8hBIRSxx7UAfLXjfSb3w78T/G17puntc3Vy0MtuoHUSAkn6A5/KvNdd1n4v2KtKr2Fup+4ssyjFfQGvatPr19daulstu7xJDGMZO0biCf++q8c8c/DY6/p9z9rv7iW9mkDLM4z5YH8KjoAfzrnlXjKZ61PC1IQs910uVPAnjHxnOoXXI0nYnG6Egj9K77UtQvo9OM0SMz44B9a5r4d+BJdFKkFtmFUKfUdW/HivTzpS3VnJEq4bbx6VySblJ2PQpq0Fc+efE/iL4g3F99lj1yw0uIngvLtOK6f4e23jw3EM8niW21BcguFl3Ail8a/CdL/Vo5rx52Hn+YGTB44+TntXbeD/BNppmofbdPMtu0gHmRLgR/gvaun2lo26+hySo3nd7ep3vwD0Qw+LvF+tugBlmit1OPRAzfzFexV5J4bvtQ0TxHa2tvKPsd/eL5yFc5yoXP14r1utqdRT+R5mIoypNN9QooorQ5wooooAB3opAME+5paACkYBlKsMgjBFLRQB5Hqmm/2XqVzYmPEMbZiOOqnpWRcQR8uwA5z0r1Lx3YpPpJuQn72Ej5v9k15PqbOEZAa8+rHkdj38JV9tG73K8Fz5srrGuVTAY9hW7pc8CRuhmUN/vd64HWrB7qzNrFdzQ7juk8piC34jkVSOj3N6rWUl/dqOCSshU/mMZrNS6ne4RkrXO5ur9f7SktZlAPXHXI9RV6ycRDcnQ1zkFhGY4QJ3eaIABnPLVtWKuSEbvxQ20zKajbQ63wVo73viE6rcDMFsq+UOxfB/ln+VeiVT0WzjsdNht0XGFBb3Y9TVyvQpQUYnzuIrOrO/QKKKK0MAooooAB3ooHeigAooooAhv7dbqymtm4EiFc+leK+KrWazeaJkxIpIx717hXA/Fn7HEtszKv2iQNn1KjFc+IhzRud2BquNTl7ngusW2vPuUX8NvATnESHdj0Jzz+FYtvZXskiwv4kmCg8BYjx+Zr0C9Fod2/BB7ZrEgh01b0ObVDzxivPU7dD6SnVUYjrCy1+CaCSTVormJTjBiw2Pc55NepeAdNfU9URpAfKiw8h/kPxrkoJ7VY/kC47Ada734U6zANVudGYKsskIuF+gO3FbUlzTVzzsZUaptxPSaKKK9I+eCiiigAooooAKKKKACimSyxxj53AqlNfqX2Rgsf0ppNibsXXkC9OTXiX7Q15PYa7oF+SRbTebaSHsrNhlP/AI6RXriO73HzHhR+tcd8ZPDreJfBt1ZxLm4VPMgOOQ68r+ooqQvFo0w9TlqKTPGpZRKpB59KpR28TXIzM4Gc4zWfol1MYlgmUiVBhgetXVkIckgYzkc14Ek0z6uKTN2OVIsRIABjmtP4L3Ump/FLVbmMlrezskt1YdC5bc39K4XxDqz21o4jGZnGFx9K9W/Zz8PXGjeHfPu0xdXZM8nr83QfliuzBRvK55+YyUaVj2iOQ8Z5BGc1KCD0rOjlLxHrmNqe12yAEAOv616lr7Hz3M0X6KrQ3aMAXBXPrVkEEZBBFTYpO4UUUUDCoppgik5pZpVjGTWfcuXEiZyQcg1SQmMu2WTD9x1qsjbXJApqliGz1pY13GtL2FYt28iJbPNKwVASSx7AVzD+NrG41eLTobSVonfZ57EAc9CB6Ve1iCW7tha+YRF3Ud/rWKdEii5RAGHOe9Jq40kjjfiF4Nh07Vn1aBf3NzISQB91j1H0NcjJZwq/Svc1mSaD7Lq0az2rLtYsuSD2/wD115X410WTR9XMMWXt5vmt367h6fUV5uKw9nzI9zAYtSXJLdGPoXhyLXtWSAplUIaQnsuen4163Fr9r4du0s2s5JUVBueMj5fbHesfRdObRdKiiiAW+lAec45Ge1WItOklYuwJJ5JPeujDUfZxOLG4j2s7dEd/pWpafq1t5tlMGyMFDww+oqvIzRvjnrgiub060jtGVyjRuOcityUmSINuJPBJ9a6E7M89xLnmjCBuO9WoJxG5ySBwMVk3J4Q9CBUyTbnUtwANxqnZk8p0AcFgPUZorJhu2Qh+oOeDRWbRaLWqPjYucZqhC5Z8ZywGKs6+4RIiexrBiuBHq+wtw/T3BpodjSxhmpVIA60si/Nn1FRng5q7iGSYLdajdAc1IwB5ppAJNAEDomCCMg9aiutOsb1LaW6iWX7O3mRAjo46Gprlwqt7Cr1qo+wRSYBO3JB96LAnYxbi3H2pnK5PXNWIlXggDpVuYo7t8tVyhU8dPp0oYXHooORirA4XGKqxcEZq1EwDYb1qQGXChivGG9KjlkAbZjnAq/PECqvgGsS+u1i1WUEfJFCGNNISNCGUMCp42nFFVdLfdZiSQZLEk5opWHY3PEQLWuPQ5H61xmou6vbXS/ehlUN/u5ru9VieW3IRSx9BXI6hp96pLLZzsM8gRk8UkUbaNvQegqKRvmxmpIYLoRgeRIOP7poNlck58p/yqiSAnPaj86mWxuy2TE2KmGn3WP8AVj8xTbQGXdDBwe4xWpaKP7OhyP8AlmP5VHc6ZduBsQZ7/MK0LW0lS3jR8AhQCM0NqwmjHkULI2elOjAI5FX7jT5nclduPrToNNkXPmMmPTNK6AylUFzx0ps33N3cVurp0Y5PB9jTZNLiYEB2GfYUuZDMyC6JgAIrndc/4/JFB+aZ1B+gArtE0mFRgux/Csi88MXFxqguvtMQjX7q4OaakgSKqfJYxADFFW7aznn1SewksrqCG3Rdl04Xy5ieoXBzx7gUUXQHT0UUVmMKKKKACiiigAooooAKKKKACiiigAooooAKKKKAP//Z	25/3/2026	image/jpeg	2026-03-25 08:51:31.472	2026-03-25 08:51:31.472	2026-03-25 08:51:31.467	\N	\N	\N
\.


--
-- Data for Name: student_documents_student_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student_documents_student_lnk (id, student_document_id, student_id, student_document_ord) FROM stdin;
76	60	213	1
\.


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students (id, document_id, stt, "group", class_code, class_name, card_number, student_code, id_number, first_name, last_name, full_name, gender, dob, pob, ethnicity, nationality, company, address, score, photo, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, phone, is_approved, notes) FROM stdin;
217	gq490u53dvyxc7bqrf1ipluc	0	\N	BTC	Huấn luyện nghiệp vụ cơ bản		068093002639	068093002639	KHÁNH	TRẦN DUY	TRẦN DUY KHÁNH	Nam	1993-02-13	Lâm Đồng	Kinh	Việt Nam	\N	tổ 14, phường An Biên, Hải Phòng	\N	data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEAZABkAAD/2wBDAAUDBAQEAwUEBAQFBQUGBwwIBwcHBw8LCwkMEQ8SEhEPERETFhwXExQaFRERGCEYGh0dHx8fExciJCIeJBweHx7/2wBDAQUFBQcGBw4ICA4eFBEUHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh7/wAARCACaAHADASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD7LooooAKKKKACiiigAorK8SeItG8O6fNe6tfwW6RIXKs43sPZepryS0/aV8GS6gbae2uIIgcCUuG49SAOKqMJS2E2ke4UVheFvF3h7xNbJNo+pwXBYZ8sMN4+ordpNNbjCiiikAUUUUAFFFFABRRRQAV4f8dvj1ofhDT7nStBvEutdEnlMAuVg9TzwTW1+078Q18B/Dyf7LKV1XUQYLXb1UfxP7YFfDugeDvEHjO4fUd5VGYkzSAksfUetaJQjHnmxxhOpLlgrsq+J/iF4l1vWZNR1DUri5kdvm8xs5GemK5ptSmNyzlRktknpmvUX+Ct75H/ACED5o7CPgn86r/8KV1hsk3kIJ5GUNEcdR/mNnl2I6xIvhX8T9X8MX6SWPlRzKRn+64/lmvun4PfEbR/H/h6K6tblPtyIPtMPQg+oHoa/O7xj4N1nwwy/a4vkb7sqj5eP612X7NviSfS/iPouLxrdWuVjlOSFIPByBWt41ocyZzOEqUuWSsfozRSIwdAwIIIyMUtcxQUUUUAFFFFABRRRQB8XftKapJ46+Olv4Y8wPZaWfKIA6d3/Xiu50HSbTT7SK3t4FjjVcBVGK5Lwtor33xX8X61cqGI1GWJW687iTj9K6jU/EbabqP2KDSbm52j/WIvGawxV5y5Vsj2MAo0qfM92dDHZoUyYxmnLaRA/dzVDQvEA1BMyWj2r5wVc81p3F/HBG0rYO0dBXH7OJ6PO2N1Tw3pWtaa9jqdkk8UgwQw6V4j8QvhRH4N1G08S+HQ720D7p4W5Zcdwa9XT4hzQymEeHr2Zc4VwRj8q3ppIPEXh+eBonTz4yrI4wVOK7KV6dmjzq8VVunuen/DbW4PEXgfStXgk3rPbruJGCGHBFdFXlH7LjSxfDiTTZuHsb+aDBHIw1er10S3PHtbQKKKKQAOlFA6UUAFFFFAHzh4V017LV/EyzIFc6zOeBwRkVk+OPGH9gwyzQaLc3ohYKzjjJP90dSPevSNSsbe21bUoYWJ/wBKdmz15x/SsHWbGK4QKyrnua5Kk7yu0e/h6doKKZwvhvxDLq97HI2nTWinG4NjAyMjmuo18CKxWaLc2TzjqAKLTR7W1A8tBljuPua6FbG1lsY1deucmuX2fNeyO9zUUmeX2Pj6wg1yDSotD1Gd5VLBgo6DvyeK9I8Pava38QltVkVG6q6FWU+hBrHXw/b2epebGN6k5B7iutsoIfJDBQGx1ArWGnupWOSqteZu5r/Amwms7PxDLISEn1aVo17AcV6RXFfCxJlXWGIH2d7oGM++wbv1rta7oS5lc8LEQ5KjiFFFFUYhRRRQAUUUUAea+KtMex1u7myzJcv5qkj1HIrmdTdYo9+MnFeqeNrczaI8oXJhYP8Ah0NeQ6vOI0aR+QAeK4q65We/gantYpvoYo1cWkii4gmlklcgBFyFGOpPYVZj8UQy2n2Mwyl5Fby2VCQDjuegrk9R8X6fbyESWeoTSLksEgYL+BNN03xxpaxMJLLUI4weJfIJUemQOa54qR6rp3jzWO00W+kljUXKlZBwQTzXS28oCgqDjHFcLoesQ6rGtxEpyG25xtz+B6V6B4MtP7R1S3heMtGDukHbaOv+FOk9eU48S0k5HeeA7I2Xh9FbG6WR5Tg+p/8ArVvU2NEjjWONQqKMAAYAFOr04qysfNVJ88nLuFFFFMgKKKKACiiigBs0aSxPFINyOpVh6g14f4ltI7XWLq2ByInKgH0zXsHiXWbXQdJfULrLAMsccYODJIzBVUfUkV4z8QXlbxDdSr8khkOQK5cWrRTZ6eWN+0aRyviCxa5g2rhG/hPcVm+HdLure6aSWaOQdgV6Ua3f6ikY8lQ4U84POKztL1fUZrzbHbsE9+K8tuXRn0aqNRsdtGiIQygbh1wOteyfDHTo7bw+t6TuluiST6KCQBXh1i05dRIQSeoXpXtfg7W7Wyg0bQbr93Nd2zy2zno5VjuX64IPvXZg0nI8XM5S5F2Oxooor0jwwooooAKKyvEHiTQtAh83WNUtrNewkf5j9B1NeV+Nf2iPCWjwsmjRy6rcdiQY0H58n8qqMJS2QnJLc9oZlVSzEKoGSSeBXn3jj4yeA/Cccgu9XS7uUz+4tfnbPoT0H518k/En42eKPFU0iy6lJbWjZ22sBKoB6cdfxrx7VdSnuJDukZueSa3jQX2mZ+0u7I928RfGzUvHPxS0CS5dbTSLfUIzFaq3yKNw+Zj3PvX0h4x0RtTs11Swj8y4CfvEB5ceo96/Ob7RIkqyJnKHIPpX6IfBXxEuveB9Kvy25pbZd3+8Bg/rSxFKM4W6G2HrSpy5ovU8u1RGXJj+WQHlSO/pVfTGnyRMY0H+yK9k+IXgqw1a0l1K3lhsrtBuaR22xyezdgfevLNC8Ha1qeqCz+WCNuWnaVWAX1UA818/WwdSMrRV0fS0cwozheTszofBelSa1qYt04iTBlcchR6fWk/am1EaHY+GEsZDb3EMsjxMhwyBQo4P5V694W0Ox0HTIrOziCqo5PVmPck+tfKH7ZmvvL8SLSwRzssLVQRnuxyf6V7GAwypb7ng5hi/bvTY9P8Ah5+0Pai0htPF1u+5cKb2EZyPVk9fpXs3hnxr4V8SoDouuWd2xGfLWTDj/gJ5r88rG9SeIMjZHcelIb6ayuUntpniOcqythhXfLDReqPNVZrRn6XUV8O+Cfjl410Exxtq0l7bIRmG6xIMemTz+te6eGf2jfC9/wCUmqafd2DMBudSJEB/niueWHmttTWNWLPlTx/4qvL3xHqLT3csxNzIA0jckbj1rir7UWk/jyB2zUfiy4D+ItQbCoPtUhwOw3E4/WsZ5dyjORzx710x2RnKOpJc3LSAqcA4I69KoktnO4nj6mpHkC4JHY1C3Lkbc5HUdCKlu7uWlow5LksSDz3r7J/Y511bjwHLaStj7DMykk5wDzXxsDxuwue4xX0B+yJqQj1W909jhGeN9vTIO4H+lEtUVE9H/aE1jxZfFXQFPDaYxHH97d/ff1Hp6V5b4Svr221Vbq2uJYpYjuV0bBB9q+sBp9vfW01lfQpJC0bIysOGWvm/wvDY2Hj9oH2myW8Eca4ySu7C5OfpXRQkrWtsYYiL3TPpD4T+LdT1jTFh8QQLDfD7jjgTL6+zY6ivjj9ovVxq3xW1y5RiQtx5QHsoA/pX2TOlvb6XNIkSp5cfHGMGvgPxpem98SajdKf9dcyPz6FjWELXbRclokZ1tczQsTE5XPTmnW8jbmneQyO3Uk/5xVNdxfrxnuKmLDKKBySc8dq0RnKKNCO52t17Zq9bakysAG/M1jYxyOh5pyOVPIOB+lVciwniM51u5JI+Z2I9OprNPOeCBjg1c15s6hJk5+c9B7mqOScbuBj1rFbHQ9xjLkc5JqIKQ2QN2OMZqXOJDjqeP0qJmKjr75JpSWo79hSoxt7Dkk16J+z9rR0f4h2SscLcnyWB9c5H6ivO3bI2k5PYZ6/pWn4WvRY69Y3i/wDLGZJM/Q0tQ2PvzxrrB0zwpqd8rbZFt9keOu5uB/OvmmykYamGLfNwc+9ewfFrUlk8G2YjOVunR8+oC5rxeFsXe73rsw0bK5z4mWtj6A1PxET8Hr3VJJv3kdmQzk9WAI/nXxFeuzOWJ4J5NfQnjfXRb/Aq7tA/zTXixAe2dx/lXzs5UcFs5NYySjJmid0rjYnIKjgipIyWmzxgcdaiDgZI7HIANETgDOevNTfUejReGB1x+FRs4CHJz3qIyBVx3xUU0mIyc5Oe3ehu4RimS6yrm7bO7huKrFfmLEHGOmc5r7v1rwd4RHTwtoY/7h8X/wATWBd+FPC6qceG9GH0sY//AImsZS5UbRWlz4twWYEqenamMucCvrXV/DXhxEOzQNKX6WcY/pXC63o+kxwzmPS7FCBwVt1H9KdP95qZSlySsjwHYejLzj060+3QiVCowPpXp9/Y2Sytts7ccdoh/hWf9ktRJxbQ/wDfsU5NxSN1C56pq2vf2n8PPCWXy7WjB+e6Hb/SuaT75brTtMRf+Ef0tdo2r5u0Y4Hz9qusiAHCKOD2rqpVPdRx1ad5bnE/EDXmk0aPRF+6t0ZmA/3QB/M1wJ7n1712HiOOM6tc5RT06j2FZflR8/u0/KuWpVtI6KdK6MCWILgMCQTSEgDoRg4IHet1kTK/Iv5VXmjj2t8i9PSoVV3sCg9rmaCxOAMZ5570zB8xRjIz0/CtGJEIXKKflz0pLsAMpAANJT6EuOiZ/9k=	2026-03-25 08:02:56.118	2026-03-25 08:53:05.507	2026-03-25 08:53:05.503	\N	\N	\N	0703689102	t	\N
218	sblc2xl75ncwdrl28xc3jdtv	0	\N	BTC	Huấn luyện nghiệp vụ cơ bản		034087013437	034087013437	LÂM	ĐẶNG THÀNH	ĐẶNG THÀNH LÂM	Nam	1987-07-17	Hưng Yên	Kinh	Việt Nam	\N	Trà Lý, Hưng Yên	\N	data:image/jpeg;base64,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	2026-03-25 08:04:31.888	2026-03-25 08:53:06.162	2026-03-25 08:53:06.159	\N	\N	\N	0868811289	t	\N
219	r5pup9gk5cx612g98qw4h5bz	0	\N	BTC	Huấn luyện nghiệp vụ cơ bản		066088009741	066088009741	NHÂN	PHAN TRỌNG	PHAN TRỌNG NHÂN	Nam	1988-02-01	Đắk Lắk	Kinh	Việt Nam	\N	26 Đông Trung Hành, Hải An, Hải Phòng	\N	data:image/jpeg;base64,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	2026-03-25 08:11:37.936	2026-03-25 08:53:07.551	2026-03-25 08:53:07.547	\N	\N	\N	0935994080	t	\N
212	dmojoh5ej760oxnex78yk1nq	0	Huấn luyện nghiệp vụ cơ bản	BTC	Huấn luyện nghiệp vụ cơ bản	068086003981	068086003981	068086003981	ĐÂY	VÕ TẤN	VÕ TẤN ĐÂY	Nam	1986-08-29	Lâm Đồng	Kinh	Việt Nam	\N	xã Đạ Huoai 2, tỉnh Lâm Đồng	\N	data:image/jpeg;base64,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	2026-03-25 07:50:59.169	2026-03-25 08:53:59.327	2026-03-25 08:53:59.323	\N	\N	\N	0906044664	t	\N
214	pi7fbt7s3sq50r7lul9l6vtm	0	\N	BTC	Huấn luyện nghiệp vụ cơ bản	031092000534	031092000534	031092000534	HÙNG	PHẠM TUẤN	PHẠM TUẤN HÙNG	Nam	1992-04-16	Hải Phòng	Kinh	Việt Nam	\N	Xuân Đài 1, An Trường, Hải Phòng	\N	data:image/jpeg;base64,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	2026-03-25 07:57:38.106	2026-03-26 07:40:36.471	2026-03-26 07:40:36.465	\N	\N	\N	0359712914	t	\N
215	mmo7fd3tbuk48tfntqfo8ipy	0	\N	BTC	Huấn luyện nghiệp vụ cơ bản	031204009659	031204009659	031204009659	HÙNG	GIANG VĂN	GIANG VĂN HÙNG	Nam	2004-05-16	Hải Phòng	Kinh	Việt Nam	\N	15/751 Đông Hải, Hải Phòng	\N	data:image/jpeg;base64,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	2026-03-25 08:00:01.699	2026-03-26 07:40:52.305	2026-03-26 07:40:52.301	\N	\N	\N	0362944003	t	\N
205	m9k0wt5h83m9b9i31m6grlx1	0	\N	PFSO	CÁN BỘ AN NINH CẢNG BIỂN		049202010438	049202010438	QUANG	TRẦN VĂN	TRẦN VĂN QUANG	Nam	17,03,2002	Đà Nẵng	Kinh	Việt Nam	\N		\N	\N	2026-03-24 06:29:44.696	2026-03-28 02:48:02.862	2026-03-28 02:48:02.827	\N	1	\N	0349357388	t	\N
193	swx3o3snqjk9ca2rcjk6kkvu	0	\N	PFSO	CÁN BỘ AN NINH CẢNG BIỂN		038086018793	038086018793	ĐỨC	TRẦN CÔNG	TRẦN CÔNG ĐỨC	Nam	20,10,1986	Thanh Hoá	Kinh	Việt Nam	\N		\N	\N	2026-03-24 05:47:07.11	2026-03-24 06:42:50.624	2026-03-24 06:42:50.616	\N	\N	\N	0934111261	t	\N
194	v6xmnou3r7adk3wa0frzz439	0	\N	PFSO	CÁN BỘ AN NINH CẢNG BIỂN		045096006453	045096006453	ĐỨC	LÊ HUỲNH	LÊ HUỲNH ĐỨC	Nam	12,09,1996	Quảng Trị	Kinh	Việt Nam	\N		\N	\N	2026-03-24 05:47:54.189	2026-03-24 06:42:51.213	2026-03-24 06:42:51.21	\N	\N	\N	0964387585	t	\N
195	svf2g9rno8sj4lsilizi88v4	0	\N	PFSO	CÁN BỘ AN NINH CẢNG BIỂN		045096004532	045096004532	ĐỨC	HÀ ĐÌNH	HÀ ĐÌNH ĐỨC	Nam	30,05,1996	Quảng Trị	Kinh	Việt Nam	\N		\N	\N	2026-03-24 06:15:46.751	2026-03-24 06:42:51.976	2026-03-24 06:42:51.972	\N	\N	\N	0968154479	t	\N
196	wx4bel1092nvoeovtzrg7bg2	0	\N	PFSO	CÁN BỘ AN NINH CẢNG BIỂN		036082025190	036082025190	DŨNG	TRẦN VĂN	TRẦN VĂN DŨNG	Nam	11,02,1982	Ninh Bình	Kinh	Việt Nam	\N		\N	\N	2026-03-24 06:16:49.047	2026-03-24 06:42:53.47	2026-03-24 06:42:53.464	\N	\N	\N	0983148758	t	\N
197	i6kg8o7ldsk5c2qmzmwvyojt	0	\N	PFSO	CÁN BỘ AN NINH CẢNG BIỂN		045191008082	045191008082	HẰNG	TRẦN THỊ	TRẦN THỊ HẰNG	Nữ	03,09,1991	Quảng Trị	Kinh	Việt Nam	\N		\N	\N	2026-03-24 06:17:36.845	2026-03-24 06:42:54.04	2026-03-24 06:42:54.035	\N	\N	\N	0916348345	t	\N
198	tazho8tdm1uvz3ctpngutew1	0	\N	PFSO	CÁN BỘ AN NINH CẢNG BIỂN		045094004558	045094004558	HIỆU	TỪ ĐỨC	TỪ ĐỨC HIỆU	Nam	03,04,1994	Quảng Trị	Kinh	Việt Nam	\N		\N	\N	2026-03-24 06:18:23.105	2026-03-24 06:42:54.809	2026-03-24 06:42:54.806	\N	\N	\N	0986887494	t	\N
199	himete39yfvqjggb3qioh4yw	0	\N	PFSO	CÁN BỘ AN NINH CẢNG BIỂN		045093010371	045093010371	HÙNÌ	NGUYỄN ĐINH	NGUYỄN ĐINH HÙNÌ	Nam	06,01,1993	Quảng Trị	Kinh	Việt Nam	\N		\N	\N	2026-03-24 06:19:24.922	2026-03-24 06:42:56.101	2026-03-24 06:42:56.097	\N	\N	\N	0797719888	t	\N
200	lac31ldp1kjepjwib8ecgtsp	0	\N	PFSO	CÁN BỘ AN NINH CẢNG BIỂN		045200008049	045200008049	KIÊN	TRẦN MẠNH	TRẦN MẠNH KIÊN	Nam	03,02,2000	Quảng Trị	Kinh	Việt Nam	\N		\N	\N	2026-03-24 06:21:31.908	2026-03-24 06:42:56.724	2026-03-24 06:42:56.718	\N	\N	\N	0913485369	t	\N
201	liqrw1cyufc2wvmslg6v1rzz	0	\N	PFSO	CÁN BỘ AN NINH CẢNG BIỂN		045093004300	045093004300	KIÊN	TRẦN BẢO	TRẦN BẢO KIÊN	Nam	03,12,1993	Quảng Trị	Kinh	Việt Nam	\N		\N	\N	2026-03-24 06:22:20.817	2026-03-24 06:42:57.912	2026-03-24 06:42:57.909	\N	\N	\N	0985914126	t	\N
202	fswx8wwbvlm1qs9hd9ztbusu	0	\N	PFSO	CÁN BỘ AN NINH CẢNG BIỂN		049085004743	049085004743	LỢI	ĐOÀN TẤN	ĐOÀN TẤN LỢI	Nam	20,05,1985	Thành phố Đà Nẵng	Kinh	Việt Nam	\N		\N	\N	2026-03-24 06:23:22.484	2026-03-24 06:42:58.579	2026-03-24 06:42:58.577	\N	\N	\N	0908929075	t	\N
203	dr9ptor1dk4gs1y27jbdthv5	0	\N	PFSO	CÁN BỘ AN NINH CẢNG BIỂN		045088004194	045088004194	LONG	NGUYỄN VĨNH HẢI	NGUYỄN VĨNH HẢI LONG	Nam	21,10,1988	Quảng Trị	Kinh	Việt Nam	\N		\N	\N	2026-03-24 06:27:51.793	2026-03-24 06:42:59.245	2026-03-24 06:42:59.242	\N	\N	\N	0847088333	t	\N
204	ke2u8b6h1pd1z3jioc14c9hi	0	\N	PFSO	CÁN BỘ AN NINH CẢNG BIỂN		045096003641	045096003641	PHONG	NGUYỄN HỮU	NGUYỄN HỮU PHONG	Nam	28,09,1996	Quảng Trị	Kinh	Việt Nam	\N		\N	\N	2026-03-24 06:28:48.024	2026-03-24 06:43:00.454	2026-03-24 06:43:00.451	\N	\N	\N	0961927474	t	\N
206	dh4cds4n6xt7qpq8l2p4g45s	0	\N	PFSO	CÁN BỘ AN NINH CẢNG BIỂN		042095011413	042095011413	TÀI	NGUYỄN VĂN	NGUYỄN VĂN TÀI	Nam	02,02,1995	Hà Tĩnh	Kinh	Việt Nam	\N		\N	\N	2026-03-24 06:32:40.834	2026-03-24 06:43:01.787	2026-03-24 06:43:01.784	\N	\N	\N	0935432860	t	\N
207	ftq8na4d8bqy16lixwtqcu6k	0	\N	PFSO	CÁN BỘ AN NINH CẢNG BIỂN		045080004361	045080004361	TĂNG	THÁI VĂN	THÁI VĂN TĂNG	Nam	02,10,1980	Quảng Trị	Kinh	Việt Nam	\N		\N	\N	2026-03-24 06:34:30.273	2026-03-24 06:43:02.463	2026-03-24 06:43:02.458	\N	\N	\N	0846478959	t	\N
208	admqle37krp01uf1ig9mp6v3	0	\N	PFSO	CÁN BỘ AN NINH CẢNG BIỂN		038088005081	038088005081	THẮNG	VŨ VĂN	VŨ VĂN THẮNG	Nam	12,06,1988	Thanh Hoá	Kinh	Việt Nam	\N		\N	\N	2026-03-24 06:35:48.702	2026-03-24 06:43:03.114	2026-03-24 06:43:03.111	\N	\N	\N	0961840688	t	\N
209	jvgf7jbbybdpov4cwj40xv1q	0	\N	PFSO	CÁN BỘ AN NINH CẢNG BIỂN		045095004270	045095004270	TOÀN	NGUYỄN DUY	NGUYỄN DUY TOÀN	Nam	24,05,1995	Quảng Trị	Kinh	Việt Nam	\N		\N	\N	2026-03-24 06:37:01.197	2026-03-24 06:43:03.814	2026-03-24 06:43:03.807	\N	\N	\N	0796751645	t	\N
210	fi6q6id17qs87tm18gnvvi3m	0	\N	PFSO	CÁN BỘ AN NINH CẢNG BIỂN		034067008297	034067008297	VƯƠNG	NGUYỄN QUỐC	NGUYỄN QUỐC VƯƠNG	Nam	19,05,1967	Hưng Yên	Kinh	Việt Nam	\N		\N	\N	2026-03-24 06:40:32.073	2026-03-24 06:43:04.724	2026-03-24 06:43:04.721	\N	\N	\N	0918290246	t	\N
211	v6c06k6wd7yn08lsnojg9f2b	0	\N	PFSO	CÁN BỘ AN NINH CẢNG BIỂN		045092002587	045092002587	VƯƠNG	TRẦN CAO	TRẦN CAO VƯƠNG	Nam	01,01,1992	Quảng Trị	Kinh	Việt Nam	\N		\N	\N	2026-03-24 06:41:40.454	2026-03-24 06:43:07.147	2026-03-24 06:43:07.144	\N	\N	\N	0916427359	t	\N
192	haryd97ryk5ylmptn4v23foz	0	Cán bộ an ninh cảng biển	PFSO	Cán bộ an ninh cảng biển	045094006740	045094006740	045094006740	CHÍ	NGUYỄN	NGUYỄN CHÍ	Nam	18,07,1994	Quảng Trị	Kinh	Việt Nam	\N	KV5, Đại An Khê, xã Hải Lăng, Quảng Trị	\N	\N	2026-03-24 05:44:17.715	2026-03-24 07:40:38.008	2026-03-24 07:40:37.996	\N	\N	\N	0989579676	t	\N
220	qlw4upu42jlj1omj85xy9wii	0	\N	BTC	Huấn luyện nghiệp vụ cơ bản		035091000241	035091000241	THẮNG	NGUYỄN VIỆT	NGUYỄN VIỆT THẮNG	Nam	1991-04-30	Ninh Bình	Kinh	Việt Nam	\N		\N	data:image/jpeg;base64,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	2026-03-25 08:12:39.553	2026-03-25 08:53:08.129	2026-03-25 08:53:08.125	\N	\N	\N	0936856973	t	\N
221	c3g4dvnj23188nejlmzlzf7y	0	\N	BTC	Huấn luyện nghiệp vụ cơ bản		034089011946	034089011946	THƯỞNG	PHẠM XUÂN	PHẠM XUÂN THƯỞNG	Nam	1989-09-12	Hưng Yên	Kinh	Việt Nam	\N		\N	data:image/jpeg;base64,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	2026-03-25 08:13:38.79	2026-03-25 08:53:08.891	2026-03-25 08:53:08.888	\N	\N	\N	0981488887	t	\N
224	zc68rjk0m599hn643d2okpwc	0	\N	BTC	Huấn luyện nghiệp vụ cơ bản		038205012068	038205012068	VINH	LÊ THÀNH	LÊ THÀNH VINH	Nam	2005-08-01	Thanh Hoá	Kinh	Việt Nam	\N	Trường Lâm, Nghi Sơn, Thanh Hóa	\N	data:image/jpeg;base64,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	2026-03-25 08:51:01.962	2026-03-25 08:53:11.334	2026-03-25 08:53:11.331	\N	\N	\N	0978690861	t	\N
213	bwef00i4bl9ogk70lrm7ajjk	0	Huấn luyện nghiệp vụ cơ bản	BTC	Huấn luyện nghiệp vụ cơ bản	042097004307	042097004307	042097004307	ĐỨC	LÊ HỮU	LÊ HỮU ĐỨC	Nam	1997-10-01	Hà Tĩnh	Kinh	Việt Nam	\N	Kim Hoa, Hà Tĩnh	\N	data:image/jpeg;base64,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	2026-03-25 07:53:45.099	2026-03-25 08:53:12.178	2026-03-25 08:53:12.175	\N	\N	\N	0964869168	t	\N
216	qltoinof83eqnwf25tv6wpup	0	Huấn luyện nghiệp vụ cơ bản	BTC	Huấn luyện nghiệp vụ cơ bản	034095003257	034095003257	034095003257	HUYNH	TRẦN QUANG	TRẦN QUANG HUYNH	Nam	1995-04-11	Hưng Yên	Kinh	Việt Nam	\N	tổ 12, phường Trần Lãm, Hưng Yên	\N	data:image/jpeg;base64,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	2026-03-25 08:01:20.084	2026-03-25 08:53:14.396	2026-03-25 08:53:14.394	\N	\N	\N	0908492989	t	\N
222	o5xswajk88l27ejo5g38u19m	0	\N	BTC	Huấn luyện nghiệp vụ cơ bản	031087012414	031087012414	031087012414	THUY	NGUYỄN VĂN	NGUYỄN VĂN THUY	Nam	1987-06-14	Hải Phòng	Kinh	Việt Nam	\N		\N	data:image/jpeg;base64,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	2026-03-25 08:29:48.034	2026-03-26 07:40:45.464	2026-03-26 07:40:45.458	\N	\N	\N	0926004953	t	\N
223	cvo2y6zv9vnanyp2pkyl4df7	0	\N	BTC	Huấn luyện nghiệp vụ cơ bản	037085010532	037085010532	037085010532	TRƯỜNG	NGUYỄN VĂN	NGUYỄN VĂN TRƯỜNG	Nam	1985-04-09	Ninh Bình	Kinh	Việt Nam	\N	Tân Hoa, Tây Hoa Lư, Ninh Bình	\N	data:image/jpeg;base64,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	2026-03-25 08:49:57.804	2026-03-26 07:53:23.189	2026-03-26 07:53:23.184	\N	\N	\N	0917556996	t	\N
226	e2ifn6quguiymi3akwqnxt2c	0	\N	BLG	Cơ bản tàu khí hóa lỏng		034095003257	034095003257	HUYNH	TRẦN QUANG	TRẦN QUANG HUYNH	Nam	1995-04-11	Hưng Yên	Kinh	Việt Nam	\N		\N	data:image/jpeg;base64,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	2026-03-27 04:11:18.417	2026-03-27 04:22:26.986	2026-03-27 04:22:26.982	\N	\N	\N	0908492989	t	\N
227	sfd6qrr1wzkn4xrzi3hdwr4d	0	\N	BLG	Cơ bản tàu khí hóa lỏng		034087013437	034087013437	LÂM	ĐẶNG THÀNH	ĐẶNG THÀNH LÂM	Nam	1987-07-17	Hưng Yên	Kinh	Việt Nam	\N		\N	data:image/jpeg;base64,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	2026-03-27 04:12:32.866	2026-03-27 04:22:28.351	2026-03-27 04:22:28.348	\N	\N	\N	0868811289	t	\N
228	hib5vcvpfvr55ohvn0cvakye	0	\N	BLG	Cơ bản tàu khí hóa lỏng		035091000241	035091000241	THẮNG	NGUYỄN VIỆT	NGUYỄN VIỆT THẮNG	Nam	1991-04-30	Ninh Bình	Kinh	Việt Nam	\N		\N	data:image/jpeg;base64,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	2026-03-27 04:14:55.506	2026-03-27 04:22:29.439	2026-03-27 04:22:29.434	\N	\N	\N	0936856973	t	\N
229	hq2mk7daomp94i6uqzmb43eq	0	\N	BLG	Cơ bản tàu khí hóa lỏng		042097004307	042097004307	ĐỨC	LÊ HỮU	LÊ HỮU ĐỨC	Nam	1997-10-01	Hà Tĩnh	Kinh	Việt Nam	\N		\N	data:image/jpeg;base64,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	2026-03-27 04:16:55.511	2026-03-27 04:22:41.416	2026-03-27 04:22:41.411	\N	\N	\N	0964869168	t	\N
230	ho2fqltgpt2cd577kculh6gw	0	\N	BLG	Cơ bản tàu khí hóa lỏng		068093002639	068093002639	KHÁNH	TRẦN DUY	TRẦN DUY KHÁNH	Nam	1993-02-13	Lâm Đồng	Kinh	Việt Nam	\N		\N	data:image/jpeg;base64,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	2026-03-27 04:21:32.926	2026-03-27 04:22:43.004	2026-03-27 04:22:42.999	\N	\N	\N	0703689102	t	\N
231	pdb2mzgn36r9t56nbekarj2j	0	\N	BLG	Cơ bản tàu khí hóa lỏng		068086003981	068086003981	ĐÂY	VÕ TẤN	VÕ TẤN ĐÂY	Nam	1986-08-29	Lâm Đồng	Kinh	Việt Nam	\N		\N	data:image/jpeg;base64,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	2026-03-27 05:37:21.01	2026-03-27 05:37:21.01	2026-03-27 05:37:20.995	\N	\N	\N	0906044664	f	\N
233	mvbjbz7wnc35c6ltg5crmwe6	\N	Huấn luyện nghiệp vụ cơ bản	BTC	Huấn luyện nghiệp vụ cơ bản	022206015241	022206015241	022206015241	NAM	PHẠM HOÀI	PHẠM HOÀI NAM	Nam	2006-02-06	Quảng Ninh	Kinh	Việt Nam	\N		\N	\N	2026-03-27 10:03:06.033	2026-03-27 10:03:13.036	2026-03-27 10:03:13.033	\N	\N	\N		t	\N
234	f2jajsrd6ryxr73behguks4w	0	\N	SSO	Sỹ quan an ninh tàu biển		040086001233	040086001233	ĐẠT	NGÔ THÀNH	NGÔ THÀNH ĐẠT	Nam	1986-11-08	Nghệ An	Kinh	Việt Nam	\N	CH914&915 chung cư Phủ Diễn, xã Diễn Châu, Nghệ An	\N	\N	2026-03-28 02:51:30.554	2026-03-28 03:01:28.326	2026-03-28 03:01:28.32	\N	\N	\N	0917778567	t	\N
235	xiz0xi5civzu6wo8rjsdpg98	0	\N	SSO	Sỹ quan an ninh tàu biển		036090005449	036090005449	HOAN	NGUYỄN MINH	NGUYỄN MINH HOAN	Nam	1990-12-16	Ninh Bình	Kinh	Việt Nam	\N	thôn Tây, xã Xuân Trường, Ninh Bình	\N	\N	2026-03-28 02:52:58.832	2026-03-28 03:01:29.003	2026-03-28 03:01:29	\N	\N	\N	0866226879	t	\N
236	own8du9vur9uv1nsspl91654	0	\N	SSO	Sỹ quan an ninh tàu biển		034082007050	034082007050	MẠNH	NGUYỄN VĂN	NGUYỄN VĂN MẠNH	Nam	1982-02-04	Hưng Yên	Kinh	Việt Nam	\N	Lục Nam, Đông Thái Ninh, Hưng Yên	\N	\N	2026-03-28 02:54:21.36	2026-03-28 03:01:31.208	2026-03-28 03:01:31.203	\N	\N	\N	0975977993	t	\N
237	v3phg0ld8umt7e7durzuik65	0	\N	SSO	Sỹ quan an ninh tàu biển		031094014957	031094014957	SƠN	PHẠM THÀNH	PHẠM THÀNH SƠN	Nam	1994-09-02	Hải Phòng	Kinh	Việt Nam	\N	số 1/26 Trần Văn Cẩn, Phù Liễn, Hải Phòng	\N	\N	2026-03-28 02:55:35.324	2026-03-28 03:01:32.107	2026-03-28 03:01:32.104	\N	\N	\N	0961557329	t	\N
238	gmeldq0tkz1i3wrh0fywqkd4	0	\N	SSO	Sỹ quan an ninh tàu biển		040094023739	040094023739	THĂNG	ĐỒNG VĂN	ĐỒNG VĂN THĂNG	Nam	1994-08-16	Nghệ An	Kinh	Việt Nam	\N	xóm Quang Long, Quang Đồng, Nghệ An	\N	\N	2026-03-28 02:56:58.209	2026-03-28 03:01:33.026	2026-03-28 03:01:33.023	\N	\N	\N	0966199094	t	\N
239	zsyqnsdsg5vofllx4ibl7m4w	0	\N	SSO	Sỹ quan an ninh tàu biển		034089012280	034089012280	TỚI	PHẠM VĂN	PHẠM VĂN TỚI	Nam	1989-04-11	Hưng Yên	Kinh	Việt Nam	\N	thôn Bình Xuân, Đông Thục Anh, Hưng Yên	\N	\N	2026-03-28 02:58:28.032	2026-03-28 03:01:33.714	2026-03-28 03:01:33.708	\N	\N	\N	0963857152	t	\N
240	mmcsksr1a8hnpndhn3ebsrdf	0	\N	SSO	Sỹ quan an ninh tàu biển		052088008372	052088008372	TRÀ	NGUYỄN THANH	NGUYỄN THANH TRÀ	Nam	1988-04-06	Gia Lai	Kinh	Việt Nam	\N	khu phố 1, phường Tam Quan, Gia Lai	\N	\N	2026-03-28 03:00:00.613	2026-03-28 03:01:34.346	2026-03-28 03:01:34.343	\N	\N	\N	0385550265	t	\N
241	owq92l0gt26b7lk04x1yfb98	0	\N	SSO	Sỹ quan an ninh tàu biển		034084024035	034084024035	TUẤN	KHÚC TIẾN	KHÚC TIẾN TUẤN	Nam	1984-10-23	Hưng Yên	Kinh	Việt Nam	\N	xã Bắc Tiên Hưng, Hưng Yên	\N	\N	2026-03-28 03:01:16.166	2026-03-28 03:01:35.372	2026-03-28 03:01:35.369	\N	\N	\N	0987676803	t	\N
243	wr5y0xnd06e86erxlaj6hsai	\N	Thuyền viên có nhiệm vụ an ninh tàu biển cụ thể	SSD	Thuyền viên có nhiệm vụ an ninh tàu biển cụ thể	031204009659	031204009659	031204009659	HÙNG	GIANG VĂN	GIANG VĂN HÙNG	Nam	2004-05-16	Hải Phòng		Việt Nam	\N		\N	data:image/jpeg;base64,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	2026-03-30 02:39:38.438	2026-03-30 02:49:53	2026-03-30 02:49:52.996	\N	\N	\N	0362944003	t	\N
244	qhg8f2ta00kbjjceapc66abh	\N	Thuyền viên có nhiệm vụ an ninh tàu biển cụ thể	SSD	Thuyền viên có nhiệm vụ an ninh tàu biển cụ thể	035203005102	035203005102	035203005102	KHÁNH	NGUYỄN DUY	NGUYỄN DUY KHÁNH	Nam	2003-04-26	Ninh Bình	Kinh	Việt Nam	\N	thôn 3, Phú Đa, xã Nam Vang, Ninh Bình	\N	\N	2026-03-30 02:41:57.879	2026-03-30 07:47:51.61	2026-03-30 07:47:51.605	\N	\N	\N	0858181203	t	\N
266	yi2t5vkd87tj36orbcxt5cij	\N	Cập nhật Huấn luyện An toàn sinh mạng và trách nhiệm xã hội theo  Nghị quyết MSC.560 (108) của IMO)	U.BTC	Cập nhật Huấn luyện An toàn sinh mạng và trách nhiệm xã hội theo  Nghị quyết MSC.560 (108) của IMO)	036085009154	036085009154	036085009154	TRUYỀN	ĐỖ VĂN	ĐỖ VĂN TRUYỀN	Nam	1985-06-29	Ninh Bình	Kinh	Việt Nam	\N	xóm Đông Bình, Đồng Thịnh, Ninh Bình	\N	\N	2026-03-31 07:28:35.637	2026-03-31 07:30:13.513	2026-03-31 07:30:13.51	\N	\N	\N	0988563865	t	
267	vgit14hwzyiox62eyscduxn5	\N	Cập nhật Huấn luyện An toàn sinh mạng và trách nhiệm xã hội theo  Nghị quyết MSC.560 (108) của IMO)	U.BTC	Cập nhật Huấn luyện An toàn sinh mạng và trách nhiệm xã hội theo  Nghị quyết MSC.560 (108) của IMO)	031205004479	031205004479	031205004479	TUYẾN	NGUYỄN VĂN	NGUYỄN VĂN TUYẾN	Nam	2005-04-24	Hải Phòng	Kinh	Việt Nam	\N	thôn 7, xã Kiến Hải, Hải Phòng	\N	\N	2026-03-31 07:30:09.416	2026-03-31 07:30:14.003	2026-03-31 07:30:14.001	\N	\N	\N	0522152527	t	
245	ys3f8053yjrjnwp8tsh8kkhm	\N	Thuyền viên có nhiệm vụ an ninh tàu biển cụ thể	SSD	Thuyền viên có nhiệm vụ an ninh tàu biển cụ thể	031099013753	031099013753	031099013753	NINH	VŨ ĐỨC	VŨ ĐỨC NINH	Nam	1999-01-27	Hải Phòng	Kinh	Việt Nam	\N	số 12/161 Phương Lưu, Ngô Quyền, Hải Phòng	\N	\N	2026-03-30 02:44:21.302	2026-03-30 02:49:55.173	2026-03-30 02:49:55.17	\N	\N	\N	0366071044	t	\N
246	xmx4ckj3vjdsauen1devtr0b	\N	Thuyền viên có nhiệm vụ an ninh tàu biển cụ thể	SSD	Thuyền viên có nhiệm vụ an ninh tàu biển cụ thể	040087009554	040087009554	040087009554	THẮNG	VÕ HUY	VÕ HUY THẮNG	Nam	1987-01-12	Nghệ An	Kinh	Việt Nam	\N	thôn Thanh Luật, Minh Châu, Nghệ An	\N	\N	2026-03-30 02:45:54.009	2026-03-30 02:49:56.35	2026-03-30 02:49:56.348	\N	\N	\N	0362404678	t	\N
271	fg2fgyakm07p0enidyyi7jr1	0	\N	SSD	Thuyền viên có nhiệm vụ an ninh tàu biển cụ thể		036206001791	036206001791	TRƯỜNG	PHẠM VĂN	PHẠM VĂN TRƯỜNG	Nam	2006-11-26	Ninh Bình	Kinh	Việt Nam	\N	xóm Ngọc Hùng, xã Nghĩa Lâm, Ninh Bình	\N	\N	2026-04-01 06:22:43.316	2026-04-06 08:17:50.875	2026-04-06 08:17:50.869	\N	\N	\N	0869461171	t	
272	bssjc4e6by22bc99vifwbrf8	0	\N	SSD	Thuyền viên có nhiệm vụ an ninh tàu biển cụ thể		040205018303	040205018303	HOÀNG	NGUYỄN HUY	NGUYỄN HUY HOÀNG	Nam	2005-10-16	Nghệ An	Kinh	Việt Nam	\N	xóm Tân Châu, Minh Châu, Nghệ An	\N	\N	2026-04-01 06:30:41.932	2026-04-06 08:17:57.206	2026-04-06 08:17:57.201	\N	\N	\N	0348285322	t	
273	pjiyo0jkgm1ivkq37z04jppr	0	\N	SSD	Thuyền viên có nhiệm vụ an ninh tàu biển cụ thể		031206007636	031206007636	VIỆT	VŨ QUỐC	VŨ QUỐC VIỆT	Nam	2006-10-20	Hải Phòng	Kinh	Việt Nam	\N	thôn Kỳ Sơn, Kiến Hưng, Hải Phòng	\N	\N	2026-04-01 06:33:07.057	2026-04-06 08:17:59.937	2026-04-06 08:17:59.932	\N	\N	\N	0963490968	t	
274	vjt8npbet1cr46zrdf661zpt	0	\N	SSD	Thuyền viên có nhiệm vụ an ninh tàu biển cụ thể		036206022623	036206022623	HẢI	HOÀNG THANH	HOÀNG THANH HẢI	Nam	2006-11-21	Ninh Bình	Kinh	Việt Nam	\N	thôn 29, Hải Thịnh, Ninh Bình	\N	\N	2026-04-01 06:37:20.547	2026-04-06 08:18:03.706	2026-04-06 08:18:03.703	\N	\N	\N	0336892738	t	
275	sp58jvwfr4rhozpo5t6vvyou	0	\N	SSD	Thuyền viên có nhiệm vụ an ninh tàu biển cụ thể		034206004813	034206004813	TÀI	LƯƠNG QUÝ	LƯƠNG QUÝ TÀI	Nam	2006-03-17	Hưng Yên	Kinh	Việt Nam	\N	thôn Đoàn Kết, xã Tiên Hưng, Hưng Yên	\N	\N	2026-04-01 06:39:22.474	2026-04-06 08:18:06.812	2026-04-06 08:18:06.809	\N	\N	\N	0333074650	t	
276	pwcec2b4g3oo64p3tyrcfov5	0	\N	SSD	Thuyền viên có nhiệm vụ an ninh tàu biển cụ thể		066206001625	066206001625	THANH	NGUYỄN VĂN	NGUYỄN VĂN THANH	Nam	2006-09-20	Đắk Lắk	Kinh	Việt Nam	\N		\N	\N	2026-04-01 06:41:17.986	2026-04-06 08:18:11.689	2026-04-06 08:18:11.686	\N	\N	\N	0815227530	t	
277	mosmbbm8q00ly4zu6b8ppxkc	0	\N	SSD	Thuyền viên có nhiệm vụ an ninh tàu biển cụ thể		040206015433	040206015433	QUÂN	HỒ NHẬT	HỒ NHẬT QUÂN	Nam	2006-08-09	Nghệ An	Kinh	Việt Nam	\N	Quỳnh Phú, Nghệ An	\N	\N	2026-04-01 06:42:54.52	2026-04-06 08:18:13.857	2026-04-06 08:18:13.854	\N	\N	\N	0382130762	t	
278	ei9hzynlp14xtywvhrhk7d5j	0	\N	SSD	Thuyền viên có nhiệm vụ an ninh tàu biển cụ thể		031206007431	031206007431	HUY	BÙI NGỌC	BÙI NGỌC HUY	Nam	2006-11-28	Hải Phòng	Kinh	Việt Nam	\N	Vĩnh Hải, Hải Phòng	\N	\N	2026-04-01 06:44:44.655	2026-04-06 08:18:16.876	2026-04-06 08:18:16.872	\N	\N	\N	0388188277	t	
279	r41bsvl32dfrl6rcathnbyk9	0	\N	SSD	Thuyền viên có nhiệm vụ an ninh tàu biển cụ thể		037205006284	037205006284	CƯ	NGUYỄN VĂN	NGUYỄN VĂN CƯ	Nam	2005-02-26	Ninh Bình	Kinh	Việt Nam	\N	thôn Tam Đồng, Nho Quan, Ninh Bình	\N	\N	2026-04-01 06:46:10.534	2026-04-06 08:18:19.11	2026-04-06 08:18:19.106	\N	\N	\N	0987656412	t	
280	kdmymibzwj0cu9r6iwsoxq0h	0	\N	SSD	Thuyền viên có nhiệm vụ an ninh tàu biển cụ thể		037206004108	037206004108	CƯỜNG	TRẦN MẠNH	TRẦN MẠNH CƯỜNG	Nam	2006-10-25	Ninh Bình	Kinh	Việt Nam	\N	Kim Sơn, Ninh Bình	\N	\N	2026-04-01 06:47:20.309	2026-04-06 08:18:22.479	2026-04-06 08:18:22.476	\N	\N	\N	0369548312	t	
281	yyd5tnwh6eq2ghevxzkh7sx1	0	\N	SSD	Thuyền viên có nhiệm vụ an ninh tàu biển cụ thể		036206025417	036206025417	THANH	PHẠM VĂN	PHẠM VĂN THANH	Nam	2006-10-07	Ninh Bình	Kinh	Việt Nam	\N	xóm 5, Hải Hậu, Ninh Bình	\N	\N	2026-04-01 06:52:43.116	2026-04-06 08:18:24.662	2026-04-06 08:18:24.658	\N	\N	\N	0393842428	t	
282	eqygseuicv1144lhs6g5v664	0	\N	SSD	Thuyền viên có nhiệm vụ an ninh tàu biển cụ thể		031206011722	031206011722	HÂN	VŨ NGỌC	VŨ NGỌC HÂN	Nam	2006-12-25	Hải Phòng	Kinh	Việt Nam	\N	24 Ngô Kim Tài, Lê Chân, Hải Phòng	\N	\N	2026-04-01 06:55:41.717	2026-04-06 08:18:26.436	2026-04-06 08:18:26.429	\N	\N	\N	0358395256	t	
285	a7o0dwennn50uuf3r7n8pcie	\N	Thuyền viên có nhiệm vụ an ninh tàu biển cụ thể	SSD	Thuyền viên có nhiệm vụ an ninh tàu biển cụ thể	034206005785	034206005785	034206005785	CẢNH	NGUYỄN NGỌC	NGUYỄN NGỌC CẢNH	Nam	2006-07-09	Hưng Yên	Kinh	Việt Nam	\N	thôn Dũng Nghĩa, Vũ Tiên, Hưng Yên	\N	\N	2026-04-06 08:15:28.899	2026-04-06 08:18:28.433	2026-04-06 08:18:28.429	\N	\N	\N	0965878627	t	
268	rdxrn44a4nc31kybxsybwro3	0	\N	SSD	Thuyền viên có nhiệm vụ an ninh tàu biển cụ thể		010205004933	010205004933	THUẬN	NGUYỄN ĐỨC	NGUYỄN ĐỨC THUẬN	Nam	2005-08-13	Lào Cai	Kinh	Việt Nam	\N	tổ 7, Bình Minh, phường Cam Đường, Lào Cai	\N	\N	2026-04-01 06:17:22.347	2026-04-06 08:18:31.845	2026-04-06 08:18:31.842	\N	\N	\N	0977771135	t	\N
269	shirwif9oz8ll91ka7ps73oa	0	\N	SSD	Thuyền viên có nhiệm vụ an ninh tàu biển cụ thể		001206022459	001206022459	ĐỨC	TRỊNH MINH	TRỊNH MINH ĐỨC	Nam	2006-08-20	Hà Nội	Kinh	Việt Nam	\N	tổ 13, p Nghĩa Đô, TP Hà Nội	\N	\N	2026-04-01 06:19:43.217	2026-04-06 08:18:33.062	2026-04-06 08:18:33.058	\N	\N	\N	0946197228	t	
242	ve0i9hek0qmv2as60niu7st1	\N	Thuyền viên có nhiệm vụ an ninh tàu biển cụ thể	SSD	Thuyền viên có nhiệm vụ an ninh tàu biển cụ thể	031092000534	031092000534	031092000534	HÙNG	PHẠM TUẤN	PHẠM TUẤN HÙNG	Nam	1992-04-16	Hải Phòng		Việt Nam	\N		\N	data:image/jpeg;base64,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	2026-03-30 02:38:58.618	2026-03-30 02:49:51.796	2026-03-30 02:49:51.791	\N	\N	\N	0359712914	t	\N
247	rsg5ircsvgv1075zm3hirz48	\N	Thuyền viên có nhiệm vụ an ninh tàu biển cụ thể	SSD	Thuyền viên có nhiệm vụ an ninh tàu biển cụ thể	031087012414	031087012414	031087012414	THUY	NGUYỄN VĂN	NGUYỄN VĂN THUY	Nam	1987-06-14	Hải Phòng		Việt Nam	\N		\N	data:image/jpeg;base64,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	2026-03-30 02:46:34.139	2026-03-30 02:49:57.645	2026-03-30 02:49:57.642	\N	\N	\N	0926004953	t	\N
248	vh1rozf2o2pasqssjsekkrt3	\N	Thuyền viên có nhiệm vụ an ninh tàu biển cụ thể	SSD	Thuyền viên có nhiệm vụ an ninh tàu biển cụ thể	037085010532	037085010532	037085010532	TRƯỜNG	NGUYỄN VĂN	NGUYỄN VĂN TRƯỜNG	Nam	1985-04-09	Ninh Bình		Việt Nam	\N		\N	data:image/jpeg;base64,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	2026-03-30 02:47:04.215	2026-03-30 02:49:59.005	2026-03-30 02:49:59	\N	\N	\N	0917556996	t	\N
249	hhyf9lnnexgxn3mp3rzofua0	\N	Thuyền viên có nhiệm vụ an ninh tàu biển cụ thể	SSD	Thuyền viên có nhiệm vụ an ninh tàu biển cụ thể	038205012068	038205012068	038205012068	VINH	LÊ THÀNH	LÊ THÀNH VINH	Nam	2005-08-01	Thanh Hoá		Việt Nam	\N		\N	data:image/jpeg;base64,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	2026-03-30 02:47:37.153	2026-03-30 02:50:00.327	2026-03-30 02:50:00.324	\N	\N	\N	0978690861	t	\N
250	kinpua1hdlo3oomdw4jihpm2	\N	Thuyền viên có nhiệm vụ an ninh tàu biển cụ thể	SSD	Thuyền viên có nhiệm vụ an ninh tàu biển cụ thể	066097020342	066097020342	066097020342	NAM	PHẠM HOÀI	PHẠM HOÀI NAM	Nam	1997-03-04	Đắk Lắk	Kinh	Việt Nam	\N		\N	\N	2026-03-30 02:49:02.12	2026-03-30 02:50:05.652	2026-03-30 02:50:05.647	\N	\N	\N		t	\N
270	v6337w2f2kotwm0l4cre2zmy	0	\N	SSD	Thuyền viên có nhiệm vụ an ninh tàu biển cụ thể		038206025475	038206025475	ĐỨC	CAO VĂN	CAO VĂN ĐỨC	Nam	2006-07-16	Thanh Hoá	Kinh	Việt Nam	\N	TDP Xuân Sơn, phường Tĩnh Gia, Thanh Hóa	\N	\N	2026-04-01 06:21:14.563	2026-04-06 08:18:34.709	2026-04-06 08:18:34.707	\N	\N	\N	0398077050	t	
251	lrhf3htl5iswcphcug6o7utv	0	\N	U.BTC	Cập nhật Huấn luyện An toàn sinh mạng và trách nhiệm xã hội theo  Nghị quyết MSC.560 (108) của IMO)		031204003110	031204003110	ANH	TRẦN HIẾU	TRẦN HIẾU ANH	Nam	2004-09-26	Hải Phòng	Kinh	Việt Nam	\N	Tôn Đức Thắng, Lê Chân, Hải Phòng	\N	\N	2026-03-30 03:08:06.453	2026-03-31 07:23:41.543	2026-03-31 07:23:41.526	\N	\N	\N	0914760217	t	\N
252	pqvpow52cgqsx2y7wkuv6orh	0	\N	U.BTC	Cập nhật Huấn luyện An toàn sinh mạng và trách nhiệm xã hội theo  Nghị quyết MSC.560 (108) của IMO)		025093010347	025093010347	CHIẾN	HOÀNG VĂN	HOÀNG VĂN CHIẾN	Nam	1993-04-21	Phú Thọ	Kinh	Việt Nam	\N		\N	\N	2026-03-30 03:09:35.567	2026-03-31 07:23:42.34	2026-03-31 07:23:42.335	\N	\N	\N	0982977555	t	\N
253	bjoaix3k20nswueuvpc3mkcf	0	\N	U.BTC	Cập nhật Huấn luyện An toàn sinh mạng và trách nhiệm xã hội theo  Nghị quyết MSC.560 (108) của IMO)		036084004204	036084004204	CƯƠNG	PHẠM HỒNG	PHẠM HỒNG CƯƠNG	Nam	1984-08-15	Ninh Bình	Kinh	Việt Nam	\N	xóm 10, Hải Tiến, Ninh Bình	\N	\N	2026-03-30 03:11:01.331	2026-03-31 07:23:43.164	2026-03-31 07:23:43.159	\N	\N	\N	0936147886	t	\N
254	xgqv0r9w0i3yjl7hmgp9i7vk	0	\N	U.BTC	Cập nhật Huấn luyện An toàn sinh mạng và trách nhiệm xã hội theo  Nghị quyết MSC.560 (108) của IMO)		030203003659	030203003659	DŨNG	LƯƠNG ĐÌNH	LƯƠNG ĐÌNH DŨNG	Nam	2003-04-28	Hải Phòng	Kinh	Việt Nam	\N	thôn Kim Đôi, Tân Kỳ, Hải Phòng	\N	\N	2026-03-30 03:12:21.488	2026-03-31 07:23:43.826	2026-03-31 07:23:43.821	\N	\N	\N	0342501462	t	\N
255	y64bra1h3n1vmnj8it9eb5wo	0	\N	U.BTC	Cập nhật Huấn luyện An toàn sinh mạng và trách nhiệm xã hội theo  Nghị quyết MSC.560 (108) của IMO)		031087011297	031087011297	DUY	TẠ ĐỨC	TẠ ĐỨC DUY	Nam	1987-04-24	Hải Phòng	Kinh	Việt Nam	\N	tổ 9, Hưng Đạo, Dương Kinh, Hải Phòng	\N	\N	2026-03-30 03:17:14.733	2026-03-31 07:23:44.711	2026-03-31 07:23:44.707	\N	\N	\N	0975938791	t	\N
256	c5o8hm9j4s99id6dksjgqpio	0	\N	U.BTC	Cập nhật Huấn luyện An toàn sinh mạng và trách nhiệm xã hội theo  Nghị quyết MSC.560 (108) của IMO)		031090009418	031090009418	HIỆU	PHẠM VĂN	PHẠM VĂN HIỆU	Nam	1990-10-30	Hải Phòng	Kinh	Việt Nam	\N	thôn An Luận, An Lão, Hải Phòng	\N	\N	2026-03-30 03:18:55.729	2026-03-31 07:23:45.699	2026-03-31 07:23:45.693	\N	\N	\N	0988218100	t	\N
257	vfanvrs6f7ofyi8uwqq4jmvq	0	\N	U.BTC	Cập nhật Huấn luyện An toàn sinh mạng và trách nhiệm xã hội theo  Nghị quyết MSC.560 (108) của IMO)		034204008407	034204008407	MẠNH	VŨ TIẾN	VŨ TIẾN MẠNH	Nam	2004-01-08	Hưng Yên	Kinh	Việt Nam	\N	thôn Lê Lợi 2, xã Nam Đông Hưng, Hưng Yên	\N	\N	2026-03-30 03:20:26.026	2026-03-31 07:23:47.482	2026-03-31 07:23:47.478	\N	\N	\N	0397664500	t	\N
258	hwlu8iwz4wpurv2tn3tohd1p	0	\N	U.BTC	Cập nhật Huấn luyện An toàn sinh mạng và trách nhiệm xã hội theo  Nghị quyết MSC.560 (108) của IMO)		040091012217	040091012217	QUÂN	ĐOÀN VĂN	ĐOÀN VĂN QUÂN	Nam	1991-02-06	Nghệ An	Kinh	Việt Nam	\N	xóm Nhân Mỹ, Tân Châu, Nghệ An	\N	\N	2026-03-30 03:23:52.705	2026-03-31 07:23:48.405	2026-03-31 07:23:48.387	\N	\N	\N	0869413583	t	\N
259	ncj5z8xud815cakq9yw4i488	0	\N	U.BTC	Cập nhật Huấn luyện An toàn sinh mạng và trách nhiệm xã hội theo  Nghị quyết MSC.560 (108) của IMO)		031205004743	031205004743	TÀI	LÊ ĐỨC	LÊ ĐỨC TÀI	Nam	2005-05-02	Hải Phòng	Kinh	Việt Nam	\N	thôn Anh Thạch, xã Tân Minh, Hải Phòng	\N	\N	2026-03-30 03:25:25.184	2026-03-31 07:23:49.539	2026-03-31 07:23:49.535	\N	\N	\N	0869877922	t	\N
260	jjz1hjz1ak5h4tsqefdvsjyb	0	\N	U.BTC	Cập nhật Huấn luyện An toàn sinh mạng và trách nhiệm xã hội theo  Nghị quyết MSC.560 (108) của IMO)		031089020698	031089020698	TÂN	PHẠM NGỌC	PHẠM NGỌC TÂN	Nam	1989-09-05	Hải Phòng	Kinh	Việt Nam	\N	thôn Lão Phong 1, Kiến Hải, Hải Phòng	\N	\N	2026-03-30 03:26:42.559	2026-03-31 07:23:50.263	2026-03-31 07:23:50.26	\N	\N	\N	0982889106	t	\N
261	sepkujza77gv56kjbyff2wxk	0	\N	U.BTC	Cập nhật Huấn luyện An toàn sinh mạng và trách nhiệm xã hội theo  Nghị quyết MSC.560 (108) của IMO)		042204005419	042204005419	THẮNG	NGUYỄN VĂN	NGUYỄN VĂN THẮNG	Nam	2004-12-15	Hà Tĩnh	Kinh	Việt Nam	\N	Cẩm Bình, Hà Tĩnh	\N	\N	2026-03-30 03:27:53.341	2026-03-31 07:23:51.04	2026-03-31 07:23:51.037	\N	\N	\N	0812754011	t	\N
262	reyxftb2wa5vzcx1omm5r925	0	\N	U.BTC	Cập nhật Huấn luyện An toàn sinh mạng và trách nhiệm xã hội theo  Nghị quyết MSC.560 (108) của IMO)		031091001486	031091001486	THIỆN	ĐỖ ĐỨC	ĐỖ ĐỨC THIỆN	Nam	1991-09-19	Hải Phòng	Kinh	Việt Nam	\N		\N	\N	2026-03-30 03:29:09.474	2026-03-31 07:23:51.776	2026-03-31 07:23:51.772	\N	\N	\N	0383712029	t	\N
263	pwakyzk1p9g209ztj4tqryfe	0	\N	U.BTC	Cập nhật Huấn luyện An toàn sinh mạng và trách nhiệm xã hội theo  Nghị quyết MSC.560 (108) của IMO)		024085000564	024085000564	THỦY	PHẠM XUÂN	PHẠM XUÂN THỦY	Nam	1985-04-01	Bắc Ninh	Kinh	Việt Nam	\N		\N	\N	2026-03-30 03:30:40.981	2026-03-31 07:23:52.536	2026-03-31 07:23:52.531	\N	\N	\N	0369859686	t	\N
\.


--
-- Data for Name: students_school_class_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students_school_class_lnk (id, student_id, school_class_id) FROM stdin;
155	192	250
156	193	250
157	194	250
158	195	250
159	196	250
160	197	250
161	198	250
162	199	250
163	200	250
164	201	250
165	202	250
166	203	250
167	204	250
168	205	250
169	206	250
170	207	250
171	208	250
172	209	250
173	210	250
174	211	250
177	213	232
178	214	232
179	215	232
180	216	232
181	217	232
182	218	232
183	219	232
184	220	232
185	221	232
186	222	232
187	223	232
188	224	232
191	212	232
193	226	192
194	227	192
195	228	192
196	229	192
197	230	192
198	231	192
200	233	232
201	234	83
202	235	83
203	236	83
204	237	83
205	238	83
206	239	83
207	240	83
208	241	83
209	242	180
210	243	180
211	244	180
212	245	180
213	246	180
214	247	180
215	248	180
216	249	180
217	250	180
218	251	244
219	252	244
220	253	244
221	254	244
222	255	244
223	256	244
224	257	244
225	258	244
226	259	244
227	260	244
228	261	244
229	262	244
230	263	244
235	266	244
236	267	244
237	268	180
238	269	180
239	270	180
240	271	180
241	272	180
242	273	180
243	274	180
244	275	180
245	276	180
246	277	180
247	278	180
248	279	180
249	280	180
250	281	180
251	282	180
254	285	180
\.


--
-- Data for Name: subjects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subjects (id, document_id, code, name, sessions, total_hours, theory_hours, practice_hours, exercise_hours, exam_hours, notes, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, has_theory, has_practice) FROM stdin;
246	ogujy01yyrqqziahg7gc2s6f	MH004	Nhận thức an ninh tàu biển (SSA)	0	8.00	7.50	0.00	0.50	2.00		2026-02-16 13:22:52	2026-02-26 15:01:16.718	2026-02-26 15:01:16.713	\N	\N	en	t	t
255	isrtks1ujw51nmg64x4qelhk	MH007	Bè cứu sinh và xuồng cứu nạn	0	32.00	15.00	16.00	1.00	8.00		2026-02-16 13:22:52.176	2026-02-26 15:01:45.214	2026-02-26 15:01:45.208	\N	\N	en	t	t
284	e7bdee3b7df591a268f81235	MH024	Bếp trưởng, cấp dưỡng	0	60.00	30.00	30.00	0.00	0.00		2026-02-16 13:22:52.661	2026-02-26 15:05:43.017	2026-02-26 15:05:43.012	\N	\N	en	t	t
269	ec44d32c43642e9b40986204	MH015	Thuyền viên có nhiệm vụ an ninh tàu biển cụ thể (SSD)	0	12.00	11.00	0.00	1.00	3.00		2026-02-16 13:22:52.451	2026-02-16 13:22:52.451	2026-02-26 01:48:57.502	\N	\N	en	\N	\N
258	cb59a2b2a39a6d69636e9b8d	MH010	Quản lý đội ngũ hoặc nguồn lực buồng lái (BRM)	0	40.00	19.00	20.00	1.00	10.00		2026-02-16 13:22:52.232	2026-02-16 13:22:52.232	2026-02-26 01:48:57.502	\N	\N	en	\N	\N
303	b30f42066c51b6e4ead205d8	MH031	Huấn luyện cơ bản thuyền viên làm việc trên tàu cao tốc	0	56.00	28.00	27.00	1.00	14.00		2026-02-16 13:22:53.091	2026-02-16 13:22:53.091	2026-02-26 01:48:57.502	\N	\N	en	\N	\N
323	hbuutq0a1w8czh57bu7wt2a4	MH005	Sơ cứu cơ bản	0	20.00	8.50	11.00	0.50	5.00		2026-02-24 08:26:24.709	2026-02-26 15:01:26.886	2026-02-26 15:01:26.879	\N	\N	en	t	t
321	csxhel0sw2a8nvs2or70lcqd	MH006	Xuồng cứu nạn cao tốc	0	24.00	9.00	15.00	\N	6.00		2026-02-24 08:26:11.659	2026-02-26 15:01:38.199	2026-02-26 15:01:38.195	\N	\N	en	t	t
306	f1468ff0d32f56095c201b30	MH034	Huấn luyện nâng cao thuyền viên làm việc trên tàu hoạt động tại các vùng nước cực	0	32.00	18.00	12.00	2.00	8.00		2026-02-16 13:22:53.174	2026-02-16 13:22:53.174	2026-02-26 01:48:57.502	\N	\N	en	\N	\N
291	e4177dfa06e682962d3fa3fa	MH025	Quản lý đám đông đối với tàu khách và tàu khách Ro-Ro.	0	12.00	4.00	7.50	0.50	3.00		2026-02-16 13:22:52.797	2026-02-16 13:22:52.797	2026-02-26 01:48:57.502	\N	\N	en	\N	\N
292	96ace9521373b4bace867eee	MH026	Huấn luyện an toàn cho nhân viên phục vụ trực tiếp trong khoang hành khách và tàu khách Ro - Ro.	0	6.00	3.00	2.50	0.50	2.00		2026-02-16 13:22:52.816	2026-02-16 13:22:52.816	2026-02-26 01:48:57.502	\N	\N	en	\N	\N
305	08708e9a8497c6ceb7128c9c	MH033	Huấn luyện cơ bản thuyền viên làm việc trên tàu hoạt động tại các vùng nước cực	0	34.00	26.00	7.00	1.00	8.50		2026-02-16 13:22:53.166	2026-02-16 13:22:53.166	2026-02-26 01:48:57.502	\N	\N	en	\N	\N
337	34dcc015207a493a2005df58	SQAN01	Sỹ quan an ninh tàu biển	5	15.00	5.00	10.00	\N	1.00	\N	2026-02-26 01:37:49.342	2026-02-26 01:37:49.342	2026-02-26 01:37:49.342	\N	\N	en	\N	\N
293	c3a7927cb6487eb273165fd1	MH027	An toàn hành khách, an toàn hàng hóa và tính nguyên vẹn của vỏ tàu đối với tàu khách và tàu khách Ro-Ro	0	20.00	9.50	10.00	0.50	5.00		2026-02-16 13:22:52.821	2026-02-16 13:22:52.821	2026-02-26 01:48:57.502	\N	\N	en	\N	\N
294	d65f4661e64e2fb6a2593e9d	MH028	Quản lý khủng hoảng và phản ứng của con người trên tàu khách và tàu khách Ro-Ro	0	12.00	5.50	6.00	0.50	3.00		2026-02-16 13:22:52.832	2026-02-16 13:22:52.832	2026-02-26 01:48:57.502	\N	\N	en	\N	\N
339	hz8v1theqanbq744b25it3me	MH001	Kỹ thuật cứu sinh	0	20.00	9.00	10.00	1.00	5.00		2026-02-16 13:22:51.988	2026-02-26 15:00:33.27	2026-02-26 15:00:33.253	\N	1	en	t	t
295	viqx81ej91dgtdhdov95toob	MH029	Huấn luyện cơ bản thuyền viên làm việc trên tàu sử dụng nhiên liệu có điểm cháy thấp theo Bộ luật IGF	0	32.00	26.00	2.00	4.00	8.00		2026-02-16 13:22:52.842	2026-02-16 13:22:52.842	2026-02-26 01:48:57.502	\N	\N	en	\N	\N
296	dqvfqs4bngx1en1i0bq8atvh	MH030	Huấn luyện nâng cao thuyền viên làm việc trên tàu sử dụng nhiên liệu có điểm cháy thấp theo Bộ luật IGF	0	40.00	27.00	11.00	2.00	10.00		2026-02-16 13:22:52.848	2026-02-16 13:22:52.848	2026-02-26 01:48:57.502	\N	\N	en	\N	\N
260	0e3829211f8664047923bc72	MH012	Sử dụng Radar và Arpa hàng hải mức vận hành (RAO)	0	78.00	45.00	32.00	1.00	19.00		2026-02-16 13:22:52.256	2026-02-26 15:03:01.669	2026-02-26 15:03:01.663	\N	\N	en	t	t
282	42d97536bae67a8399a8dac6	MH021	Cơ bản tàu khí hóa lỏng (BLG)	0	34.00	29.00	4.00	1.00	9.00		2026-02-16 13:22:52.621	2026-02-16 13:22:52.621	2026-02-26 01:48:57.502	\N	\N	en	\N	\N
267	caea118c57939bf1ea47e3a2	MH013	Sử dụng Radar và Arpa hàng hải mức quản lý (RAM)	0	36.00	10.00	25.00	1.00	8.00		2026-02-16 13:22:52.389	2026-02-26 15:03:10.747	2026-02-26 15:03:10.74	\N	\N	en	t	t
268	383298d14cacece836fe8446	MH014	Khai thác hệ thống thông tin và chỉ báo hải đồ điện tử (ECDIS)	0	40.00	29.00	8.00	3.00	10.00		2026-02-16 13:22:52.428	2026-02-26 15:03:25.907	2026-02-26 15:03:25.898	\N	\N	en	t	t
259	ea73eecb56527ee8bea70818	MH011	Quản lý đội ngũ hoặc nguồn lực buồng máy (ERM)	0	40.00	21.50	18.00	0.50	10.00		2026-02-16 13:22:52.235	2026-02-16 13:22:52.235	2026-02-26 01:48:57.502	\N	\N	en	\N	\N
279	d5dcadd2e700022032c7e3f9	MH020	Nâng cao tàu hóa chất (ACT)	0	60.00	38.50	20.00	1.50	15.00		2026-02-16 13:22:52.6	2026-02-16 13:22:52.6	2026-02-26 01:48:57.502	\N	\N	en	\N	\N
272	0657f85b441ee4c24abe1635	MH018	Cơ bản tàu dầu và hóa chất (BOC)	0	47.00	39.00	7.00	1.00	12.00		2026-02-16 13:22:52.462	2026-02-16 13:22:52.462	2026-02-26 01:48:57.502	\N	\N	en	\N	\N
270	5ee3b83b47d5894a91374c7f	MH016	Sỹ quan an ninh tàu biển (SSO)	0	20.00	19.50	0.00	0.50	5.00		2026-02-16 13:22:52.454	2026-02-16 13:22:52.454	2026-02-26 01:48:57.502	\N	\N	en	\N	\N
283	0acf6e0a6ce300c1be7c2c12	MH023	Sỹ quan an toàn tàu biển	0	24.00	0.00	0.00	0.00	0.00		2026-02-16 13:22:52.651	2026-02-16 13:22:52.651	2026-02-26 01:48:57.502	\N	\N	en	\N	\N
281	cb7b006a16439a0b85a8ad13	MH022	(Nâng cao tàu khí hóa lỏng) ALG	0	60.00	43.50	15.50	1.00	15.00		2026-02-16 13:22:52.618	2026-02-16 13:22:52.618	2026-02-26 01:48:57.502	\N	\N	en	\N	\N
304	9438641f087a5059a2da71d9	MH032	Huấn luyện nâng cao thuyền viên làm việc trên tàu cao tốc	0	96.00	60.00	35.00	1.00	24.00		2026-02-16 13:22:53.143	2026-02-16 13:22:53.143	2026-02-26 01:48:57.502	\N	\N	en	\N	\N
280	54fe0d223ac89f899ffa0d8d	MH019	Nâng cao tàu dầu (AOT)	0	60.00	45.00	14.00	1.00	15.00		2026-02-16 13:22:52.615	2026-02-16 13:22:52.615	2026-02-26 01:48:57.502	\N	\N	en	\N	\N
376	qpdq7ig4roce20sc12rfgxou	U.BTC	Cập nhật Huấn luyện An toàn sinh mạng và trách nhiệm xã hội theo Nghị quyết MSC.560 (108) của IMO	0	8.00	3.00	2.00	2.00	1.00		2026-03-12 09:28:22.101	2026-03-12 09:31:04.394	2026-03-12 09:31:04.39	\N	\N	en	t	t
377	f9jafnl9f1ns3rgq5lckx9qn	PFSO	Cán bộ an ninh cảng biển	6	24.00	20.00	3.00	0.00	1.00		2026-03-24 05:41:33.786	2026-03-24 07:29:06.152	2026-03-24 07:29:06.147	\N	\N	\N	t	f
245	fae20faaa325be081892b9ec	MH003	Phòng cháy chữa cháy	0	20.00	9.50	9.50	1.00	5.00		2026-02-16 13:22:51.996	2026-04-03 01:33:10.968	2026-04-03 01:33:10.962	\N	\N	en	t	t
271	6946e7f324c3b34b32785a3a	MH017	Phòng cháy chữa cháy nâng cao (AFF)	0	32.00	15.00	16.00	1.00	8.00	Tài liệu Phòng cháy chữa cháy nâng cao gồm 36 tờ A4 x 2 mặt (72 trang) đóng  quyển bìa máu + dán gáy	2026-02-16 13:22:52.457	2026-04-03 01:33:18.781	2026-04-03 01:33:18.778	\N	\N	en	t	f
257	da08d8d98d1fb0d186c62969	MH009	Chăm sóc y tế	0	46.00	26.00	19.50	0.50	11.50	Tài liệu Chăm sóc y tế gồm 96 tờ A4 x 2 mặt (192 trang) đóng  thành quyển bìa màu + dán gáy	2026-02-16 13:22:52.221	2026-04-03 01:37:38.05	2026-04-03 01:37:38.045	\N	\N	en	t	f
256	a91227958af8dd37291d0c62	MH008	Sơ cứu y tế	0	30.00	14.50	15.00	0.50	7.50	Tài liệu Sơ cứu y tế gồm 69 tờ A4 x 2 mặt (138 trang) đóng  thành quyển bìa màu + dán gáy	2026-02-16 13:22:52.218	2026-04-03 01:38:10.278	2026-04-03 01:38:10.274	\N	\N	en	t	f
317	k1nobqpiuw7a4v19hgzp5u3n	MH002	An toàn sinh mạng và trách nhiệm xã hội	0	29.00	20.00	8.00	1.00	7.25	Tài liệu Cập nhật An toàn sinh mạng và trách nhiệm xã hội có 24 tờ A4 x 2 mặt (48 trang) đóng thành quyển bìa màu + dán gáy.	2026-02-24 08:10:17.96	2026-04-03 01:39:12.109	2026-04-03 01:39:12.105	\N	\N	en	t	t
307	ym9yybt51uecd9k25g27xf1z	MH035	Huấn luyện viên chính	0	60.00	24.00	1.00	35.00	15.00	Tài liệu Huấn luyện viên chính gồm 24 tờ A4 x 2 mặt (48 trang) đóng thành quyển bìa màu + dán gáy.	2026-02-16 13:22:53.178	2026-04-03 01:38:39.553	2026-04-03 01:38:39.548	\N	\N	en	t	f
\.


--
-- Data for Name: suppliers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.suppliers (id, document_id, code, name, tax_id, phone, email, address, status, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
5	twlabbwxpz2m89pwdwksvczf	KhuB	KhuB				Giữa trường CĐHH	active	2026-02-24 08:09:23.65	2026-02-24 08:09:32.171	2026-02-24 08:09:32.178	\N	\N	en
6	a47ad93e8d70800044d4fb7f	DA	Nhà A	\N	\N	\N	Khu vực Trung tâm	active	2026-02-26 01:37:16.208	2026-02-26 01:37:16.208	2026-02-26 01:37:16.208	\N	\N	en
7	b5b5705ac5d29ae1cec0cc8e	DB	Nhà B	\N	\N	\N	Khu vực Phía Tây	active	2026-02-26 01:37:16.208	2026-02-26 01:37:16.208	2026-02-26 01:37:16.208	\N	\N	en
8	bd9052a7f6ce95927493e381	DC	Nhà C	\N	\N	\N	Khu vực Phía Đông	active	2026-02-26 01:37:16.208	2026-02-26 01:37:16.208	2026-02-26 01:37:16.208	\N	\N	en
9	613e5653180fdf4ba37634e0	DD	Nhà D	\N	\N	\N	Khu xưởng thực hành	active	2026-02-26 01:37:16.208	2026-02-26 01:37:16.208	2026-02-26 01:37:16.208	\N	\N	en
\.


--
-- Data for Name: teacher_subjects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teacher_subjects (teacher_id, subject_id, id, document_id, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
t1	sub1	1	\N	\N	\N	\N	\N	\N	en
t1	sub4	2	\N	\N	\N	\N	\N	\N	en
t2	sub2	3	\N	\N	\N	\N	\N	\N	en
t3	sub3	4	\N	\N	\N	\N	\N	\N	en
t4	sub5	5	\N	\N	\N	\N	\N	\N	en
t5	sub6	6	\N	\N	\N	\N	\N	\N	en
t5	sub7	7	\N	\N	\N	\N	\N	\N	en
\.


--
-- Data for Name: teachers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teachers (id, document_id, code, name, specialization, phone, email, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
106	ltq2tdmr9pdfz12rwk8focdl	GV015	Trần Đức Hòa				2026-02-24 08:18:53.442	2026-02-26 10:31:07.236	2026-02-26 10:31:07.228	\N	\N	en
134	m7ujpnx5zttshwgj9h4ai4l7	GV012	Đoàn Tân Thành				2026-02-26 09:48:58.17	2026-02-26 11:00:10.249	2026-02-26 11:00:10.23	\N	1	en
71	fut1wdoihainpy8n5daw3xba	GV017	Lê Ngọc Thông				2026-02-16 13:28:30.624	2026-02-16 18:34:27.403	2026-02-26 01:48:57.502	\N	\N	en
69	ek92felyhmc7n7gxgnamrxx9	GV016	Đỗ Hồng Hải				2026-02-16 13:28:30.545	2026-02-16 18:56:20.349	2026-02-26 01:48:57.502	\N	\N	en
80	xbh0d5cul28p0t6picw4ddu1	GV020	Trần Văn Ca				2026-02-16 13:28:30.802	2026-02-16 18:33:04.127	2026-02-26 01:48:57.502	\N	\N	en
72	scjozjr99bjrdz94dk77gx16	GV018	Trần Thành Bình				2026-02-16 13:28:30.625	2026-02-16 18:34:03.324	2026-02-26 01:48:57.502	\N	\N	en
79	v1c6ulvt68m5l659lpurlo5n	GV019	Bùi Quang Thụ				2026-02-16 13:28:30.794	2026-02-16 18:33:33.521	2026-02-26 01:48:57.502	\N	\N	en
48	bb94fec5355afcd2f6feaf66	GV005	Cao Đức Bản				2026-02-16 13:28:29.917	2026-02-16 18:39:45.556	2026-02-26 01:48:57.502	\N	\N	en
55	2279b4679262897ef1012f05	GV007	Hoàng Đình Huy				2026-02-16 13:28:30.171	2026-02-16 18:45:36.901	2026-02-26 01:48:57.502	\N	\N	en
57	00fdd0fbc8dfce3ff9cc207e	GV009	Đào Ngọc Tiệp				2026-02-16 13:28:30.197	2026-02-16 18:47:18.143	2026-02-26 01:48:57.502	\N	\N	en
68	907fc2fbd0719f285db4e4ed	GV014	Phạm Ngọc Anh				2026-02-16 13:28:30.543	2026-02-16 18:57:18.622	2026-02-26 01:48:57.502	\N	\N	en
59	94ce5447d5c2bda49b5140e7	GV011	Trần Xuân Tá				2026-02-16 13:28:30.247	2026-02-16 18:52:00.875	2026-02-26 01:48:57.502	\N	\N	en
47	3371558250b459ea05be7bfb	GV004	Mai Thế Hải				2026-02-16 13:28:29.908	2026-02-16 18:38:08.693	2026-02-26 01:48:57.502	\N	\N	en
56	16dbb72a28c23b0e66d2033c	GV008	Bùi Văn Hà				2026-02-16 13:28:30.181	2026-02-16 18:49:04.496	2026-02-26 01:48:57.502	\N	\N	en
67	4f6366948270f457d3d56950	GV013	Phan Mộng Tùng				2026-02-16 13:28:30.431	2026-02-16 18:55:32.697	2026-02-26 01:48:57.502	\N	\N	en
51	d25731a76c0f0971dfb23f90	GV006	Hoàng Văn Chiến				2026-02-16 13:28:30.025	2026-02-16 18:41:48.731	2026-02-26 01:48:57.502	\N	\N	en
43	rassn763vfqqy6dtxsdcpysm	GV001	Hoàng Đình Đại				2026-02-16 13:28:29.785	2026-03-24 07:00:57.12	2026-03-24 07:00:57.113	\N	\N	en
44	dtz36w9to5djf5un3rlqmhdo	GV003	Trịnh Ngọc Nam				2026-02-16 13:28:29.788	2026-03-24 07:01:15.069	2026-03-24 07:01:15.059	\N	\N	en
52	9b133d1349c320ff549a8196	GV002	Nguyễn Tất Quyền				2026-02-16 13:28:30.034	2026-03-24 07:01:31.78	2026-03-24 07:01:31.771	\N	\N	en
58	5c5dd60164313be005379862	GV010	Nguyễn Đức Thiện				2026-02-16 13:28:30.204	2026-03-24 07:01:59.617	2026-03-24 07:01:59.605	\N	\N	en
\.


--
-- Data for Name: teachers_subjects_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teachers_subjects_lnk (id, teacher_id, subject_id, subject_ord) FROM stdin;
1039	134	339	1
1040	134	317	2
1041	134	245	3
1042	134	246	4
1043	134	321	5
1044	134	255	6
1045	134	258	7
1046	134	267	8
1047	134	260	9
1048	134	268	10
1049	134	269	11
1050	134	270	12
1051	134	271	13
1052	134	283	14
1053	134	291	15
1054	134	292	16
1055	134	293	17
1056	134	294	18
194	47	321	4
230	48	321	4
271	51	321	5
368	55	321	4
404	57	321	4
440	56	321	4
529	59	321	5
596	67	321	4
162	80	256	2
163	80	257	3
167	79	271	1
169	72	259	1
170	72	271	2
173	71	259	1
174	71	271	2
193	47	245	3
195	47	255	5
196	47	258	6
197	47	260	7
198	47	267	8
199	47	268	9
200	47	270	10
201	47	269	11
202	47	271	12
203	47	283	13
204	47	291	14
205	47	292	15
206	47	293	16
207	47	307	17
208	47	294	18
228	48	245	2
231	48	246	5
232	48	255	6
233	48	258	7
234	48	260	8
235	48	267	9
236	48	268	10
237	48	270	11
238	48	269	12
239	48	271	13
240	48	283	14
241	48	303	15
242	48	291	16
243	48	292	17
244	48	293	18
245	48	294	19
246	48	307	20
268	51	245	2
270	51	246	4
272	51	255	6
273	51	258	7
274	51	260	8
275	51	267	9
276	51	268	10
277	51	270	11
278	51	269	12
279	51	283	13
280	51	271	14
281	51	291	15
282	51	292	16
283	51	293	17
284	51	294	18
383	55	339	1
612	67	339	2
541	59	339	1
247	48	339	1
459	56	339	1
286	51	339	1
210	47	339	2
419	57	339	1
285	51	307	19
710	47	323	\N
503	58	339	1
483	58	321	3
335	52	339	1
306	52	245	2
308	52	321	4
81	44	339	1
62	44	245	2
64	44	321	4
65	44	255	5
66	44	246	6
67	44	258	7
68	44	260	8
69	44	267	9
309	52	246	5
310	52	255	6
311	52	258	7
312	52	260	8
313	52	267	9
314	52	268	10
315	52	269	11
316	52	270	12
317	52	272	13
318	52	271	14
319	52	283	15
320	52	279	16
321	52	281	17
366	55	245	2
369	55	246	5
370	55	255	6
371	55	258	7
372	55	260	8
373	55	267	9
374	55	268	10
375	55	270	11
376	55	269	12
377	55	271	13
378	55	283	14
379	55	291	15
380	55	292	16
381	55	293	17
382	55	294	18
402	57	245	2
405	57	246	5
406	57	255	6
407	57	258	7
408	57	260	8
409	57	267	9
410	57	268	10
411	57	270	11
412	57	269	12
413	57	271	13
414	57	283	14
415	57	291	15
416	57	292	16
417	57	293	17
418	57	294	18
438	56	245	2
441	56	246	5
442	56	258	6
443	56	260	7
444	56	267	8
445	56	270	9
446	56	268	10
447	56	269	11
448	56	272	12
449	56	271	13
450	56	283	14
451	56	279	15
452	56	281	16
453	56	282	17
454	56	280	18
455	56	291	19
456	56	292	20
457	56	293	21
458	56	294	22
526	59	245	2
528	59	246	4
530	59	258	6
531	59	255	7
532	59	260	8
533	59	267	9
534	59	270	10
535	59	268	11
536	59	269	12
537	59	271	13
538	59	291	14
539	59	292	15
540	59	293	16
595	67	245	3
597	67	246	5
598	67	255	6
599	67	258	7
600	67	260	8
601	67	270	9
602	67	267	10
603	67	268	11
604	67	271	12
605	67	269	13
606	67	279	14
607	67	281	15
608	67	282	16
609	67	280	17
610	67	272	18
191	47	317	1
229	48	317	3
269	51	317	3
367	55	317	3
403	57	317	3
439	56	317	3
527	59	317	3
161	80	323	1
629	69	259	1
630	69	271	2
631	69	272	3
632	69	280	4
633	69	282	5
634	69	281	6
635	69	279	7
657	106	259	1
658	106	271	2
659	106	272	3
660	106	280	4
643	68	259	1
644	68	271	2
645	68	279	3
646	68	281	4
647	68	282	5
648	68	280	6
649	68	272	7
661	106	279	5
662	106	281	6
663	106	282	7
664	106	323	8
593	67	317	1
63	44	317	3
482	58	245	2
484	58	317	4
485	58	246	5
486	58	258	6
487	58	260	7
131	43	339	1
2	43	317	2
3	43	321	3
4	43	245	4
5	43	246	5
6	43	255	6
7	43	258	7
8	43	260	8
9	43	267	9
10	43	268	10
11	43	270	11
12	43	269	12
13	43	272	13
14	43	271	14
15	43	283	15
16	43	279	16
17	43	281	17
18	43	282	18
19	43	280	19
20	43	303	20
21	43	291	21
22	43	306	22
23	43	292	23
24	43	305	24
25	43	293	25
26	43	294	26
27	43	307	27
28	43	295	28
29	43	296	29
30	43	304	30
1088	43	377	31
70	44	268	10
71	44	269	11
72	44	270	12
73	44	283	13
74	44	271	14
75	44	291	15
76	44	306	16
77	44	292	17
78	44	294	18
79	44	293	19
80	44	307	20
1109	44	377	21
307	52	317	3
322	52	282	18
323	52	280	19
324	52	291	20
325	52	292	21
326	52	306	22
327	52	293	23
328	52	305	24
329	52	294	25
330	52	307	26
331	52	295	27
332	52	296	28
333	52	304	29
334	52	303	30
1140	52	377	31
488	58	267	8
489	58	268	9
490	58	270	10
491	58	269	11
492	58	272	12
493	58	271	13
494	58	283	14
495	58	279	15
496	58	281	16
497	58	282	17
498	58	280	18
499	58	291	19
500	58	292	20
501	58	293	21
502	58	294	22
1163	58	377	23
\.


--
-- Data for Name: training_assignments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.training_assignments (id, document_id, schedule, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
35	pfm76br6mpj6zwckupvf956j	[{"date": "2026-03-21", "notes": "", "shift": "Sáng", "subjectId": "d5dcadd2e700022032c7e3f9", "teacherId": "ltq2tdmr9pdfz12rwk8focdl", "subjectName": "Nâng cao tàu hóa chất (ACT)", "teacherName": "Trần Đức Hòa"}, {"date": "2026-03-21", "notes": "", "shift": "Chiều", "subjectId": "d5dcadd2e700022032c7e3f9", "teacherId": "ek92felyhmc7n7gxgnamrxx9", "subjectName": "Nâng cao tàu hóa chất (ACT)", "teacherName": "Đỗ Hồng Hải"}, {"date": "2026-03-22", "notes": "", "shift": "Sáng", "subjectId": "d5dcadd2e700022032c7e3f9", "teacherId": "ltq2tdmr9pdfz12rwk8focdl", "subjectName": "Nâng cao tàu hóa chất (ACT)", "teacherName": "Trần Đức Hòa"}, {"date": "2026-03-22", "notes": "", "shift": "Chiều", "subjectId": "d5dcadd2e700022032c7e3f9", "teacherId": "ek92felyhmc7n7gxgnamrxx9", "subjectName": "Nâng cao tàu hóa chất (ACT)", "teacherName": "Đỗ Hồng Hải"}, {"date": "2026-03-23", "notes": "", "shift": "Sáng", "subjectId": "d5dcadd2e700022032c7e3f9", "teacherId": "ltq2tdmr9pdfz12rwk8focdl", "subjectName": "Nâng cao tàu hóa chất (ACT)", "teacherName": "Trần Đức Hòa"}, {"date": "2026-03-23", "notes": "", "shift": "Chiều", "subjectId": "d5dcadd2e700022032c7e3f9", "teacherId": "ek92felyhmc7n7gxgnamrxx9", "subjectName": "Nâng cao tàu hóa chất (ACT)", "teacherName": "Đỗ Hồng Hải"}, {"date": "2026-03-24", "notes": "", "shift": "Sáng", "subjectId": "d5dcadd2e700022032c7e3f9", "teacherId": "ltq2tdmr9pdfz12rwk8focdl", "subjectName": "Nâng cao tàu hóa chất (ACT)", "teacherName": "Trần Đức Hòa"}, {"date": "2026-03-24", "notes": "", "shift": "Chiều", "subjectId": "d5dcadd2e700022032c7e3f9", "teacherId": "ek92felyhmc7n7gxgnamrxx9", "subjectName": "Nâng cao tàu hóa chất (ACT)", "teacherName": "Đỗ Hồng Hải"}, {"date": "2026-03-25", "notes": "", "shift": "Sáng", "subjectId": "d5dcadd2e700022032c7e3f9", "teacherId": "ltq2tdmr9pdfz12rwk8focdl", "subjectName": "Nâng cao tàu hóa chất (ACT)", "teacherName": "Trần Đức Hòa"}, {"date": "2026-03-25", "notes": "", "shift": "Chiều", "subjectId": "d5dcadd2e700022032c7e3f9", "teacherId": "ek92felyhmc7n7gxgnamrxx9", "subjectName": "Nâng cao tàu hóa chất (ACT)", "teacherName": "Đỗ Hồng Hải"}, {"date": "2026-03-26", "notes": "", "shift": "Sáng", "subjectId": "d5dcadd2e700022032c7e3f9", "teacherId": "ltq2tdmr9pdfz12rwk8focdl", "subjectName": "Nâng cao tàu hóa chất (ACT)", "teacherName": "Trần Đức Hòa"}, {"date": "2026-03-26", "notes": "", "shift": "Chiều", "subjectId": "d5dcadd2e700022032c7e3f9", "teacherId": "ek92felyhmc7n7gxgnamrxx9", "subjectName": "Nâng cao tàu hóa chất (ACT)", "teacherName": "Đỗ Hồng Hải"}, {"date": "2026-03-27", "notes": "", "shift": "Sáng", "subjectId": "d5dcadd2e700022032c7e3f9", "teacherId": "ltq2tdmr9pdfz12rwk8focdl", "subjectName": "Nâng cao tàu hóa chất (ACT)", "teacherName": "Trần Đức Hòa"}, {"date": "2026-03-27", "notes": "", "shift": "Chiều", "subjectId": "d5dcadd2e700022032c7e3f9", "teacherId": "ek92felyhmc7n7gxgnamrxx9", "subjectName": "Nâng cao tàu hóa chất (ACT)", "teacherName": "Đỗ Hồng Hải"}, {"date": "2026-03-28", "notes": "", "shift": "Sáng", "subjectId": "d5dcadd2e700022032c7e3f9", "teacherId": "ltq2tdmr9pdfz12rwk8focdl", "subjectName": "Nâng cao tàu hóa chất (ACT)", "teacherName": "Trần Đức Hòa"}]	2026-03-21 05:36:43.364	2026-03-21 05:36:43.364	2026-03-21 05:36:43.359	\N	\N	\N
36	t8rvk29p2ozbm37mwyrvdl5d	[{"date": "2026-03-23", "notes": "", "shift": "Sáng", "subjectId": "42d97536bae67a8399a8dac6", "teacherId": "rassn763vfqqy6dtxsdcpysm", "subjectName": "Cơ bản tàu khí hóa lỏng (BLG)", "teacherName": "Hoàng Đình Đại"}, {"date": "2026-03-23", "notes": "", "shift": "Chiều", "subjectId": "42d97536bae67a8399a8dac6", "teacherId": "907fc2fbd0719f285db4e4ed", "subjectName": "Cơ bản tàu khí hóa lỏng (BLG)", "teacherName": "Phạm Ngọc Anh"}, {"date": "2026-03-24", "notes": "", "shift": "Sáng", "subjectId": "42d97536bae67a8399a8dac6", "teacherId": "rassn763vfqqy6dtxsdcpysm", "subjectName": "Cơ bản tàu khí hóa lỏng (BLG)", "teacherName": "Hoàng Đình Đại"}, {"date": "2026-03-24", "notes": "", "shift": "Chiều", "subjectId": "42d97536bae67a8399a8dac6", "teacherId": "907fc2fbd0719f285db4e4ed", "subjectName": "Cơ bản tàu khí hóa lỏng (BLG)", "teacherName": "Phạm Ngọc Anh"}, {"date": "2026-03-25", "notes": "", "shift": "Sáng", "subjectId": "42d97536bae67a8399a8dac6", "teacherId": "rassn763vfqqy6dtxsdcpysm", "subjectName": "Cơ bản tàu khí hóa lỏng (BLG)", "teacherName": "Hoàng Đình Đại"}, {"date": "2026-03-25", "notes": "", "shift": "Chiều", "subjectId": "42d97536bae67a8399a8dac6", "teacherId": "907fc2fbd0719f285db4e4ed", "subjectName": "Cơ bản tàu khí hóa lỏng (BLG)", "teacherName": "Phạm Ngọc Anh"}, {"date": "2026-03-26", "notes": "", "shift": "Sáng", "subjectId": "42d97536bae67a8399a8dac6", "teacherId": "rassn763vfqqy6dtxsdcpysm", "subjectName": "Cơ bản tàu khí hóa lỏng (BLG)", "teacherName": "Hoàng Đình Đại"}, {"date": "2026-03-26", "notes": "", "shift": "Chiều", "subjectId": "42d97536bae67a8399a8dac6", "teacherId": "907fc2fbd0719f285db4e4ed", "subjectName": "Cơ bản tàu khí hóa lỏng (BLG)", "teacherName": "Phạm Ngọc Anh"}, {"date": "2026-03-27", "notes": "", "shift": "Sáng", "subjectId": "42d97536bae67a8399a8dac6", "teacherId": "rassn763vfqqy6dtxsdcpysm", "subjectName": "Cơ bản tàu khí hóa lỏng (BLG)", "teacherName": "Hoàng Đình Đại"}]	2026-03-23 03:40:59.626	2026-03-23 03:40:59.626	2026-03-23 03:40:59.621	\N	\N	\N
37	c3bsxbmnqewssgw73p6nnf3u	[{"date": "2026-03-23", "notes": "", "shift": "Sáng", "subjectId": "d5dcadd2e700022032c7e3f9", "teacherId": "5c5dd60164313be005379862", "subjectName": "Nâng cao tàu hóa chất (ACT)", "teacherName": "Nguyễn Đức Thiện"}, {"date": "2026-03-23", "notes": "", "shift": "Chiều", "subjectId": "d5dcadd2e700022032c7e3f9", "teacherId": "16dbb72a28c23b0e66d2033c", "subjectName": "Nâng cao tàu hóa chất (ACT)", "teacherName": "Bùi Văn Hà"}, {"date": "2026-03-24", "notes": "", "shift": "Sáng", "subjectId": "d5dcadd2e700022032c7e3f9", "teacherId": "5c5dd60164313be005379862", "subjectName": "Nâng cao tàu hóa chất (ACT)", "teacherName": "Nguyễn Đức Thiện"}, {"date": "2026-03-24", "notes": "", "shift": "Chiều", "subjectId": "d5dcadd2e700022032c7e3f9", "teacherId": "16dbb72a28c23b0e66d2033c", "subjectName": "Nâng cao tàu hóa chất (ACT)", "teacherName": "Bùi Văn Hà"}, {"date": "2026-03-25", "notes": "", "shift": "Sáng", "subjectId": "d5dcadd2e700022032c7e3f9", "teacherId": "5c5dd60164313be005379862", "subjectName": "Nâng cao tàu hóa chất (ACT)", "teacherName": "Nguyễn Đức Thiện"}, {"date": "2026-03-25", "notes": "", "shift": "Chiều", "subjectId": "d5dcadd2e700022032c7e3f9", "teacherId": "16dbb72a28c23b0e66d2033c", "subjectName": "Nâng cao tàu hóa chất (ACT)", "teacherName": "Bùi Văn Hà"}, {"date": "2026-03-26", "notes": "", "shift": "Sáng", "subjectId": "d5dcadd2e700022032c7e3f9", "teacherId": "5c5dd60164313be005379862", "subjectName": "Nâng cao tàu hóa chất (ACT)", "teacherName": "Nguyễn Đức Thiện"}, {"date": "2026-03-26", "notes": "", "shift": "Chiều", "subjectId": "d5dcadd2e700022032c7e3f9", "teacherId": "16dbb72a28c23b0e66d2033c", "subjectName": "Nâng cao tàu hóa chất (ACT)", "teacherName": "Bùi Văn Hà"}, {"date": "2026-03-27", "notes": "", "shift": "Sáng", "subjectId": "d5dcadd2e700022032c7e3f9", "teacherId": "5c5dd60164313be005379862", "subjectName": "Nâng cao tàu hóa chất (ACT)", "teacherName": "Nguyễn Đức Thiện"}, {"date": "2026-03-27", "notes": "", "shift": "Chiều", "subjectId": "d5dcadd2e700022032c7e3f9", "teacherId": "16dbb72a28c23b0e66d2033c", "subjectName": "Nâng cao tàu hóa chất (ACT)", "teacherName": "Bùi Văn Hà"}, {"date": "2026-03-28", "notes": "", "shift": "Sáng", "subjectId": "d5dcadd2e700022032c7e3f9", "teacherId": "5c5dd60164313be005379862", "subjectName": "Nâng cao tàu hóa chất (ACT)", "teacherName": "Nguyễn Đức Thiện"}, {"date": "2026-03-28", "notes": "", "shift": "Chiều", "subjectId": "d5dcadd2e700022032c7e3f9", "teacherId": "16dbb72a28c23b0e66d2033c", "subjectName": "Nâng cao tàu hóa chất (ACT)", "teacherName": "Bùi Văn Hà"}, {"date": "2026-03-29", "notes": "", "shift": "Sáng", "subjectId": "d5dcadd2e700022032c7e3f9", "teacherId": "5c5dd60164313be005379862", "subjectName": "Nâng cao tàu hóa chất (ACT)", "teacherName": "Nguyễn Đức Thiện"}, {"date": "2026-03-29", "notes": "", "shift": "Chiều", "subjectId": "d5dcadd2e700022032c7e3f9", "teacherId": "16dbb72a28c23b0e66d2033c", "subjectName": "Nâng cao tàu hóa chất (ACT)", "teacherName": "Bùi Văn Hà"}, {"date": "2026-03-30", "notes": "", "shift": "Sáng", "subjectId": "d5dcadd2e700022032c7e3f9", "teacherId": "5c5dd60164313be005379862", "subjectName": "Nâng cao tàu hóa chất (ACT)", "teacherName": "Nguyễn Đức Thiện"}]	2026-03-23 04:38:07.894	2026-03-23 04:38:07.894	2026-03-23 04:38:07.887	\N	\N	\N
38	ol3uy9ib8gqz99mv5i2a1ouw	[{"date": "2026-03-17", "notes": "", "shift": "Sáng", "subjectId": "f9jafnl9f1ns3rgq5lckx9qn", "teacherId": "rassn763vfqqy6dtxsdcpysm", "subjectName": "CÁN BỘ AN NINH CẢNG BIỂN", "teacherName": "Hoàng Đình Đại"}, {"date": "2026-03-17", "notes": "", "shift": "Chiều", "subjectId": "f9jafnl9f1ns3rgq5lckx9qn", "teacherId": "dtz36w9to5djf5un3rlqmhdo", "subjectName": "CÁN BỘ AN NINH CẢNG BIỂN", "teacherName": "Trịnh Ngọc Nam"}, {"date": "2026-03-18", "notes": "", "shift": "Sáng", "subjectId": "f9jafnl9f1ns3rgq5lckx9qn", "teacherId": "rassn763vfqqy6dtxsdcpysm", "subjectName": "CÁN BỘ AN NINH CẢNG BIỂN", "teacherName": "Hoàng Đình Đại"}, {"date": "2026-03-18", "notes": "ĐẠI", "shift": "Chiều", "subjectId": "f9jafnl9f1ns3rgq5lckx9qn", "teacherId": "dtz36w9to5djf5un3rlqmhdo", "subjectName": "CÁN BỘ AN NINH CẢNG BIỂN", "teacherName": "Trịnh Ngọc Nam"}, {"date": "2026-03-19", "notes": "Nam", "shift": "Sáng", "subjectId": "f9jafnl9f1ns3rgq5lckx9qn", "teacherId": "rassn763vfqqy6dtxsdcpysm", "subjectName": "CÁN BỘ AN NINH CẢNG BIỂN", "teacherName": "Hoàng Đình Đại"}, {"date": "2026-03-19", "notes": "Đại", "shift": "Chiều", "subjectId": "f9jafnl9f1ns3rgq5lckx9qn", "teacherId": "dtz36w9to5djf5un3rlqmhdo", "subjectName": "CÁN BỘ AN NINH CẢNG BIỂN", "teacherName": "Trịnh Ngọc Nam"}]	2026-03-24 07:04:59.877	2026-03-24 07:13:34.879	2026-03-24 07:13:34.869	\N	\N	\N
39	bb8hytl4vjbut9s0vylj68sp	[{"date": "2026-03-17", "notes": "", "shift": "Sáng", "subjectId": "f9jafnl9f1ns3rgq5lckx9qn", "teacherId": "dtz36w9to5djf5un3rlqmhdo", "subjectName": "Cán bộ an ninh cảng biển", "teacherName": "Trịnh Ngọc Nam"}, {"date": "2026-03-17", "notes": "", "shift": "Chiều", "subjectId": "f9jafnl9f1ns3rgq5lckx9qn", "teacherId": "rassn763vfqqy6dtxsdcpysm", "subjectName": "Cán bộ an ninh cảng biển", "teacherName": "Hoàng Đình Đại"}, {"date": "2026-03-18", "notes": "", "shift": "Sáng", "subjectId": "f9jafnl9f1ns3rgq5lckx9qn", "teacherId": "dtz36w9to5djf5un3rlqmhdo", "subjectName": "Cán bộ an ninh cảng biển", "teacherName": "Trịnh Ngọc Nam"}, {"date": "2026-03-18", "notes": "", "shift": "Chiều", "subjectId": "f9jafnl9f1ns3rgq5lckx9qn", "teacherId": "rassn763vfqqy6dtxsdcpysm", "subjectName": "Cán bộ an ninh cảng biển", "teacherName": "Hoàng Đình Đại"}, {"date": "2026-03-19", "notes": "", "shift": "Sáng", "subjectId": "f9jafnl9f1ns3rgq5lckx9qn", "teacherId": "dtz36w9to5djf5un3rlqmhdo", "subjectName": "Cán bộ an ninh cảng biển", "teacherName": "Trịnh Ngọc Nam"}, {"date": "2026-03-19", "notes": "", "shift": "Chiều", "subjectId": "f9jafnl9f1ns3rgq5lckx9qn", "teacherId": "rassn763vfqqy6dtxsdcpysm", "subjectName": "Cán bộ an ninh cảng biển", "teacherName": "Hoàng Đình Đại"}]	2026-03-24 07:58:50.608	2026-03-24 07:58:50.608	2026-03-24 07:58:50.601	\N	\N	\N
41	z1ncju9qx5yolve8sqhf249k	[{"date": "2026-03-26", "notes": "", "shift": "Sáng", "subjectId": "ym9yybt51uecd9k25g27xf1z", "teacherId": "bb94fec5355afcd2f6feaf66", "subjectName": "Huấn luyện viên chính", "teacherName": "Cao Đức Bản"}, {"date": "2026-03-26", "notes": "", "shift": "Chiều", "subjectId": "ym9yybt51uecd9k25g27xf1z", "teacherId": "bb94fec5355afcd2f6feaf66", "subjectName": "Huấn luyện viên chính", "teacherName": "Cao Đức Bản"}, {"date": "2026-03-27", "notes": "", "shift": "Sáng", "subjectId": "ym9yybt51uecd9k25g27xf1z", "teacherId": "bb94fec5355afcd2f6feaf66", "subjectName": "Huấn luyện viên chính", "teacherName": "Cao Đức Bản"}, {"date": "2026-03-27", "notes": "", "shift": "Chiều", "subjectId": "ym9yybt51uecd9k25g27xf1z", "teacherId": "bb94fec5355afcd2f6feaf66", "subjectName": "Huấn luyện viên chính", "teacherName": "Cao Đức Bản"}, {"date": "2026-03-28", "notes": "", "shift": "Sáng", "subjectId": "ym9yybt51uecd9k25g27xf1z", "teacherId": "bb94fec5355afcd2f6feaf66", "subjectName": "Huấn luyện viên chính", "teacherName": "Cao Đức Bản"}, {"date": "2026-03-28", "notes": "", "shift": "Chiều", "subjectId": "ym9yybt51uecd9k25g27xf1z", "teacherId": "bb94fec5355afcd2f6feaf66", "subjectName": "Huấn luyện viên chính", "teacherName": "Cao Đức Bản"}, {"date": "2026-03-29", "notes": "", "shift": "Sáng", "subjectId": "ym9yybt51uecd9k25g27xf1z", "teacherId": "bb94fec5355afcd2f6feaf66", "subjectName": "Huấn luyện viên chính", "teacherName": "Cao Đức Bản"}, {"date": "2026-03-29", "notes": "", "shift": "Chiều", "subjectId": "ym9yybt51uecd9k25g27xf1z", "teacherId": "bb94fec5355afcd2f6feaf66", "subjectName": "Huấn luyện viên chính", "teacherName": "Cao Đức Bản"}, {"date": "2026-03-30", "notes": "", "shift": "Sáng", "subjectId": "ym9yybt51uecd9k25g27xf1z", "teacherId": "bb94fec5355afcd2f6feaf66", "subjectName": "Huấn luyện viên chính", "teacherName": "Cao Đức Bản"}, {"date": "2026-03-30", "notes": "", "shift": "Chiều", "subjectId": "ym9yybt51uecd9k25g27xf1z", "teacherId": "bb94fec5355afcd2f6feaf66", "subjectName": "Huấn luyện viên chính", "teacherName": "Cao Đức Bản"}, {"date": "2026-03-31", "notes": "", "shift": "Sáng", "subjectId": "ym9yybt51uecd9k25g27xf1z", "teacherId": "bb94fec5355afcd2f6feaf66", "subjectName": "Huấn luyện viên chính", "teacherName": "Cao Đức Bản"}, {"date": "2026-03-31", "notes": "", "shift": "Chiều", "subjectId": "ym9yybt51uecd9k25g27xf1z", "teacherId": "bb94fec5355afcd2f6feaf66", "subjectName": "Huấn luyện viên chính", "teacherName": "Cao Đức Bản"}, {"date": "2026-04-01", "notes": "", "shift": "Sáng", "subjectId": "ym9yybt51uecd9k25g27xf1z", "teacherId": "bb94fec5355afcd2f6feaf66", "subjectName": "Huấn luyện viên chính", "teacherName": "Cao Đức Bản"}, {"date": "2026-04-01", "notes": "", "shift": "Chiều", "subjectId": "ym9yybt51uecd9k25g27xf1z", "teacherId": "bb94fec5355afcd2f6feaf66", "subjectName": "Huấn luyện viên chính", "teacherName": "Cao Đức Bản"}, {"date": "2026-04-02", "notes": "", "shift": "Sáng", "subjectId": "ym9yybt51uecd9k25g27xf1z", "teacherId": "bb94fec5355afcd2f6feaf66", "subjectName": "Huấn luyện viên chính", "teacherName": "Cao Đức Bản"}]	2026-03-26 01:30:30.027	2026-03-26 01:30:30.027	2026-03-26 01:30:30.023	\N	\N	\N
42	ablgufbhv67k6azjjjr1iseo	[{"date": "2026-03-16", "notes": "", "shift": "Sáng", "subjectId": "42d97536bae67a8399a8dac6", "teacherId": "ek92felyhmc7n7gxgnamrxx9", "subjectName": "Cơ bản tàu khí hóa lỏng (BLG)", "teacherName": "Đỗ Hồng Hải"}, {"date": "2026-03-16", "notes": "", "shift": "Chiều", "subjectId": "42d97536bae67a8399a8dac6", "teacherId": "ek92felyhmc7n7gxgnamrxx9", "subjectName": "Cơ bản tàu khí hóa lỏng (BLG)", "teacherName": "Đỗ Hồng Hải"}, {"date": "2026-03-17", "notes": "", "shift": "Sáng", "subjectId": "42d97536bae67a8399a8dac6", "teacherId": "ek92felyhmc7n7gxgnamrxx9", "subjectName": "Cơ bản tàu khí hóa lỏng (BLG)", "teacherName": "Đỗ Hồng Hải"}, {"date": "2026-03-17", "notes": "", "shift": "Chiều", "subjectId": "42d97536bae67a8399a8dac6", "teacherId": "ek92felyhmc7n7gxgnamrxx9", "subjectName": "Cơ bản tàu khí hóa lỏng (BLG)", "teacherName": "Đỗ Hồng Hải"}, {"date": "2026-03-18", "notes": "", "shift": "Sáng", "subjectId": "42d97536bae67a8399a8dac6", "teacherId": "ek92felyhmc7n7gxgnamrxx9", "subjectName": "Cơ bản tàu khí hóa lỏng (BLG)", "teacherName": "Đỗ Hồng Hải"}, {"date": "2026-03-18", "notes": "", "shift": "Chiều", "subjectId": "42d97536bae67a8399a8dac6", "teacherId": "ek92felyhmc7n7gxgnamrxx9", "subjectName": "Cơ bản tàu khí hóa lỏng (BLG)", "teacherName": "Đỗ Hồng Hải"}, {"date": "2026-03-19", "notes": "", "shift": "Sáng", "subjectId": "42d97536bae67a8399a8dac6", "teacherId": "ek92felyhmc7n7gxgnamrxx9", "subjectName": "Cơ bản tàu khí hóa lỏng (BLG)", "teacherName": "Đỗ Hồng Hải"}, {"date": "2026-03-19", "notes": "", "shift": "Chiều", "subjectId": "42d97536bae67a8399a8dac6", "teacherId": "ek92felyhmc7n7gxgnamrxx9", "subjectName": "Cơ bản tàu khí hóa lỏng (BLG)", "teacherName": "Đỗ Hồng Hải"}, {"date": "2026-03-20", "notes": "", "shift": "Sáng", "subjectId": "42d97536bae67a8399a8dac6", "teacherId": "ek92felyhmc7n7gxgnamrxx9", "subjectName": "Cơ bản tàu khí hóa lỏng (BLG)", "teacherName": "Đỗ Hồng Hải"}]	2026-03-27 05:45:25.516	2026-03-27 05:45:25.516	2026-03-27 05:45:25.51	\N	\N	\N
40	mzk4m66ozx9lxhpl2rl66vfr	[{"date": "2026-03-06", "notes": "", "shift": "Sáng", "subjectId": "k1nobqpiuw7a4v19hgzp5u3n", "teacherId": "m7ujpnx5zttshwgj9h4ai4l7", "subjectName": "An toàn sinh mạng và trách nhiệm xã hội", "teacherName": "Đoàn Tân Thành"}, {"date": "2026-03-06", "notes": "", "shift": "Chiều", "subjectId": "k1nobqpiuw7a4v19hgzp5u3n", "teacherId": "m7ujpnx5zttshwgj9h4ai4l7", "subjectName": "An toàn sinh mạng và trách nhiệm xã hội", "teacherName": "Đoàn Tân Thành"}, {"date": "2026-03-07", "notes": "", "shift": "Sáng", "subjectId": "k1nobqpiuw7a4v19hgzp5u3n", "teacherId": "m7ujpnx5zttshwgj9h4ai4l7", "subjectName": "An toàn sinh mạng và trách nhiệm xã hội", "teacherName": "Đoàn Tân Thành"}, {"date": "2026-03-07", "notes": "", "shift": "Chiều", "subjectId": "k1nobqpiuw7a4v19hgzp5u3n", "teacherId": "m7ujpnx5zttshwgj9h4ai4l7", "subjectName": "An toàn sinh mạng và trách nhiệm xã hội", "teacherName": "Đoàn Tân Thành"}, {"date": "2026-03-08", "notes": "", "shift": "Sáng", "subjectId": "k1nobqpiuw7a4v19hgzp5u3n", "teacherId": "m7ujpnx5zttshwgj9h4ai4l7", "subjectName": "An toàn sinh mạng và trách nhiệm xã hội", "teacherName": "Đoàn Tân Thành"}, {"date": "2026-03-08", "notes": "", "shift": "Chiều", "subjectId": "k1nobqpiuw7a4v19hgzp5u3n", "teacherId": "m7ujpnx5zttshwgj9h4ai4l7", "subjectName": "An toàn sinh mạng và trách nhiệm xã hội", "teacherName": "Đoàn Tân Thành"}, {"date": "2026-03-09", "notes": "", "shift": "Sáng", "subjectId": "k1nobqpiuw7a4v19hgzp5u3n", "teacherId": "m7ujpnx5zttshwgj9h4ai4l7", "subjectName": "An toàn sinh mạng và trách nhiệm xã hội", "teacherName": "Đoàn Tân Thành"}, {"date": "2026-03-09", "notes": "", "shift": "Chiều", "subjectId": "k1nobqpiuw7a4v19hgzp5u3n", "teacherId": "m7ujpnx5zttshwgj9h4ai4l7", "subjectName": "An toàn sinh mạng và trách nhiệm xã hội", "teacherName": "Đoàn Tân Thành"}, {"date": "2026-03-10", "notes": "", "shift": "Sáng", "subjectId": "hz8v1theqanbq744b25it3me", "teacherId": "bb94fec5355afcd2f6feaf66", "subjectName": "Kỹ thuật cứu sinh", "teacherName": "Cao Đức Bản"}, {"date": "2026-03-10", "notes": "", "shift": "Chiều", "subjectId": "hz8v1theqanbq744b25it3me", "teacherId": "bb94fec5355afcd2f6feaf66", "subjectName": "Kỹ thuật cứu sinh", "teacherName": "Cao Đức Bản"}, {"date": "2026-03-11", "notes": "", "shift": "Sáng", "subjectId": "hz8v1theqanbq744b25it3me", "teacherId": "bb94fec5355afcd2f6feaf66", "subjectName": "Kỹ thuật cứu sinh", "teacherName": "Cao Đức Bản"}, {"date": "2026-03-11", "notes": "", "shift": "Chiều", "subjectId": "hz8v1theqanbq744b25it3me", "teacherId": "bb94fec5355afcd2f6feaf66", "subjectName": "Kỹ thuật cứu sinh", "teacherName": "Cao Đức Bản"}, {"date": "2026-03-12", "notes": "", "shift": "Sáng", "subjectId": "hz8v1theqanbq744b25it3me", "teacherId": "bb94fec5355afcd2f6feaf66", "subjectName": "Kỹ thuật cứu sinh", "teacherName": "Cao Đức Bản"}, {"date": "2026-03-12", "notes": "", "shift": "Chiều", "subjectId": "fae20faaa325be081892b9ec", "teacherId": "2279b4679262897ef1012f05", "subjectName": "Phòng cháy chữa cháy", "teacherName": "Hoàng Đình Huy"}, {"date": "2026-03-13", "notes": "", "shift": "Sáng", "subjectId": "fae20faaa325be081892b9ec", "teacherId": "2279b4679262897ef1012f05", "subjectName": "Phòng cháy chữa cháy", "teacherName": "Hoàng Đình Huy"}, {"date": "2026-03-13", "notes": "", "shift": "Chiều", "subjectId": "fae20faaa325be081892b9ec", "teacherId": "2279b4679262897ef1012f05", "subjectName": "Phòng cháy chữa cháy", "teacherName": "Hoàng Đình Huy"}, {"date": "2026-03-14", "notes": "", "shift": "Sáng", "subjectId": "fae20faaa325be081892b9ec", "teacherId": "2279b4679262897ef1012f05", "subjectName": "Phòng cháy chữa cháy", "teacherName": "Hoàng Đình Huy"}, {"date": "2026-03-14", "notes": "", "shift": "Chiều", "subjectId": "fae20faaa325be081892b9ec", "teacherId": "2279b4679262897ef1012f05", "subjectName": "Phòng cháy chữa cháy", "teacherName": "Hoàng Đình Huy"}, {"date": "2026-03-15", "notes": "", "shift": "Sáng", "subjectId": "ogujy01yyrqqziahg7gc2s6f", "teacherId": "00fdd0fbc8dfce3ff9cc207e", "subjectName": "Nhận thức an ninh tàu biển (SSA)", "teacherName": "Đào Ngọc Tiệp"}, {"date": "2026-03-15", "notes": "", "shift": "Chiều", "subjectId": "ogujy01yyrqqziahg7gc2s6f", "teacherId": "00fdd0fbc8dfce3ff9cc207e", "subjectName": "Nhận thức an ninh tàu biển (SSA)", "teacherName": "Đào Ngọc Tiệp"}, {"date": "2026-03-16", "notes": "", "shift": "Sáng", "subjectId": "hbuutq0a1w8czh57bu7wt2a4", "teacherId": "ltq2tdmr9pdfz12rwk8focdl", "subjectName": "Sơ cứu cơ bản", "teacherName": "Trần Đức Hòa"}, {"date": "2026-03-16", "notes": "", "shift": "Chiều", "subjectId": "hbuutq0a1w8czh57bu7wt2a4", "teacherId": "ltq2tdmr9pdfz12rwk8focdl", "subjectName": "Sơ cứu cơ bản", "teacherName": "Trần Đức Hòa"}, {"date": "2026-03-17", "notes": "", "shift": "Sáng", "subjectId": "hbuutq0a1w8czh57bu7wt2a4", "teacherId": "ltq2tdmr9pdfz12rwk8focdl", "subjectName": "Sơ cứu cơ bản", "teacherName": "Trần Đức Hòa"}, {"date": "2026-03-17", "notes": "", "shift": "Chiều", "subjectId": "hbuutq0a1w8czh57bu7wt2a4", "teacherId": "ltq2tdmr9pdfz12rwk8focdl", "subjectName": "Sơ cứu cơ bản", "teacherName": "Trần Đức Hòa"}, {"date": "2026-03-18", "notes": "", "shift": "Sáng", "subjectId": "hbuutq0a1w8czh57bu7wt2a4", "teacherId": "ltq2tdmr9pdfz12rwk8focdl", "subjectName": "Sơ cứu cơ bản", "teacherName": "Trần Đức Hòa"}]	2026-03-25 09:04:18.381	2026-03-27 10:06:25.16	2026-03-27 10:06:25.145	\N	\N	\N
43	ejul0i8u6rppxg0hkli5et2g	[{"date": "2026-03-20", "notes": "", "shift": "Sáng", "subjectId": "5ee3b83b47d5894a91374c7f", "teacherId": "m7ujpnx5zttshwgj9h4ai4l7", "subjectName": "Sỹ quan an ninh tàu biển (SSO)", "teacherName": "Đoàn Tân Thành"}, {"date": "2026-03-20", "notes": "", "shift": "Chiều", "subjectId": "5ee3b83b47d5894a91374c7f", "teacherId": "m7ujpnx5zttshwgj9h4ai4l7", "subjectName": "Sỹ quan an ninh tàu biển (SSO)", "teacherName": "Đoàn Tân Thành"}, {"date": "2026-03-21", "notes": "", "shift": "Sáng", "subjectId": "5ee3b83b47d5894a91374c7f", "teacherId": "m7ujpnx5zttshwgj9h4ai4l7", "subjectName": "Sỹ quan an ninh tàu biển (SSO)", "teacherName": "Đoàn Tân Thành"}, {"date": "2026-03-21", "notes": "", "shift": "Chiều", "subjectId": "5ee3b83b47d5894a91374c7f", "teacherId": "m7ujpnx5zttshwgj9h4ai4l7", "subjectName": "Sỹ quan an ninh tàu biển (SSO)", "teacherName": "Đoàn Tân Thành"}, {"date": "2026-03-22", "notes": "", "shift": "Sáng", "subjectId": "5ee3b83b47d5894a91374c7f", "teacherId": "m7ujpnx5zttshwgj9h4ai4l7", "subjectName": "Sỹ quan an ninh tàu biển (SSO)", "teacherName": "Đoàn Tân Thành"}]	2026-03-28 04:04:27.414	2026-03-28 04:04:27.414	2026-03-28 04:04:27.407	\N	\N	\N
44	kw8o0nm91sy86hcgwm7m0xwb	[{"date": "2026-03-27", "notes": "", "shift": "Sáng", "subjectId": "ec44d32c43642e9b40986204", "teacherId": "m7ujpnx5zttshwgj9h4ai4l7", "subjectName": "Thuyền viên có nhiệm vụ an ninh tàu biển cụ thể (SSD)", "teacherName": "Đoàn Tân Thành"}, {"date": "2026-03-27", "notes": "", "shift": "Chiều", "subjectId": "ec44d32c43642e9b40986204", "teacherId": "m7ujpnx5zttshwgj9h4ai4l7", "subjectName": "Thuyền viên có nhiệm vụ an ninh tàu biển cụ thể (SSD)", "teacherName": "Đoàn Tân Thành"}, {"date": "2026-03-28", "notes": "", "shift": "Sáng", "subjectId": "ec44d32c43642e9b40986204", "teacherId": "m7ujpnx5zttshwgj9h4ai4l7", "subjectName": "Thuyền viên có nhiệm vụ an ninh tàu biển cụ thể (SSD)", "teacherName": "Đoàn Tân Thành"}]	2026-03-30 07:37:07.119	2026-03-30 07:37:07.119	2026-03-30 07:37:07.103	\N	\N	\N
45	qbal2pj74q56vvwzxl4h0kf4	[]	2026-03-31 07:32:38.824	2026-03-31 07:32:38.824	2026-03-31 07:32:38.812	\N	\N	\N
46	ev0aja6rjcm3s1rmmk70pqu0	[{"date": "2026-03-31", "notes": "", "shift": "Sáng", "subjectId": "ec44d32c43642e9b40986204", "teacherId": "m7ujpnx5zttshwgj9h4ai4l7", "subjectName": "Thuyền viên có nhiệm vụ an ninh tàu biển cụ thể (SSD)", "teacherName": "Đoàn Tân Thành"}, {"date": "2026-03-31", "notes": "", "shift": "Chiều", "subjectId": "ec44d32c43642e9b40986204", "teacherId": "m7ujpnx5zttshwgj9h4ai4l7", "subjectName": "Thuyền viên có nhiệm vụ an ninh tàu biển cụ thể (SSD)", "teacherName": "Đoàn Tân Thành"}, {"date": "2026-04-01", "notes": "", "shift": "Sáng", "subjectId": "ec44d32c43642e9b40986204", "teacherId": "m7ujpnx5zttshwgj9h4ai4l7", "subjectName": "Thuyền viên có nhiệm vụ an ninh tàu biển cụ thể (SSD)", "teacherName": "Đoàn Tân Thành"}]	2026-04-06 08:21:39.916	2026-04-06 08:21:39.916	2026-04-06 08:21:39.906	\N	\N	\N
\.


--
-- Data for Name: training_assignments_decision_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.training_assignments_decision_lnk (id, training_assignment_id, class_decision_id) FROM stdin;
82	39	163
83	40	165
85	42	168
87	43	170
88	44	174
89	45	176
90	46	178
\.


--
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
266	f238blcesnf4afduehmarrau	api::audit-log.audit-log.find	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.227	\N	\N	en
268	hwwlwo73dc8b8jntwc1t3zrj	api::audit-log.audit-log.create	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.229	\N	\N	en
270	twff5r9gl8pcn006ankml6rr	api::audit-log.audit-log.delete	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.23	\N	\N	en
272	jd29mo5se2wksbtu6egtve56	api::class-decision.class-decision.findOne	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.231	\N	\N	en
274	crv7comjd4wix1f6ld0k66rp	api::class-decision.class-decision.update	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.232	\N	\N	en
276	gvh167u9byy6vocr9vvbfmaq	api::class-subject.class-subject.find	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.233	\N	\N	en
278	bmwrlfkgt80qhxv2k9ipzv97	api::class-subject.class-subject.create	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.233	\N	\N	en
280	o60k8kudoonrgt3q28pvwtnm	api::class-subject.class-subject.delete	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.235	\N	\N	en
66	cnap84zh1h184js7cz1p00wi	api::student.student.update	2026-02-15 21:16:02.078	2026-02-15 21:16:02.078	2026-02-15 21:16:02.089	\N	\N	en
67	bsn8ys62k8e9usrr82nshgdz	api::student.student.delete	2026-02-15 21:16:02.078	2026-02-15 21:16:02.078	2026-02-15 21:16:02.09	\N	\N	en
69	lcsmm15ppkw3na8yztg94g2h	api::student-document.student-document.findOne	2026-02-15 21:16:02.078	2026-02-15 21:16:02.078	2026-02-15 21:16:02.092	\N	\N	en
71	we833102fjn2enlqpco275se	api::student-document.student-document.update	2026-02-15 21:16:02.078	2026-02-15 21:16:02.078	2026-02-15 21:16:02.094	\N	\N	en
73	cqmi4z7c2ajljav4wtopxd74	api::subject.subject.find	2026-02-15 21:16:02.078	2026-02-15 21:16:02.078	2026-02-15 21:16:02.095	\N	\N	en
75	o1lngfnx292ornop69v65esu	api::subject.subject.create	2026-02-15 21:16:02.078	2026-02-15 21:16:02.078	2026-02-15 21:16:02.095	\N	\N	en
77	o5z99r2x4l0n8y9w7zn9pqwy	api::subject.subject.delete	2026-02-15 21:16:02.078	2026-02-15 21:16:02.078	2026-02-15 21:16:02.096	\N	\N	en
79	dwuac9crdixlhgyyea567lfi	api::supplier.supplier.findOne	2026-02-15 21:16:02.078	2026-02-15 21:16:02.078	2026-02-15 21:16:02.096	\N	\N	en
81	opj2bi4y98h8xkde0ruizdo9	api::supplier.supplier.update	2026-02-15 21:16:02.078	2026-02-15 21:16:02.078	2026-02-15 21:16:02.096	\N	\N	en
83	bcjje8d4eirlgwjj574g2311	api::teacher.teacher.find	2026-02-15 21:16:02.078	2026-02-15 21:16:02.078	2026-02-15 21:16:02.096	\N	\N	en
85	in027o8lsfed4e5rx7re9zyg	api::teacher.teacher.create	2026-02-15 21:16:02.078	2026-02-15 21:16:02.078	2026-02-15 21:16:02.097	\N	\N	en
87	z7bweibcx14nx5xwarxhmzex	api::teacher.teacher.delete	2026-02-15 21:16:02.078	2026-02-15 21:16:02.078	2026-02-15 21:16:02.097	\N	\N	en
89	z600njl3yj9dr4sipdgc789w	plugin::content-type-builder.components.getComponent	2026-02-15 21:16:02.078	2026-02-15 21:16:02.078	2026-02-15 21:16:02.098	\N	\N	en
91	tmh53wy62ewcuy4lui03k1go	plugin::content-type-builder.content-types.getContentType	2026-02-15 21:16:02.078	2026-02-15 21:16:02.078	2026-02-15 21:16:02.099	\N	\N	en
363	dc5fbapavqldljtkkeex9hmc	plugin::users-permissions.user.find	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.25	\N	\N	en
365	quz769ntj7lqc1dba30uu09r	plugin::users-permissions.user.count	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.25	\N	\N	en
367	oy5osntwz2pc1dbh4384rm7o	plugin::users-permissions.user.me	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.25	\N	\N	en
369	ljuw2vswsaq1zhopfm3luht3	plugin::users-permissions.role.findOne	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.25	\N	\N	en
371	m0v0r09j5m5w9xqw69zxohwy	plugin::users-permissions.role.updateRole	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.251	\N	\N	en
373	zxkdt9nf5wo4r99oi3f5u5cs	plugin::users-permissions.permissions.getPermissions	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.251	\N	\N	en
65	b93qyby1ofaen1jnj780i3ug	api::student.student.create	2026-02-15 21:16:02.078	2026-02-15 21:16:02.078	2026-02-15 21:16:02.089	\N	\N	en
68	n60v97l82az47cmccl68t2mb	api::student-document.student-document.find	2026-02-15 21:16:02.078	2026-02-15 21:16:02.078	2026-02-15 21:16:02.092	\N	\N	en
70	d3awaruftzw133oc09ssk2yn	api::student-document.student-document.create	2026-02-15 21:16:02.078	2026-02-15 21:16:02.078	2026-02-15 21:16:02.093	\N	\N	en
72	wl9b7x8qxzjanjkk9yblscd1	api::student-document.student-document.delete	2026-02-15 21:16:02.078	2026-02-15 21:16:02.078	2026-02-15 21:16:02.095	\N	\N	en
74	usu9y32o1cmyihxwde97a8n3	api::subject.subject.findOne	2026-02-15 21:16:02.078	2026-02-15 21:16:02.078	2026-02-15 21:16:02.095	\N	\N	en
76	u284osek9izzrdiqfp3ffq28	api::subject.subject.update	2026-02-15 21:16:02.078	2026-02-15 21:16:02.078	2026-02-15 21:16:02.095	\N	\N	en
78	m2abd5s1sgnv4ti8ao1fwhlb	api::supplier.supplier.find	2026-02-15 21:16:02.078	2026-02-15 21:16:02.078	2026-02-15 21:16:02.096	\N	\N	en
80	zvgr8mws3cqnd9qylvuqmpjh	api::supplier.supplier.create	2026-02-15 21:16:02.078	2026-02-15 21:16:02.078	2026-02-15 21:16:02.096	\N	\N	en
82	yd2nutxbs1mwg3s3xkvp6qdl	api::supplier.supplier.delete	2026-02-15 21:16:02.078	2026-02-15 21:16:02.078	2026-02-15 21:16:02.096	\N	\N	en
84	sbw9f3csn6lck7757trggawo	api::teacher.teacher.findOne	2026-02-15 21:16:02.078	2026-02-15 21:16:02.078	2026-02-15 21:16:02.097	\N	\N	en
86	o80ukbdqnbg9umr1w0y98pws	api::teacher.teacher.update	2026-02-15 21:16:02.078	2026-02-15 21:16:02.078	2026-02-15 21:16:02.097	\N	\N	en
88	c3eut4413jqvm39mj6kdum4n	plugin::content-type-builder.components.getComponents	2026-02-15 21:16:02.078	2026-02-15 21:16:02.078	2026-02-15 21:16:02.098	\N	\N	en
90	wynrx8xy0hpd3mhlagfn3bpe	plugin::content-type-builder.content-types.getContentTypes	2026-02-15 21:16:02.078	2026-02-15 21:16:02.078	2026-02-15 21:16:02.098	\N	\N	en
282	e5qzbxikfwrwv5x7fbr06jk7	api::classroom.classroom.findOne	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.235	\N	\N	en
284	xbhkt5tjycrbmedncto696sl	api::classroom.classroom.update	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.236	\N	\N	en
286	jdirgqdzk0dk6w419dse5f0o	api::exam-approval.exam-approval.find	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.237	\N	\N	en
288	kcejb3v85md3m2yqlkozcame	api::exam-approval.exam-approval.create	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.237	\N	\N	en
290	xme6oo3bvdalvnj861yl480a	api::exam-approval.exam-approval.delete	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.237	\N	\N	en
292	jbapy34n95qbak6qkvv3u3iu	api::exam-grade.exam-grade.findOne	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.238	\N	\N	en
294	hn5234lgaqk08s16iewdhak5	api::exam-grade.exam-grade.update	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.238	\N	\N	en
296	yzf4qtb1f5tbzxiroduq9seh	api::nation.nation.find	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.239	\N	\N	en
298	uncu3qg0l400pdif95oqiqct	api::nation.nation.create	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.239	\N	\N	en
300	nkqk1cf8vk3es7ystu3q2aw8	api::nation.nation.delete	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.239	\N	\N	en
302	vbs36onwms0akrrp15kkieyj	api::print-template.print-template.findOne	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.239	\N	\N	en
304	kgipkzouzep7miie364hgx05	api::print-template.print-template.update	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.24	\N	\N	en
306	qt1s2i3kylu9cu9lb3jao71s	api::school-class.school-class.find	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.24	\N	\N	en
308	ieir2noyr7jxxiwdk8nrf07i	api::school-class.school-class.create	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.24	\N	\N	en
310	qaqtjn3aoj0qgghci5ekf6a1	api::school-class.school-class.delete	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.241	\N	\N	en
312	ttzfr3enfq3bcq8id5l9rhxz	api::student.student.findOne	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.241	\N	\N	en
314	pkvsp4pxt1wfihxxdzb7kuea	api::student.student.update	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.241	\N	\N	en
316	ngqhvanj66rtczlzox5hy10b	api::student-document.student-document.find	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.242	\N	\N	en
318	vwjen0g0fpo4qnabftakacsl	api::student-document.student-document.create	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.242	\N	\N	en
320	kntbucbqjfwrohy15czq79b8	api::student-document.student-document.delete	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.242	\N	\N	en
322	pjcifttu5gs72jivqmu0976t	api::subject.subject.findOne	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.243	\N	\N	en
324	euik8fmtf2cbww86nwws408u	api::subject.subject.update	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.244	\N	\N	en
326	huz0uqifo8tuanamfvbrj3jt	api::supplier.supplier.find	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.244	\N	\N	en
328	fy6415hrel5oa32kyzauw0bn	api::supplier.supplier.create	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.244	\N	\N	en
330	sgdnt8dg106033qloyi48azy	api::supplier.supplier.delete	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.245	\N	\N	en
332	g7sj2x4ecpba2ydkpb1fl1yq	api::teacher.teacher.findOne	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.245	\N	\N	en
334	r4akb2xziskugukcp9cz8qaw	api::teacher.teacher.update	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.245	\N	\N	en
336	gv4c12eh4j9vuhm0wqqwspse	api::teacher-subject.teacher-subject.find	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.246	\N	\N	en
338	f0ri4cmuu4nr0at05bj0ztkv	api::teacher-subject.teacher-subject.create	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.246	\N	\N	en
340	hmkjqpd9td9q8jik5zuq5lf6	api::teacher-subject.teacher-subject.delete	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.246	\N	\N	en
342	bwdk3gmwu9elro5wp637ku5m	api::training-assignment.training-assignment.findOne	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.247	\N	\N	en
344	mmk1w0pg04i2t7vha228tdhb	api::training-assignment.training-assignment.update	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.247	\N	\N	en
346	mydzpupswwgb4hjtxzd6zk7m	plugin::content-type-builder.components.getComponents	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.248	\N	\N	en
348	u6k112spareqgblq962h3qsa	plugin::content-type-builder.content-types.getContentTypes	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.249	\N	\N	en
350	fafuo62sjl22cnirm6sizsvb	plugin::email.email.send	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.249	\N	\N	en
352	o7dcgko64kmow2ec7bbboxgw	plugin::users-permissions.auth.changePassword	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.249	\N	\N	en
354	ioispq9ubp19yet9i1dbsv74	plugin::users-permissions.auth.refresh	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.249	\N	\N	en
356	ztb2ci4f94ir1eanzoiyhklp	plugin::users-permissions.auth.connect	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.249	\N	\N	en
358	ztdik9yuvjgavnrium5tbhvv	plugin::users-permissions.auth.register	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.249	\N	\N	en
360	yrnre5mdibvc1wtfw8qlt8ol	plugin::users-permissions.auth.sendEmailConfirmation	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.25	\N	\N	en
362	dhy81b00yppwwyk8l31w4pfq	plugin::users-permissions.user.update	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.25	\N	\N	en
364	u1bd2wrz4hk6hef5uiv0qrzp	plugin::users-permissions.user.findOne	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.25	\N	\N	en
366	f71irq9v8lmghjpom90o7zyq	plugin::users-permissions.user.destroy	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.25	\N	\N	en
368	l0mw9ay20o7jzs7qqa3u9s6g	plugin::users-permissions.role.createRole	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.25	\N	\N	en
370	yezw6zpadeja4ltao99ajctw	plugin::users-permissions.role.find	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.251	\N	\N	en
372	ncm58b95n86w3ox7tn2ktewd	plugin::users-permissions.role.deleteRole	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.251	\N	\N	en
267	v4nzp1zpzmjtc914hu2fxq46	api::audit-log.audit-log.findOne	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.228	\N	\N	en
269	jlh58ybr7qn823c7k0pv4uuz	api::audit-log.audit-log.update	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.229	\N	\N	en
271	uco89jkzpkaemkag03mu9t4g	api::class-decision.class-decision.find	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.231	\N	\N	en
273	jmczlztzimbi9d7wmg3w4dd6	api::class-decision.class-decision.create	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.231	\N	\N	en
275	f47dacmpi8dnhj0wpand7biq	api::class-decision.class-decision.delete	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.232	\N	\N	en
277	uh6vy0bgqculk5hvo3j6w090	api::class-subject.class-subject.findOne	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.233	\N	\N	en
279	l86i38qn5su3a58ibaf9aqzy	api::class-subject.class-subject.update	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.234	\N	\N	en
281	dvievyodl1pbflo4e0432z8s	api::classroom.classroom.find	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.235	\N	\N	en
283	k599cenc7ld0p5mwy5okzba9	api::classroom.classroom.create	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.236	\N	\N	en
285	ot0wl9ety6egzv13kvjsg2oo	api::classroom.classroom.delete	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.236	\N	\N	en
287	eitk57ml5i6sn2njfoukjogx	api::exam-approval.exam-approval.findOne	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.237	\N	\N	en
289	oqdxmfk4l1oqp9vwn6y8atbf	api::exam-approval.exam-approval.update	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.237	\N	\N	en
291	h6cufbj5ekse82k1wl2acnvm	api::exam-grade.exam-grade.find	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.237	\N	\N	en
293	mlzq2gdr8v2gzbwqwbsvs28p	api::exam-grade.exam-grade.create	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.238	\N	\N	en
295	imoijuk43fqi4d18zcfrw2hm	api::exam-grade.exam-grade.delete	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.238	\N	\N	en
297	hoqggivjfeyt0m3vcouweusy	api::nation.nation.findOne	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.239	\N	\N	en
299	o1bf2zivu6uk4gxduisj4vap	api::nation.nation.update	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.239	\N	\N	en
301	b71xm6jfk3fkycr0yudr3naz	api::print-template.print-template.find	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.239	\N	\N	en
303	nyv61a0a6ld8nzoqd0jq1lcx	api::print-template.print-template.create	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.239	\N	\N	en
305	h629u2b3n6nl6x9yi0k00yfo	api::print-template.print-template.delete	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.24	\N	\N	en
307	w6n7tt7wnbg8h4yajxhoucao	api::school-class.school-class.findOne	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.24	\N	\N	en
309	cq5nlfopb1c3tbgro3w3tnyo	api::school-class.school-class.update	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.241	\N	\N	en
311	c6ebzzlwt49c1brkeqg4he59	api::student.student.find	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.241	\N	\N	en
313	awniv47nk7158xb1hqcizp46	api::student.student.create	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.241	\N	\N	en
315	bzvf865ulup2yj9jf34ykp6e	api::student.student.delete	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.242	\N	\N	en
317	w1jkhw68t66fs8dkorj468lw	api::student-document.student-document.findOne	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.242	\N	\N	en
319	qrwplkc6khmwwuou6k0sxkxm	api::student-document.student-document.update	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.242	\N	\N	en
321	jsonmw6dk174z32mm6k4m29u	api::subject.subject.find	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.243	\N	\N	en
323	zj5avgccarwneigunhvv0mlm	api::subject.subject.create	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.244	\N	\N	en
325	xgarezqxyaxydh52h0oxf7x6	api::subject.subject.delete	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.244	\N	\N	en
327	yh3kmvh9hytp6lrlwac4eogg	api::supplier.supplier.findOne	2026-02-26 09:58:36.225	2026-02-26 09:58:36.225	2026-02-26 09:58:36.244	\N	\N	en
329	ayc6prf8q6m8b370qry798i4	api::supplier.supplier.update	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.245	\N	\N	en
331	bwey9vjim0w5qbp2bxu8rq1m	api::teacher.teacher.find	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.245	\N	\N	en
333	ykni663z6b1bd4x0j2rpzd48	api::teacher.teacher.create	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.245	\N	\N	en
335	lu13rwv7yris4wc75knwbzhg	api::teacher.teacher.delete	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.246	\N	\N	en
337	ytkrg59diolkcvn5zjo6a4uv	api::teacher-subject.teacher-subject.findOne	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.246	\N	\N	en
339	jw8b0z698p4sh1no7nsv2yk3	api::teacher-subject.teacher-subject.update	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.246	\N	\N	en
341	yy5282pzt8xpf1vtn07vpkiu	api::training-assignment.training-assignment.find	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.247	\N	\N	en
154	t5e3na0eplf9pr1j5d2v9ubs	api::nation.nation.create	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.746	\N	\N	en
156	u3g9n01remet1ovtl017yuzt	api::nation.nation.delete	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.746	\N	\N	en
158	zfy2uue3zahq48mbs80lvkxt	api::school-class.school-class.findOne	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.747	\N	\N	en
160	lm380e7inh7zc712kqc1fpxl	api::school-class.school-class.update	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.747	\N	\N	en
162	xi0udtvuyq4ceky96e3rmw08	api::student.student.find	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.748	\N	\N	en
164	rv0na0sr6zsrqs4bmfssdhcv	api::student.student.create	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.748	\N	\N	en
166	xrrc4fkb2xsikeqdopjx6m0a	api::student.student.delete	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.749	\N	\N	en
168	nx27j91o1zfzrbxwzhs630sx	api::student-document.student-document.findOne	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.749	\N	\N	en
170	ff1ybomd79ox15ctzz08rz6l	api::student-document.student-document.update	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.749	\N	\N	en
172	c9b2inkhqid5q6uhj7wz68j1	api::subject.subject.find	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.749	\N	\N	en
174	hzg37533vl4un1rhn8n80xwi	api::subject.subject.create	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.749	\N	\N	en
176	y50bc1zv60s9b0gzo3uk36px	api::subject.subject.delete	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.749	\N	\N	en
178	hhwf9desfuk5l12il93hfp6m	plugin::upload.content-api.find	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.75	\N	\N	en
180	iae2j7ks0xujuu634nr1tp07	plugin::upload.content-api.destroy	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.75	\N	\N	en
182	vjo016g5lpx8kzkhr08mxmzg	plugin::i18n.locales.listLocales	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.751	\N	\N	en
184	h59ycnfwupbgzdpcwmor05wq	plugin::users-permissions.auth.changePassword	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.751	\N	\N	en
186	u99o4qewpplrlbj1mt6n9vm1	plugin::users-permissions.auth.refresh	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.752	\N	\N	en
188	lxfqqt12o3asmeyho016yalo	plugin::users-permissions.auth.connect	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.752	\N	\N	en
190	g6fiva3u0hozaz93ikq6wwkz	plugin::users-permissions.auth.register	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.752	\N	\N	en
192	gfnkjq9mfzzl6aojmujiwlrd	plugin::users-permissions.auth.sendEmailConfirmation	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.752	\N	\N	en
194	g35gv1gfcirecdvyxptipylq	plugin::users-permissions.user.update	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.753	\N	\N	en
196	m6yog8sxowr8wb1jr5ieakxy	plugin::users-permissions.user.findOne	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.753	\N	\N	en
198	cj8hgg9yeqifvg702x0hcr3v	plugin::users-permissions.user.destroy	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.753	\N	\N	en
200	w8l0vwudjtpy8uu61r6hggdd	plugin::users-permissions.role.createRole	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.753	\N	\N	en
202	aul4kj99zpn6d2x0msa3rzvi	plugin::users-permissions.role.find	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.753	\N	\N	en
204	bsyr4b2k0xj6j8x0htyrf3c4	plugin::users-permissions.role.deleteRole	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.753	\N	\N	en
343	d6c3i3nnfdx67heedo3si2z0	api::training-assignment.training-assignment.create	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.247	\N	\N	en
345	kawna317w6n5mwdy6knduq0h	api::training-assignment.training-assignment.delete	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.247	\N	\N	en
347	aj7ya33ulpf93q1pfz1bssls	plugin::content-type-builder.components.getComponent	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.248	\N	\N	en
349	l8ktqt4xa3hwera9yw2hjn55	plugin::content-type-builder.content-types.getContentType	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.249	\N	\N	en
351	ccg8h81lc89uw5mwsfc3rx2r	plugin::users-permissions.auth.callback	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.249	\N	\N	en
353	w3uw9jwanm8nyaiz644m15k5	plugin::users-permissions.auth.resetPassword	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.249	\N	\N	en
355	lz3jc8rg3wdwcd9c3jx7xuje	plugin::users-permissions.auth.logout	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.249	\N	\N	en
357	iomv3duc9yvl64g4mbqo0rkb	plugin::users-permissions.auth.forgotPassword	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.249	\N	\N	en
359	pk8p0jqqo1c19o7bmhv6lfvs	plugin::users-permissions.auth.emailConfirmation	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.25	\N	\N	en
361	q19r7zyp37e9wyzl1fkz0pj7	plugin::users-permissions.user.create	2026-02-26 09:58:36.226	2026-02-26 09:58:36.226	2026-02-26 09:58:36.25	\N	\N	en
155	gip056wzrb3i3854s3822oqi	api::nation.nation.update	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.746	\N	\N	en
157	wqbdaxh1tq5fl3o2lii8o8qy	api::school-class.school-class.find	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.747	\N	\N	en
159	dhbfnbsll7y6lnauafvmz4hj	api::school-class.school-class.create	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.747	\N	\N	en
161	qrd0tz3vbi1dy3hytqvxxhl8	api::school-class.school-class.delete	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.747	\N	\N	en
163	a21xsls80rkkqpf2sr5x1o7w	api::student.student.findOne	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.748	\N	\N	en
165	aa8upvudn2jl4fbw57hm2vq2	api::student.student.update	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.748	\N	\N	en
167	zrnee55oj24lcyligzfiddkv	api::student-document.student-document.find	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.749	\N	\N	en
169	ioxcqa5xzadn2q41joqzxpq7	api::student-document.student-document.create	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.749	\N	\N	en
171	isllumiik1tw2suwzv9pzvaf	api::student-document.student-document.delete	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.749	\N	\N	en
173	q5l9r475065v6lge5cqe768m	api::subject.subject.findOne	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.749	\N	\N	en
175	e3vi6bmpccyt9gib4va8wkqw	api::subject.subject.update	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.749	\N	\N	en
177	j2o7tr6qhkfvtk3fgdrgcjs2	plugin::email.email.send	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.75	\N	\N	en
179	lgl98nf4t5fy8rb4tn254wtg	plugin::upload.content-api.findOne	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.75	\N	\N	en
181	vmzrjz98r3lbj1scpmajzlgx	plugin::upload.content-api.upload	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.75	\N	\N	en
183	r522urkwyeb4i37edtxpmc16	plugin::users-permissions.auth.callback	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.751	\N	\N	en
185	ncajqozpn4wn2cv70kmzo5p6	plugin::users-permissions.auth.resetPassword	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.751	\N	\N	en
187	mii1rmw920o7bay4nnsgt2du	plugin::users-permissions.auth.logout	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.752	\N	\N	en
189	gzsc7ll2xmx8m1taasz69l4h	plugin::users-permissions.auth.forgotPassword	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.752	\N	\N	en
191	lyrc44yferpfkty7mxqle7ya	plugin::users-permissions.auth.emailConfirmation	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.752	\N	\N	en
193	uk7fti8xssfyhy07dxpx7a2s	plugin::users-permissions.user.create	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.752	\N	\N	en
195	rp1ziix58ltfewq010q36wu6	plugin::users-permissions.user.find	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.753	\N	\N	en
197	x0hdx9d8x6bbym24sea09u25	plugin::users-permissions.user.count	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.753	\N	\N	en
199	ibcydu6asjprpyg7ijbh1ifv	plugin::users-permissions.user.me	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.753	\N	\N	en
201	hon4dkbgr23swryudn80mytn	plugin::users-permissions.role.findOne	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.753	\N	\N	en
203	fsi4ojrfdr2frbke5z44n71g	plugin::users-permissions.role.updateRole	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.753	\N	\N	en
205	qdqqcfcym1dokdwaeazp4spl	plugin::users-permissions.permissions.getPermissions	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.753	\N	\N	en
374	h7c7cywusyesmibcnk1tzw0w	api::print-template.print-template.find	2026-02-26 11:14:45.8	2026-02-26 11:14:45.8	2026-02-26 11:14:45.801	\N	\N	en
375	vpp6u4wc2zlsnp0qj5lkrl65	api::print-template.print-template.findOne	2026-02-26 11:14:45.828	2026-02-26 11:14:45.828	2026-02-26 11:14:45.828	\N	\N	en
376	z39ikm36giulufa1ttg5b5ci	api::print-template.print-template.create	2026-02-26 11:14:45.832	2026-02-26 11:14:45.832	2026-02-26 11:14:45.832	\N	\N	en
377	gz4841ighslloxal9n42m95a	api::print-template.print-template.update	2026-02-26 11:14:45.837	2026-02-26 11:14:45.837	2026-02-26 11:14:45.837	\N	\N	en
378	w5nxofkvsnmxv4kcw4rdpn0u	api::print-template.print-template.delete	2026-02-26 11:14:45.843	2026-02-26 11:14:45.843	2026-02-26 11:14:45.843	\N	\N	en
1	ibzvzt7yduvqk238c5n5et04	plugin::users-permissions.user.me	2026-02-09 15:13:37.074	2026-02-09 15:13:37.074	2026-02-09 15:13:37.074	\N	\N	en
2	vv8bhub809uvclt5rh6egl96	plugin::users-permissions.auth.changePassword	2026-02-09 15:13:37.074	2026-02-09 15:13:37.074	2026-02-09 15:13:37.075	\N	\N	en
3	xlplfu1fx17kfyij40uuvf28	plugin::users-permissions.auth.callback	2026-02-09 15:13:37.094	2026-02-09 15:13:37.094	2026-02-09 15:13:37.094	\N	\N	en
4	f3g7chke769pet82vnbd6ior	plugin::users-permissions.auth.connect	2026-02-09 15:13:37.094	2026-02-09 15:13:37.094	2026-02-09 15:13:37.094	\N	\N	en
5	t33dc1ojjv6shs5dc8yiy65q	plugin::users-permissions.auth.forgotPassword	2026-02-09 15:13:37.094	2026-02-09 15:13:37.094	2026-02-09 15:13:37.095	\N	\N	en
6	nad4ivd9p6vv97zq2793wi0f	plugin::users-permissions.auth.resetPassword	2026-02-09 15:13:37.094	2026-02-09 15:13:37.094	2026-02-09 15:13:37.095	\N	\N	en
9	vum03r5pc8kvlqjwhj351fgo	plugin::users-permissions.auth.sendEmailConfirmation	2026-02-09 15:13:37.094	2026-02-09 15:13:37.094	2026-02-09 15:13:37.095	\N	\N	en
8	dcqo2tme3rfvrs7qwidkdvwj	plugin::users-permissions.auth.emailConfirmation	2026-02-09 15:13:37.094	2026-02-09 15:13:37.094	2026-02-09 15:13:37.095	\N	\N	en
7	owbkle16jmhmkfb43lyirpgc	plugin::users-permissions.auth.register	2026-02-09 15:13:37.094	2026-02-09 15:13:37.094	2026-02-09 15:13:37.095	\N	\N	en
10	abunhjc18gzcpe6yi8b4fq7x	api::classroom.classroom.find	2026-02-15 21:13:40.915	2026-02-15 21:13:40.915	2026-02-15 21:13:40.916	\N	\N	en
11	mbjvupohac0zdctkbhadoo3k	api::classroom.classroom.findOne	2026-02-15 21:13:40.915	2026-02-15 21:13:40.915	2026-02-15 21:13:40.917	\N	\N	en
12	s5ngci6kg3on8ta1tg1dxdat	api::classroom.classroom.create	2026-02-15 21:13:40.915	2026-02-15 21:13:40.915	2026-02-15 21:13:40.917	\N	\N	en
13	ie6f3noc2fy1zenerl7ahs31	api::classroom.classroom.update	2026-02-15 21:13:40.915	2026-02-15 21:13:40.915	2026-02-15 21:13:40.917	\N	\N	en
14	j6alf9v19u0xzfmpg2dm65fa	api::classroom.classroom.delete	2026-02-15 21:13:40.915	2026-02-15 21:13:40.915	2026-02-15 21:13:40.917	\N	\N	en
15	vxv2aql2fux52yz3jwxaiwdf	api::nation.nation.find	2026-02-15 21:13:40.915	2026-02-15 21:13:40.915	2026-02-15 21:13:40.917	\N	\N	en
16	woejgetjxz1r59pipf2oc0ia	api::nation.nation.findOne	2026-02-15 21:13:40.915	2026-02-15 21:13:40.915	2026-02-15 21:13:40.917	\N	\N	en
17	t6epx4il8h9pxm83y2bri3c9	api::nation.nation.create	2026-02-15 21:13:40.915	2026-02-15 21:13:40.915	2026-02-15 21:13:40.917	\N	\N	en
18	fxavj7jc6xemg4n26o4pd04i	api::nation.nation.update	2026-02-15 21:13:40.915	2026-02-15 21:13:40.915	2026-02-15 21:13:40.917	\N	\N	en
19	xbk8gejdsguyv3ntak8v1aqs	api::nation.nation.delete	2026-02-15 21:13:40.915	2026-02-15 21:13:40.915	2026-02-15 21:13:40.917	\N	\N	en
20	wmnty4k5y5znct5vkquvwro2	api::school-class.school-class.find	2026-02-15 21:13:40.915	2026-02-15 21:13:40.915	2026-02-15 21:13:40.917	\N	\N	en
21	hgmd1ia1eu2sepgr2dkn5vxv	api::school-class.school-class.findOne	2026-02-15 21:13:40.915	2026-02-15 21:13:40.915	2026-02-15 21:13:40.918	\N	\N	en
22	r44i94mou9ylfe4edo02f79l	api::school-class.school-class.create	2026-02-15 21:13:40.915	2026-02-15 21:13:40.915	2026-02-15 21:13:40.918	\N	\N	en
23	bok23pmbmmzn3nprucu2fny8	api::school-class.school-class.update	2026-02-15 21:13:40.915	2026-02-15 21:13:40.915	2026-02-15 21:13:40.918	\N	\N	en
24	gbyg5nhr7lzsflf6iawoxj7w	api::school-class.school-class.delete	2026-02-15 21:13:40.915	2026-02-15 21:13:40.915	2026-02-15 21:13:40.918	\N	\N	en
25	psklxi8eiecfqnzyilcqx11r	api::student.student.find	2026-02-15 21:13:40.915	2026-02-15 21:13:40.915	2026-02-15 21:13:40.918	\N	\N	en
26	on0jaq334l29boe2tocjkj2z	api::student.student.findOne	2026-02-15 21:13:40.915	2026-02-15 21:13:40.915	2026-02-15 21:13:40.918	\N	\N	en
27	l264u6uttycy7t3w3bitp91x	api::student.student.create	2026-02-15 21:13:40.915	2026-02-15 21:13:40.915	2026-02-15 21:13:40.918	\N	\N	en
28	brs1s5tm50ojxd7zvqj7oxsw	api::student.student.update	2026-02-15 21:13:40.915	2026-02-15 21:13:40.915	2026-02-15 21:13:40.918	\N	\N	en
29	xsunx0tiezfir9ktsy70oe0p	api::student.student.delete	2026-02-15 21:13:40.915	2026-02-15 21:13:40.915	2026-02-15 21:13:40.918	\N	\N	en
30	o489ag1n3nqm27vl5rzztxb4	api::student-document.student-document.find	2026-02-15 21:13:40.915	2026-02-15 21:13:40.915	2026-02-15 21:13:40.918	\N	\N	en
31	eqho8a09touxi44eg1wig9wn	api::student-document.student-document.findOne	2026-02-15 21:13:40.915	2026-02-15 21:13:40.915	2026-02-15 21:13:40.918	\N	\N	en
32	gx8ol1st4b5zilnyb6grlc0t	api::student-document.student-document.create	2026-02-15 21:13:40.915	2026-02-15 21:13:40.915	2026-02-15 21:13:40.919	\N	\N	en
33	z2lldyx3wqp5500v9zpsn2rh	api::student-document.student-document.update	2026-02-15 21:13:40.915	2026-02-15 21:13:40.915	2026-02-15 21:13:40.919	\N	\N	en
34	o1pj9tu6s8pf1mowwwxomq92	api::student-document.student-document.delete	2026-02-15 21:13:40.915	2026-02-15 21:13:40.915	2026-02-15 21:13:40.919	\N	\N	en
35	w36m1nnzyzefio49qkq03cu6	api::supplier.supplier.find	2026-02-15 21:13:40.915	2026-02-15 21:13:40.915	2026-02-15 21:13:40.919	\N	\N	en
36	lv6gz3hfteegfvep7mst50q6	api::supplier.supplier.findOne	2026-02-15 21:13:40.915	2026-02-15 21:13:40.915	2026-02-15 21:13:40.919	\N	\N	en
37	rhjlajo5fyq73llsbq9v566h	api::supplier.supplier.create	2026-02-15 21:13:40.915	2026-02-15 21:13:40.915	2026-02-15 21:13:40.921	\N	\N	en
38	qf1977un4h2p5nvg37cbnixu	api::supplier.supplier.update	2026-02-15 21:13:40.915	2026-02-15 21:13:40.915	2026-02-15 21:13:40.921	\N	\N	en
39	obouvmsyv3drr662ij4yapf3	api::supplier.supplier.delete	2026-02-15 21:13:40.915	2026-02-15 21:13:40.915	2026-02-15 21:13:40.921	\N	\N	en
40	f7rmosa3n72kpclf9c02tc5s	api::teacher.teacher.find	2026-02-15 21:13:40.915	2026-02-15 21:13:40.915	2026-02-15 21:13:40.921	\N	\N	en
41	kf19qdlfecpnrhgsuodt7iez	api::teacher.teacher.findOne	2026-02-15 21:13:40.915	2026-02-15 21:13:40.915	2026-02-15 21:13:40.921	\N	\N	en
42	pxpks6atkvgucteady1m2r7w	api::teacher.teacher.create	2026-02-15 21:13:40.915	2026-02-15 21:13:40.915	2026-02-15 21:13:40.922	\N	\N	en
43	fqk1jtwuspbg2mwn9snmmdlf	api::teacher.teacher.update	2026-02-15 21:13:40.915	2026-02-15 21:13:40.915	2026-02-15 21:13:40.922	\N	\N	en
44	nmfqz461c7sutibh5v0i5bs0	api::teacher.teacher.delete	2026-02-15 21:13:40.915	2026-02-15 21:13:40.915	2026-02-15 21:13:40.922	\N	\N	en
45	au6eetrnxvhetc7ih888fid1	plugin::content-type-builder.components.getComponents	2026-02-15 21:13:40.915	2026-02-15 21:13:40.915	2026-02-15 21:13:40.922	\N	\N	en
46	oqwqtwd0arj2afqt4gmow2f7	plugin::content-type-builder.components.getComponent	2026-02-15 21:13:40.915	2026-02-15 21:13:40.915	2026-02-15 21:13:40.922	\N	\N	en
47	gic3tak3wkm2txlz63njoirh	plugin::email.email.send	2026-02-15 21:13:40.915	2026-02-15 21:13:40.915	2026-02-15 21:13:40.923	\N	\N	en
48	m3tg1z4mqkj06p2qu94n02j9	api::classroom.classroom.find	2026-02-15 21:16:02.078	2026-02-15 21:16:02.078	2026-02-15 21:16:02.079	\N	\N	en
49	okgqfpzqyykzff27wo9d78ec	api::classroom.classroom.findOne	2026-02-15 21:16:02.078	2026-02-15 21:16:02.078	2026-02-15 21:16:02.08	\N	\N	en
50	feghi5df0tsw11j5f1fnuli9	api::classroom.classroom.create	2026-02-15 21:16:02.078	2026-02-15 21:16:02.078	2026-02-15 21:16:02.081	\N	\N	en
51	zwby4hwl553azt04g54yvyuh	api::classroom.classroom.update	2026-02-15 21:16:02.078	2026-02-15 21:16:02.078	2026-02-15 21:16:02.082	\N	\N	en
52	r6spas4db27brd5kzfd3gov2	api::classroom.classroom.delete	2026-02-15 21:16:02.078	2026-02-15 21:16:02.078	2026-02-15 21:16:02.082	\N	\N	en
53	wiysya7f2yprptxa0t7qk5p9	api::nation.nation.find	2026-02-15 21:16:02.078	2026-02-15 21:16:02.078	2026-02-15 21:16:02.082	\N	\N	en
54	t2lr1vx9g2nt3tbfxqqq7kef	api::nation.nation.findOne	2026-02-15 21:16:02.078	2026-02-15 21:16:02.078	2026-02-15 21:16:02.083	\N	\N	en
55	q7y0hhttjiw3tvu63n5ylh93	api::nation.nation.create	2026-02-15 21:16:02.078	2026-02-15 21:16:02.078	2026-02-15 21:16:02.083	\N	\N	en
56	emkyv44aohx44rjhr4tczqgn	api::nation.nation.update	2026-02-15 21:16:02.078	2026-02-15 21:16:02.078	2026-02-15 21:16:02.084	\N	\N	en
57	nkxl4a9hwo6rurf7iy1x7mzc	api::nation.nation.delete	2026-02-15 21:16:02.078	2026-02-15 21:16:02.078	2026-02-15 21:16:02.084	\N	\N	en
58	v5a40kc7swh8dfxg6lbw5wb8	api::school-class.school-class.find	2026-02-15 21:16:02.078	2026-02-15 21:16:02.078	2026-02-15 21:16:02.084	\N	\N	en
59	utrwaiu9rcxrdtt6rx1g8epl	api::school-class.school-class.findOne	2026-02-15 21:16:02.078	2026-02-15 21:16:02.078	2026-02-15 21:16:02.085	\N	\N	en
60	nyah7xewbhar3p5efcb75n29	api::school-class.school-class.create	2026-02-15 21:16:02.078	2026-02-15 21:16:02.078	2026-02-15 21:16:02.086	\N	\N	en
61	j6060p608hvxs3i9awhn1gc5	api::school-class.school-class.update	2026-02-15 21:16:02.078	2026-02-15 21:16:02.078	2026-02-15 21:16:02.087	\N	\N	en
62	h3t68yu9w6a8gy2g3cx71mlu	api::school-class.school-class.delete	2026-02-15 21:16:02.078	2026-02-15 21:16:02.078	2026-02-15 21:16:02.087	\N	\N	en
63	fmoh3z1bpfb85i0peq0g8u2b	api::student.student.find	2026-02-15 21:16:02.078	2026-02-15 21:16:02.078	2026-02-15 21:16:02.088	\N	\N	en
64	cdprwgj9h7btouu0hpk66p5a	api::student.student.findOne	2026-02-15 21:16:02.078	2026-02-15 21:16:02.078	2026-02-15 21:16:02.089	\N	\N	en
97	srtwomjijahw41zzhfxi333t	plugin::upload.content-api.upload	2026-02-15 22:34:36.676	2026-02-15 22:34:36.676	2026-02-15 22:34:36.678	\N	\N	en
92	ravh6pxjuhvkhw1pb9qp188u	plugin::content-type-builder.content-types.getContentTypes	2026-02-15 22:34:36.676	2026-02-15 22:34:36.676	2026-02-15 22:34:36.677	\N	\N	en
94	qt5aujftle1xdlqf5k7w91qi	plugin::upload.content-api.find	2026-02-15 22:34:36.676	2026-02-15 22:34:36.676	2026-02-15 22:34:36.678	\N	\N	en
96	i765cvxe7mb57ib47b1jm5fz	plugin::upload.content-api.destroy	2026-02-15 22:34:36.676	2026-02-15 22:34:36.676	2026-02-15 22:34:36.678	\N	\N	en
95	i6aljby4e476na5xsw5mysot	plugin::upload.content-api.findOne	2026-02-15 22:34:36.676	2026-02-15 22:34:36.676	2026-02-15 22:34:36.678	\N	\N	en
93	e4c4h1ubcx1po225pibsvnma	plugin::content-type-builder.content-types.getContentType	2026-02-15 22:34:36.676	2026-02-15 22:34:36.676	2026-02-15 22:34:36.677	\N	\N	en
98	bjvdytav5i1r19lwqrskvvnp	plugin::i18n.locales.listLocales	2026-02-15 22:34:36.676	2026-02-15 22:34:36.676	2026-02-15 22:34:36.678	\N	\N	en
99	vimye115d9exxzub6ikcwq4e	plugin::users-permissions.auth.callback	2026-02-15 22:34:36.676	2026-02-15 22:34:36.676	2026-02-15 22:34:36.678	\N	\N	en
100	n0ja3gbip4w6rp42c0ivebio	plugin::users-permissions.auth.resetPassword	2026-02-15 22:34:36.676	2026-02-15 22:34:36.676	2026-02-15 22:34:36.678	\N	\N	en
101	hcbitsfhwt3920ww1neapu3r	plugin::users-permissions.auth.refresh	2026-02-15 22:34:36.676	2026-02-15 22:34:36.676	2026-02-15 22:34:36.678	\N	\N	en
102	xdqcavubrs2tlrbot2vi65t3	plugin::users-permissions.auth.logout	2026-02-15 22:34:36.676	2026-02-15 22:34:36.676	2026-02-15 22:34:36.678	\N	\N	en
103	jn054xaslcoy0filure3jps2	plugin::users-permissions.auth.connect	2026-02-15 22:34:36.676	2026-02-15 22:34:36.676	2026-02-15 22:34:36.678	\N	\N	en
104	mperm59kjoinqjcm828eu5c2	plugin::users-permissions.auth.forgotPassword	2026-02-15 22:34:36.676	2026-02-15 22:34:36.676	2026-02-15 22:34:36.678	\N	\N	en
105	ds0658h5yiihkvbv147lfs4d	plugin::users-permissions.auth.register	2026-02-15 22:34:36.676	2026-02-15 22:34:36.676	2026-02-15 22:34:36.679	\N	\N	en
106	j2t69v7kfzfhq0pvz5y57e7a	plugin::users-permissions.auth.emailConfirmation	2026-02-15 22:34:36.676	2026-02-15 22:34:36.676	2026-02-15 22:34:36.679	\N	\N	en
107	alyrkkroywsvfpmzz45mca9n	plugin::users-permissions.auth.sendEmailConfirmation	2026-02-15 22:34:36.676	2026-02-15 22:34:36.676	2026-02-15 22:34:36.679	\N	\N	en
108	rsx0mtof6ih58aojs5lmf3n5	plugin::users-permissions.user.create	2026-02-15 22:34:36.676	2026-02-15 22:34:36.676	2026-02-15 22:34:36.679	\N	\N	en
109	bj5dyhk72aaoekjf51ei2euz	plugin::users-permissions.user.update	2026-02-15 22:34:36.676	2026-02-15 22:34:36.676	2026-02-15 22:34:36.679	\N	\N	en
110	kko00uin68qh7ew920tidqz2	plugin::users-permissions.user.find	2026-02-15 22:34:36.676	2026-02-15 22:34:36.676	2026-02-15 22:34:36.679	\N	\N	en
111	a2m06ox8n37gtkczotzjrluo	plugin::users-permissions.user.findOne	2026-02-15 22:34:36.676	2026-02-15 22:34:36.676	2026-02-15 22:34:36.679	\N	\N	en
112	p3jgzhw7dtum14n7hf9fwtkg	plugin::users-permissions.user.count	2026-02-15 22:34:36.676	2026-02-15 22:34:36.676	2026-02-15 22:34:36.679	\N	\N	en
113	dtynfk37g8bcytb0zsq5bemn	plugin::users-permissions.user.destroy	2026-02-15 22:34:36.676	2026-02-15 22:34:36.676	2026-02-15 22:34:36.679	\N	\N	en
114	ppch7vu8ocis5rf5kn6m2dbf	plugin::users-permissions.role.createRole	2026-02-15 22:34:36.676	2026-02-15 22:34:36.676	2026-02-15 22:34:36.679	\N	\N	en
115	nbps9dnu5sxr9no8yv1jhirj	plugin::users-permissions.role.findOne	2026-02-15 22:34:36.676	2026-02-15 22:34:36.676	2026-02-15 22:34:36.679	\N	\N	en
116	s1qj281j25xfe2txhme0nns4	plugin::users-permissions.role.find	2026-02-15 22:34:36.676	2026-02-15 22:34:36.676	2026-02-15 22:34:36.679	\N	\N	en
117	i7b8tj1dpdsajprlmlq6hy1w	plugin::users-permissions.role.updateRole	2026-02-15 22:34:36.676	2026-02-15 22:34:36.676	2026-02-15 22:34:36.68	\N	\N	en
118	cjhj12nw2i13p3ec3r61097f	plugin::users-permissions.role.deleteRole	2026-02-15 22:34:36.676	2026-02-15 22:34:36.676	2026-02-15 22:34:36.68	\N	\N	en
119	h0nok02m5nz9y0hhudijnbt3	plugin::users-permissions.permissions.getPermissions	2026-02-15 22:34:36.676	2026-02-15 22:34:36.676	2026-02-15 22:34:36.68	\N	\N	en
120	m6rww8292bek8thuvf98vdei	api::subject.subject.find	2026-02-15 22:34:44.467	2026-02-15 22:34:44.467	2026-02-15 22:34:44.467	\N	\N	en
121	uzri5mynfljnqdbr7ekwubzp	api::subject.subject.findOne	2026-02-15 22:34:44.467	2026-02-15 22:34:44.467	2026-02-15 22:34:44.467	\N	\N	en
122	a2y3uldg1kolgpdkzqne7wux	api::subject.subject.create	2026-02-15 22:34:44.467	2026-02-15 22:34:44.467	2026-02-15 22:34:44.467	\N	\N	en
123	bhk8mhvg9g6gj4ylcopt6ry2	api::subject.subject.update	2026-02-15 22:34:44.467	2026-02-15 22:34:44.467	2026-02-15 22:34:44.467	\N	\N	en
124	d9e5ecwvkhij2q1wihtwn8c5	api::subject.subject.delete	2026-02-15 22:34:44.467	2026-02-15 22:34:44.467	2026-02-15 22:34:44.468	\N	\N	en
125	wxbxa3fhlc7cu1iqc8wko05z	plugin::email.email.send	2026-02-15 22:35:35.316	2026-02-15 22:35:35.316	2026-02-15 22:35:35.317	\N	\N	en
126	tsy8cdv5c4r3543ynr2ognuc	plugin::upload.content-api.find	2026-02-15 22:35:35.316	2026-02-15 22:35:35.316	2026-02-15 22:35:35.317	\N	\N	en
127	gw54272sbvq1ko3ouxe69du2	plugin::upload.content-api.findOne	2026-02-15 22:35:35.316	2026-02-15 22:35:35.316	2026-02-15 22:35:35.317	\N	\N	en
128	jpxtr1pum4bn0zn8zelhcz51	plugin::upload.content-api.destroy	2026-02-15 22:35:35.316	2026-02-15 22:35:35.316	2026-02-15 22:35:35.317	\N	\N	en
129	woco33kmvdc32zfl5zu4o2h5	plugin::upload.content-api.upload	2026-02-15 22:35:35.316	2026-02-15 22:35:35.316	2026-02-15 22:35:35.318	\N	\N	en
130	ja2jzz58xkqf7jjwcrhodsp9	plugin::i18n.locales.listLocales	2026-02-15 22:35:35.316	2026-02-15 22:35:35.316	2026-02-15 22:35:35.318	\N	\N	en
131	mq352t9riaxy4i5vneivjd8a	plugin::users-permissions.auth.changePassword	2026-02-15 22:35:35.316	2026-02-15 22:35:35.316	2026-02-15 22:35:35.318	\N	\N	en
132	h6hf37lff2dqpfk71d9ja01d	plugin::users-permissions.auth.refresh	2026-02-15 22:35:35.316	2026-02-15 22:35:35.316	2026-02-15 22:35:35.318	\N	\N	en
133	im9dr6zzssyeldvplj1am1xx	plugin::users-permissions.auth.logout	2026-02-15 22:35:35.316	2026-02-15 22:35:35.316	2026-02-15 22:35:35.321	\N	\N	en
134	agrt4kifbqys8d70eaqpnll2	plugin::users-permissions.user.create	2026-02-15 22:35:35.316	2026-02-15 22:35:35.316	2026-02-15 22:35:35.321	\N	\N	en
135	oq89lo623eh631o8ritbj0ow	plugin::users-permissions.user.update	2026-02-15 22:35:35.316	2026-02-15 22:35:35.316	2026-02-15 22:35:35.321	\N	\N	en
136	s2kxm8sw9wqdq0m37najva23	plugin::users-permissions.user.find	2026-02-15 22:35:35.316	2026-02-15 22:35:35.316	2026-02-15 22:35:35.322	\N	\N	en
137	tla8y061l5s827hi5ofe88tc	plugin::users-permissions.user.findOne	2026-02-15 22:35:35.316	2026-02-15 22:35:35.316	2026-02-15 22:35:35.322	\N	\N	en
138	susjo6e6v0rf7lf238nfus8w	plugin::users-permissions.user.count	2026-02-15 22:35:35.316	2026-02-15 22:35:35.316	2026-02-15 22:35:35.322	\N	\N	en
139	h77mugpz8461hxunjk0odexg	plugin::users-permissions.user.destroy	2026-02-15 22:35:35.316	2026-02-15 22:35:35.316	2026-02-15 22:35:35.322	\N	\N	en
140	iew59mjrhs21v90evzlt5xxc	plugin::users-permissions.user.me	2026-02-15 22:35:35.316	2026-02-15 22:35:35.316	2026-02-15 22:35:35.322	\N	\N	en
141	xoe16od9st2plkr2s4ljggl3	plugin::users-permissions.role.createRole	2026-02-15 22:35:35.316	2026-02-15 22:35:35.316	2026-02-15 22:35:35.323	\N	\N	en
142	e1x7cdmv8a0hhy3l63ml7h7q	plugin::users-permissions.role.findOne	2026-02-15 22:35:35.316	2026-02-15 22:35:35.316	2026-02-15 22:35:35.323	\N	\N	en
143	tlr28aef37hynhjl6d6kuzmz	plugin::users-permissions.role.find	2026-02-15 22:35:35.316	2026-02-15 22:35:35.316	2026-02-15 22:35:35.323	\N	\N	en
144	yod8os9lziyupspqiwyt9k5a	plugin::users-permissions.role.updateRole	2026-02-15 22:35:35.316	2026-02-15 22:35:35.316	2026-02-15 22:35:35.323	\N	\N	en
145	nmx7yda7bv15hdstmsn8ya3l	plugin::users-permissions.role.deleteRole	2026-02-15 22:35:35.316	2026-02-15 22:35:35.316	2026-02-15 22:35:35.324	\N	\N	en
146	zc7y3lkgsnl4kzz97nezxjb8	plugin::users-permissions.permissions.getPermissions	2026-02-15 22:35:35.316	2026-02-15 22:35:35.316	2026-02-15 22:35:35.324	\N	\N	en
148	d2hmu9o3eamhuakielmunrqc	api::classroom.classroom.findOne	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.746	\N	\N	en
147	sr5hei48886i2rhdta8m9q9v	api::classroom.classroom.find	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	\N	\N	en
149	nl5rxmj1y796kqui3yo77ovl	api::classroom.classroom.create	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.746	\N	\N	en
150	xo563ix5dlexabc7q34v5mni	api::classroom.classroom.update	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.746	\N	\N	en
151	dkbk1d88ccjbojnzfvqz87ap	api::classroom.classroom.delete	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.746	\N	\N	en
152	nb6pf5oa0nu59cs909csaqzh	api::nation.nation.find	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.746	\N	\N	en
153	roik2k1efjrcf0uic3mi91kl	api::nation.nation.findOne	2026-02-16 12:38:11.745	2026-02-16 12:38:11.745	2026-02-16 12:38:11.746	\N	\N	en
206	exbkd2unbq8fe2s8zud8ztx6	api::class-decision.class-decision.find	2026-02-17 13:49:03.067	2026-02-17 13:49:03.067	2026-02-17 13:49:03.068	\N	\N	en
209	gl93ujy5rj7pkrw3a7yxji52	api::class-decision.class-decision.update	2026-02-17 13:49:03.067	2026-02-17 13:49:03.067	2026-02-17 13:49:03.07	\N	\N	en
207	ckjenhabgbawp95rwg5c1h9g	api::class-decision.class-decision.findOne	2026-02-17 13:49:03.067	2026-02-17 13:49:03.067	2026-02-17 13:49:03.068	\N	\N	en
208	svbirg6xth4wmylgplcs01i5	api::class-decision.class-decision.create	2026-02-17 13:49:03.067	2026-02-17 13:49:03.067	2026-02-17 13:49:03.069	\N	\N	en
210	acq8c7bcdj6vh68vpbe53ywh	api::class-decision.class-decision.delete	2026-02-17 13:49:03.067	2026-02-17 13:49:03.067	2026-02-17 13:49:03.07	\N	\N	en
211	f12yomjnh9bc26es8fey6ivg	api::class-decision.class-decision.find	2026-02-17 13:51:33.585	2026-02-17 13:51:33.585	2026-02-17 13:51:33.585	\N	\N	en
212	ylankmq1apm8q5vkull15sa5	api::class-decision.class-decision.findOne	2026-02-17 13:51:33.594	2026-02-17 13:51:33.594	2026-02-17 13:51:33.594	\N	\N	en
213	j4wfeykbztrwdnsn2114lkyr	api::class-decision.class-decision.create	2026-02-17 13:51:33.607	2026-02-17 13:51:33.607	2026-02-17 13:51:33.607	\N	\N	en
214	ctwqtd8s2ztyncu9i20s9ffn	api::class-decision.class-decision.update	2026-02-17 13:51:33.62	2026-02-17 13:51:33.62	2026-02-17 13:51:33.62	\N	\N	en
215	dv1yfiuubqcss2umjnn9tvg0	api::class-decision.class-decision.delete	2026-02-17 13:51:33.628	2026-02-17 13:51:33.628	2026-02-17 13:51:33.629	\N	\N	en
216	thl1537ilealdns9ti5stvbc	api::class-decision.class-decision.find	2026-02-17 13:58:04.474	2026-02-17 13:58:04.474	2026-02-17 13:58:04.475	\N	\N	en
217	yefab3tiuahmma6spzl1qgoz	api::class-decision.class-decision.findOne	2026-02-17 13:58:04.474	2026-02-17 13:58:04.474	2026-02-17 13:58:04.475	\N	\N	en
218	ypm7fy66iu6yh2pq2jge7gmn	api::class-decision.class-decision.create	2026-02-17 13:58:04.474	2026-02-17 13:58:04.474	2026-02-17 13:58:04.476	\N	\N	en
219	sa313lo3z4vhvk08zu7kv6re	api::class-decision.class-decision.update	2026-02-17 13:58:04.474	2026-02-17 13:58:04.474	2026-02-17 13:58:04.476	\N	\N	en
220	uzpqr9v936xugiyh8tbw0q77	api::class-decision.class-decision.delete	2026-02-17 13:58:04.474	2026-02-17 13:58:04.474	2026-02-17 13:58:04.477	\N	\N	en
221	ncz19uef08v47jdwyz6uts3c	api::training-assignment.training-assignment.find	2026-02-17 14:58:12.974	2026-02-17 14:58:12.974	2026-02-17 14:58:12.974	\N	\N	en
222	q9e0ea18ewebzjbiii3hwbje	api::training-assignment.training-assignment.findOne	2026-02-17 14:58:13.053	2026-02-17 14:58:13.053	2026-02-17 14:58:13.054	\N	\N	en
223	r275v8otn2hgnide02bju847	api::training-assignment.training-assignment.create	2026-02-17 14:58:13.065	2026-02-17 14:58:13.065	2026-02-17 14:58:13.066	\N	\N	en
224	uxobbrjbvmw5zusmd70vwzta	api::training-assignment.training-assignment.update	2026-02-17 14:58:13.072	2026-02-17 14:58:13.072	2026-02-17 14:58:13.072	\N	\N	en
225	ym67sirippvduietk7v1wplz	api::training-assignment.training-assignment.delete	2026-02-17 14:58:13.078	2026-02-17 14:58:13.078	2026-02-17 14:58:13.079	\N	\N	en
226	kjqyj1uk9ksghhu4gkgys8gs	api::exam-approval.exam-approval.find	2026-02-17 15:16:18.649	2026-02-17 15:16:18.649	2026-02-17 15:16:18.649	\N	\N	en
227	wrhbr9jw15gqydj1pubg57pp	api::exam-approval.exam-approval.findOne	2026-02-17 15:16:18.655	2026-02-17 15:16:18.655	2026-02-17 15:16:18.655	\N	\N	en
228	blov77pbnu4ug7lsq81sllix	api::exam-approval.exam-approval.create	2026-02-17 15:16:18.66	2026-02-17 15:16:18.66	2026-02-17 15:16:18.661	\N	\N	en
229	cz6sfk7i170rpejgvvstxn28	api::exam-approval.exam-approval.update	2026-02-17 15:16:18.664	2026-02-17 15:16:18.664	2026-02-17 15:16:18.664	\N	\N	en
230	n7zxjqqcwf3a8jcsqovltl8v	api::exam-approval.exam-approval.delete	2026-02-17 15:16:18.668	2026-02-17 15:16:18.668	2026-02-17 15:16:18.668	\N	\N	en
231	drzgn6kijnbk055ra41osm5j	api::exam-grade.exam-grade.find	2026-02-17 15:27:20.255	2026-02-17 15:27:20.255	2026-02-17 15:27:20.255	\N	\N	en
232	ebrv6i8sstjid4vg39wxec7l	api::exam-grade.exam-grade.findOne	2026-02-17 15:27:20.265	2026-02-17 15:27:20.265	2026-02-17 15:27:20.265	\N	\N	en
233	ot022x9rs2o8ekhfzlmqzw23	api::exam-grade.exam-grade.create	2026-02-17 15:27:20.272	2026-02-17 15:27:20.272	2026-02-17 15:27:20.272	\N	\N	en
234	nqs2cim3tw5vzyj9zq38i0vs	api::exam-grade.exam-grade.update	2026-02-17 15:27:20.277	2026-02-17 15:27:20.277	2026-02-17 15:27:20.278	\N	\N	en
235	hmlvbtiafkcv0k5gciqyfgii	api::exam-grade.exam-grade.delete	2026-02-17 15:27:20.284	2026-02-17 15:27:20.284	2026-02-17 15:27:20.284	\N	\N	en
237	mj7pohbr0w04w0xgo7gq9xrx	api::audit-log.audit-log.findOne	2026-02-23 22:58:49.918	2026-02-23 22:58:49.918	2026-02-23 22:58:49.92	\N	\N	en
236	a5en6uazcdqfayx7099xwztr	api::audit-log.audit-log.find	2026-02-23 22:58:49.917	2026-02-23 22:58:49.917	2026-02-23 22:58:49.918	\N	\N	en
238	jpf629gb2uioquxunmotwmzv	api::audit-log.audit-log.create	2026-02-23 22:58:49.918	2026-02-23 22:58:49.918	2026-02-23 22:58:49.92	\N	\N	en
239	n6qabd0baf4ba0jnxbkuo8l3	api::audit-log.audit-log.update	2026-02-23 22:58:49.918	2026-02-23 22:58:49.918	2026-02-23 22:58:49.921	\N	\N	en
240	bzop3vf6x50opy1cdjv0ty3s	api::audit-log.audit-log.delete	2026-02-23 22:58:49.918	2026-02-23 22:58:49.918	2026-02-23 22:58:49.922	\N	\N	en
241	axldry3c5dvzpj7tpf7pikf5	api::class-subject.class-subject.find	2026-02-23 22:58:49.918	2026-02-23 22:58:49.918	2026-02-23 22:58:49.922	\N	\N	en
242	lkpz9662hrglrpdx8jrxttoz	api::class-subject.class-subject.findOne	2026-02-23 22:58:49.918	2026-02-23 22:58:49.918	2026-02-23 22:58:49.923	\N	\N	en
243	sg5bjrc0ln8uknk4otkxlool	api::class-subject.class-subject.create	2026-02-23 22:58:49.918	2026-02-23 22:58:49.918	2026-02-23 22:58:49.924	\N	\N	en
244	f78y5uwibcqv4f8acv7gmb81	api::class-subject.class-subject.update	2026-02-23 22:58:49.918	2026-02-23 22:58:49.918	2026-02-23 22:58:49.925	\N	\N	en
245	jrsqpjhtx0rim7eqvrh08qps	api::class-subject.class-subject.delete	2026-02-23 22:58:49.918	2026-02-23 22:58:49.918	2026-02-23 22:58:49.925	\N	\N	en
246	v31vq5qbjzsutyfb0v4ex6lu	api::exam-approval.exam-approval.find	2026-02-23 22:58:49.918	2026-02-23 22:58:49.918	2026-02-23 22:58:49.927	\N	\N	en
247	g7cbfnjs2011tznwh0t8vstu	api::exam-approval.exam-approval.findOne	2026-02-23 22:58:49.918	2026-02-23 22:58:49.918	2026-02-23 22:58:49.927	\N	\N	en
248	qex9ggrip8v1ygld0fee9j1y	api::exam-approval.exam-approval.create	2026-02-23 22:58:49.918	2026-02-23 22:58:49.918	2026-02-23 22:58:49.928	\N	\N	en
249	gpy31idgtxctxn85ymdc6lws	api::exam-approval.exam-approval.update	2026-02-23 22:58:49.918	2026-02-23 22:58:49.918	2026-02-23 22:58:49.928	\N	\N	en
250	levvcl20r8bbs2jwn7mdw8s6	api::exam-approval.exam-approval.delete	2026-02-23 22:58:49.918	2026-02-23 22:58:49.918	2026-02-23 22:58:49.929	\N	\N	en
251	fin2rf4qu1navfrvvk08yzs0	api::exam-grade.exam-grade.find	2026-02-23 22:58:49.918	2026-02-23 22:58:49.918	2026-02-23 22:58:49.929	\N	\N	en
252	mrmk5bhpingp37qtbbnmp2rk	api::exam-grade.exam-grade.findOne	2026-02-23 22:58:49.918	2026-02-23 22:58:49.918	2026-02-23 22:58:49.93	\N	\N	en
253	kjpvb8c4rlfcuchq713akb2d	api::exam-grade.exam-grade.create	2026-02-23 22:58:49.918	2026-02-23 22:58:49.918	2026-02-23 22:58:49.93	\N	\N	en
254	paq7qsz56v885aqyhcsdb1ot	api::exam-grade.exam-grade.update	2026-02-23 22:58:49.918	2026-02-23 22:58:49.918	2026-02-23 22:58:49.93	\N	\N	en
255	tjo2f8x0ex39elymyy2yfv68	api::exam-grade.exam-grade.delete	2026-02-23 22:58:49.918	2026-02-23 22:58:49.918	2026-02-23 22:58:49.932	\N	\N	en
256	uvba58i5d5gq29lr46lau6pf	api::teacher-subject.teacher-subject.find	2026-02-23 22:58:49.918	2026-02-23 22:58:49.918	2026-02-23 22:58:49.932	\N	\N	en
257	cw8s3bl8yx0kzwnq02y5on0l	api::teacher-subject.teacher-subject.findOne	2026-02-23 22:58:49.918	2026-02-23 22:58:49.918	2026-02-23 22:58:49.932	\N	\N	en
258	az4ttalgi0fggjvzif4t3n0m	api::teacher-subject.teacher-subject.create	2026-02-23 22:58:49.918	2026-02-23 22:58:49.918	2026-02-23 22:58:49.932	\N	\N	en
259	uljwkqqxjvfo6vtpauk9xvt0	api::teacher-subject.teacher-subject.update	2026-02-23 22:58:49.918	2026-02-23 22:58:49.918	2026-02-23 22:58:49.932	\N	\N	en
260	una6kvh5x60b79tb3mpnxdfg	api::teacher-subject.teacher-subject.delete	2026-02-23 22:58:49.918	2026-02-23 22:58:49.918	2026-02-23 22:58:49.932	\N	\N	en
261	gahs5zp33spchui59r4o9r76	api::training-assignment.training-assignment.find	2026-02-23 22:58:49.918	2026-02-23 22:58:49.918	2026-02-23 22:58:49.932	\N	\N	en
262	irw0ywhu1e1pmswvp7lmvais	api::training-assignment.training-assignment.findOne	2026-02-23 22:58:49.918	2026-02-23 22:58:49.918	2026-02-23 22:58:49.932	\N	\N	en
263	ve1trdt4keupz7bncdmff5uf	api::training-assignment.training-assignment.create	2026-02-23 22:58:49.918	2026-02-23 22:58:49.918	2026-02-23 22:58:49.933	\N	\N	en
264	royinydiyywhcxvvu74fp1mw	api::training-assignment.training-assignment.update	2026-02-23 22:58:49.918	2026-02-23 22:58:49.918	2026-02-23 22:58:49.933	\N	\N	en
265	wob0h82l6y6zjbiunblc094r	api::training-assignment.training-assignment.delete	2026-02-23 22:58:49.918	2026-02-23 22:58:49.918	2026-02-23 22:58:49.933	\N	\N	en
379	m7jkalzd14ozqkef0wa0d0b1	api::audit-log.audit-log.find	2026-02-26 11:44:43.337	2026-02-26 11:44:43.337	2026-02-26 11:44:43.338	\N	\N	en
380	t2gnktnhg8gc7sn8v6fne2c7	api::audit-log.audit-log.findOne	2026-02-26 11:44:43.346	2026-02-26 11:44:43.346	2026-02-26 11:44:43.347	\N	\N	en
381	j22309t5htl918f0cu2pxd5l	api::audit-log.audit-log.create	2026-02-26 11:44:43.351	2026-02-26 11:44:43.351	2026-02-26 11:44:43.351	\N	\N	en
382	x7lzsndnc6flyxi2n34loay1	api::audit-log.audit-log.update	2026-02-26 11:44:43.356	2026-02-26 11:44:43.356	2026-02-26 11:44:43.356	\N	\N	en
383	e9mif19z5bqlt34exwvk5gpv	api::audit-log.audit-log.delete	2026-02-26 11:44:43.36	2026-02-26 11:44:43.36	2026-02-26 11:44:43.36	\N	\N	en
384	lnieiv78wp10kdr2pjlkrkqd	api::audit-log.audit-log.find	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	\N	\N	\N
385	d457zbwed6d77mawrk10pio0	api::audit-log.audit-log.findOne	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.663	\N	\N	\N
386	qgbysd0vrqloc7z7qg8w4rkp	api::audit-log.audit-log.create	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.663	\N	\N	\N
387	oat68jl2zldbnmu0hhmww6sf	api::audit-log.audit-log.update	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.664	\N	\N	\N
388	qm76z56jxmhh2tgx69asa2by	api::audit-log.audit-log.delete	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.664	\N	\N	\N
389	f7vbtyhshl80pepfbzr13usa	api::class-decision.class-decision.find	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.664	\N	\N	\N
390	zsazgcsskhwnp6ynqcciw698	api::class-decision.class-decision.findOne	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.665	\N	\N	\N
391	plq05wjnvqhcm1wdw0qn1iun	api::class-decision.class-decision.create	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.665	\N	\N	\N
392	h42p0hca6omze95ss3iau0we	api::class-decision.class-decision.update	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.666	\N	\N	\N
393	jvxnyclc8ooeoxxvhrh33cd8	api::class-decision.class-decision.delete	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.666	\N	\N	\N
394	c1w4t9yjbfo7laxilwmrnl3p	api::class-subject.class-subject.find	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.667	\N	\N	\N
395	hp1fuxlkv1to0s0mczb0skek	api::class-subject.class-subject.findOne	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.667	\N	\N	\N
396	xro3j3gxzn7peht01flayoie	api::class-subject.class-subject.create	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.667	\N	\N	\N
397	ocr1g5w3t0mfpvjaeuc47v0u	api::class-subject.class-subject.update	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.668	\N	\N	\N
398	lqdoq32d33x8102i50jopn4a	api::class-subject.class-subject.delete	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.668	\N	\N	\N
399	w1i1se08s5c8maes30855tnz	api::classroom.classroom.find	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.668	\N	\N	\N
401	mn6yzdju9mokhk2lmbaw6pti	api::classroom.classroom.delete	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.67	\N	\N	\N
400	fn6yn61zrsppvb96ep5a886a	api::classroom.classroom.findOne	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.668	\N	\N	\N
402	srqd7rlmvs750enog72fgeqq	api::classroom.classroom.create	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.669	\N	\N	\N
403	pjedvx66554hbbkl55q48wrv	api::classroom.classroom.update	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.669	\N	\N	\N
404	qh8l71fyw4966ufomk8mv8fm	api::exam-approval.exam-approval.find	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.67	\N	\N	\N
405	vdgf0mgh3s2p77nbypewliyg	api::exam-approval.exam-approval.findOne	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.671	\N	\N	\N
406	a66n7pbwttjpqw75zohioras	api::exam-approval.exam-approval.create	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.671	\N	\N	\N
408	b29wxsxmxcfacirnz5eede96	api::exam-grade.exam-grade.find	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.672	\N	\N	\N
407	xiis2cbig5cysal5sa17lhol	api::exam-approval.exam-approval.update	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.671	\N	\N	\N
422	apx2jktdosy6fufq94a7v3vp	api::print-template.print-template.update	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.673	\N	\N	\N
428	mzmvckhfyo4mq8hwba2xv1tp	api::school-class.school-class.delete	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.674	\N	\N	\N
439	wuo257tjz83t0zf5o0yr3aeu	api::subject.subject.find	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.674	\N	\N	\N
450	grufzb8ciygdx65umo3kxf2v	api::teacher.teacher.findOne	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.675	\N	\N	\N
457	yrb15zr18seveajcc5ips63k	api::teacher-subject.teacher-subject.update	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.676	\N	\N	\N
465	oidvje1h7xuz82vfrfha5zfm	plugin::content-type-builder.components.getComponent	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.677	\N	\N	\N
476	cm6szmuf73hpwz9fncjzed1k	plugin::users-permissions.auth.emailConfirmation	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.679	\N	\N	\N
487	y8akx84l8llno8ekbbgjnlkk	plugin::users-permissions.role.find	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.68	\N	\N	\N
413	p57qx340fpp0nsucju3o3w7u	api::exam-grade.exam-grade.delete	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.672	\N	\N	\N
426	hjuymblajrnpizon111y7rk0	api::school-class.school-class.create	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.674	\N	\N	\N
434	umaayhyxa390oit0ufx5w3kj	api::student-document.student-document.find	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.674	\N	\N	\N
442	agi4w33af6pbcyh0qkcdswsa	api::subject.subject.update	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.675	\N	\N	\N
453	q8deqzidqxrq93omeqo4fvtp	api::teacher.teacher.delete	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.676	\N	\N	\N
462	eewixe6xeh72znbhdv7t4das	api::training-assignment.training-assignment.update	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.676	\N	\N	\N
473	ap8gywjka47bd3b3emq9mv4n	plugin::users-permissions.auth.connect	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.678	\N	\N	\N
484	r6l1elhf1k7fd6kiajal5ldu	plugin::users-permissions.user.me	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.68	\N	\N	\N
414	sw5sigiic07xud40ct4rrzzb	api::nation.nation.find	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.672	\N	\N	\N
423	p78v7x4hmdlmeggu671y7900	api::print-template.print-template.delete	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.673	\N	\N	\N
432	t37uv9exoh2y900r50v8qp4v	api::student.student.update	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.674	\N	\N	\N
441	xu2n0dmgmmozc8yevedpsufn	api::subject.subject.create	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.675	\N	\N	\N
451	m87dxhn3lllx5z5iytd4m2zo	api::teacher.teacher.create	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.675	\N	\N	\N
464	ih7935zgxikdkeqiaht0uey5	plugin::content-type-builder.components.getComponents	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.677	\N	\N	\N
472	tjxvp8y4o2mbw296dpeb5v8e	plugin::users-permissions.auth.logout	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.678	\N	\N	\N
481	qqcmlnykd15ig461aaf6bnhb	plugin::users-permissions.user.findOne	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.68	\N	\N	\N
415	cv28byibtzvucnhy7j5vwytv	api::nation.nation.findOne	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.672	\N	\N	\N
421	ze1lvg9qj2x81hpnph5kblrs	api::print-template.print-template.create	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.673	\N	\N	\N
429	oicm2t8kjz6mb1a95uy80gr0	api::student.student.find	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.674	\N	\N	\N
440	ale58auhburp9p6if8y5xb34	api::subject.subject.findOne	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.675	\N	\N	\N
448	m19wahejolm4x06epqs5yghw	api::supplier.supplier.delete	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.675	\N	\N	\N
459	k0ij9sqyiq8fvrr6bmnk9vzj	api::training-assignment.training-assignment.find	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.676	\N	\N	\N
467	yyd2n46ykv5eixojodsqpvto	plugin::content-type-builder.content-types.getContentType	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.677	\N	\N	\N
477	ir0q2m5llord42oziyqr1jfk	plugin::users-permissions.auth.sendEmailConfirmation	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.68	\N	\N	\N
489	bogmhhxad3mtkiwiu0encqfu	plugin::users-permissions.role.deleteRole	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.68	\N	\N	\N
410	oihye152eanwkea0i7cl0dor	api::exam-grade.exam-grade.findOne	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.672	\N	\N	\N
418	xs343nh53v1m9rvlvqttfimy	api::nation.nation.delete	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.672	\N	\N	\N
430	j736gjd6miakhvh8k8onzfj8	api::student.student.findOne	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.674	\N	\N	\N
438	a8m1x6tay22kj399bsq36dgu	api::student-document.student-document.delete	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.674	\N	\N	\N
447	o0jjlwcht8wpqgflhhajob8z	api::supplier.supplier.update	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.675	\N	\N	\N
460	leottv4nmure71m7ua9nlhdm	api::training-assignment.training-assignment.findOne	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.676	\N	\N	\N
470	cnx11uievvegvvbbo33m1br6	plugin::users-permissions.auth.resetPassword	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.678	\N	\N	\N
480	unfx29uyfbxp6r5149paap0w	plugin::users-permissions.user.find	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.68	\N	\N	\N
416	chen2khvravy2tfpgo1bell4	api::nation.nation.create	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.672	\N	\N	\N
424	vdu8byh55ct3xfynsy9t9oqp	api::school-class.school-class.find	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.673	\N	\N	\N
436	vrworcf4scbpb50dko3e4fc1	api::student-document.student-document.create	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.674	\N	\N	\N
449	ar6eflwkqvayykt9gr1skp64	api::teacher.teacher.find	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.675	\N	\N	\N
458	mykfjpwxvrrjxtwsy4tlbb86	api::teacher-subject.teacher-subject.delete	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.676	\N	\N	\N
469	yrd57hr105oz0ka43cps6sb2	plugin::users-permissions.auth.changePassword	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.677	\N	\N	\N
478	fh9toghjnf12fgq2t4swevb5	plugin::users-permissions.user.create	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.68	\N	\N	\N
486	wq7k4cntt9desvksfvie8u0q	plugin::users-permissions.role.findOne	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.68	\N	\N	\N
417	jckape22havdnl0nxi70x5x9	api::nation.nation.update	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.672	\N	\N	\N
427	h30zhk9g9jun95gqyo0cl3v5	api::school-class.school-class.update	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.674	\N	\N	\N
435	vuilr951oiraz4ar2wyfjxll	api::student-document.student-document.findOne	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.674	\N	\N	\N
445	vk1n5ks3yb90j1lwxw739i8w	api::supplier.supplier.findOne	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.675	\N	\N	\N
456	bh59ll63rhcjoh8p0ilk7lsd	api::teacher-subject.teacher-subject.create	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.676	\N	\N	\N
468	u3wyz854mty6ba0dr9jopum6	plugin::users-permissions.auth.callback	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.677	\N	\N	\N
479	kolat1pqvpblo0i1pr43gic4	plugin::users-permissions.user.update	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.68	\N	\N	\N
485	vo7buzpaqrp5c5mbbogd4f7c	plugin::users-permissions.role.createRole	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.68	\N	\N	\N
409	icy044if83r7otwgtwccx2p0	api::exam-approval.exam-approval.delete	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.672	\N	\N	\N
425	dld1syt0i9992dmceuuksqvv	api::school-class.school-class.findOne	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.673	\N	\N	\N
437	npe14oaurdi8cerdd0wgz478	api::student-document.student-document.update	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.674	\N	\N	\N
446	cmlidj9wo9gz331f99alllno	api::supplier.supplier.create	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.675	\N	\N	\N
455	d2vou3k2p6najw2grxux7r6j	api::teacher-subject.teacher-subject.findOne	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.676	\N	\N	\N
466	qhq0xsz18np9s6joyst99fq8	plugin::content-type-builder.content-types.getContentTypes	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.677	\N	\N	\N
475	z9vqc61o13c5jglmyx3moldy	plugin::users-permissions.auth.register	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.679	\N	\N	\N
488	h6y25bwh4w45qaxva5xfbep8	plugin::users-permissions.role.updateRole	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.68	\N	\N	\N
491	hbf87x96276ligbjvzvwkzni	api::print-template.print-template.find	2026-03-23 09:35:57.464	2026-03-23 09:35:57.464	2026-03-23 09:35:57.464	\N	\N	\N
492	dcex5a1w7wwpnoylvuldfymr	api::print-template.print-template.findOne	2026-03-23 09:35:57.493	2026-03-23 09:35:57.493	2026-03-23 09:35:57.493	\N	\N	\N
495	jw4z9o09s0sbjxumnvdd8nh9	api::print-template.print-template.create	2026-03-26 01:39:47.755	2026-03-26 01:39:47.755	2026-03-26 01:39:47.756	\N	\N	\N
493	eu4rhba33j13c4q6onos62og	api::audit-log.auth-official.login	2026-03-26 01:39:47.755	2026-03-26 01:39:47.755	2026-03-26 01:39:47.755	\N	\N	\N
494	evn5twcl8siznqsxnaympsv3	api::print-template.print-template.update	2026-03-26 01:39:47.755	2026-03-26 01:39:47.755	2026-03-26 01:39:47.756	\N	\N	\N
411	g9j2kvu6busu9yoz8b0mroal	api::exam-grade.exam-grade.create	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.672	\N	\N	\N
419	vhv4zvbxv4on670ew9lj9053	api::print-template.print-template.find	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.673	\N	\N	\N
431	c3b0tikvp4hd1izx8c3f3yp9	api::student.student.create	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.674	\N	\N	\N
444	cg3xgjy99zm8sm1kqwumm5o9	api::supplier.supplier.find	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.675	\N	\N	\N
452	qp2me2z05omtau82ygw4fepp	api::teacher.teacher.update	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.676	\N	\N	\N
463	h8j9x9csrvaj2zpxszhz5uat	api::training-assignment.training-assignment.delete	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.676	\N	\N	\N
474	ifcgx1kcddlh25ic4aso4itr	plugin::users-permissions.auth.forgotPassword	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.678	\N	\N	\N
483	xirg87mxlggk3kwe0wr26e7n	plugin::users-permissions.user.destroy	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.68	\N	\N	\N
496	xfwdd95o2q3m3z7dgsaxq9vb	api::print-template.print-template.delete	2026-03-26 01:39:47.755	2026-03-26 01:39:47.755	2026-03-26 01:39:47.757	\N	\N	\N
412	j4z6quwm8mdtc5q140abf2lp	api::exam-grade.exam-grade.update	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.672	\N	\N	\N
420	rqfv5pob0pzyqng3qdgaycv4	api::print-template.print-template.findOne	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.673	\N	\N	\N
433	nr01188ink9hzdjl8y2e49kg	api::student.student.delete	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.674	\N	\N	\N
443	q5vr5vf7icz87s3nlcmprcv6	api::subject.subject.delete	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.675	\N	\N	\N
454	uzfsbtbs346558a3cxb24plb	api::teacher-subject.teacher-subject.find	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.676	\N	\N	\N
461	ft0fxau4ifjxhs3oxwt24paq	api::training-assignment.training-assignment.create	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.676	\N	\N	\N
471	u4yzlb9kznvwkrvu8ya8221h	plugin::users-permissions.auth.refresh	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.678	\N	\N	\N
482	q556st8kj8zne1ikf9p9ivt6	plugin::users-permissions.user.count	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.68	\N	\N	\N
490	eaygqdqknottju4xamb8ygrn	plugin::users-permissions.permissions.getPermissions	2026-03-21 04:49:50.662	2026-03-21 04:49:50.662	2026-03-21 04:49:50.681	\N	\N	\N
\.


--
-- Data for Name: up_permissions_role_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
1	2	1	1
2	1	1	1
3	3	2	1
4	4	2	1
5	5	2	2
6	6	2	2
7	9	2	2
8	8	2	2
9	7	2	2
10	10	1	2
11	11	1	2
12	12	1	3
13	13	1	3
14	14	1	4
15	15	1	4
16	16	1	5
17	17	1	5
18	18	1	6
19	19	1	6
20	20	1	7
21	21	1	7
22	22	1	8
23	23	1	8
24	24	1	9
25	25	1	9
26	26	1	10
27	27	1	10
28	28	1	11
29	29	1	11
30	31	1	12
31	30	1	12
32	32	1	13
33	33	1	13
34	34	1	14
35	35	1	14
36	36	1	15
37	37	1	15
38	38	1	16
39	39	1	16
40	40	1	17
41	41	1	18
42	42	1	18
43	43	1	19
44	44	1	19
45	45	1	20
46	46	1	20
47	47	1	21
48	48	2	3
49	49	2	3
50	50	2	4
51	51	2	4
52	52	2	5
53	53	2	5
54	54	2	6
55	55	2	6
56	56	2	7
57	57	2	7
58	58	2	8
59	59	2	8
60	60	2	9
61	61	2	9
62	62	2	10
63	63	2	10
64	64	2	11
65	66	2	11
66	65	2	12
67	67	2	12
68	68	2	13
69	69	2	13
70	70	2	14
71	71	2	14
72	72	2	15
73	73	2	15
74	74	2	16
75	75	2	16
76	77	2	17
77	76	2	17
78	78	2	17
79	81	2	18
80	79	2	18
81	82	2	18
82	80	2	18
83	83	2	19
84	86	2	19
85	87	2	19
86	84	2	19
87	88	2	19
88	85	2	19
89	89	2	20
90	90	2	20
91	91	2	20
92	97	1	22
93	96	1	22
94	98	1	22
95	92	1	22
96	94	1	22
97	95	1	22
98	93	1	23
99	99	1	23
100	100	1	23
101	101	1	24
102	102	1	24
103	103	1	24
104	104	1	24
105	105	1	24
106	106	1	24
107	109	1	25
108	107	1	25
109	108	1	25
110	110	1	25
111	111	1	25
112	112	1	26
113	113	1	26
114	114	1	26
115	115	1	27
116	116	1	27
117	117	1	27
118	118	1	27
119	119	1	28
120	120	1	29
121	121	1	30
122	123	1	30
123	124	1	30
124	122	1	30
125	125	2	21
126	126	2	21
127	127	2	22
128	128	2	23
129	129	2	23
130	130	2	24
131	131	2	24
132	132	2	25
133	133	2	25
134	134	2	26
135	135	2	26
136	136	2	27
137	137	2	27
138	138	2	28
139	139	2	28
140	140	2	29
141	141	2	29
142	142	2	30
143	143	2	30
144	144	2	31
145	145	2	31
146	146	2	32
147	147	3	1
148	148	3	2
149	149	3	2
150	150	3	3
151	151	3	4
152	152	3	4
153	153	3	5
154	154	3	5
155	155	3	6
156	156	3	6
157	157	3	7
158	158	3	7
160	160	3	8
161	161	3	9
162	162	3	10
163	163	3	11
164	164	3	12
166	165	3	13
168	168	3	14
170	170	3	15
172	173	3	16
175	175	3	17
177	178	3	18
181	182	3	19
187	188	3	20
194	194	3	21
201	201	3	23
159	159	3	8
165	166	3	13
167	167	3	14
169	169	3	15
171	172	3	16
173	171	3	16
174	174	3	17
176	177	3	18
178	176	3	18
179	179	3	19
180	181	3	19
182	180	3	19
183	183	3	20
184	185	3	20
185	186	3	20
186	187	3	20
188	184	3	20
189	190	3	21
190	189	3	21
191	191	3	21
192	192	3	21
193	193	3	21
195	196	3	22
196	195	3	22
197	197	3	22
198	198	3	22
199	199	3	22
200	200	3	23
202	202	3	23
203	203	3	24
204	204	3	24
205	205	3	24
210	208	1	31
209	210	1	31
208	207	1	31
207	209	1	31
206	206	1	31
211	211	3	25
212	212	3	26
213	213	3	27
214	214	3	28
215	215	3	29
216	216	2	33
217	217	2	33
218	218	2	34
219	219	2	34
220	220	2	35
221	221	3	30
222	222	3	31
223	223	3	32
224	224	3	33
225	225	3	34
226	226	3	35
227	227	3	36
228	228	3	37
229	229	3	38
230	230	3	39
231	231	3	40
232	232	3	41
233	233	3	42
234	234	3	43
235	235	3	44
236	237	1	32
237	236	1	32
238	238	1	33
239	239	1	33
240	240	1	34
241	241	1	34
242	242	1	35
243	243	1	35
244	244	1	36
245	245	1	36
246	246	1	37
247	247	1	37
248	248	1	38
249	249	1	38
250	250	1	39
251	251	1	39
252	252	1	40
253	253	1	40
254	254	1	41
255	255	1	41
256	256	1	42
257	257	1	42
258	258	1	43
259	259	1	43
260	260	1	44
261	261	1	44
262	262	1	45
263	263	1	45
264	264	1	46
265	265	1	46
267	267	4	1
266	266	4	1
268	268	4	2
269	269	4	3
270	270	4	3
271	271	4	4
272	272	4	4
273	273	4	5
274	275	4	5
275	276	4	6
276	274	4	6
277	277	4	6
278	278	4	7
279	280	4	7
280	279	4	8
281	282	4	8
282	283	4	8
283	281	4	8
284	285	4	8
285	284	4	9
286	287	4	9
287	288	4	9
288	286	4	9
289	289	4	9
290	290	4	9
291	292	4	10
292	293	4	10
293	294	4	10
294	291	4	10
295	295	4	10
296	296	4	10
297	297	4	10
298	298	4	11
299	299	4	11
300	300	4	11
301	301	4	11
302	302	4	11
303	303	4	11
304	304	4	12
305	307	4	12
306	305	4	12
307	306	4	12
308	308	4	13
309	309	4	13
310	310	4	13
311	311	4	13
312	312	4	13
313	313	4	14
314	316	4	14
315	314	4	14
316	315	4	14
317	317	4	14
318	318	4	14
319	319	4	15
320	320	4	15
321	322	4	15
322	321	4	15
323	323	4	15
324	324	4	16
325	325	4	16
326	326	4	16
327	327	4	16
328	328	4	17
329	329	4	17
330	330	4	17
331	331	4	17
339	339	4	19
347	347	4	20
356	357	4	22
365	365	4	23
332	332	4	17
340	340	4	19
348	348	4	20
357	358	4	22
367	367	4	23
333	333	4	18
341	341	4	19
349	350	4	21
359	359	4	22
368	368	4	24
334	334	4	18
342	342	4	19
351	351	4	21
360	360	4	22
369	369	4	24
335	335	4	18
344	343	4	20
353	353	4	21
362	362	4	23
371	371	4	24
336	336	4	18
343	344	4	19
352	352	4	21
361	361	4	22
370	370	4	24
337	337	4	18
345	345	4	20
354	354	4	21
363	363	4	23
372	372	4	24
338	338	4	19
346	346	4	20
350	349	4	21
355	356	4	22
358	355	4	22
364	364	4	23
366	366	4	23
373	373	4	25
374	374	3	45
375	375	3	46
376	376	3	47
377	377	3	48
378	378	3	49
379	379	3	50
380	380	3	51
381	381	3	52
382	382	3	53
383	383	3	54
384	384	6	1
385	385	6	1
386	386	6	1
387	387	6	1
388	388	6	1
389	389	6	1
390	391	6	1
391	390	6	1
392	392	6	1
393	393	6	1
394	394	6	2
395	395	6	2
396	396	6	2
397	397	6	2
398	399	6	2
399	398	6	2
400	400	6	3
401	401	6	3
402	406	6	3
403	402	6	3
404	405	6	3
405	403	6	3
406	408	6	3
407	404	6	4
408	410	6	4
409	412	6	4
410	415	6	4
411	407	6	5
412	411	6	4
413	416	6	5
414	409	6	5
415	413	6	5
416	417	6	5
417	414	6	5
418	421	6	6
419	422	6	6
420	419	6	6
421	423	6	6
422	418	6	6
423	420	6	6
424	426	6	7
425	424	6	7
426	425	6	7
427	427	6	7
428	430	6	7
429	429	6	7
430	428	6	7
431	432	6	7
432	434	6	8
433	433	6	8
434	431	6	8
435	435	6	8
436	437	6	8
437	438	6	8
438	440	6	8
439	439	6	9
440	444	6	9
441	441	6	9
442	436	6	9
443	442	6	9
444	443	6	9
445	450	6	10
446	449	6	10
447	445	6	10
448	446	6	10
449	448	6	10
450	447	6	10
451	454	6	10
452	453	6	10
453	452	6	10
454	451	6	10
455	457	6	11
456	455	6	11
457	459	6	11
458	456	6	11
459	458	6	11
460	460	6	11
461	461	6	11
462	462	6	12
463	464	6	12
464	466	6	12
465	465	6	12
466	467	6	12
467	469	6	12
468	468	6	12
469	470	6	12
470	463	6	12
471	472	6	13
472	474	6	13
480	480	6	14
473	471	6	13
483	486	6	15
474	473	6	14
484	488	6	15
475	479	6	14
485	484	6	15
476	478	6	14
489	485	6	15
477	476	6	14
486	483	6	15
478	475	6	14
487	487	6	15
479	477	6	14
490	489	6	16
481	481	6	14
488	490	6	15
482	482	6	14
491	491	1	47
492	492	1	48
494	494	1	49
493	493	1	49
495	495	1	49
496	496	1	49
\.


--
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_roles (id, document_id, name, description, type, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
3	lhtidln661l7i0xnn0o0hvyq	Public	Tạo api	public	2026-02-16 12:38:11.729	2026-02-16 12:38:11.729	2026-02-16 12:38:11.73	\N	\N	en
2	tyesxm5mrjapuac9ylvml3e9	Public	Default role given to unauthenticated user.	public	2026-02-09 15:13:37.065	2026-02-17 17:54:47.479	2026-02-09 15:13:37.066	\N	\N	en
5	\N	Manager	Manager for training and students	manager	2026-02-24 10:24:06.500708	2026-02-24 10:24:06.500708	\N	\N	\N	en
6	\N	Teacher	Teacher with access to scores and schedules	teacher	2026-02-24 10:24:06.501872	2026-03-21 04:49:50.655	\N	\N	\N	en
4	\N	Admin	Administrator with full access	admin	2026-02-24 10:24:06.495688	2026-03-23 08:27:14.779	\N	\N	\N	en
1	js7pxqjum1bsccgszy42fi1z	Authenticated	Default role given to authenticated user.	authenticated	2026-02-09 15:13:37.062	2026-03-26 01:40:22.811	2026-02-09 15:13:37.062	\N	\N	en
\.


--
-- Data for Name: up_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_users (id, document_id, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, permissions) FROM stdin;
6	edxu9482ip1487w018zqipzs	2026-02-24 10:29:14.602	2026-03-10 09:11:18.942	2026-02-24 10:29:14.603	\N	\N	en	ducthien	ndthien@cdhh.edu.vn	local	$2a$10$OZv94Rk0aNhenZKrh0.jYeVQBLWGK5r2.EPinb5SAbpMDXmowFEGm	\N	\N	t	f	["manage_students", "manage_classes", "manage_grades", "view_dashboard", "exam_approval", "manage_decisions"]
1	malmgnrwizkbj6p37culuxr1	2026-02-19 03:02:56.717	2026-03-24 01:11:50.07	2026-03-24 01:11:49.976	\N	1	en	Duong	adsxaluan@gmail.com	\N	$2a$10$s8ldgDKSJDMvWtpzLlbPneHBpf9o9AxA8mRK3.0funp7DVqIftwG2	\N	\N	t	f	[]
9	lgotewwer98r01thh5me0ar1	2026-03-24 01:17:34.396	2026-03-24 01:17:34.396	2026-03-24 01:17:34.397	\N	\N	\N	nmthai	nmthai@cdhh.edu.vn	local	$2a$10$detyaMqKznK6qB6nun6AsuqwYuLS1PN61/zrdWhxcjdes9GEFPbBa	\N	\N	t	f	\N
8	gk62zo5oe9stplgj38zkjm1l	2026-03-23 09:45:10.734	2026-03-24 00:53:57.973	2026-03-23 09:45:10.735	\N	\N	\N	admin	support@edumaster.vn	local	$2a$10$Ivxb1JVnLtkIPlFmt0gteuvtfswPYNwYgM/2JKE4RxHPPjeVPSb/u	\N	\N	t	f	\N
7	lip02imu46wcy8rsapwcchcd	2026-03-23 09:35:57.58	2026-03-24 00:53:57.954	2026-03-23 09:35:57.58	\N	\N	\N	duong	admin@edumaster.vn	local	$2a$10$CLCDLMPuHvNw7zExnEsUXu7IQbxsFeHszbBlqOjD2infv4umaHYVG	\N	\N	t	f	\N
\.


--
-- Data for Name: up_users_role_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_users_role_lnk (id, user_id, role_id, user_ord) FROM stdin;
19	7	1	1
21	8	1	2
27	9	4	1
\.


--
-- Data for Name: upload_folders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.upload_folders (id, document_id, name, path_id, path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: upload_folders_parent_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.upload_folders_parent_lnk (id, folder_id, inv_folder_id, folder_ord) FROM stdin;
\.


--
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 445, true);


--
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_permissions_role_lnk_id_seq', 445, true);


--
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 2, true);


--
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_users_roles_lnk_id_seq', 17, true);


--
-- Name: audit_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.audit_logs_id_seq', 97, true);


--
-- Name: class_decisions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.class_decisions_id_seq', 179, true);


--
-- Name: class_decisions_related_decision_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.class_decisions_related_decision_lnk_id_seq', 87, true);


--
-- Name: class_decisions_school_class_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.class_decisions_school_class_lnk_id_seq', 198, true);


--
-- Name: class_decisions_students_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.class_decisions_students_lnk_id_seq', 545, true);


--
-- Name: class_subjects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.class_subjects_id_seq', 10, true);


--
-- Name: classes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.classes_id_seq', 250, true);


--
-- Name: classes_subjects_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.classes_subjects_lnk_id_seq', 246, true);


--
-- Name: classrooms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.classrooms_id_seq', 16, true);


--
-- Name: exam_approvals_decision_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.exam_approvals_decision_lnk_id_seq', 134, true);


--
-- Name: exam_approvals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.exam_approvals_id_seq', 48, true);


--
-- Name: exam_grades_decision_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.exam_grades_decision_lnk_id_seq', 110, true);


--
-- Name: exam_grades_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.exam_grades_id_seq', 46, true);


--
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.files_folder_lnk_id_seq', 1, false);


--
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.files_id_seq', 1, false);


--
-- Name: files_related_mph_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.files_related_mph_id_seq', 1, false);


--
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);


--
-- Name: nations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nations_id_seq', 26, true);


--
-- Name: print_templates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.print_templates_id_seq', 3, true);


--
-- Name: strapi_ai_localization_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_ai_localization_jobs_id_seq', 1, false);


--
-- Name: strapi_ai_metadata_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_ai_metadata_jobs_id_seq', 1, false);


--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);


--
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_lnk_id_seq', 1, false);


--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 2, true);


--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 61, true);


--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 28, true);


--
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_history_versions_id_seq', 1, false);


--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);


--
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_migrations_internal_id_seq', 7, true);


--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_release_actions_id_seq', 1, false);


--
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_release_actions_release_lnk_id_seq', 1, false);


--
-- Name: strapi_releases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_releases_id_seq', 1, false);


--
-- Name: strapi_sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_sessions_id_seq', 94, true);


--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_lnk_id_seq', 1, false);


--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: strapi_workflows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_workflows_id_seq', 1, false);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_workflows_stage_required_to_publish_lnk_id_seq', 1, false);


--
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_id_seq', 1, false);


--
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_permissions_lnk_id_seq', 1, false);


--
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_workflow_lnk_id_seq', 1, false);


--
-- Name: student_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.student_documents_id_seq', 60, true);


--
-- Name: student_documents_student_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.student_documents_student_lnk_id_seq', 76, true);


--
-- Name: students_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.students_id_seq', 285, true);


--
-- Name: students_school_class_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.students_school_class_lnk_id_seq', 254, true);


--
-- Name: subjects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.subjects_id_seq', 377, true);


--
-- Name: suppliers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.suppliers_id_seq', 15, true);


--
-- Name: teacher_subjects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.teacher_subjects_id_seq', 7, true);


--
-- Name: teachers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.teachers_id_seq', 135, true);


--
-- Name: teachers_subjects_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.teachers_subjects_lnk_id_seq', 1163, true);


--
-- Name: training_assignments_decision_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.training_assignments_decision_lnk_id_seq', 90, true);


--
-- Name: training_assignments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.training_assignments_id_seq', 46, true);


--
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_permissions_id_seq', 496, true);


--
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_permissions_role_lnk_id_seq', 496, true);


--
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_roles_id_seq', 6, true);


--
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_users_id_seq', 9, true);


--
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_users_role_lnk_id_seq', 27, true);


--
-- Name: upload_folders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);


--
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.upload_folders_parent_lnk_id_seq', 1, false);


--
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_uq UNIQUE (permission_id, role_id);


--
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_lnk admin_users_roles_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_lnk admin_users_roles_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_uq UNIQUE (user_id, role_id);


--
-- Name: audit_logs audit_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.audit_logs
    ADD CONSTRAINT audit_logs_pkey PRIMARY KEY (id);


--
-- Name: class_decisions class_decisions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.class_decisions
    ADD CONSTRAINT class_decisions_pkey PRIMARY KEY (id);


--
-- Name: class_decisions_related_decision_lnk class_decisions_related_decision_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.class_decisions_related_decision_lnk
    ADD CONSTRAINT class_decisions_related_decision_lnk_pkey PRIMARY KEY (id);


--
-- Name: class_decisions_related_decision_lnk class_decisions_related_decision_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.class_decisions_related_decision_lnk
    ADD CONSTRAINT class_decisions_related_decision_lnk_uq UNIQUE (class_decision_id, inv_class_decision_id);


--
-- Name: class_decisions_school_class_lnk class_decisions_school_class_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.class_decisions_school_class_lnk
    ADD CONSTRAINT class_decisions_school_class_lnk_pkey PRIMARY KEY (id);


--
-- Name: class_decisions_school_class_lnk class_decisions_school_class_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.class_decisions_school_class_lnk
    ADD CONSTRAINT class_decisions_school_class_lnk_uq UNIQUE (class_decision_id, school_class_id);


--
-- Name: class_decisions_students_lnk class_decisions_students_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.class_decisions_students_lnk
    ADD CONSTRAINT class_decisions_students_lnk_pkey PRIMARY KEY (id);


--
-- Name: class_decisions_students_lnk class_decisions_students_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.class_decisions_students_lnk
    ADD CONSTRAINT class_decisions_students_lnk_uq UNIQUE (class_decision_id, student_id);


--
-- Name: classes classes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classes
    ADD CONSTRAINT classes_pkey PRIMARY KEY (id);


--
-- Name: classes_subjects_lnk classes_subjects_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classes_subjects_lnk
    ADD CONSTRAINT classes_subjects_lnk_pkey PRIMARY KEY (id);


--
-- Name: classes_subjects_lnk classes_subjects_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classes_subjects_lnk
    ADD CONSTRAINT classes_subjects_lnk_uq UNIQUE (school_class_id, subject_id);


--
-- Name: classrooms classrooms_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classrooms
    ADD CONSTRAINT classrooms_pkey PRIMARY KEY (id);


--
-- Name: exam_approvals_decision_lnk exam_approvals_decision_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exam_approvals_decision_lnk
    ADD CONSTRAINT exam_approvals_decision_lnk_pkey PRIMARY KEY (id);


--
-- Name: exam_approvals_decision_lnk exam_approvals_decision_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exam_approvals_decision_lnk
    ADD CONSTRAINT exam_approvals_decision_lnk_uq UNIQUE (exam_approval_id, class_decision_id);


--
-- Name: exam_approvals exam_approvals_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exam_approvals
    ADD CONSTRAINT exam_approvals_pkey PRIMARY KEY (id);


--
-- Name: exam_grades_decision_lnk exam_grades_decision_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exam_grades_decision_lnk
    ADD CONSTRAINT exam_grades_decision_lnk_pkey PRIMARY KEY (id);


--
-- Name: exam_grades_decision_lnk exam_grades_decision_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exam_grades_decision_lnk
    ADD CONSTRAINT exam_grades_decision_lnk_uq UNIQUE (exam_grade_id, class_decision_id);


--
-- Name: exam_grades exam_grades_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exam_grades
    ADD CONSTRAINT exam_grades_pkey PRIMARY KEY (id);


--
-- Name: files_folder_lnk files_folder_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_pkey PRIMARY KEY (id);


--
-- Name: files_folder_lnk files_folder_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_uq UNIQUE (file_id, folder_id);


--
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- Name: files_related_mph files_related_mph_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_related_mph
    ADD CONSTRAINT files_related_mph_pkey PRIMARY KEY (id);


--
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- Name: nations nations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nations
    ADD CONSTRAINT nations_pkey PRIMARY KEY (id);


--
-- Name: print_templates print_templates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.print_templates
    ADD CONSTRAINT print_templates_pkey PRIMARY KEY (id);


--
-- Name: strapi_ai_localization_jobs strapi_ai_localization_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_ai_localization_jobs
    ADD CONSTRAINT strapi_ai_localization_jobs_pkey PRIMARY KEY (id);


--
-- Name: strapi_ai_metadata_jobs strapi_ai_metadata_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_ai_metadata_jobs
    ADD CONSTRAINT strapi_ai_metadata_jobs_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_uq UNIQUE (api_token_permission_id, api_token_id);


--
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- Name: strapi_history_versions strapi_history_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations_internal strapi_migrations_internal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_migrations_internal
    ADD CONSTRAINT strapi_migrations_internal_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions strapi_release_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_uq UNIQUE (release_action_id, release_id);


--
-- Name: strapi_releases strapi_releases_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_pkey PRIMARY KEY (id);


--
-- Name: strapi_sessions strapi_sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_sessions
    ADD CONSTRAINT strapi_sessions_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_uq UNIQUE (transfer_token_permission_id, transfer_token_id);


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows strapi_workflows_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_uq UNIQUE (workflow_id, workflow_stage_id);


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_uq UNIQUE (workflow_stage_id, permission_id);


--
-- Name: strapi_workflows_stages strapi_workflows_stages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_uq UNIQUE (workflow_stage_id, workflow_id);


--
-- Name: student_documents student_documents_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_documents
    ADD CONSTRAINT student_documents_pkey PRIMARY KEY (id);


--
-- Name: student_documents_student_lnk student_documents_student_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_documents_student_lnk
    ADD CONSTRAINT student_documents_student_lnk_pkey PRIMARY KEY (id);


--
-- Name: student_documents_student_lnk student_documents_student_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_documents_student_lnk
    ADD CONSTRAINT student_documents_student_lnk_uq UNIQUE (student_document_id, student_id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);


--
-- Name: students_school_class_lnk students_school_class_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students_school_class_lnk
    ADD CONSTRAINT students_school_class_lnk_pkey PRIMARY KEY (id);


--
-- Name: students_school_class_lnk students_school_class_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students_school_class_lnk
    ADD CONSTRAINT students_school_class_lnk_uq UNIQUE (student_id, school_class_id);


--
-- Name: subjects subjects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subjects_pkey PRIMARY KEY (id);


--
-- Name: suppliers suppliers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT suppliers_pkey PRIMARY KEY (id);


--
-- Name: teachers teachers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT teachers_pkey PRIMARY KEY (id);


--
-- Name: teachers_subjects_lnk teachers_subjects_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teachers_subjects_lnk
    ADD CONSTRAINT teachers_subjects_lnk_pkey PRIMARY KEY (id);


--
-- Name: teachers_subjects_lnk teachers_subjects_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teachers_subjects_lnk
    ADD CONSTRAINT teachers_subjects_lnk_uq UNIQUE (teacher_id, subject_id);


--
-- Name: training_assignments_decision_lnk training_assignments_decision_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.training_assignments_decision_lnk
    ADD CONSTRAINT training_assignments_decision_lnk_pkey PRIMARY KEY (id);


--
-- Name: training_assignments_decision_lnk training_assignments_decision_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.training_assignments_decision_lnk
    ADD CONSTRAINT training_assignments_decision_lnk_uq UNIQUE (training_assignment_id, class_decision_id);


--
-- Name: training_assignments training_assignments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.training_assignments
    ADD CONSTRAINT training_assignments_pkey PRIMARY KEY (id);


--
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_uq UNIQUE (permission_id, role_id);


--
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_lnk up_users_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_lnk up_users_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_uq UNIQUE (user_id, role_id);


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_pkey PRIMARY KEY (id);


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_uq UNIQUE (folder_id, inv_folder_id);


--
-- Name: upload_folders upload_folders_path_id_index; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);


--
-- Name: upload_folders upload_folders_path_index; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);


--
-- Name: upload_folders upload_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);


--
-- Name: admin_permissions_document_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_document_id_idx ON public.admin_permissions USING btree (document_id);


--
-- Name: admin_permissions_document_id_locale_published_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_document_id_locale_published_at_idx ON public.admin_permissions USING btree (document_id, locale, published_at);


--
-- Name: admin_permissions_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_documents_idx ON public.admin_permissions USING btree (document_id, locale, published_at);


--
-- Name: admin_permissions_role_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_role_lnk_fk ON public.admin_permissions_role_lnk USING btree (permission_id);


--
-- Name: admin_permissions_role_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_role_lnk_ifk ON public.admin_permissions_role_lnk USING btree (role_id);


--
-- Name: admin_permissions_role_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_role_lnk_oifk ON public.admin_permissions_role_lnk USING btree (permission_ord);


--
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);


--
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);


--
-- Name: admin_roles_document_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_roles_document_id_idx ON public.admin_roles USING btree (document_id);


--
-- Name: admin_roles_document_id_locale_published_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_roles_document_id_locale_published_at_idx ON public.admin_roles USING btree (document_id, locale, published_at);


--
-- Name: admin_roles_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_roles_documents_idx ON public.admin_roles USING btree (document_id, locale, published_at);


--
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);


--
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);


--
-- Name: admin_users_document_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_document_id_idx ON public.admin_users USING btree (document_id);


--
-- Name: admin_users_document_id_locale_published_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_document_id_locale_published_at_idx ON public.admin_users USING btree (document_id, locale, published_at);


--
-- Name: admin_users_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_documents_idx ON public.admin_users USING btree (document_id, locale, published_at);


--
-- Name: admin_users_roles_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_roles_lnk_fk ON public.admin_users_roles_lnk USING btree (user_id);


--
-- Name: admin_users_roles_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_roles_lnk_ifk ON public.admin_users_roles_lnk USING btree (role_id);


--
-- Name: admin_users_roles_lnk_ofk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_roles_lnk_ofk ON public.admin_users_roles_lnk USING btree (role_ord);


--
-- Name: admin_users_roles_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_roles_lnk_oifk ON public.admin_users_roles_lnk USING btree (user_ord);


--
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);


--
-- Name: audit_logs_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX audit_logs_created_by_id_fk ON public.audit_logs USING btree (created_by_id);


--
-- Name: audit_logs_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX audit_logs_documents_idx ON public.audit_logs USING btree (document_id, locale, published_at);


--
-- Name: audit_logs_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX audit_logs_updated_by_id_fk ON public.audit_logs USING btree (updated_by_id);


--
-- Name: class_decisions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX class_decisions_created_by_id_fk ON public.class_decisions USING btree (created_by_id);


--
-- Name: class_decisions_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX class_decisions_documents_idx ON public.class_decisions USING btree (document_id, locale, published_at);


--
-- Name: class_decisions_related_decision_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX class_decisions_related_decision_lnk_fk ON public.class_decisions_related_decision_lnk USING btree (class_decision_id);


--
-- Name: class_decisions_related_decision_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX class_decisions_related_decision_lnk_ifk ON public.class_decisions_related_decision_lnk USING btree (inv_class_decision_id);


--
-- Name: class_decisions_school_class_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX class_decisions_school_class_lnk_fk ON public.class_decisions_school_class_lnk USING btree (class_decision_id);


--
-- Name: class_decisions_school_class_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX class_decisions_school_class_lnk_ifk ON public.class_decisions_school_class_lnk USING btree (school_class_id);


--
-- Name: class_decisions_students_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX class_decisions_students_lnk_fk ON public.class_decisions_students_lnk USING btree (class_decision_id);


--
-- Name: class_decisions_students_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX class_decisions_students_lnk_ifk ON public.class_decisions_students_lnk USING btree (student_id);


--
-- Name: class_decisions_students_lnk_ofk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX class_decisions_students_lnk_ofk ON public.class_decisions_students_lnk USING btree (student_ord);


--
-- Name: class_decisions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX class_decisions_updated_by_id_fk ON public.class_decisions USING btree (updated_by_id);


--
-- Name: class_subjects_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX class_subjects_created_by_id_fk ON public.class_subjects USING btree (created_by_id);


--
-- Name: class_subjects_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX class_subjects_documents_idx ON public.class_subjects USING btree (document_id, locale, published_at);


--
-- Name: class_subjects_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX class_subjects_updated_by_id_fk ON public.class_subjects USING btree (updated_by_id);


--
-- Name: classes_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classes_created_by_id_fk ON public.classes USING btree (created_by_id);


--
-- Name: classes_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classes_documents_idx ON public.classes USING btree (document_id, locale, published_at);


--
-- Name: classes_subjects_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classes_subjects_lnk_fk ON public.classes_subjects_lnk USING btree (school_class_id);


--
-- Name: classes_subjects_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classes_subjects_lnk_ifk ON public.classes_subjects_lnk USING btree (subject_id);


--
-- Name: classes_subjects_lnk_ofk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classes_subjects_lnk_ofk ON public.classes_subjects_lnk USING btree (subject_ord);


--
-- Name: classes_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classes_updated_by_id_fk ON public.classes USING btree (updated_by_id);


--
-- Name: classrooms_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classrooms_created_by_id_fk ON public.classrooms USING btree (created_by_id);


--
-- Name: classrooms_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classrooms_documents_idx ON public.classrooms USING btree (document_id, locale, published_at);


--
-- Name: classrooms_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classrooms_updated_by_id_fk ON public.classrooms USING btree (updated_by_id);


--
-- Name: exam_approvals_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX exam_approvals_created_by_id_fk ON public.exam_approvals USING btree (created_by_id);


--
-- Name: exam_approvals_decision_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX exam_approvals_decision_lnk_fk ON public.exam_approvals_decision_lnk USING btree (exam_approval_id);


--
-- Name: exam_approvals_decision_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX exam_approvals_decision_lnk_ifk ON public.exam_approvals_decision_lnk USING btree (class_decision_id);


--
-- Name: exam_approvals_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX exam_approvals_documents_idx ON public.exam_approvals USING btree (document_id, locale, published_at);


--
-- Name: exam_approvals_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX exam_approvals_updated_by_id_fk ON public.exam_approvals USING btree (updated_by_id);


--
-- Name: exam_grades_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX exam_grades_created_by_id_fk ON public.exam_grades USING btree (created_by_id);


--
-- Name: exam_grades_decision_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX exam_grades_decision_lnk_fk ON public.exam_grades_decision_lnk USING btree (exam_grade_id);


--
-- Name: exam_grades_decision_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX exam_grades_decision_lnk_ifk ON public.exam_grades_decision_lnk USING btree (class_decision_id);


--
-- Name: exam_grades_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX exam_grades_documents_idx ON public.exam_grades USING btree (document_id, locale, published_at);


--
-- Name: exam_grades_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX exam_grades_updated_by_id_fk ON public.exam_grades USING btree (updated_by_id);


--
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);


--
-- Name: files_document_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_document_id_idx ON public.files USING btree (document_id);


--
-- Name: files_document_id_locale_published_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_document_id_locale_published_at_idx ON public.files USING btree (document_id, locale, published_at);


--
-- Name: files_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_documents_idx ON public.files USING btree (document_id, locale, published_at);


--
-- Name: files_folder_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_folder_lnk_fk ON public.files_folder_lnk USING btree (file_id);


--
-- Name: files_folder_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_folder_lnk_ifk ON public.files_folder_lnk USING btree (folder_id);


--
-- Name: files_folder_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_folder_lnk_oifk ON public.files_folder_lnk USING btree (file_ord);


--
-- Name: files_related_mph_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_related_mph_fk ON public.files_related_mph USING btree (file_id);


--
-- Name: files_related_mph_idix; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_related_mph_idix ON public.files_related_mph USING btree (related_id);


--
-- Name: files_related_mph_oidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_related_mph_oidx ON public.files_related_mph USING btree ("order");


--
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);


--
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);


--
-- Name: i18n_locale_document_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i18n_locale_document_id_idx ON public.i18n_locale USING btree (document_id);


--
-- Name: i18n_locale_document_id_locale_published_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i18n_locale_document_id_locale_published_at_idx ON public.i18n_locale USING btree (document_id, locale, published_at);


--
-- Name: i18n_locale_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i18n_locale_documents_idx ON public.i18n_locale USING btree (document_id, locale, published_at);


--
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);


--
-- Name: nations_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX nations_created_by_id_fk ON public.nations USING btree (created_by_id);


--
-- Name: nations_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX nations_documents_idx ON public.nations USING btree (document_id, locale, published_at);


--
-- Name: nations_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX nations_updated_by_id_fk ON public.nations USING btree (updated_by_id);


--
-- Name: print_templates_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX print_templates_created_by_id_fk ON public.print_templates USING btree (created_by_id);


--
-- Name: print_templates_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX print_templates_documents_idx ON public.print_templates USING btree (document_id, locale, published_at);


--
-- Name: print_templates_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX print_templates_updated_by_id_fk ON public.print_templates USING btree (updated_by_id);


--
-- Name: strapi_api_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);


--
-- Name: strapi_api_token_permissions_document_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_document_id_idx ON public.strapi_api_token_permissions USING btree (document_id);


--
-- Name: strapi_api_token_permissions_document_id_locale_published_at_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_document_id_locale_published_at_id ON public.strapi_api_token_permissions USING btree (document_id, locale, published_at);


--
-- Name: strapi_api_token_permissions_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_documents_idx ON public.strapi_api_token_permissions USING btree (document_id, locale, published_at);


--
-- Name: strapi_api_token_permissions_token_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_token_lnk_fk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_id);


--
-- Name: strapi_api_token_permissions_token_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_token_lnk_ifk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_id);


--
-- Name: strapi_api_token_permissions_token_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_token_lnk_oifk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_ord);


--
-- Name: strapi_api_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);


--
-- Name: strapi_api_tokens_document_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_tokens_document_id_idx ON public.strapi_api_tokens USING btree (document_id);


--
-- Name: strapi_api_tokens_document_id_locale_published_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_tokens_document_id_locale_published_at_idx ON public.strapi_api_tokens USING btree (document_id, locale, published_at);


--
-- Name: strapi_api_tokens_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_tokens_documents_idx ON public.strapi_api_tokens USING btree (document_id, locale, published_at);


--
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);


--
-- Name: strapi_history_versions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_history_versions_created_by_id_fk ON public.strapi_history_versions USING btree (created_by_id);


--
-- Name: strapi_release_actions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_release_actions_created_by_id_fk ON public.strapi_release_actions USING btree (created_by_id);


--
-- Name: strapi_release_actions_document_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_release_actions_document_id_idx ON public.strapi_release_actions USING btree (document_id);


--
-- Name: strapi_release_actions_document_id_locale_published_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_release_actions_document_id_locale_published_at_idx ON public.strapi_release_actions USING btree (document_id, locale, published_at);


--
-- Name: strapi_release_actions_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_release_actions_documents_idx ON public.strapi_release_actions USING btree (document_id, locale, published_at);


--
-- Name: strapi_release_actions_release_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_release_actions_release_lnk_fk ON public.strapi_release_actions_release_lnk USING btree (release_action_id);


--
-- Name: strapi_release_actions_release_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_release_actions_release_lnk_ifk ON public.strapi_release_actions_release_lnk USING btree (release_id);


--
-- Name: strapi_release_actions_release_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_release_actions_release_lnk_oifk ON public.strapi_release_actions_release_lnk USING btree (release_action_ord);


--
-- Name: strapi_release_actions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_release_actions_updated_by_id_fk ON public.strapi_release_actions USING btree (updated_by_id);


--
-- Name: strapi_releases_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_releases_created_by_id_fk ON public.strapi_releases USING btree (created_by_id);


--
-- Name: strapi_releases_document_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_releases_document_id_idx ON public.strapi_releases USING btree (document_id);


--
-- Name: strapi_releases_document_id_locale_published_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_releases_document_id_locale_published_at_idx ON public.strapi_releases USING btree (document_id, locale, published_at);


--
-- Name: strapi_releases_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_releases_documents_idx ON public.strapi_releases USING btree (document_id, locale, published_at);


--
-- Name: strapi_releases_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_releases_updated_by_id_fk ON public.strapi_releases USING btree (updated_by_id);


--
-- Name: strapi_sessions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_sessions_created_by_id_fk ON public.strapi_sessions USING btree (created_by_id);


--
-- Name: strapi_sessions_document_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_sessions_document_id_idx ON public.strapi_sessions USING btree (document_id);


--
-- Name: strapi_sessions_document_id_locale_published_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_sessions_document_id_locale_published_at_idx ON public.strapi_sessions USING btree (document_id, locale, published_at);


--
-- Name: strapi_sessions_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_sessions_documents_idx ON public.strapi_sessions USING btree (document_id, locale, published_at);


--
-- Name: strapi_sessions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_sessions_updated_by_id_fk ON public.strapi_sessions USING btree (updated_by_id);


--
-- Name: strapi_transfer_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);


--
-- Name: strapi_transfer_token_permissions_document_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_document_id_idx ON public.strapi_transfer_token_permissions USING btree (document_id);


--
-- Name: strapi_transfer_token_permissions_document_id_locale_published_; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_document_id_locale_published_ ON public.strapi_transfer_token_permissions USING btree (document_id, locale, published_at);


--
-- Name: strapi_transfer_token_permissions_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_documents_idx ON public.strapi_transfer_token_permissions USING btree (document_id, locale, published_at);


--
-- Name: strapi_transfer_token_permissions_token_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_fk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_id);


--
-- Name: strapi_transfer_token_permissions_token_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_ifk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_id);


--
-- Name: strapi_transfer_token_permissions_token_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_oifk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_ord);


--
-- Name: strapi_transfer_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_transfer_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);


--
-- Name: strapi_transfer_tokens_document_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_tokens_document_id_idx ON public.strapi_transfer_tokens USING btree (document_id);


--
-- Name: strapi_transfer_tokens_document_id_locale_published_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_tokens_document_id_locale_published_at_idx ON public.strapi_transfer_tokens USING btree (document_id, locale, published_at);


--
-- Name: strapi_transfer_tokens_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_tokens_documents_idx ON public.strapi_transfer_tokens USING btree (document_id, locale, published_at);


--
-- Name: strapi_transfer_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);


--
-- Name: strapi_workflows_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_created_by_id_fk ON public.strapi_workflows USING btree (created_by_id);


--
-- Name: strapi_workflows_document_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_document_id_idx ON public.strapi_workflows USING btree (document_id);


--
-- Name: strapi_workflows_document_id_locale_published_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_document_id_locale_published_at_idx ON public.strapi_workflows USING btree (document_id, locale, published_at);


--
-- Name: strapi_workflows_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_documents_idx ON public.strapi_workflows USING btree (document_id, locale, published_at);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_fk ON public.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_id);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_ifk ON public.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_stage_id);


--
-- Name: strapi_workflows_stages_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stages_created_by_id_fk ON public.strapi_workflows_stages USING btree (created_by_id);


--
-- Name: strapi_workflows_stages_document_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stages_document_id_idx ON public.strapi_workflows_stages USING btree (document_id);


--
-- Name: strapi_workflows_stages_document_id_locale_published_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stages_document_id_locale_published_at_idx ON public.strapi_workflows_stages USING btree (document_id, locale, published_at);


--
-- Name: strapi_workflows_stages_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stages_documents_idx ON public.strapi_workflows_stages USING btree (document_id, locale, published_at);


--
-- Name: strapi_workflows_stages_permissions_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_fk ON public.strapi_workflows_stages_permissions_lnk USING btree (workflow_stage_id);


--
-- Name: strapi_workflows_stages_permissions_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_ifk ON public.strapi_workflows_stages_permissions_lnk USING btree (permission_id);


--
-- Name: strapi_workflows_stages_permissions_lnk_ofk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_ofk ON public.strapi_workflows_stages_permissions_lnk USING btree (permission_ord);


--
-- Name: strapi_workflows_stages_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stages_updated_by_id_fk ON public.strapi_workflows_stages USING btree (updated_by_id);


--
-- Name: strapi_workflows_stages_workflow_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_fk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_id);


--
-- Name: strapi_workflows_stages_workflow_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_ifk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_id);


--
-- Name: strapi_workflows_stages_workflow_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_oifk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_ord);


--
-- Name: strapi_workflows_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_updated_by_id_fk ON public.strapi_workflows USING btree (updated_by_id);


--
-- Name: student_documents_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX student_documents_created_by_id_fk ON public.student_documents USING btree (created_by_id);


--
-- Name: student_documents_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX student_documents_documents_idx ON public.student_documents USING btree (document_id, locale, published_at);


--
-- Name: student_documents_student_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX student_documents_student_lnk_fk ON public.student_documents_student_lnk USING btree (student_document_id);


--
-- Name: student_documents_student_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX student_documents_student_lnk_ifk ON public.student_documents_student_lnk USING btree (student_id);


--
-- Name: student_documents_student_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX student_documents_student_lnk_oifk ON public.student_documents_student_lnk USING btree (student_document_ord);


--
-- Name: student_documents_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX student_documents_updated_by_id_fk ON public.student_documents USING btree (updated_by_id);


--
-- Name: students_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX students_created_by_id_fk ON public.students USING btree (created_by_id);


--
-- Name: students_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX students_documents_idx ON public.students USING btree (document_id, locale, published_at);


--
-- Name: students_school_class_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX students_school_class_lnk_fk ON public.students_school_class_lnk USING btree (student_id);


--
-- Name: students_school_class_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX students_school_class_lnk_ifk ON public.students_school_class_lnk USING btree (school_class_id);


--
-- Name: students_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX students_updated_by_id_fk ON public.students USING btree (updated_by_id);


--
-- Name: subjects_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX subjects_created_by_id_fk ON public.subjects USING btree (created_by_id);


--
-- Name: subjects_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX subjects_documents_idx ON public.subjects USING btree (document_id, locale, published_at);


--
-- Name: subjects_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX subjects_updated_by_id_fk ON public.subjects USING btree (updated_by_id);


--
-- Name: suppliers_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX suppliers_created_by_id_fk ON public.suppliers USING btree (created_by_id);


--
-- Name: suppliers_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX suppliers_documents_idx ON public.suppliers USING btree (document_id, locale, published_at);


--
-- Name: suppliers_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX suppliers_updated_by_id_fk ON public.suppliers USING btree (updated_by_id);


--
-- Name: teacher_subjects_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX teacher_subjects_created_by_id_fk ON public.teacher_subjects USING btree (created_by_id);


--
-- Name: teacher_subjects_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX teacher_subjects_documents_idx ON public.teacher_subjects USING btree (document_id, locale, published_at);


--
-- Name: teacher_subjects_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX teacher_subjects_updated_by_id_fk ON public.teacher_subjects USING btree (updated_by_id);


--
-- Name: teachers_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX teachers_created_by_id_fk ON public.teachers USING btree (created_by_id);


--
-- Name: teachers_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX teachers_documents_idx ON public.teachers USING btree (document_id, locale, published_at);


--
-- Name: teachers_subjects_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX teachers_subjects_lnk_fk ON public.teachers_subjects_lnk USING btree (teacher_id);


--
-- Name: teachers_subjects_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX teachers_subjects_lnk_ifk ON public.teachers_subjects_lnk USING btree (subject_id);


--
-- Name: teachers_subjects_lnk_ofk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX teachers_subjects_lnk_ofk ON public.teachers_subjects_lnk USING btree (subject_ord);


--
-- Name: teachers_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX teachers_updated_by_id_fk ON public.teachers USING btree (updated_by_id);


--
-- Name: training_assignments_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX training_assignments_created_by_id_fk ON public.training_assignments USING btree (created_by_id);


--
-- Name: training_assignments_decision_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX training_assignments_decision_lnk_fk ON public.training_assignments_decision_lnk USING btree (training_assignment_id);


--
-- Name: training_assignments_decision_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX training_assignments_decision_lnk_ifk ON public.training_assignments_decision_lnk USING btree (class_decision_id);


--
-- Name: training_assignments_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX training_assignments_documents_idx ON public.training_assignments USING btree (document_id, locale, published_at);


--
-- Name: training_assignments_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX training_assignments_updated_by_id_fk ON public.training_assignments USING btree (updated_by_id);


--
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);


--
-- Name: up_permissions_document_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_document_id_idx ON public.up_permissions USING btree (document_id);


--
-- Name: up_permissions_document_id_locale_published_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_document_id_locale_published_at_idx ON public.up_permissions USING btree (document_id, locale, published_at);


--
-- Name: up_permissions_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_documents_idx ON public.up_permissions USING btree (document_id, locale, published_at);


--
-- Name: up_permissions_role_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_role_lnk_fk ON public.up_permissions_role_lnk USING btree (permission_id);


--
-- Name: up_permissions_role_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_role_lnk_ifk ON public.up_permissions_role_lnk USING btree (role_id);


--
-- Name: up_permissions_role_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_role_lnk_oifk ON public.up_permissions_role_lnk USING btree (permission_ord);


--
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);


--
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);


--
-- Name: up_roles_document_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_roles_document_id_idx ON public.up_roles USING btree (document_id);


--
-- Name: up_roles_document_id_locale_published_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_roles_document_id_locale_published_at_idx ON public.up_roles USING btree (document_id, locale, published_at);


--
-- Name: up_roles_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_roles_documents_idx ON public.up_roles USING btree (document_id, locale, published_at);


--
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);


--
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);


--
-- Name: up_users_document_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_document_id_idx ON public.up_users USING btree (document_id);


--
-- Name: up_users_document_id_locale_published_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_document_id_locale_published_at_idx ON public.up_users USING btree (document_id, locale, published_at);


--
-- Name: up_users_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_documents_idx ON public.up_users USING btree (document_id, locale, published_at);


--
-- Name: up_users_role_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_role_lnk_fk ON public.up_users_role_lnk USING btree (user_id);


--
-- Name: up_users_role_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_role_lnk_ifk ON public.up_users_role_lnk USING btree (role_id);


--
-- Name: up_users_role_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_role_lnk_oifk ON public.up_users_role_lnk USING btree (user_ord);


--
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);


--
-- Name: upload_files_created_at_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);


--
-- Name: upload_files_ext_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);


--
-- Name: upload_files_folder_path_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);


--
-- Name: upload_files_name_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_name_index ON public.files USING btree (name);


--
-- Name: upload_files_size_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_size_index ON public.files USING btree (size);


--
-- Name: upload_files_updated_at_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);


--
-- Name: upload_folders_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);


--
-- Name: upload_folders_document_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_document_id_idx ON public.upload_folders USING btree (document_id);


--
-- Name: upload_folders_document_id_locale_published_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_document_id_locale_published_at_idx ON public.upload_folders USING btree (document_id, locale, published_at);


--
-- Name: upload_folders_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_documents_idx ON public.upload_folders USING btree (document_id, locale, published_at);


--
-- Name: upload_folders_parent_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_parent_lnk_fk ON public.upload_folders_parent_lnk USING btree (folder_id);


--
-- Name: upload_folders_parent_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_parent_lnk_ifk ON public.upload_folders_parent_lnk USING btree (inv_folder_id);


--
-- Name: upload_folders_parent_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_parent_lnk_oifk ON public.upload_folders_parent_lnk USING btree (folder_ord);


--
-- Name: upload_folders_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);


--
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users_roles_lnk admin_users_roles_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- Name: admin_users_roles_lnk admin_users_roles_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: audit_logs audit_logs_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.audit_logs
    ADD CONSTRAINT audit_logs_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: audit_logs audit_logs_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.audit_logs
    ADD CONSTRAINT audit_logs_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: class_decisions class_decisions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.class_decisions
    ADD CONSTRAINT class_decisions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: class_decisions_related_decision_lnk class_decisions_related_decision_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.class_decisions_related_decision_lnk
    ADD CONSTRAINT class_decisions_related_decision_lnk_fk FOREIGN KEY (class_decision_id) REFERENCES public.class_decisions(id) ON DELETE CASCADE;


--
-- Name: class_decisions_related_decision_lnk class_decisions_related_decision_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.class_decisions_related_decision_lnk
    ADD CONSTRAINT class_decisions_related_decision_lnk_ifk FOREIGN KEY (inv_class_decision_id) REFERENCES public.class_decisions(id) ON DELETE CASCADE;


--
-- Name: class_decisions_school_class_lnk class_decisions_school_class_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.class_decisions_school_class_lnk
    ADD CONSTRAINT class_decisions_school_class_lnk_fk FOREIGN KEY (class_decision_id) REFERENCES public.class_decisions(id) ON DELETE CASCADE;


--
-- Name: class_decisions_school_class_lnk class_decisions_school_class_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.class_decisions_school_class_lnk
    ADD CONSTRAINT class_decisions_school_class_lnk_ifk FOREIGN KEY (school_class_id) REFERENCES public.classes(id) ON DELETE CASCADE;


--
-- Name: class_decisions_students_lnk class_decisions_students_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.class_decisions_students_lnk
    ADD CONSTRAINT class_decisions_students_lnk_fk FOREIGN KEY (class_decision_id) REFERENCES public.class_decisions(id) ON DELETE CASCADE;


--
-- Name: class_decisions_students_lnk class_decisions_students_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.class_decisions_students_lnk
    ADD CONSTRAINT class_decisions_students_lnk_ifk FOREIGN KEY (student_id) REFERENCES public.students(id) ON DELETE CASCADE;


--
-- Name: class_decisions class_decisions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.class_decisions
    ADD CONSTRAINT class_decisions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: class_subjects class_subjects_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.class_subjects
    ADD CONSTRAINT class_subjects_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: class_subjects class_subjects_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.class_subjects
    ADD CONSTRAINT class_subjects_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: classes classes_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classes
    ADD CONSTRAINT classes_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: classes_subjects_lnk classes_subjects_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classes_subjects_lnk
    ADD CONSTRAINT classes_subjects_lnk_fk FOREIGN KEY (school_class_id) REFERENCES public.classes(id) ON DELETE CASCADE;


--
-- Name: classes_subjects_lnk classes_subjects_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classes_subjects_lnk
    ADD CONSTRAINT classes_subjects_lnk_ifk FOREIGN KEY (subject_id) REFERENCES public.subjects(id) ON DELETE CASCADE;


--
-- Name: classes classes_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classes
    ADD CONSTRAINT classes_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: classrooms classrooms_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classrooms
    ADD CONSTRAINT classrooms_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: classrooms classrooms_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classrooms
    ADD CONSTRAINT classrooms_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: exam_approvals exam_approvals_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exam_approvals
    ADD CONSTRAINT exam_approvals_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: exam_approvals_decision_lnk exam_approvals_decision_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exam_approvals_decision_lnk
    ADD CONSTRAINT exam_approvals_decision_lnk_fk FOREIGN KEY (exam_approval_id) REFERENCES public.exam_approvals(id) ON DELETE CASCADE;


--
-- Name: exam_approvals_decision_lnk exam_approvals_decision_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exam_approvals_decision_lnk
    ADD CONSTRAINT exam_approvals_decision_lnk_ifk FOREIGN KEY (class_decision_id) REFERENCES public.class_decisions(id) ON DELETE CASCADE;


--
-- Name: exam_approvals exam_approvals_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exam_approvals
    ADD CONSTRAINT exam_approvals_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: exam_grades exam_grades_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exam_grades
    ADD CONSTRAINT exam_grades_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: exam_grades_decision_lnk exam_grades_decision_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exam_grades_decision_lnk
    ADD CONSTRAINT exam_grades_decision_lnk_fk FOREIGN KEY (exam_grade_id) REFERENCES public.exam_grades(id) ON DELETE CASCADE;


--
-- Name: exam_grades_decision_lnk exam_grades_decision_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exam_grades_decision_lnk
    ADD CONSTRAINT exam_grades_decision_lnk_ifk FOREIGN KEY (class_decision_id) REFERENCES public.class_decisions(id) ON DELETE CASCADE;


--
-- Name: exam_grades exam_grades_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exam_grades
    ADD CONSTRAINT exam_grades_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files_folder_lnk files_folder_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files_folder_lnk files_folder_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_ifk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: files_related_mph files_related_mph_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_related_mph
    ADD CONSTRAINT files_related_mph_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: nations nations_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nations
    ADD CONSTRAINT nations_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: nations nations_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nations
    ADD CONSTRAINT nations_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: print_templates print_templates_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.print_templates
    ADD CONSTRAINT print_templates_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: print_templates print_templates_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.print_templates
    ADD CONSTRAINT print_templates_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_ifk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_history_versions strapi_history_versions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_release_actions strapi_release_actions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_fk FOREIGN KEY (release_action_id) REFERENCES public.strapi_release_actions(id) ON DELETE CASCADE;


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_ifk FOREIGN KEY (release_id) REFERENCES public.strapi_releases(id) ON DELETE CASCADE;


--
-- Name: strapi_release_actions strapi_release_actions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_releases strapi_releases_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_releases strapi_releases_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_sessions strapi_sessions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_sessions
    ADD CONSTRAINT strapi_sessions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_sessions strapi_sessions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_sessions
    ADD CONSTRAINT strapi_sessions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_ifk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows strapi_workflows_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_fk FOREIGN KEY (workflow_id) REFERENCES public.strapi_workflows(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_ifk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages strapi_workflows_stages_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_ifk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages strapi_workflows_stages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_ifk FOREIGN KEY (workflow_id) REFERENCES public.strapi_workflows(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows strapi_workflows_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: student_documents student_documents_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_documents
    ADD CONSTRAINT student_documents_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: student_documents_student_lnk student_documents_student_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_documents_student_lnk
    ADD CONSTRAINT student_documents_student_lnk_fk FOREIGN KEY (student_document_id) REFERENCES public.student_documents(id) ON DELETE CASCADE;


--
-- Name: student_documents_student_lnk student_documents_student_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_documents_student_lnk
    ADD CONSTRAINT student_documents_student_lnk_ifk FOREIGN KEY (student_id) REFERENCES public.students(id) ON DELETE CASCADE;


--
-- Name: student_documents student_documents_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_documents
    ADD CONSTRAINT student_documents_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: students students_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: students_school_class_lnk students_school_class_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students_school_class_lnk
    ADD CONSTRAINT students_school_class_lnk_fk FOREIGN KEY (student_id) REFERENCES public.students(id) ON DELETE CASCADE;


--
-- Name: students_school_class_lnk students_school_class_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students_school_class_lnk
    ADD CONSTRAINT students_school_class_lnk_ifk FOREIGN KEY (school_class_id) REFERENCES public.classes(id) ON DELETE CASCADE;


--
-- Name: students students_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: subjects subjects_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subjects_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: subjects subjects_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subjects_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: suppliers suppliers_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT suppliers_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: suppliers suppliers_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT suppliers_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: teacher_subjects teacher_subjects_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teacher_subjects
    ADD CONSTRAINT teacher_subjects_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: teacher_subjects teacher_subjects_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teacher_subjects
    ADD CONSTRAINT teacher_subjects_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: teachers teachers_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT teachers_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: teachers_subjects_lnk teachers_subjects_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teachers_subjects_lnk
    ADD CONSTRAINT teachers_subjects_lnk_fk FOREIGN KEY (teacher_id) REFERENCES public.teachers(id) ON DELETE CASCADE;


--
-- Name: teachers_subjects_lnk teachers_subjects_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teachers_subjects_lnk
    ADD CONSTRAINT teachers_subjects_lnk_ifk FOREIGN KEY (subject_id) REFERENCES public.subjects(id) ON DELETE CASCADE;


--
-- Name: teachers teachers_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT teachers_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: training_assignments training_assignments_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.training_assignments
    ADD CONSTRAINT training_assignments_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: training_assignments_decision_lnk training_assignments_decision_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.training_assignments_decision_lnk
    ADD CONSTRAINT training_assignments_decision_lnk_fk FOREIGN KEY (training_assignment_id) REFERENCES public.training_assignments(id) ON DELETE CASCADE;


--
-- Name: training_assignments_decision_lnk training_assignments_decision_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.training_assignments_decision_lnk
    ADD CONSTRAINT training_assignments_decision_lnk_ifk FOREIGN KEY (class_decision_id) REFERENCES public.class_decisions(id) ON DELETE CASCADE;


--
-- Name: training_assignments training_assignments_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.training_assignments
    ADD CONSTRAINT training_assignments_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users_role_lnk up_users_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: up_users_role_lnk up_users_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders upload_folders_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_ifk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders upload_folders_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

\unrestrict edKhnqX2DFatc3Ti7qfbBWVCvhVQkIXbuXW2M0RLBXRDZ8kyLYULKlT9BXgMsyj

