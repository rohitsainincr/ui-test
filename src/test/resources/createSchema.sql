--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.19
-- Dumped by pg_dump version 9.5.19

-- Started on 2019-10-07 17:43:28 IST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE ONLY public.twilio_js_log DROP CONSTRAINT twilio_js_log_user_id_fkey;
ALTER TABLE ONLY public.task DROP CONSTRAINT task_owner_fkey;
ALTER TABLE ONLY public.task DROP CONSTRAINT task_assignee_member_fkey;
ALTER TABLE ONLY public.task DROP CONSTRAINT task_assignee_group_fkey;
ALTER TABLE ONLY public.task DROP CONSTRAINT task_actor_fkey;
ALTER TABLE ONLY public.stage_task DROP CONSTRAINT stage_task_stage_id_fkey;
ALTER TABLE ONLY public.snippet DROP CONSTRAINT snippet_task_id_fkey;
ALTER TABLE ONLY public.signal_generated DROP CONSTRAINT signal_generated_signal_id_fkey;
ALTER TABLE ONLY public.signal_caught DROP CONSTRAINT signal_caught_snippet_id_fkey;
ALTER TABLE ONLY public.signal_caught DROP CONSTRAINT signal_caught_signal_generated_id_fkey;
ALTER TABLE ONLY public.sales_manager_profile DROP CONSTRAINT sales_manager_profile_user_id_fkey;
ALTER TABLE ONLY public.sales_contact_person DROP CONSTRAINT sales_contact_person_lead_id_fkey;
ALTER TABLE ONLY public.product_signal DROP CONSTRAINT product_signal_product_id_fkey;
ALTER TABLE ONLY public.product DROP CONSTRAINT product_organization_id_fkey;
ALTER TABLE ONLY public.product_asset DROP CONSTRAINT product_asset_product_id_fkey;
ALTER TABLE ONLY public.pipeline_team DROP CONSTRAINT pipeline_team_team_id_fkey;
ALTER TABLE ONLY public.pipeline_team DROP CONSTRAINT pipeline_team_pipeline_id_fkey;
ALTER TABLE ONLY public.pipeline_stage DROP CONSTRAINT pipeline_stage_pipeline_id_fkey;
ALTER TABLE ONLY public.pipeline_product DROP CONSTRAINT pipeline_product_product_id_fkey;
ALTER TABLE ONLY public.pipeline_product DROP CONSTRAINT pipeline_product_pipeline_id_fkey;
ALTER TABLE ONLY public.organization_configuration DROP CONSTRAINT organization_configuration_organization_id_fkey;
ALTER TABLE ONLY public.number_change_request DROP CONSTRAINT number_change_request_raised_by_fkey;
ALTER TABLE ONLY public.notification DROP CONSTRAINT notification_to_user_fkey;
ALTER TABLE ONLY public.notification DROP CONSTRAINT notification_from_user_fkey;
ALTER TABLE ONLY public.lead DROP CONSTRAINT lead_product_id_fkey;
ALTER TABLE ONLY public.lead DROP CONSTRAINT lead_owner_fkey;
ALTER TABLE ONLY public.lead DROP CONSTRAINT lead_actor_fkey;
ALTER TABLE ONLY public.job_tasks DROP CONSTRAINT job_tasks_job_id_fkey;
ALTER TABLE ONLY public.faq_keyword DROP CONSTRAINT faq_keyword_faq_id_fkey;
ALTER TABLE ONLY public.calling_issues DROP CONSTRAINT calling_issues_cx_actor_fkey;
ALTER TABLE ONLY public.calling_issues DROP CONSTRAINT calling_issues_actor_fkey;
DROP INDEX public.user_sip_user_id_idx;
DROP INDEX public.user_sip_id_idx;
DROP INDEX public.user_role_userid_idx1;
DROP INDEX public.user_role_userid_idx;
DROP INDEX public.user_profile_user_id_idx1;
DROP INDEX public.user_profile_user_id_idx;
DROP INDEX public.user_profile_user_category_idx1;
DROP INDEX public.user_profile_user_category_idx;
DROP INDEX public.user_profile_religion_idx1;
DROP INDEX public.user_profile_religion_idx;
DROP INDEX public.user_profile_profile_image_idx1;
DROP INDEX public.user_profile_profile_image_idx;
DROP INDEX public.user_profile_place_of_birth_idx1;
DROP INDEX public.user_profile_place_of_birth_idx;
DROP INDEX public.user_profile_name_idx1;
DROP INDEX public.user_profile_name_idx;
DROP INDEX public.user_profile_mother_name_idx1;
DROP INDEX public.user_profile_mother_name_idx;
DROP INDEX public.user_profile_gender_idx1;
DROP INDEX public.user_profile_gender_idx;
DROP INDEX public.user_profile_father_name_idx1;
DROP INDEX public.user_profile_father_name_idx;
DROP INDEX public.user_profile_dob_idx1;
DROP INDEX public.user_profile_dob_idx;
DROP INDEX public.user_profile_caste_category_idx1;
DROP INDEX public.user_profile_caste_category_idx;
DROP INDEX public.user_profile_address_id_idx1;
DROP INDEX public.user_profile_address_id_idx;
DROP INDEX public.user_profile_aadhar_no_idx1;
DROP INDEX public.user_profile_aadhar_no_idx;
DROP INDEX public.user_manager_user_id_idx1;
DROP INDEX public.user_manager_user_id_idx;
DROP INDEX public.user_login_log_user_id_idx1;
DROP INDEX public.user_login_log_user_id_idx;
DROP INDEX public.user_login_log_id_idx1;
DROP INDEX public.user_login_log_id_idx;
DROP INDEX public.user_login_log_created_at_idx1;
DROP INDEX public.user_login_log_created_at_idx;
DROP INDEX public.user_login_log_action_idx1;
DROP INDEX public.user_login_log_action_idx;
DROP INDEX public.twilio_js_log_user_id_idx;
DROP INDEX public.twilio_js_log_sid_idx;
DROP INDEX public.twilio_js_log_message_idx;
DROP INDEX public.twilio_js_log_id_idx;
DROP INDEX public.twilio_call_log_task_id_idx;
DROP INDEX public.twilio_call_log_status_idx;
DROP INDEX public.twilio_call_log_start_time_idx;
DROP INDEX public.twilio_call_log_sid_idx;
DROP INDEX public.twilio_call_log_price_unit_idx;
DROP INDEX public.twilio_call_log_price_idx;
DROP INDEX public.twilio_call_log_parent_call_sid_idx;
DROP INDEX public.twilio_call_log_id_idx;
DROP INDEX public.twilio_call_log_duration_idx;
DROP INDEX public.twilio_call_log_direction_idx;
DROP INDEX public.twilio_call_log_country_idx;
DROP INDEX public.twilio_call_log_call_to_idx;
DROP INDEX public.twilio_call_log_call_from_idx;
DROP INDEX public.twilio_call_log_asr_idx;
DROP INDEX public.tomcat_sessions_valid_session_idx;
DROP INDEX public.tomcat_sessions_session_id_idx1;
DROP INDEX public.tomcat_sessions_session_id_idx;
DROP INDEX public.tomcat_sessions_session_data_idx;
DROP INDEX public.tomcat_sessions_max_inactive_idx;
DROP INDEX public.tomcat_sessions_last_access_idx;
DROP INDEX public.tomcat_sessions_app_name_idx1;
DROP INDEX public.tomcat_sessions_app_name_idx;
DROP INDEX public.task_voice_quality_idx;
DROP INDEX public.task_updated_at_idx;
DROP INDEX public.task_task_type_idx;
DROP INDEX public.task_talk_ratio_idx;
DROP INDEX public.task_tags_idx;
DROP INDEX public.task_status_idx;
DROP INDEX public.task_start_date_idx;
DROP INDEX public.task_stage_id_idx;
DROP INDEX public.task_special_score_idx;
DROP INDEX public.task_sentiment_idx;
DROP INDEX public.task_score_idx;
DROP INDEX public.task_sales_contact_id_idx;
DROP INDEX public.task_priority_idx;
DROP INDEX public.task_pipeline_id_idx;
DROP INDEX public.task_owner_idx;
DROP INDEX public.task_name_idx;
DROP INDEX public.task_longitude_idx;
DROP INDEX public.task_lead_id_idx;
DROP INDEX public.task_latitude_idx;
DROP INDEX public.task_is_timed_task_idx;
DROP INDEX public.task_is_repeatative_idx;
DROP INDEX public.task_is_active_idx;
DROP INDEX public.task_id_idx;
DROP INDEX public.task_followup_date_idx;
DROP INDEX public.task_follow_up_duration_in_days_idx;
DROP INDEX public.task_end_date_idx;
DROP INDEX public.task_duration_in_hours_idx;
DROP INDEX public.task_disposition_idx;
DROP INDEX public.task_direction_idx;
DROP INDEX public.task_description_idx;
DROP INDEX public.task_created_at_idx;
DROP INDEX public.task_callsid_idx;
DROP INDEX public.task_call_rating_idx;
DROP INDEX public.task_call_duration_idx;
DROP INDEX public.task_actor_idx;
DROP INDEX public.stage_task_updated_at_idx1;
DROP INDEX public.stage_task_updated_at_idx;
DROP INDEX public.stage_task_task_type_idx1;
DROP INDEX public.stage_task_task_type_idx;
DROP INDEX public.stage_task_task_name_idx1;
DROP INDEX public.stage_task_task_name_idx;
DROP INDEX public.stage_task_stage_id_idx1;
DROP INDEX public.stage_task_stage_id_idx;
DROP INDEX public.stage_task_id_idx1;
DROP INDEX public.stage_task_id_idx;
DROP INDEX public.stage_task_description_idx1;
DROP INDEX public.stage_task_description_idx;
DROP INDEX public.stage_task_created_at_idx1;
DROP INDEX public.stage_task_created_at_idx;
DROP INDEX public.snippet_text__idx;
DROP INDEX public.snippet_task_id_idx;
DROP INDEX public.signal_caught_snippet_id_idx;
DROP INDEX public.signal_caught_signal_generated_id_idx;
DROP INDEX public.sales_manager_profile_user_id_idx1;
DROP INDEX public.sales_manager_profile_user_id_idx;
DROP INDEX public.sales_manager_profile_timezone_idx1;
DROP INDEX public.sales_manager_profile_timezone_idx;
DROP INDEX public.sales_manager_profile_location_idx1;
DROP INDEX public.sales_manager_profile_location_idx;
DROP INDEX public.sales_manager_profile_language_pref_idx;
DROP INDEX public.sales_manager_profile_language_idx1;
DROP INDEX public.sales_manager_profile_language_idx;
DROP INDEX public.sales_manager_profile_id_idx1;
DROP INDEX public.sales_manager_profile_id_idx;
DROP INDEX public.sales_manager_profile_currency_idx1;
DROP INDEX public.sales_manager_profile_currency_idx;
DROP INDEX public.sales_ideal_updated_at_idx1;
DROP INDEX public.sales_ideal_updated_at_idx;
DROP INDEX public.sales_ideal_task_id_idx1;
DROP INDEX public.sales_ideal_task_id_idx;
DROP INDEX public.sales_ideal_is_ideal_idx1;
DROP INDEX public.sales_ideal_is_ideal_idx;
DROP INDEX public.sales_ideal_id_idx1;
DROP INDEX public.sales_ideal_id_idx;
DROP INDEX public.sales_ideal_created_at_idx1;
DROP INDEX public.sales_ideal_created_at_idx;
DROP INDEX public.sales_favorite_updated_at_idx1;
DROP INDEX public.sales_favorite_updated_at_idx;
DROP INDEX public.sales_favorite_task_id_idx1;
DROP INDEX public.sales_favorite_task_id_idx;
DROP INDEX public.sales_favorite_is_favorite_idx1;
DROP INDEX public.sales_favorite_is_favorite_idx;
DROP INDEX public.sales_favorite_id_idx1;
DROP INDEX public.sales_favorite_id_idx;
DROP INDEX public.sales_favorite_created_at_idx1;
DROP INDEX public.sales_favorite_created_at_idx;
DROP INDEX public.sales_contact_person_updated_at_idx;
DROP INDEX public.sales_contact_person_state_idx;
DROP INDEX public.sales_contact_person_phone_number_idx;
DROP INDEX public.sales_contact_person_office_phone_number_idx;
DROP INDEX public.sales_contact_person_name_idx;
DROP INDEX public.sales_contact_person_lead_id_idx;
DROP INDEX public.sales_contact_person_language_pref_idx;
DROP INDEX public.sales_contact_person_id_idx;
DROP INDEX public.sales_contact_person_email_idx;
DROP INDEX public.sales_contact_person_created_at_idx;
DROP INDEX public.sales_contact_person_country_idx;
DROP INDEX public.sales_contact_person_company_name_idx;
DROP INDEX public.sales_contact_person_city_idx;
DROP INDEX public.role_role_name_idx1;
DROP INDEX public.role_role_name_idx;
DROP INDEX public.role_id_idx1;
DROP INDEX public.role_id_idx;
DROP INDEX public.product_updated_at_idx1;
DROP INDEX public.product_updated_at_idx;
DROP INDEX public.product_signal_value_idx1;
DROP INDEX public.product_signal_value_idx;
DROP INDEX public.product_signal_updated_at_idx1;
DROP INDEX public.product_signal_updated_at_idx;
DROP INDEX public.product_signal_type_idx1;
DROP INDEX public.product_signal_type_idx;
DROP INDEX public.product_signal_product_id_idx1;
DROP INDEX public.product_signal_product_id_idx;
DROP INDEX public.product_signal_name_idx1;
DROP INDEX public.product_signal_name_idx;
DROP INDEX public.product_signal_is_active_idx1;
DROP INDEX public.product_signal_is_active_idx;
DROP INDEX public.product_signal_id_idx1;
DROP INDEX public.product_signal_id_idx;
DROP INDEX public.product_signal_created_at_idx1;
DROP INDEX public.product_signal_created_at_idx;
DROP INDEX public.product_signal_color_idx3;
DROP INDEX public.product_signal_color_idx2;
DROP INDEX public.product_signal_color_idx1;
DROP INDEX public.product_signal_color_idx;
DROP INDEX public.product_organization_id_idx1;
DROP INDEX public.product_organization_id_idx;
DROP INDEX public.product_name_idx1;
DROP INDEX public.product_name_idx;
DROP INDEX public.product_image_idx1;
DROP INDEX public.product_image_idx;
DROP INDEX public.product_id_idx1;
DROP INDEX public.product_id_idx;
DROP INDEX public.product_description_idx1;
DROP INDEX public.product_description_idx;
DROP INDEX public.product_created_at_idx1;
DROP INDEX public.product_created_at_idx;
DROP INDEX public.product_asset_updated_at_idx1;
DROP INDEX public.product_asset_updated_at_idx;
DROP INDEX public.product_asset_product_id_idx1;
DROP INDEX public.product_asset_product_id_idx;
DROP INDEX public.product_asset_id_idx1;
DROP INDEX public.product_asset_id_idx;
DROP INDEX public.product_asset_created_at_idx1;
DROP INDEX public.product_asset_created_at_idx;
DROP INDEX public.product_asset_asset_value_idx1;
DROP INDEX public.product_asset_asset_value_idx;
DROP INDEX public.product_asset_asset_url_idx1;
DROP INDEX public.product_asset_asset_url_idx;
DROP INDEX public.product_asset_asset_type_idx1;
DROP INDEX public.product_asset_asset_type_idx;
DROP INDEX public.product_asset_asset_name_idx1;
DROP INDEX public.product_asset_asset_name_idx;
DROP INDEX public.pipeline_xml_idx1;
DROP INDEX public.pipeline_xml_idx;
DROP INDEX public.pipeline_updated_at_idx1;
DROP INDEX public.pipeline_updated_at_idx;
DROP INDEX public.pipeline_team_pipeline_id_idx1;
DROP INDEX public.pipeline_team_pipeline_id_idx;
DROP INDEX public.pipeline_stage_updated_at_idx1;
DROP INDEX public.pipeline_stage_updated_at_idx;
DROP INDEX public.pipeline_stage_stage_name_idx1;
DROP INDEX public.pipeline_stage_stage_name_idx;
DROP INDEX public.pipeline_stage_pipeline_id_idx1;
DROP INDEX public.pipeline_stage_pipeline_id_idx;
DROP INDEX public.pipeline_stage_id_idx1;
DROP INDEX public.pipeline_stage_id_idx;
DROP INDEX public.pipeline_stage_created_at_idx1;
DROP INDEX public.pipeline_stage_created_at_idx;
DROP INDEX public.pipeline_product_pipeline_id_idx1;
DROP INDEX public.pipeline_product_pipeline_id_idx;
DROP INDEX public.pipeline_organization_id_idx1;
DROP INDEX public.pipeline_organization_id_idx;
DROP INDEX public.pipeline_name_idx1;
DROP INDEX public.pipeline_name_idx;
DROP INDEX public.pipeline_id_idx1;
DROP INDEX public.pipeline_id_idx;
DROP INDEX public.pipeline_created_at_idx1;
DROP INDEX public.pipeline_created_at_idx;
DROP INDEX public.pincode_state_idx1;
DROP INDEX public.pincode_state_idx;
DROP INDEX public.pincode_pin_idx1;
DROP INDEX public.pincode_pin_idx;
DROP INDEX public.pincode_longitude_idx1;
DROP INDEX public.pincode_longitude_idx;
DROP INDEX public.pincode_lattiude_idx1;
DROP INDEX public.pincode_lattiude_idx;
DROP INDEX public.pincode_id_idx1;
DROP INDEX public.pincode_id_idx;
DROP INDEX public.pincode_country_idx1;
DROP INDEX public.pincode_country_idx;
DROP INDEX public.pincode_city_idx1;
DROP INDEX public.pincode_city_idx;
DROP INDEX public.organization_website_idx1;
DROP INDEX public.organization_website_idx;
DROP INDEX public.organization_updated_at_idx1;
DROP INDEX public.organization_updated_at_idx;
DROP INDEX public.organization_profile_idx1;
DROP INDEX public.organization_profile_idx;
DROP INDEX public.organization_organization_type_idx1;
DROP INDEX public.organization_organization_type_idx;
DROP INDEX public.organization_name_idx1;
DROP INDEX public.organization_name_idx;
DROP INDEX public.organization_industry_idx1;
DROP INDEX public.organization_industry_idx;
DROP INDEX public.organization_image_idx1;
DROP INDEX public.organization_image_idx;
DROP INDEX public.organization_id_idx1;
DROP INDEX public.organization_id_idx;
DROP INDEX public.organization_founded_idx1;
DROP INDEX public.organization_founded_idx;
DROP INDEX public.organization_created_at_idx1;
DROP INDEX public.organization_created_at_idx;
DROP INDEX public.organization_contact_phone_idx1;
DROP INDEX public.organization_contact_phone_idx;
DROP INDEX public.organization_contact_name_idx1;
DROP INDEX public.organization_contact_name_idx;
DROP INDEX public.organization_contact_email_idx1;
DROP INDEX public.organization_contact_email_idx;
DROP INDEX public.organization_configuration_property_value_idx1;
DROP INDEX public.organization_configuration_property_value_idx;
DROP INDEX public.organization_configuration_property_name_idx1;
DROP INDEX public.organization_configuration_property_name_idx;
DROP INDEX public.organization_configuration_organization_id_idx1;
DROP INDEX public.organization_configuration_organization_id_idx;
DROP INDEX public.organization_configuration_id_idx1;
DROP INDEX public.organization_configuration_id_idx;
DROP INDEX public.organization_configuration_created_at_idx1;
DROP INDEX public.organization_configuration_created_at_idx;
DROP INDEX public.organization_address_id_idx1;
DROP INDEX public.organization_address_id_idx;
DROP INDEX public.org_user_organizationid_idx1;
DROP INDEX public.org_user_organizationid_idx;
DROP INDEX public.notification_type_idx;
DROP INDEX public.notification_to_user_idx;
DROP INDEX public.notification_is_read_idx;
DROP INDEX public.notification_id_idx;
DROP INDEX public.notification_from_user_idx;
DROP INDEX public.notification_created_at_idx;
DROP INDEX public.notification_body_idx;
DROP INDEX public.lead_value_idx;
DROP INDEX public.lead_updated_at_idx;
DROP INDEX public.lead_status_idx;
DROP INDEX public.lead_state_idx;
DROP INDEX public.lead_stage_idx;
DROP INDEX public.lead_reason_idx;
DROP INDEX public.lead_product_id_idx;
DROP INDEX public.lead_pin_code_idx;
DROP INDEX public.lead_owner_idx;
DROP INDEX public.lead_lead_source_idx;
DROP INDEX public.lead_id_idx;
DROP INDEX public.lead_created_at_idx;
DROP INDEX public.lead_country_idx;
DROP INDEX public.lead_company_website_idx;
DROP INDEX public.lead_company_name_idx;
DROP INDEX public.lead_company_details_idx;
DROP INDEX public.lead_city_idx;
DROP INDEX public.lead_address_idx;
DROP INDEX public.lead_actor_idx;
DROP INDEX public.istar_user_show_real_time_notification_idx1;
DROP INDEX public.istar_user_show_real_time_notification_idx;
DROP INDEX public.istar_user_password_idx1;
DROP INDEX public.istar_user_password_idx;
DROP INDEX public.istar_user_mobile_idx1;
DROP INDEX public.istar_user_mobile_idx;
DROP INDEX public.istar_user_login_type_idx1;
DROP INDEX public.istar_user_login_type_idx;
DROP INDEX public.istar_user_is_verified_idx1;
DROP INDEX public.istar_user_is_verified_idx;
DROP INDEX public.istar_user_is_supended_idx1;
DROP INDEX public.istar_user_is_supended_idx;
DROP INDEX public.istar_user_is_supend_idx1;
DROP INDEX public.istar_user_is_supend_idx;
DROP INDEX public.istar_user_is_deleted_idx1;
DROP INDEX public.istar_user_is_deleted_idx;
DROP INDEX public.istar_user_id_idx1;
DROP INDEX public.istar_user_id_idx;
DROP INDEX public.istar_user_email_idx1;
DROP INDEX public.istar_user_email_idx;
DROP INDEX public.istar_user_created_at_idx1;
DROP INDEX public.istar_user_created_at_idx;
DROP INDEX public.istar_user_auth_token_idx1;
DROP INDEX public.istar_user_auth_token_idx;
DROP INDEX public.istar_group_updated_at_idx1;
DROP INDEX public.istar_group_updated_at_idx;
DROP INDEX public.istar_group_organization_id_idx1;
DROP INDEX public.istar_group_organization_id_idx;
DROP INDEX public.istar_group_name_idx1;
DROP INDEX public.istar_group_name_idx;
DROP INDEX public.istar_group_is_deleted_idx;
DROP INDEX public.istar_group_id_idx1;
DROP INDEX public.istar_group_id_idx;
DROP INDEX public.istar_group_group_type_idx1;
DROP INDEX public.istar_group_group_type_idx;
DROP INDEX public.istar_group_group_mode_type_idx1;
DROP INDEX public.istar_group_group_mode_type_idx;
DROP INDEX public.istar_group_description_idx1;
DROP INDEX public.istar_group_description_idx;
DROP INDEX public.istar_group_created_at_idx1;
DROP INDEX public.istar_group_created_at_idx;
DROP INDEX public.invite_token_idx;
DROP INDEX public.invite_id_idx;
DROP INDEX public.invite_email_idx;
DROP INDEX public.group_user_qroupid_idx1;
DROP INDEX public.group_user_qroupid_idx;
DROP INDEX public.faq_question_idx;
DROP INDEX public.faq_keywords_idx;
DROP INDEX public.faq_id_idx;
DROP INDEX public.faq_answer_idx;
DROP INDEX public.country_entry_timezone_idx;
DROP INDEX public.country_entry_id_idx;
DROP INDEX public.country_entry_country_name_idx;
DROP INDEX public.country_entry_country_code_idx;
DROP INDEX public.country_entry_city_idx;
DROP INDEX public.country_entry_ccflips_code_idx;
DROP INDEX public.app_name_index;
DROP INDEX public.address_pincode_id_idx;
DROP INDEX public.address_id_idx;
DROP INDEX public.address_addressline2_idx;
DROP INDEX public.address_addressline1_idx;
DROP INDEX public.address_address_geo_longitude_idx;
DROP INDEX public.address_address_geo_latitude_idx;
ALTER TABLE ONLY public.welcome_message DROP CONSTRAINT welcome_message_pkey;
ALTER TABLE ONLY public.user_sip DROP CONSTRAINT user_sip_pkey;
ALTER TABLE ONLY public.user_login_log DROP CONSTRAINT user_login_log_pkey;
ALTER TABLE ONLY public.pipeline_team DROP CONSTRAINT uq_pipeline_team_pipeline_id_team_id;
ALTER TABLE ONLY public.pipeline_product DROP CONSTRAINT uq_pipeline_product_pipeline_id_product_id;
ALTER TABLE ONLY public.twilio_call_log DROP CONSTRAINT unique_twilio_call_log_task_id;
ALTER TABLE ONLY public.twilio_call_log DROP CONSTRAINT unique_twilio_call_log_sid;
ALTER TABLE ONLY public.twilio_must_allow_numbers DROP CONSTRAINT twilio_must_allow_numbers_pkey;
ALTER TABLE ONLY public.twilio_js_log DROP CONSTRAINT twilio_js_log_pkey;
ALTER TABLE ONLY public.twilio_call_log DROP CONSTRAINT twilio_call_log_pkey;
ALTER TABLE ONLY public.tomcat_sessions DROP CONSTRAINT tomcat_sessions_pkey;
ALTER TABLE ONLY public.task DROP CONSTRAINT task_pkey;
ALTER TABLE ONLY public.task DROP CONSTRAINT task_id_key;
ALTER TABLE ONLY public.task_comment DROP CONSTRAINT task_comment_pkey;
ALTER TABLE ONLY public.stage_task DROP CONSTRAINT stage_task_pkey;
ALTER TABLE ONLY public.snippet DROP CONSTRAINT snippet_pkey;
ALTER TABLE ONLY public.signal_generated DROP CONSTRAINT signal_generated_pkey;
ALTER TABLE ONLY public.sales_user_task_signal DROP CONSTRAINT sales_user_task_signal_pkey;
ALTER TABLE ONLY public.sales_ideal DROP CONSTRAINT sales_ideal_pkey;
ALTER TABLE ONLY public.sales_favorite DROP CONSTRAINT sales_favorite_pkey;
ALTER TABLE ONLY public.sales_contact_person DROP CONSTRAINT sales_contact_person_pkey;
ALTER TABLE ONLY public.sales_contact_person DROP CONSTRAINT sales_contact_person_email_lead_id_key;
ALTER TABLE ONLY public.product_signal DROP CONSTRAINT product_signal_pkey;
ALTER TABLE ONLY public.product_signal DROP CONSTRAINT product_signal_id_key;
ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
ALTER TABLE ONLY public.product_asset DROP CONSTRAINT product_asset_pkey;
ALTER TABLE ONLY public.pipeline_stage DROP CONSTRAINT pipeline_stage_pkey;
ALTER TABLE ONLY public.pipeline DROP CONSTRAINT pipeline_pkey;
ALTER TABLE ONLY public.pincode DROP CONSTRAINT pincode_pkey;
ALTER TABLE ONLY public.organization DROP CONSTRAINT organization_pkey;
ALTER TABLE ONLY public.organization_configuration DROP CONSTRAINT organization_configuration_pkey;
ALTER TABLE ONLY public.organization_configuration DROP CONSTRAINT organization_configuration_organization_id_property_name_key;
ALTER TABLE ONLY public.org_user DROP CONSTRAINT org_user_pkey;
ALTER TABLE ONLY public.number_change_request DROP CONSTRAINT number_change_request_pkey;
ALTER TABLE ONLY public.notification DROP CONSTRAINT notification_pkey;
ALTER TABLE ONLY public.license_type DROP CONSTRAINT license_type_pkey;
ALTER TABLE ONLY public.license_issued DROP CONSTRAINT license_issued_pkey;
ALTER TABLE ONLY public.lead DROP CONSTRAINT lead_pkey;
ALTER TABLE ONLY public.job_tasks DROP CONSTRAINT job_tasks_pkey;
ALTER TABLE ONLY public.job DROP CONSTRAINT job_pkey;
ALTER TABLE ONLY public.istar_user DROP CONSTRAINT istar_user_pkey;
ALTER TABLE ONLY public.istar_group DROP CONSTRAINT istar_group_pkey;
ALTER TABLE ONLY public.invoice DROP CONSTRAINT invoice_pkey;
ALTER TABLE ONLY public.invite DROP CONSTRAINT invite_pkey;
ALTER TABLE ONLY public.group_user DROP CONSTRAINT group_user_pkey;
ALTER TABLE ONLY public.faq DROP CONSTRAINT faq_pkey;
ALTER TABLE ONLY public.faq_keyword DROP CONSTRAINT faq_keyword_pkey;
ALTER TABLE ONLY public.country_entry DROP CONSTRAINT country_entry_pkey;
ALTER TABLE ONLY public.calling_issues DROP CONSTRAINT calling_issues_pkey;
ALTER TABLE ONLY public.bulk_license DROP CONSTRAINT bulk_license_pkey;
ALTER TABLE ONLY public.address DROP CONSTRAINT address_pkey;
ALTER TABLE ONLY public.billing_temp DROP CONSTRAINT "Billing _pkey";
ALTER TABLE public.twilio_must_allow_numbers ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.twilio_js_log ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.twilio_call_log ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.snippet ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.signal_generated ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.sales_user_task_signal ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.number_change_request ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.notification ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.license_type ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.license_issued ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.job_tasks ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.job ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.invoice ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.faq ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.country_entry ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.calling_issues ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.bulk_license ALTER COLUMN id DROP DEFAULT;
DROP TABLE public.welcome_message;
DROP TABLE public.user_sip;
DROP SEQUENCE public.user_sip_id_seq;
DROP TABLE public.user_role;
DROP TABLE public.user_profile;
DROP TABLE public.user_manager;
DROP TABLE public.user_login_log;
DROP SEQUENCE public.user_login_log_a_seq;
DROP SEQUENCE public.twilio_must_allow_numbers_id_seq;
DROP TABLE public.twilio_must_allow_numbers;
DROP SEQUENCE public.twilio_js_log_id_seq;
DROP TABLE public.twilio_js_log;
DROP SEQUENCE public.twilio_call_log_id_seq;
DROP TABLE public.twilio_call_log;
DROP TABLE public.tomcat_sessions;
DROP TABLE public.task_comment;
DROP SEQUENCE public.task_comment_a_seq;
DROP TABLE public.task;
DROP SEQUENCE public.task_a_seq;
DROP TABLE public.stage_task;
DROP SEQUENCE public.stage_task_a_seq;
DROP SEQUENCE public.snippet_id_seq;
DROP TABLE public.snippet;
DROP SEQUENCE public.signal_generated_id_seq;
DROP TABLE public.signal_generated;
DROP TABLE public.signal_caught;
DROP SEQUENCE public.sales_user_task_signal_id_seq;
DROP SEQUENCE public.sales_user_task_signal_a_seq;
DROP TABLE public.sales_user_task_signal;
DROP SEQUENCE public.sales_stats_user_a_seq;
DROP SEQUENCE public.sales_stats_product_a_seq;
DROP SEQUENCE public.sales_stats_group_a_seq;
DROP TABLE public.sales_manager_profile;
DROP SEQUENCE public.sales_manager_profile_a_seq;
DROP TABLE public.sales_ideal;
DROP SEQUENCE public.sales_ideal_a_seq;
DROP TABLE public.sales_favorite;
DROP SEQUENCE public.sales_favorite_a_seq;
DROP TABLE public.sales_contact_person;
DROP SEQUENCE public.sales_contact_person_a_seq;
DROP TABLE public.role;
DROP SEQUENCE public.role_a_seq;
DROP SEQUENCE public.product_specification_metadata_a_seq;
DROP SEQUENCE public.product_specification_a_seq;
DROP TABLE public.product_signal;
DROP SEQUENCE public.product_signal_a_seq;
DROP TABLE public.product_asset;
DROP SEQUENCE public.product_asset_a_seq;
DROP TABLE public.product;
DROP SEQUENCE public.product_a_seq;
DROP TABLE public.pipeline_team;
DROP TABLE public.pipeline_stage;
DROP SEQUENCE public.pipeline_stage_a_seq;
DROP TABLE public.pipeline_product;
DROP TABLE public.pipeline;
DROP SEQUENCE public.pipeline_a_seq;
DROP TABLE public.pincode;
DROP SEQUENCE public.pincode_a_seq;
DROP TABLE public.organization_configuration;
DROP SEQUENCE public.organization_configuration_a_seq;
DROP TABLE public.organization;
DROP SEQUENCE public.organization_a_seq;
DROP TABLE public.org_user;
DROP SEQUENCE public.org_license_summary_a_seq;
DROP SEQUENCE public.number_change_request_id_seq;
DROP TABLE public.number_change_request;
DROP SEQUENCE public.notification_id_seq;
DROP TABLE public.notification;
DROP SEQUENCE public.license_type_id_seq;
DROP TABLE public.license_type;
DROP SEQUENCE public.license_key_a_seq;
DROP SEQUENCE public.license_issued_id_seq;
DROP TABLE public.license_issued;
DROP SEQUENCE public.license_a_seq;
DROP TABLE public.lead;
DROP SEQUENCE public.lead_a_seq;
DROP SEQUENCE public.job_tasks_id_seq;
DROP TABLE public.job_tasks;
DROP SEQUENCE public.job_id_seq;
DROP TABLE public.job;
DROP TABLE public.istar_user;
DROP SEQUENCE public.istar_user_a_seq;
DROP TABLE public.istar_group;
DROP SEQUENCE public.istar_group_a_seq;
DROP SEQUENCE public.invoice_id_seq;
DROP TABLE public.invoice;
DROP SEQUENCE public.invite_sequence;
DROP TABLE public.invite;
DROP SEQUENCE public.invite_a_seq;
DROP TABLE public.group_user;
DROP TABLE public.faq_keyword;
DROP SEQUENCE public.faq_keyword_a_seq;
DROP SEQUENCE public.faq_id_seq;
DROP TABLE public.faq;
DROP SEQUENCE public.country_entry_id_seq;
DROP TABLE public.country_entry;
DROP SEQUENCE public.conversation_similarity_a_seq;
DROP SEQUENCE public.conversation_improvement_a_seq;
DROP SEQUENCE public.constant_properties_a_seq;
DROP SEQUENCE public.calling_issues_id_seq;
DROP TABLE public.calling_issues;
DROP SEQUENCE public.bulk_license_id_seq;
DROP TABLE public.bulk_license;
DROP TABLE public.billing_temp;
DROP TABLE public.address;
DROP SEQUENCE public.address_a_seq;
DROP FUNCTION public.random_between(low integer, high integer);
DROP EXTENSION plpgsql;
DROP SCHEMA public;
--
-- TOC entry 6 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 3074 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- TOC entry 1 (class 3079 OID 12395)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 3076 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- TOC entry 287 (class 1255 OID 1714057)
-- Name: random_between(integer, integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.random_between(low integer, high integer) RETURNS integer
    LANGUAGE plpgsql STRICT
    AS $$
BEGIN
   RETURN floor(random()* (high-low + 1) + low);
END;
$$;


ALTER FUNCTION public.random_between(low integer, high integer) OWNER TO postgres;

--
-- TOC entry 181 (class 1259 OID 1714058)
-- Name: address_a_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.address_a_seq
    START WITH 22568
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.address_a_seq OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 182 (class 1259 OID 1714060)
-- Name: address; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.address (
    id integer DEFAULT nextval('public.address_a_seq'::regclass) NOT NULL,
    addressline1 character varying(255),
    addressline2 character varying(255),
    pincode_id integer,
    address_geo_longitude double precision,
    address_geo_latitude double precision,
    pincode character varying(255)
);


ALTER TABLE public.address OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 1714067)
-- Name: billing_temp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.billing_temp (
    id character varying(255) NOT NULL,
    "CustomerName" character varying(255),
    "Nooflicensespurchased" character varying(255),
    "ContractType" character varying(255),
    "BillingCurrency" character varying(255),
    "Price_per_license" character varying(255),
    "VOIP_Billing" character varying(255),
    "Implementation_Services" character varying(255),
    "Implementation_Fee" character varying(255),
    "Total_Value_(INR)" character varying(255),
    "Billing_Frequency" character varying(255),
    "Payment_Terms" character varying(255),
    "Contract_start_date" character varying(255),
    "Payment_Method" character varying(255)
);


ALTER TABLE public.billing_temp OWNER TO postgres;

--
-- TOC entry 184 (class 1259 OID 1714073)
-- Name: bulk_license; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bulk_license (
    id integer NOT NULL,
    createdat timestamp without time zone,
    description character varying(2000),
    imageurl character varying(255),
    isdeleted boolean,
    name_ character varying(255),
    updatedat timestamp without time zone,
    expiryon timestamp without time zone,
    licensecount integer,
    stripesubscriptionid character varying(255),
    licensetype_id integer,
    organization_id integer
);


ALTER TABLE public.bulk_license OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 1714079)
-- Name: bulk_license_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bulk_license_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bulk_license_id_seq OWNER TO postgres;

--
-- TOC entry 3077 (class 0 OID 0)
-- Dependencies: 185
-- Name: bulk_license_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.bulk_license_id_seq OWNED BY public.bulk_license.id;


--
-- TOC entry 186 (class 1259 OID 1714081)
-- Name: calling_issues; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.calling_issues (
    id integer NOT NULL,
    sid character varying NOT NULL,
    reason_ character varying NOT NULL,
    actor integer,
    cx_actor integer,
    status character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.calling_issues OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 1714087)
-- Name: calling_issues_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.calling_issues_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.calling_issues_id_seq OWNER TO postgres;

--
-- TOC entry 3078 (class 0 OID 0)
-- Dependencies: 187
-- Name: calling_issues_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.calling_issues_id_seq OWNED BY public.calling_issues.id;


--
-- TOC entry 188 (class 1259 OID 1714089)
-- Name: constant_properties_a_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.constant_properties_a_seq
    START WITH 35
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constant_properties_a_seq OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 1714091)
-- Name: conversation_improvement_a_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.conversation_improvement_a_seq
    START WITH 3
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.conversation_improvement_a_seq OWNER TO postgres;

--
-- TOC entry 190 (class 1259 OID 1714093)
-- Name: conversation_similarity_a_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.conversation_similarity_a_seq
    START WITH 3
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.conversation_similarity_a_seq OWNER TO postgres;

SET default_with_oids = true;

--
-- TOC entry 191 (class 1259 OID 1714095)
-- Name: country_entry; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.country_entry (
    id integer NOT NULL,
    city character varying(255),
    ccflips_code character varying(255),
    country_name character varying(255),
    country_code character varying(255),
    timezone character varying(255),
    utc character varying(255)
);


ALTER TABLE public.country_entry OWNER TO postgres;

--
-- TOC entry 192 (class 1259 OID 1714101)
-- Name: country_entry_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.country_entry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.country_entry_id_seq OWNER TO postgres;

--
-- TOC entry 3079 (class 0 OID 0)
-- Dependencies: 192
-- Name: country_entry_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.country_entry_id_seq OWNED BY public.country_entry.id;


SET default_with_oids = false;

--
-- TOC entry 193 (class 1259 OID 1714103)
-- Name: faq; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.faq (
    id integer NOT NULL,
    question character varying,
    answer character varying,
    keywords character varying,
    product_id integer,
    type character varying(255),
    type_of_relationship character varying(255)
);


ALTER TABLE public.faq OWNER TO postgres;

--
-- TOC entry 194 (class 1259 OID 1714109)
-- Name: faq_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.faq_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.faq_id_seq OWNER TO postgres;

--
-- TOC entry 3080 (class 0 OID 0)
-- Dependencies: 194
-- Name: faq_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.faq_id_seq OWNED BY public.faq.id;


--
-- TOC entry 195 (class 1259 OID 1714111)
-- Name: faq_keyword_a_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.faq_keyword_a_seq
    START WITH 3
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.faq_keyword_a_seq OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 1714113)
-- Name: faq_keyword; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.faq_keyword (
    id integer DEFAULT nextval('public.faq_keyword_a_seq'::regclass) NOT NULL,
    keyword character varying(255),
    faq_id integer NOT NULL
);


ALTER TABLE public.faq_keyword OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 1714117)
-- Name: group_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.group_user (
    qroupid integer NOT NULL,
    userid integer NOT NULL
);


ALTER TABLE public.group_user OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 1714120)
-- Name: invite_a_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.invite_a_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.invite_a_seq OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 1714122)
-- Name: invite; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.invite (
    id integer DEFAULT nextval('public.invite_a_seq'::regclass) NOT NULL,
    email character varying(255),
    token character varying(255),
    status boolean
);


ALTER TABLE public.invite OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 1714129)
-- Name: invite_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.invite_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.invite_sequence OWNER TO postgres;

--
-- TOC entry 3081 (class 0 OID 0)
-- Dependencies: 200
-- Name: invite_sequence; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.invite_sequence OWNED BY public.invite.id;


--
-- TOC entry 201 (class 1259 OID 1714131)
-- Name: invoice; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.invoice (
    id integer NOT NULL,
    createdat timestamp without time zone,
    description character varying(2000),
    imageurl character varying(255),
    isdeleted boolean,
    name_ character varying(255),
    updatedat timestamp without time zone,
    amount real,
    duedate timestamp without time zone,
    status character varying(255),
    stripeinvoiceid character varying(255),
    bulklicense_id integer
);


ALTER TABLE public.invoice OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 1714137)
-- Name: invoice_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.invoice_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.invoice_id_seq OWNER TO postgres;

--
-- TOC entry 3082 (class 0 OID 0)
-- Dependencies: 202
-- Name: invoice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.invoice_id_seq OWNED BY public.invoice.id;


--
-- TOC entry 203 (class 1259 OID 1714139)
-- Name: istar_group_a_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.istar_group_a_seq
    START WITH 5657
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.istar_group_a_seq OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 1714141)
-- Name: istar_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.istar_group (
    id integer DEFAULT nextval('public.istar_group_a_seq'::regclass) NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    name character varying(255) NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL,
    organization_id integer NOT NULL,
    description text,
    group_type character varying(255) NOT NULL,
    group_mode_type character varying(255) NOT NULL,
    is_deleted boolean,
    owner integer
);


ALTER TABLE public.istar_group OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 1714148)
-- Name: istar_user_a_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.istar_user_a_seq
    START WITH 218555
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.istar_user_a_seq OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 1714150)
-- Name: istar_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.istar_user (
    id integer DEFAULT nextval('public.istar_user_a_seq'::regclass) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    mobile character varying,
    auth_token character varying(255),
    login_type character varying(255),
    is_verified boolean,
    is_supend boolean,
    is_supended boolean,
    is_deleted boolean,
    show_real_time_notification boolean DEFAULT false,
    fcm_token text,
    designation character varying(255)
);


ALTER TABLE public.istar_user OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 1714158)
-- Name: job; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.job (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    created_on timestamp without time zone NOT NULL
);


ALTER TABLE public.job OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 1714161)
-- Name: job_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.job_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.job_id_seq OWNER TO postgres;

--
-- TOC entry 3083 (class 0 OID 0)
-- Dependencies: 208
-- Name: job_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.job_id_seq OWNED BY public.job.id;


SET default_with_oids = true;

--
-- TOC entry 209 (class 1259 OID 1714163)
-- Name: job_tasks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.job_tasks (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    url text NOT NULL,
    created_on timestamp(6) without time zone NOT NULL,
    job_id integer NOT NULL,
    status character varying(255) DEFAULT 'INCOMPLETE'::character varying,
    completed_on timestamp without time zone,
    retry_count integer DEFAULT 0,
    task_id integer
);


ALTER TABLE public.job_tasks OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 1714171)
-- Name: job_tasks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.job_tasks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.job_tasks_id_seq OWNER TO postgres;

--
-- TOC entry 3084 (class 0 OID 0)
-- Dependencies: 210
-- Name: job_tasks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.job_tasks_id_seq OWNED BY public.job_tasks.id;


--
-- TOC entry 211 (class 1259 OID 1714173)
-- Name: lead_a_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lead_a_seq
    START WITH 2788
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lead_a_seq OWNER TO postgres;

SET default_with_oids = false;

--
-- TOC entry 212 (class 1259 OID 1714175)
-- Name: lead; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lead (
    id integer DEFAULT nextval('public.lead_a_seq'::regclass) NOT NULL,
    owner integer NOT NULL,
    actor integer,
    stage character varying(255),
    product_id integer,
    lead_source character varying(255),
    company_name character varying(255),
    address text,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    status character varying(255) DEFAULT 'NOT_ASSIGNED'::character varying,
    country character varying(255),
    state character varying(255),
    city character varying(255),
    pin_code character varying(255),
    reason character varying(255),
    value real,
    company_details text,
    company_website character varying(255),
    timezone character varying
);


ALTER TABLE public.lead OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 1714183)
-- Name: license_a_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.license_a_seq
    START WITH 6
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.license_a_seq OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 1714185)
-- Name: license_issued; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.license_issued (
    id integer NOT NULL,
    createdat timestamp without time zone,
    description character varying(2000),
    imageurl character varying(255),
    isdeleted boolean,
    name_ character varying(255),
    updatedat timestamp without time zone,
    expiryon timestamp without time zone,
    licensekey character varying(255),
    bulklicense_id integer,
    user_id integer
);


ALTER TABLE public.license_issued OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 1714191)
-- Name: license_issued_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.license_issued_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.license_issued_id_seq OWNER TO postgres;

--
-- TOC entry 3085 (class 0 OID 0)
-- Dependencies: 215
-- Name: license_issued_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.license_issued_id_seq OWNED BY public.license_issued.id;


--
-- TOC entry 216 (class 1259 OID 1714193)
-- Name: license_key_a_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.license_key_a_seq
    START WITH 277535
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.license_key_a_seq OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 1714195)
-- Name: license_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.license_type (
    id integer NOT NULL,
    createdat timestamp without time zone,
    description character varying(2000),
    imageurl character varying(255),
    isdeleted boolean,
    name_ character varying(255),
    updatedat timestamp without time zone,
    currency character varying(255),
    price real,
    stripeproductid character varying(255)
);


ALTER TABLE public.license_type OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 1714201)
-- Name: license_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.license_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.license_type_id_seq OWNER TO postgres;

--
-- TOC entry 3086 (class 0 OID 0)
-- Dependencies: 218
-- Name: license_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.license_type_id_seq OWNED BY public.license_type.id;


--
-- TOC entry 219 (class 1259 OID 1714203)
-- Name: notification; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.notification (
    id integer NOT NULL,
    type character varying NOT NULL,
    to_user integer NOT NULL,
    from_user integer NOT NULL,
    is_read boolean NOT NULL,
    body character varying NOT NULL,
    created_at timestamp without time zone,
    click_action character varying
);


ALTER TABLE public.notification OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 1714209)
-- Name: notification_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.notification_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notification_id_seq OWNER TO postgres;

--
-- TOC entry 3087 (class 0 OID 0)
-- Dependencies: 220
-- Name: notification_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.notification_id_seq OWNED BY public.notification.id;


--
-- TOC entry 221 (class 1259 OID 1714211)
-- Name: number_change_request; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.number_change_request (
    id integer NOT NULL,
    raised_by integer,
    call_sid character varying NOT NULL,
    validation_code character varying NOT NULL,
    new_number character varying NOT NULL,
    is_active boolean NOT NULL,
    is_successful boolean NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.number_change_request OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 1714217)
-- Name: number_change_request_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.number_change_request_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.number_change_request_id_seq OWNER TO postgres;

--
-- TOC entry 3088 (class 0 OID 0)
-- Dependencies: 222
-- Name: number_change_request_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.number_change_request_id_seq OWNED BY public.number_change_request.id;


--
-- TOC entry 223 (class 1259 OID 1714219)
-- Name: org_license_summary_a_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.org_license_summary_a_seq
    START WITH 114
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.org_license_summary_a_seq OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 1714221)
-- Name: org_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.org_user (
    organizationid integer NOT NULL,
    userid integer NOT NULL
);


ALTER TABLE public.org_user OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 1714224)
-- Name: organization_a_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.organization_a_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.organization_a_seq OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 1714226)
-- Name: organization; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.organization (
    id integer DEFAULT nextval('public.organization_a_seq'::regclass) NOT NULL,
    name character varying(255) NOT NULL,
    organization_type character varying(255),
    address_id integer,
    industry character varying(255),
    profile text,
    image character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    website character varying(255),
    founded integer,
    contact_name character varying(255),
    contact_email character varying(255),
    contact_phone bigint,
    employee_count integer,
    address character varying
);


ALTER TABLE public.organization OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 1714233)
-- Name: organization_configuration_a_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.organization_configuration_a_seq
    START WITH 10
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.organization_configuration_a_seq OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 1714235)
-- Name: organization_configuration; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.organization_configuration (
    id integer DEFAULT nextval('public.organization_configuration_a_seq'::regclass) NOT NULL,
    organization_id integer NOT NULL,
    property_name character varying,
    property_value character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.organization_configuration OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 1714242)
-- Name: pincode_a_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pincode_a_seq
    START WITH 36710
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pincode_a_seq OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 1714244)
-- Name: pincode; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pincode (
    id integer DEFAULT nextval('public.pincode_a_seq'::regclass) NOT NULL,
    city character varying(255) NOT NULL,
    country character varying(255) NOT NULL,
    pin integer NOT NULL,
    state character varying(255) NOT NULL,
    lattiude double precision,
    longitude double precision,
    state_code character varying(255)
);


ALTER TABLE public.pincode OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 1714251)
-- Name: pipeline_a_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pipeline_a_seq
    START WITH 195
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pipeline_a_seq OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 1714253)
-- Name: pipeline; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pipeline (
    id integer DEFAULT nextval('public.pipeline_a_seq'::regclass) NOT NULL,
    xml text,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    name character varying(500),
    organization_id integer,
    is_active boolean
);


ALTER TABLE public.pipeline OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 1714260)
-- Name: pipeline_product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pipeline_product (
    pipeline_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.pipeline_product OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 1714263)
-- Name: pipeline_stage_a_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pipeline_stage_a_seq
    START WITH 672
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pipeline_stage_a_seq OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 1714265)
-- Name: pipeline_stage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pipeline_stage (
    id integer DEFAULT nextval('public.pipeline_stage_a_seq'::regclass) NOT NULL,
    stage_name character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    pipeline_id integer,
    deleted boolean NOT NULL
);


ALTER TABLE public.pipeline_stage OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 1714269)
-- Name: pipeline_team; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pipeline_team (
    pipeline_id integer NOT NULL,
    team_id integer NOT NULL
);


ALTER TABLE public.pipeline_team OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 1714272)
-- Name: product_a_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_a_seq
    START WITH 386
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_a_seq OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 1714274)
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
    id integer DEFAULT nextval('public.product_a_seq'::regclass) NOT NULL,
    name character varying(255),
    organization_id integer,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    signal_color character varying(255),
    description text,
    image character varying(255) DEFAULT 'https://db.talentify.in/assets/logo.png'::character varying,
    deleted boolean,
    price real
);


ALTER TABLE public.product OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 1714282)
-- Name: product_asset_a_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_asset_a_seq
    START WITH 1145
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_asset_a_seq OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 1714284)
-- Name: product_asset; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_asset (
    id integer DEFAULT nextval('public.product_asset_a_seq'::regclass) NOT NULL,
    product_id integer,
    asset_type character varying(255),
    asset_url character varying(255),
    asset_value text,
    asset_name character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    is_active boolean
);


ALTER TABLE public.product_asset OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 1714291)
-- Name: product_signal_a_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_signal_a_seq
    START WITH 1327
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_signal_a_seq OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 1714293)
-- Name: product_signal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_signal (
    id integer DEFAULT nextval('public.product_signal_a_seq'::regclass) NOT NULL,
    name character varying(255) NOT NULL,
    color character varying(255) NOT NULL,
    value character varying(255),
    product_id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    is_active boolean DEFAULT true NOT NULL,
    type character varying(255),
    engine character varying(255) DEFAULT 'WordMatchExact'::character varying,
    match_type character varying(255) DEFAULT 'BOTH'::character varying,
    do_generate boolean
);


ALTER TABLE public.product_signal OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 1714303)
-- Name: product_specification_a_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_specification_a_seq
    START WITH 3
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_specification_a_seq OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 1714305)
-- Name: product_specification_metadata_a_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_specification_metadata_a_seq
    START WITH 3
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_specification_metadata_a_seq OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 1714307)
-- Name: role_a_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.role_a_seq
    START WITH 21
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.role_a_seq OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 1714309)
-- Name: role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.role (
    id integer DEFAULT nextval('public.role_a_seq'::regclass) NOT NULL,
    role_name text NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.role OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 1714316)
-- Name: sales_contact_person_a_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sales_contact_person_a_seq
    START WITH 3028
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sales_contact_person_a_seq OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 1714318)
-- Name: sales_contact_person; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sales_contact_person (
    id integer DEFAULT nextval('public.sales_contact_person_a_seq'::regclass) NOT NULL,
    name character varying(255),
    email character varying(255),
    phone_number text,
    lead_id integer,
    office_phone_number character varying(53),
    company_name character varying(100),
    city character varying(100),
    state character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    language_pref character varying DEFAULT 'en-IN'::character varying,
    country character varying(100) DEFAULT 'US'::character varying,
    job_title character varying
);


ALTER TABLE public.sales_contact_person OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 1714327)
-- Name: sales_favorite_a_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sales_favorite_a_seq
    START WITH 43
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sales_favorite_a_seq OWNER TO postgres;

--
-- TOC entry 250 (class 1259 OID 1714329)
-- Name: sales_favorite; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sales_favorite (
    id integer DEFAULT nextval('public.sales_favorite_a_seq'::regclass) NOT NULL,
    task_id integer,
    is_favorite boolean,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    user_id integer
);


ALTER TABLE public.sales_favorite OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 1714333)
-- Name: sales_ideal_a_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sales_ideal_a_seq
    START WITH 52
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sales_ideal_a_seq OWNER TO postgres;

--
-- TOC entry 252 (class 1259 OID 1714335)
-- Name: sales_ideal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sales_ideal (
    id integer DEFAULT nextval('public.sales_ideal_a_seq'::regclass) NOT NULL,
    task_id integer,
    is_ideal boolean,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    user_id integer
);


ALTER TABLE public.sales_ideal OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 1714339)
-- Name: sales_manager_profile_a_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sales_manager_profile_a_seq
    START WITH 1717
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sales_manager_profile_a_seq OWNER TO postgres;

--
-- TOC entry 254 (class 1259 OID 1714341)
-- Name: sales_manager_profile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sales_manager_profile (
    id integer DEFAULT nextval('public.sales_manager_profile_a_seq'::regclass) NOT NULL,
    timezone character varying,
    location character varying,
    language character varying,
    currency character varying,
    user_id integer NOT NULL,
    language_pref character varying,
    check_point_questions text
);


ALTER TABLE public.sales_manager_profile OWNER TO postgres;

--
-- TOC entry 255 (class 1259 OID 1714348)
-- Name: sales_stats_group_a_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sales_stats_group_a_seq
    START WITH 298
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sales_stats_group_a_seq OWNER TO postgres;

--
-- TOC entry 256 (class 1259 OID 1714350)
-- Name: sales_stats_product_a_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sales_stats_product_a_seq
    START WITH 81
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sales_stats_product_a_seq OWNER TO postgres;

--
-- TOC entry 257 (class 1259 OID 1714352)
-- Name: sales_stats_user_a_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sales_stats_user_a_seq
    START WITH 98
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sales_stats_user_a_seq OWNER TO postgres;

SET default_with_oids = true;

--
-- TOC entry 258 (class 1259 OID 1714354)
-- Name: sales_user_task_signal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sales_user_task_signal (
    id integer NOT NULL,
    name character varying(255),
    value integer,
    user_id integer,
    task_id integer,
    signal_id integer,
    created_at time(6) without time zone,
    actor character varying(32)
);


ALTER TABLE public.sales_user_task_signal OWNER TO postgres;

--
-- TOC entry 259 (class 1259 OID 1714357)
-- Name: sales_user_task_signal_a_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sales_user_task_signal_a_seq
    START WITH 1608
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sales_user_task_signal_a_seq OWNER TO postgres;

--
-- TOC entry 260 (class 1259 OID 1714359)
-- Name: sales_user_task_signal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sales_user_task_signal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sales_user_task_signal_id_seq OWNER TO postgres;

--
-- TOC entry 3089 (class 0 OID 0)
-- Dependencies: 260
-- Name: sales_user_task_signal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sales_user_task_signal_id_seq OWNED BY public.sales_user_task_signal.id;


SET default_with_oids = false;

--
-- TOC entry 261 (class 1259 OID 1714361)
-- Name: signal_caught; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.signal_caught (
    snippet_id integer,
    signal_generated_id integer,
    score double precision,
    match_method character varying
);


ALTER TABLE public.signal_caught OWNER TO postgres;

--
-- TOC entry 262 (class 1259 OID 1714367)
-- Name: signal_generated; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.signal_generated (
    id integer NOT NULL,
    signal_id integer NOT NULL,
    text_ character varying(2000) NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.signal_generated OWNER TO postgres;

--
-- TOC entry 263 (class 1259 OID 1714373)
-- Name: signal_generated_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.signal_generated_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.signal_generated_id_seq OWNER TO postgres;

--
-- TOC entry 3090 (class 0 OID 0)
-- Dependencies: 263
-- Name: signal_generated_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.signal_generated_id_seq OWNED BY public.signal_generated.id;


--
-- TOC entry 264 (class 1259 OID 1714375)
-- Name: snippet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.snippet (
    id integer NOT NULL,
    from_time double precision NOT NULL,
    to_time double precision NOT NULL,
    confidence double precision,
    text_ character varying(2000) NOT NULL,
    speaker character varying NOT NULL,
    task_id integer
);


ALTER TABLE public.snippet OWNER TO postgres;

--
-- TOC entry 265 (class 1259 OID 1714381)
-- Name: snippet_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.snippet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.snippet_id_seq OWNER TO postgres;

--
-- TOC entry 3091 (class 0 OID 0)
-- Dependencies: 265
-- Name: snippet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.snippet_id_seq OWNED BY public.snippet.id;


--
-- TOC entry 266 (class 1259 OID 1714383)
-- Name: stage_task_a_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stage_task_a_seq
    START WITH 692
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stage_task_a_seq OWNER TO postgres;

--
-- TOC entry 267 (class 1259 OID 1714385)
-- Name: stage_task; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stage_task (
    id integer DEFAULT nextval('public.stage_task_a_seq'::regclass) NOT NULL,
    task_name character varying(255),
    task_type character varying(255),
    description character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    stage_id integer,
    deleted boolean NOT NULL
);


ALTER TABLE public.stage_task OWNER TO postgres;

--
-- TOC entry 268 (class 1259 OID 1714392)
-- Name: task_a_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.task_a_seq
    START WITH 17871351
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.task_a_seq OWNER TO postgres;

--
-- TOC entry 269 (class 1259 OID 1714394)
-- Name: task; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.task (
    id integer DEFAULT nextval('public.task_a_seq'::regclass) NOT NULL,
    name text NOT NULL,
    description text,
    priority integer,
    owner integer NOT NULL,
    actor integer,
    status text,
    start_date timestamp(0) without time zone NOT NULL,
    end_date timestamp(0) without time zone,
    duration_in_hours real,
    assignee_group integer,
    assignee_member integer,
    is_repeatative boolean,
    followup_date timestamp(0) without time zone,
    is_active boolean,
    tags character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    is_timed_task boolean,
    follow_up_duration_in_days integer,
    task_type character varying(255),
    lead_id integer,
    call_duration integer DEFAULT 0,
    score real DEFAULT 0,
    latitude real DEFAULT 0,
    longitude real DEFAULT 0,
    analytics text,
    call_rating real DEFAULT 0,
    sales_contact_id integer,
    pipeline_id integer,
    stage_id integer,
    voice_quality real DEFAULT 0,
    talk_ratio real DEFAULT 0,
    sentiment real DEFAULT 0,
    special_score double precision DEFAULT 0,
    disposition character varying,
    callsid character varying(255),
    direction character varying,
    cost double precision,
    agent_amplitude character varying,
    customer_amplitude character varying,
    audio_url character varying(500)
);


ALTER TABLE public.task OWNER TO postgres;

--
-- TOC entry 270 (class 1259 OID 1714410)
-- Name: task_comment_a_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.task_comment_a_seq
    START WITH 1381
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.task_comment_a_seq OWNER TO postgres;

--
-- TOC entry 271 (class 1259 OID 1714412)
-- Name: task_comment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.task_comment (
    id integer DEFAULT nextval('public.task_comment_a_seq'::regclass) NOT NULL,
    task_id integer,
    user_id integer,
    comment text,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    comment_type character varying(255),
    snippet_id character varying,
    snippet_time double precision
);


ALTER TABLE public.task_comment OWNER TO postgres;

--
-- TOC entry 272 (class 1259 OID 1714419)
-- Name: tomcat_sessions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tomcat_sessions (
    session_id character varying(100) NOT NULL,
    valid_session character(1) NOT NULL,
    max_inactive integer NOT NULL,
    last_access bigint NOT NULL,
    app_name character varying(255),
    session_data bytea
);


ALTER TABLE public.tomcat_sessions OWNER TO postgres;

--
-- TOC entry 273 (class 1259 OID 1714425)
-- Name: twilio_call_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.twilio_call_log (
    id integer NOT NULL,
    sid character varying,
    duration integer,
    country character varying,
    task_id integer,
    price double precision,
    price_unit character varying,
    call_from character varying,
    call_to character varying,
    parent_call_sid character varying,
    direction character varying,
    start_time timestamp without time zone,
    status character varying,
    asr double precision,
    nlu double precision
);


ALTER TABLE public.twilio_call_log OWNER TO postgres;

--
-- TOC entry 274 (class 1259 OID 1714431)
-- Name: twilio_call_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.twilio_call_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.twilio_call_log_id_seq OWNER TO postgres;

--
-- TOC entry 3092 (class 0 OID 0)
-- Dependencies: 274
-- Name: twilio_call_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.twilio_call_log_id_seq OWNED BY public.twilio_call_log.id;


--
-- TOC entry 275 (class 1259 OID 1714433)
-- Name: twilio_js_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.twilio_js_log (
    id integer NOT NULL,
    sid character varying,
    user_id integer,
    message character varying,
    created_at timestamp without time zone
);


ALTER TABLE public.twilio_js_log OWNER TO postgres;

--
-- TOC entry 276 (class 1259 OID 1714439)
-- Name: twilio_js_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.twilio_js_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.twilio_js_log_id_seq OWNER TO postgres;

--
-- TOC entry 3093 (class 0 OID 0)
-- Dependencies: 276
-- Name: twilio_js_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.twilio_js_log_id_seq OWNED BY public.twilio_js_log.id;


--
-- TOC entry 277 (class 1259 OID 1714441)
-- Name: twilio_must_allow_numbers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.twilio_must_allow_numbers (
    id integer NOT NULL,
    phone_number character varying NOT NULL,
    is_active boolean NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.twilio_must_allow_numbers OWNER TO postgres;

--
-- TOC entry 278 (class 1259 OID 1714447)
-- Name: twilio_must_allow_numbers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.twilio_must_allow_numbers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.twilio_must_allow_numbers_id_seq OWNER TO postgres;

--
-- TOC entry 3094 (class 0 OID 0)
-- Dependencies: 278
-- Name: twilio_must_allow_numbers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.twilio_must_allow_numbers_id_seq OWNED BY public.twilio_must_allow_numbers.id;


--
-- TOC entry 279 (class 1259 OID 1714449)
-- Name: user_login_log_a_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_login_log_a_seq
    START WITH 3334
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_login_log_a_seq OWNER TO postgres;

--
-- TOC entry 280 (class 1259 OID 1714451)
-- Name: user_login_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_login_log (
    user_id integer NOT NULL,
    created_at timestamp(6) without time zone,
    action text,
    id integer DEFAULT nextval('public.user_login_log_a_seq'::regclass) NOT NULL,
    city character varying(255)
);


ALTER TABLE public.user_login_log OWNER TO postgres;

--
-- TOC entry 281 (class 1259 OID 1714458)
-- Name: user_manager; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_manager (
    user_id integer NOT NULL,
    manager_id integer NOT NULL,
    CONSTRAINT aa_cannot_be_equal_to_bb_chk CHECK ((user_id <> manager_id))
);


ALTER TABLE public.user_manager OWNER TO postgres;

--
-- TOC entry 3095 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN user_manager.user_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.user_manager.user_id IS 'This is the user id of a user in question';


--
-- TOC entry 3096 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN user_manager.manager_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.user_manager.manager_id IS 'This is the manager id in question ';


--
-- TOC entry 282 (class 1259 OID 1714462)
-- Name: user_profile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_profile (
    address_id integer,
    name character varying(255) NOT NULL,
    dob date,
    gender character varying(255),
    profile_image character varying(255),
    user_id integer NOT NULL,
    aadhar_no bigint,
    father_name character varying(255),
    mother_name character varying(255),
    user_category character varying(255),
    religion character varying(255),
    caste_category character varying(255),
    place_of_birth character varying(255),
    twilio_number character varying,
    sip_username character varying(255),
    sip_password character varying(255),
    sip_url character varying(255)
);


ALTER TABLE public.user_profile OWNER TO postgres;

--
-- TOC entry 283 (class 1259 OID 1714468)
-- Name: user_role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_role (
    userid integer NOT NULL,
    roleid integer NOT NULL
);


ALTER TABLE public.user_role OWNER TO postgres;

--
-- TOC entry 284 (class 1259 OID 1714471)
-- Name: user_sip_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_sip_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_sip_id_seq OWNER TO postgres;

SET default_with_oids = true;

--
-- TOC entry 285 (class 1259 OID 1714473)
-- Name: user_sip; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_sip (
    id integer DEFAULT nextval('public.user_sip_id_seq'::regclass) NOT NULL,
    user_id integer,
    sip_username character varying(255),
    sip_password character varying(255),
    sip_url character varying(255),
    provider character varying(255),
    is_active boolean
);


ALTER TABLE public.user_sip OWNER TO postgres;

SET default_with_oids = false;

--
-- TOC entry 286 (class 1259 OID 1714480)
-- Name: welcome_message; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.welcome_message (
    id integer NOT NULL,
    message text,
    organization_id integer NOT NULL,
    title character varying(255),
    type character varying(255)
);


ALTER TABLE public.welcome_message OWNER TO postgres;

--
-- TOC entry 2371 (class 2604 OID 1714486)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bulk_license ALTER COLUMN id SET DEFAULT nextval('public.bulk_license_id_seq'::regclass);


--
-- TOC entry 2372 (class 2604 OID 1714487)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calling_issues ALTER COLUMN id SET DEFAULT nextval('public.calling_issues_id_seq'::regclass);


--
-- TOC entry 2373 (class 2604 OID 1714488)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.country_entry ALTER COLUMN id SET DEFAULT nextval('public.country_entry_id_seq'::regclass);


--
-- TOC entry 2374 (class 2604 OID 1714489)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.faq ALTER COLUMN id SET DEFAULT nextval('public.faq_id_seq'::regclass);


--
-- TOC entry 2377 (class 2604 OID 1714490)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoice ALTER COLUMN id SET DEFAULT nextval('public.invoice_id_seq'::regclass);


--
-- TOC entry 2381 (class 2604 OID 1714491)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.job ALTER COLUMN id SET DEFAULT nextval('public.job_id_seq'::regclass);


--
-- TOC entry 2384 (class 2604 OID 1714492)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.job_tasks ALTER COLUMN id SET DEFAULT nextval('public.job_tasks_id_seq'::regclass);


--
-- TOC entry 2387 (class 2604 OID 1714493)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.license_issued ALTER COLUMN id SET DEFAULT nextval('public.license_issued_id_seq'::regclass);


--
-- TOC entry 2388 (class 2604 OID 1714494)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.license_type ALTER COLUMN id SET DEFAULT nextval('public.license_type_id_seq'::regclass);


--
-- TOC entry 2389 (class 2604 OID 1714495)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notification ALTER COLUMN id SET DEFAULT nextval('public.notification_id_seq'::regclass);


--
-- TOC entry 2390 (class 2604 OID 1714496)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.number_change_request ALTER COLUMN id SET DEFAULT nextval('public.number_change_request_id_seq'::regclass);


--
-- TOC entry 2410 (class 2604 OID 1714497)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales_user_task_signal ALTER COLUMN id SET DEFAULT nextval('public.sales_user_task_signal_id_seq'::regclass);


--
-- TOC entry 2411 (class 2604 OID 1714498)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.signal_generated ALTER COLUMN id SET DEFAULT nextval('public.signal_generated_id_seq'::regclass);


--
-- TOC entry 2412 (class 2604 OID 1714499)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.snippet ALTER COLUMN id SET DEFAULT nextval('public.snippet_id_seq'::regclass);


--
-- TOC entry 2425 (class 2604 OID 1714500)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.twilio_call_log ALTER COLUMN id SET DEFAULT nextval('public.twilio_call_log_id_seq'::regclass);


--
-- TOC entry 2426 (class 2604 OID 1714501)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.twilio_js_log ALTER COLUMN id SET DEFAULT nextval('public.twilio_js_log_id_seq'::regclass);


--
-- TOC entry 2427 (class 2604 OID 1714502)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.twilio_must_allow_numbers ALTER COLUMN id SET DEFAULT nextval('public.twilio_must_allow_numbers_id_seq'::regclass);


--
-- TOC entry 2440 (class 2606 OID 2032982)
-- Name: Billing _pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.billing_temp
    ADD CONSTRAINT "Billing _pkey" PRIMARY KEY (id);


--
-- TOC entry 2438 (class 2606 OID 2032984)
-- Name: address_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (id);


--
-- TOC entry 2442 (class 2606 OID 2032986)
-- Name: bulk_license_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bulk_license
    ADD CONSTRAINT bulk_license_pkey PRIMARY KEY (id);


--
-- TOC entry 2444 (class 2606 OID 2032988)
-- Name: calling_issues_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calling_issues
    ADD CONSTRAINT calling_issues_pkey PRIMARY KEY (id);


--
-- TOC entry 2451 (class 2606 OID 2032990)
-- Name: country_entry_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.country_entry
    ADD CONSTRAINT country_entry_pkey PRIMARY KEY (id);


--
-- TOC entry 2460 (class 2606 OID 2032992)
-- Name: faq_keyword_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.faq_keyword
    ADD CONSTRAINT faq_keyword_pkey PRIMARY KEY (id);


--
-- TOC entry 2457 (class 2606 OID 2032994)
-- Name: faq_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.faq
    ADD CONSTRAINT faq_pkey PRIMARY KEY (id);


--
-- TOC entry 2462 (class 2606 OID 2032996)
-- Name: group_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.group_user
    ADD CONSTRAINT group_user_pkey PRIMARY KEY (qroupid, userid);


--
-- TOC entry 2468 (class 2606 OID 2032998)
-- Name: invite_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invite
    ADD CONSTRAINT invite_pkey PRIMARY KEY (id);


--
-- TOC entry 2471 (class 2606 OID 2033000)
-- Name: invoice_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoice
    ADD CONSTRAINT invoice_pkey PRIMARY KEY (id);


--
-- TOC entry 2488 (class 2606 OID 2033002)
-- Name: istar_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.istar_group
    ADD CONSTRAINT istar_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2514 (class 2606 OID 2033004)
-- Name: istar_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.istar_user
    ADD CONSTRAINT istar_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2518 (class 2606 OID 2033006)
-- Name: job_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.job
    ADD CONSTRAINT job_pkey PRIMARY KEY (id);


--
-- TOC entry 2520 (class 2606 OID 2033008)
-- Name: job_tasks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.job_tasks
    ADD CONSTRAINT job_tasks_pkey PRIMARY KEY (id);


--
-- TOC entry 2534 (class 2606 OID 2033010)
-- Name: lead_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lead
    ADD CONSTRAINT lead_pkey PRIMARY KEY (id);


--
-- TOC entry 2543 (class 2606 OID 2033012)
-- Name: license_issued_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.license_issued
    ADD CONSTRAINT license_issued_pkey PRIMARY KEY (id);


--
-- TOC entry 2545 (class 2606 OID 2033014)
-- Name: license_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.license_type
    ADD CONSTRAINT license_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2552 (class 2606 OID 2033016)
-- Name: notification_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notification
    ADD CONSTRAINT notification_pkey PRIMARY KEY (id);


--
-- TOC entry 2556 (class 2606 OID 2033018)
-- Name: number_change_request_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.number_change_request
    ADD CONSTRAINT number_change_request_pkey PRIMARY KEY (id);


--
-- TOC entry 2560 (class 2606 OID 2033020)
-- Name: org_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.org_user
    ADD CONSTRAINT org_user_pkey PRIMARY KEY (organizationid, userid);


--
-- TOC entry 2598 (class 2606 OID 2033022)
-- Name: organization_configuration_organization_id_property_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.organization_configuration
    ADD CONSTRAINT organization_configuration_organization_id_property_name_key UNIQUE (organization_id, property_name);


--
-- TOC entry 2600 (class 2606 OID 2033024)
-- Name: organization_configuration_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.organization_configuration
    ADD CONSTRAINT organization_configuration_pkey PRIMARY KEY (id);


--
-- TOC entry 2584 (class 2606 OID 2033026)
-- Name: organization_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.organization
    ADD CONSTRAINT organization_pkey PRIMARY KEY (id);


--
-- TOC entry 2618 (class 2606 OID 2033028)
-- Name: pincode_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pincode
    ADD CONSTRAINT pincode_pkey PRIMARY KEY (id);


--
-- TOC entry 2630 (class 2606 OID 2033030)
-- Name: pipeline_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pipeline
    ADD CONSTRAINT pipeline_pkey PRIMARY KEY (id);


--
-- TOC entry 2646 (class 2606 OID 2033032)
-- Name: pipeline_stage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pipeline_stage
    ADD CONSTRAINT pipeline_stage_pkey PRIMARY KEY (id);


--
-- TOC entry 2686 (class 2606 OID 2033034)
-- Name: product_asset_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_asset
    ADD CONSTRAINT product_asset_pkey PRIMARY KEY (id);


--
-- TOC entry 2668 (class 2606 OID 2033036)
-- Name: product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- TOC entry 2698 (class 2606 OID 2033038)
-- Name: product_signal_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_signal
    ADD CONSTRAINT product_signal_id_key UNIQUE (id);


--
-- TOC entry 2704 (class 2606 OID 2033040)
-- Name: product_signal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_signal
    ADD CONSTRAINT product_signal_pkey PRIMARY KEY (id);


--
-- TOC entry 2723 (class 2606 OID 2033042)
-- Name: sales_contact_person_email_lead_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales_contact_person
    ADD CONSTRAINT sales_contact_person_email_lead_id_key UNIQUE (email, lead_id);


--
-- TOC entry 2731 (class 2606 OID 2033044)
-- Name: sales_contact_person_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales_contact_person
    ADD CONSTRAINT sales_contact_person_pkey PRIMARY KEY (id);


--
-- TOC entry 2741 (class 2606 OID 2033046)
-- Name: sales_favorite_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales_favorite
    ADD CONSTRAINT sales_favorite_pkey PRIMARY KEY (id);


--
-- TOC entry 2753 (class 2606 OID 2033048)
-- Name: sales_ideal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales_ideal
    ADD CONSTRAINT sales_ideal_pkey PRIMARY KEY (id);


--
-- TOC entry 2772 (class 2606 OID 2033050)
-- Name: sales_user_task_signal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales_user_task_signal
    ADD CONSTRAINT sales_user_task_signal_pkey PRIMARY KEY (id);


--
-- TOC entry 2776 (class 2606 OID 2033052)
-- Name: signal_generated_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.signal_generated
    ADD CONSTRAINT signal_generated_pkey PRIMARY KEY (id);


--
-- TOC entry 2778 (class 2606 OID 2033054)
-- Name: snippet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.snippet
    ADD CONSTRAINT snippet_pkey PRIMARY KEY (id);


--
-- TOC entry 2788 (class 2606 OID 2033056)
-- Name: stage_task_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stage_task
    ADD CONSTRAINT stage_task_pkey PRIMARY KEY (id);


--
-- TOC entry 2837 (class 2606 OID 2033058)
-- Name: task_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.task_comment
    ADD CONSTRAINT task_comment_pkey PRIMARY KEY (id);


--
-- TOC entry 2811 (class 2606 OID 2033060)
-- Name: task_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.task
    ADD CONSTRAINT task_id_key UNIQUE (id);


--
-- TOC entry 2822 (class 2606 OID 2033062)
-- Name: task_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.task
    ADD CONSTRAINT task_pkey PRIMARY KEY (id);


--
-- TOC entry 2844 (class 2606 OID 2033064)
-- Name: tomcat_sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tomcat_sessions
    ADD CONSTRAINT tomcat_sessions_pkey PRIMARY KEY (session_id);


--
-- TOC entry 2858 (class 2606 OID 2033066)
-- Name: twilio_call_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.twilio_call_log
    ADD CONSTRAINT twilio_call_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2872 (class 2606 OID 2033068)
-- Name: twilio_js_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.twilio_js_log
    ADD CONSTRAINT twilio_js_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2876 (class 2606 OID 2033070)
-- Name: twilio_must_allow_numbers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.twilio_must_allow_numbers
    ADD CONSTRAINT twilio_must_allow_numbers_pkey PRIMARY KEY (id);


--
-- TOC entry 2866 (class 2606 OID 2033072)
-- Name: unique_twilio_call_log_sid; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.twilio_call_log
    ADD CONSTRAINT unique_twilio_call_log_sid UNIQUE (sid);


--
-- TOC entry 2868 (class 2606 OID 2033074)
-- Name: unique_twilio_call_log_task_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.twilio_call_log
    ADD CONSTRAINT unique_twilio_call_log_task_id UNIQUE (task_id);


--
-- TOC entry 2638 (class 2606 OID 2033076)
-- Name: uq_pipeline_product_pipeline_id_product_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pipeline_product
    ADD CONSTRAINT uq_pipeline_product_pipeline_id_product_id UNIQUE (pipeline_id, product_id);


--
-- TOC entry 2654 (class 2606 OID 2033078)
-- Name: uq_pipeline_team_pipeline_id_team_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pipeline_team
    ADD CONSTRAINT uq_pipeline_team_pipeline_id_team_id UNIQUE (pipeline_id, team_id);


--
-- TOC entry 2884 (class 2606 OID 2033080)
-- Name: user_login_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_login_log
    ADD CONSTRAINT user_login_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2919 (class 2606 OID 2033082)
-- Name: user_sip_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_sip
    ADD CONSTRAINT user_sip_pkey PRIMARY KEY (id);


--
-- TOC entry 2922 (class 2606 OID 2033084)
-- Name: welcome_message_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.welcome_message
    ADD CONSTRAINT welcome_message_pkey PRIMARY KEY (id);


--
-- TOC entry 2431 (class 1259 OID 2033085)
-- Name: address_address_geo_latitude_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX address_address_geo_latitude_idx ON public.address USING btree (address_geo_latitude);


--
-- TOC entry 2432 (class 1259 OID 2033086)
-- Name: address_address_geo_longitude_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX address_address_geo_longitude_idx ON public.address USING btree (address_geo_longitude);


--
-- TOC entry 2433 (class 1259 OID 2033087)
-- Name: address_addressline1_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX address_addressline1_idx ON public.address USING btree (addressline1);


--
-- TOC entry 2434 (class 1259 OID 2033088)
-- Name: address_addressline2_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX address_addressline2_idx ON public.address USING btree (addressline2);


--
-- TOC entry 2435 (class 1259 OID 2033089)
-- Name: address_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX address_id_idx ON public.address USING btree (id);


--
-- TOC entry 2436 (class 1259 OID 2033090)
-- Name: address_pincode_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX address_pincode_id_idx ON public.address USING btree (pincode_id);


--
-- TOC entry 2838 (class 1259 OID 2033091)
-- Name: app_name_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX app_name_index ON public.tomcat_sessions USING btree (app_name);


--
-- TOC entry 2445 (class 1259 OID 2033092)
-- Name: country_entry_ccflips_code_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX country_entry_ccflips_code_idx ON public.country_entry USING btree (ccflips_code);


--
-- TOC entry 2446 (class 1259 OID 2033093)
-- Name: country_entry_city_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX country_entry_city_idx ON public.country_entry USING btree (city);


--
-- TOC entry 2447 (class 1259 OID 2033094)
-- Name: country_entry_country_code_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX country_entry_country_code_idx ON public.country_entry USING btree (country_code);


--
-- TOC entry 2448 (class 1259 OID 2033095)
-- Name: country_entry_country_name_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX country_entry_country_name_idx ON public.country_entry USING btree (country_name);


--
-- TOC entry 2449 (class 1259 OID 2033096)
-- Name: country_entry_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX country_entry_id_idx ON public.country_entry USING btree (id);


--
-- TOC entry 2452 (class 1259 OID 2033097)
-- Name: country_entry_timezone_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX country_entry_timezone_idx ON public.country_entry USING btree (timezone);


--
-- TOC entry 2453 (class 1259 OID 2033098)
-- Name: faq_answer_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX faq_answer_idx ON public.faq USING btree (answer);


--
-- TOC entry 2454 (class 1259 OID 2033099)
-- Name: faq_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX faq_id_idx ON public.faq USING btree (id);


--
-- TOC entry 2455 (class 1259 OID 2033100)
-- Name: faq_keywords_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX faq_keywords_idx ON public.faq USING btree (keywords);


--
-- TOC entry 2458 (class 1259 OID 2033101)
-- Name: faq_question_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX faq_question_idx ON public.faq USING btree (question);


--
-- TOC entry 2463 (class 1259 OID 2033102)
-- Name: group_user_qroupid_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX group_user_qroupid_idx ON public.group_user USING btree (qroupid);


--
-- TOC entry 2464 (class 1259 OID 2033103)
-- Name: group_user_qroupid_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX group_user_qroupid_idx1 ON public.group_user USING btree (qroupid);


--
-- TOC entry 2465 (class 1259 OID 2033104)
-- Name: invite_email_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX invite_email_idx ON public.invite USING btree (email);


--
-- TOC entry 2466 (class 1259 OID 2033105)
-- Name: invite_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX invite_id_idx ON public.invite USING btree (id);


--
-- TOC entry 2469 (class 1259 OID 2033106)
-- Name: invite_token_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX invite_token_idx ON public.invite USING btree (token);


--
-- TOC entry 2472 (class 1259 OID 2033107)
-- Name: istar_group_created_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX istar_group_created_at_idx ON public.istar_group USING btree (created_at);


--
-- TOC entry 2473 (class 1259 OID 2033108)
-- Name: istar_group_created_at_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX istar_group_created_at_idx1 ON public.istar_group USING btree (created_at);


--
-- TOC entry 2474 (class 1259 OID 2033109)
-- Name: istar_group_description_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX istar_group_description_idx ON public.istar_group USING btree (description);


--
-- TOC entry 2475 (class 1259 OID 2033110)
-- Name: istar_group_description_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX istar_group_description_idx1 ON public.istar_group USING btree (description);


--
-- TOC entry 2476 (class 1259 OID 2033111)
-- Name: istar_group_group_mode_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX istar_group_group_mode_type_idx ON public.istar_group USING btree (group_mode_type);


--
-- TOC entry 2477 (class 1259 OID 2033112)
-- Name: istar_group_group_mode_type_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX istar_group_group_mode_type_idx1 ON public.istar_group USING btree (group_mode_type);


--
-- TOC entry 2478 (class 1259 OID 2033113)
-- Name: istar_group_group_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX istar_group_group_type_idx ON public.istar_group USING btree (group_type);


--
-- TOC entry 2479 (class 1259 OID 2033114)
-- Name: istar_group_group_type_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX istar_group_group_type_idx1 ON public.istar_group USING btree (group_type);


--
-- TOC entry 2480 (class 1259 OID 2033115)
-- Name: istar_group_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX istar_group_id_idx ON public.istar_group USING btree (id);


--
-- TOC entry 2481 (class 1259 OID 2033116)
-- Name: istar_group_id_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX istar_group_id_idx1 ON public.istar_group USING btree (id);


--
-- TOC entry 2482 (class 1259 OID 2033117)
-- Name: istar_group_is_deleted_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX istar_group_is_deleted_idx ON public.istar_group USING btree (is_deleted);


--
-- TOC entry 2483 (class 1259 OID 2033118)
-- Name: istar_group_name_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX istar_group_name_idx ON public.istar_group USING btree (name);


--
-- TOC entry 2484 (class 1259 OID 2033119)
-- Name: istar_group_name_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX istar_group_name_idx1 ON public.istar_group USING btree (name);


--
-- TOC entry 2485 (class 1259 OID 2033120)
-- Name: istar_group_organization_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX istar_group_organization_id_idx ON public.istar_group USING btree (organization_id);


--
-- TOC entry 2486 (class 1259 OID 2033121)
-- Name: istar_group_organization_id_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX istar_group_organization_id_idx1 ON public.istar_group USING btree (organization_id);


--
-- TOC entry 2489 (class 1259 OID 2033122)
-- Name: istar_group_updated_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX istar_group_updated_at_idx ON public.istar_group USING btree (updated_at);


--
-- TOC entry 2490 (class 1259 OID 2033123)
-- Name: istar_group_updated_at_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX istar_group_updated_at_idx1 ON public.istar_group USING btree (updated_at);


--
-- TOC entry 2491 (class 1259 OID 2033124)
-- Name: istar_user_auth_token_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX istar_user_auth_token_idx ON public.istar_user USING btree (auth_token);


--
-- TOC entry 2492 (class 1259 OID 2033125)
-- Name: istar_user_auth_token_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX istar_user_auth_token_idx1 ON public.istar_user USING btree (auth_token);


--
-- TOC entry 2493 (class 1259 OID 2033126)
-- Name: istar_user_created_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX istar_user_created_at_idx ON public.istar_user USING btree (created_at);


--
-- TOC entry 2494 (class 1259 OID 2033127)
-- Name: istar_user_created_at_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX istar_user_created_at_idx1 ON public.istar_user USING btree (created_at);


--
-- TOC entry 2495 (class 1259 OID 2033128)
-- Name: istar_user_email_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX istar_user_email_idx ON public.istar_user USING btree (email);


--
-- TOC entry 2496 (class 1259 OID 2033129)
-- Name: istar_user_email_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX istar_user_email_idx1 ON public.istar_user USING btree (email);


--
-- TOC entry 2497 (class 1259 OID 2033130)
-- Name: istar_user_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX istar_user_id_idx ON public.istar_user USING btree (id);


--
-- TOC entry 2498 (class 1259 OID 2033131)
-- Name: istar_user_id_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX istar_user_id_idx1 ON public.istar_user USING btree (id);


--
-- TOC entry 2499 (class 1259 OID 2033132)
-- Name: istar_user_is_deleted_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX istar_user_is_deleted_idx ON public.istar_user USING btree (is_deleted);


--
-- TOC entry 2500 (class 1259 OID 2033133)
-- Name: istar_user_is_deleted_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX istar_user_is_deleted_idx1 ON public.istar_user USING btree (is_deleted);


--
-- TOC entry 2501 (class 1259 OID 2033134)
-- Name: istar_user_is_supend_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX istar_user_is_supend_idx ON public.istar_user USING btree (is_supend);


--
-- TOC entry 2502 (class 1259 OID 2033135)
-- Name: istar_user_is_supend_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX istar_user_is_supend_idx1 ON public.istar_user USING btree (is_supend);


--
-- TOC entry 2503 (class 1259 OID 2033136)
-- Name: istar_user_is_supended_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX istar_user_is_supended_idx ON public.istar_user USING btree (is_supended);


--
-- TOC entry 2504 (class 1259 OID 2033137)
-- Name: istar_user_is_supended_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX istar_user_is_supended_idx1 ON public.istar_user USING btree (is_supended);


--
-- TOC entry 2505 (class 1259 OID 2033138)
-- Name: istar_user_is_verified_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX istar_user_is_verified_idx ON public.istar_user USING btree (is_verified);


--
-- TOC entry 2506 (class 1259 OID 2033139)
-- Name: istar_user_is_verified_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX istar_user_is_verified_idx1 ON public.istar_user USING btree (is_verified);


--
-- TOC entry 2507 (class 1259 OID 2033140)
-- Name: istar_user_login_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX istar_user_login_type_idx ON public.istar_user USING btree (login_type);


--
-- TOC entry 2508 (class 1259 OID 2033141)
-- Name: istar_user_login_type_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX istar_user_login_type_idx1 ON public.istar_user USING btree (login_type);


--
-- TOC entry 2509 (class 1259 OID 2033142)
-- Name: istar_user_mobile_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX istar_user_mobile_idx ON public.istar_user USING btree (mobile);


--
-- TOC entry 2510 (class 1259 OID 2033143)
-- Name: istar_user_mobile_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX istar_user_mobile_idx1 ON public.istar_user USING btree (mobile);


--
-- TOC entry 2511 (class 1259 OID 2033144)
-- Name: istar_user_password_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX istar_user_password_idx ON public.istar_user USING btree (password);


--
-- TOC entry 2512 (class 1259 OID 2033145)
-- Name: istar_user_password_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX istar_user_password_idx1 ON public.istar_user USING btree (password);


--
-- TOC entry 2515 (class 1259 OID 2033146)
-- Name: istar_user_show_real_time_notification_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX istar_user_show_real_time_notification_idx ON public.istar_user USING btree (show_real_time_notification);


--
-- TOC entry 2516 (class 1259 OID 2033147)
-- Name: istar_user_show_real_time_notification_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX istar_user_show_real_time_notification_idx1 ON public.istar_user USING btree (show_real_time_notification);


--
-- TOC entry 2521 (class 1259 OID 2033148)
-- Name: lead_actor_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lead_actor_idx ON public.lead USING btree (actor);


--
-- TOC entry 2522 (class 1259 OID 2033149)
-- Name: lead_address_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lead_address_idx ON public.lead USING btree (address);


--
-- TOC entry 2523 (class 1259 OID 2033150)
-- Name: lead_city_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lead_city_idx ON public.lead USING btree (city);


--
-- TOC entry 2524 (class 1259 OID 2033151)
-- Name: lead_company_details_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lead_company_details_idx ON public.lead USING btree (company_details);


--
-- TOC entry 2525 (class 1259 OID 2033152)
-- Name: lead_company_name_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lead_company_name_idx ON public.lead USING btree (company_name);


--
-- TOC entry 2526 (class 1259 OID 2033153)
-- Name: lead_company_website_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lead_company_website_idx ON public.lead USING btree (company_website);


--
-- TOC entry 2527 (class 1259 OID 2033154)
-- Name: lead_country_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lead_country_idx ON public.lead USING btree (country);


--
-- TOC entry 2528 (class 1259 OID 2033155)
-- Name: lead_created_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lead_created_at_idx ON public.lead USING btree (created_at);


--
-- TOC entry 2529 (class 1259 OID 2033156)
-- Name: lead_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lead_id_idx ON public.lead USING btree (id);


--
-- TOC entry 2530 (class 1259 OID 2033157)
-- Name: lead_lead_source_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lead_lead_source_idx ON public.lead USING btree (lead_source);


--
-- TOC entry 2531 (class 1259 OID 2033158)
-- Name: lead_owner_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lead_owner_idx ON public.lead USING btree (owner);


--
-- TOC entry 2532 (class 1259 OID 2033159)
-- Name: lead_pin_code_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lead_pin_code_idx ON public.lead USING btree (pin_code);


--
-- TOC entry 2535 (class 1259 OID 2033160)
-- Name: lead_product_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lead_product_id_idx ON public.lead USING btree (product_id);


--
-- TOC entry 2536 (class 1259 OID 2033161)
-- Name: lead_reason_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lead_reason_idx ON public.lead USING btree (reason);


--
-- TOC entry 2537 (class 1259 OID 2033162)
-- Name: lead_stage_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lead_stage_idx ON public.lead USING btree (stage);


--
-- TOC entry 2538 (class 1259 OID 2033163)
-- Name: lead_state_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lead_state_idx ON public.lead USING btree (state);


--
-- TOC entry 2539 (class 1259 OID 2033164)
-- Name: lead_status_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lead_status_idx ON public.lead USING btree (status);


--
-- TOC entry 2540 (class 1259 OID 2033165)
-- Name: lead_updated_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lead_updated_at_idx ON public.lead USING btree (updated_at);


--
-- TOC entry 2541 (class 1259 OID 2033166)
-- Name: lead_value_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lead_value_idx ON public.lead USING btree (value);


--
-- TOC entry 2546 (class 1259 OID 2033167)
-- Name: notification_body_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX notification_body_idx ON public.notification USING btree (body);


--
-- TOC entry 2547 (class 1259 OID 2033168)
-- Name: notification_created_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX notification_created_at_idx ON public.notification USING btree (created_at);


--
-- TOC entry 2548 (class 1259 OID 2033169)
-- Name: notification_from_user_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX notification_from_user_idx ON public.notification USING btree (from_user);


--
-- TOC entry 2549 (class 1259 OID 2033170)
-- Name: notification_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX notification_id_idx ON public.notification USING btree (id);


--
-- TOC entry 2550 (class 1259 OID 2033171)
-- Name: notification_is_read_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX notification_is_read_idx ON public.notification USING btree (is_read);


--
-- TOC entry 2553 (class 1259 OID 2033172)
-- Name: notification_to_user_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX notification_to_user_idx ON public.notification USING btree (to_user);


--
-- TOC entry 2554 (class 1259 OID 2033173)
-- Name: notification_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX notification_type_idx ON public.notification USING btree (type);


--
-- TOC entry 2557 (class 1259 OID 2033174)
-- Name: org_user_organizationid_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX org_user_organizationid_idx ON public.org_user USING btree (organizationid);


--
-- TOC entry 2558 (class 1259 OID 2033175)
-- Name: org_user_organizationid_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX org_user_organizationid_idx1 ON public.org_user USING btree (organizationid);


--
-- TOC entry 2561 (class 1259 OID 2033176)
-- Name: organization_address_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX organization_address_id_idx ON public.organization USING btree (address_id);


--
-- TOC entry 2562 (class 1259 OID 2033177)
-- Name: organization_address_id_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX organization_address_id_idx1 ON public.organization USING btree (address_id);


--
-- TOC entry 2591 (class 1259 OID 2033178)
-- Name: organization_configuration_created_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX organization_configuration_created_at_idx ON public.organization_configuration USING btree (created_at);


--
-- TOC entry 2592 (class 1259 OID 2033179)
-- Name: organization_configuration_created_at_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX organization_configuration_created_at_idx1 ON public.organization_configuration USING btree (created_at);


--
-- TOC entry 2593 (class 1259 OID 2033180)
-- Name: organization_configuration_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX organization_configuration_id_idx ON public.organization_configuration USING btree (id);


--
-- TOC entry 2594 (class 1259 OID 2033181)
-- Name: organization_configuration_id_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX organization_configuration_id_idx1 ON public.organization_configuration USING btree (id);


--
-- TOC entry 2595 (class 1259 OID 2033182)
-- Name: organization_configuration_organization_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX organization_configuration_organization_id_idx ON public.organization_configuration USING btree (organization_id);


--
-- TOC entry 2596 (class 1259 OID 2033183)
-- Name: organization_configuration_organization_id_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX organization_configuration_organization_id_idx1 ON public.organization_configuration USING btree (organization_id);


--
-- TOC entry 2601 (class 1259 OID 2033184)
-- Name: organization_configuration_property_name_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX organization_configuration_property_name_idx ON public.organization_configuration USING btree (property_name);


--
-- TOC entry 2602 (class 1259 OID 2033185)
-- Name: organization_configuration_property_name_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX organization_configuration_property_name_idx1 ON public.organization_configuration USING btree (property_name);


--
-- TOC entry 2603 (class 1259 OID 2033186)
-- Name: organization_configuration_property_value_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX organization_configuration_property_value_idx ON public.organization_configuration USING btree (property_value);


--
-- TOC entry 2604 (class 1259 OID 2033187)
-- Name: organization_configuration_property_value_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX organization_configuration_property_value_idx1 ON public.organization_configuration USING btree (property_value);


--
-- TOC entry 2563 (class 1259 OID 2033188)
-- Name: organization_contact_email_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX organization_contact_email_idx ON public.organization USING btree (contact_email);


--
-- TOC entry 2564 (class 1259 OID 2033189)
-- Name: organization_contact_email_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX organization_contact_email_idx1 ON public.organization USING btree (contact_email);


--
-- TOC entry 2565 (class 1259 OID 2033190)
-- Name: organization_contact_name_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX organization_contact_name_idx ON public.organization USING btree (contact_name);


--
-- TOC entry 2566 (class 1259 OID 2033191)
-- Name: organization_contact_name_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX organization_contact_name_idx1 ON public.organization USING btree (contact_name);


--
-- TOC entry 2567 (class 1259 OID 2033192)
-- Name: organization_contact_phone_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX organization_contact_phone_idx ON public.organization USING btree (contact_phone);


--
-- TOC entry 2568 (class 1259 OID 2033193)
-- Name: organization_contact_phone_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX organization_contact_phone_idx1 ON public.organization USING btree (contact_phone);


--
-- TOC entry 2569 (class 1259 OID 2033194)
-- Name: organization_created_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX organization_created_at_idx ON public.organization USING btree (created_at);


--
-- TOC entry 2570 (class 1259 OID 2033195)
-- Name: organization_created_at_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX organization_created_at_idx1 ON public.organization USING btree (created_at);


--
-- TOC entry 2571 (class 1259 OID 2033196)
-- Name: organization_founded_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX organization_founded_idx ON public.organization USING btree (founded);


--
-- TOC entry 2572 (class 1259 OID 2033197)
-- Name: organization_founded_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX organization_founded_idx1 ON public.organization USING btree (founded);


--
-- TOC entry 2573 (class 1259 OID 2033198)
-- Name: organization_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX organization_id_idx ON public.organization USING btree (id);


--
-- TOC entry 2574 (class 1259 OID 2033199)
-- Name: organization_id_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX organization_id_idx1 ON public.organization USING btree (id);


--
-- TOC entry 2575 (class 1259 OID 2033200)
-- Name: organization_image_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX organization_image_idx ON public.organization USING btree (image);


--
-- TOC entry 2576 (class 1259 OID 2033201)
-- Name: organization_image_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX organization_image_idx1 ON public.organization USING btree (image);


--
-- TOC entry 2577 (class 1259 OID 2033202)
-- Name: organization_industry_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX organization_industry_idx ON public.organization USING btree (industry);


--
-- TOC entry 2578 (class 1259 OID 2033203)
-- Name: organization_industry_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX organization_industry_idx1 ON public.organization USING btree (industry);


--
-- TOC entry 2579 (class 1259 OID 2033204)
-- Name: organization_name_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX organization_name_idx ON public.organization USING btree (name);


--
-- TOC entry 2580 (class 1259 OID 2033205)
-- Name: organization_name_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX organization_name_idx1 ON public.organization USING btree (name);


--
-- TOC entry 2581 (class 1259 OID 2033206)
-- Name: organization_organization_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX organization_organization_type_idx ON public.organization USING btree (organization_type);


--
-- TOC entry 2582 (class 1259 OID 2033207)
-- Name: organization_organization_type_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX organization_organization_type_idx1 ON public.organization USING btree (organization_type);


--
-- TOC entry 2585 (class 1259 OID 2033208)
-- Name: organization_profile_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX organization_profile_idx ON public.organization USING btree (profile);


--
-- TOC entry 2586 (class 1259 OID 2033209)
-- Name: organization_profile_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX organization_profile_idx1 ON public.organization USING btree (profile);


--
-- TOC entry 2587 (class 1259 OID 2033210)
-- Name: organization_updated_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX organization_updated_at_idx ON public.organization USING btree (updated_at);


--
-- TOC entry 2588 (class 1259 OID 2033211)
-- Name: organization_updated_at_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX organization_updated_at_idx1 ON public.organization USING btree (updated_at);


--
-- TOC entry 2589 (class 1259 OID 2033212)
-- Name: organization_website_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX organization_website_idx ON public.organization USING btree (website);


--
-- TOC entry 2590 (class 1259 OID 2033213)
-- Name: organization_website_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX organization_website_idx1 ON public.organization USING btree (website);


--
-- TOC entry 2605 (class 1259 OID 2033214)
-- Name: pincode_city_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pincode_city_idx ON public.pincode USING btree (city);


--
-- TOC entry 2606 (class 1259 OID 2033215)
-- Name: pincode_city_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pincode_city_idx1 ON public.pincode USING btree (city);


--
-- TOC entry 2607 (class 1259 OID 2033216)
-- Name: pincode_country_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pincode_country_idx ON public.pincode USING btree (country);


--
-- TOC entry 2608 (class 1259 OID 2033217)
-- Name: pincode_country_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pincode_country_idx1 ON public.pincode USING btree (country);


--
-- TOC entry 2609 (class 1259 OID 2033218)
-- Name: pincode_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pincode_id_idx ON public.pincode USING btree (id);


--
-- TOC entry 2610 (class 1259 OID 2033219)
-- Name: pincode_id_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pincode_id_idx1 ON public.pincode USING btree (id);


--
-- TOC entry 2611 (class 1259 OID 2033220)
-- Name: pincode_lattiude_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pincode_lattiude_idx ON public.pincode USING btree (lattiude);


--
-- TOC entry 2612 (class 1259 OID 2033221)
-- Name: pincode_lattiude_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pincode_lattiude_idx1 ON public.pincode USING btree (lattiude);


--
-- TOC entry 2613 (class 1259 OID 2033222)
-- Name: pincode_longitude_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pincode_longitude_idx ON public.pincode USING btree (longitude);


--
-- TOC entry 2614 (class 1259 OID 2033223)
-- Name: pincode_longitude_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pincode_longitude_idx1 ON public.pincode USING btree (longitude);


--
-- TOC entry 2615 (class 1259 OID 2033224)
-- Name: pincode_pin_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pincode_pin_idx ON public.pincode USING btree (pin);


--
-- TOC entry 2616 (class 1259 OID 2033225)
-- Name: pincode_pin_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pincode_pin_idx1 ON public.pincode USING btree (pin);


--
-- TOC entry 2619 (class 1259 OID 2033226)
-- Name: pincode_state_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pincode_state_idx ON public.pincode USING btree (state);


--
-- TOC entry 2620 (class 1259 OID 2033227)
-- Name: pincode_state_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pincode_state_idx1 ON public.pincode USING btree (state);


--
-- TOC entry 2621 (class 1259 OID 2033228)
-- Name: pipeline_created_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pipeline_created_at_idx ON public.pipeline USING btree (created_at);


--
-- TOC entry 2622 (class 1259 OID 2033229)
-- Name: pipeline_created_at_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pipeline_created_at_idx1 ON public.pipeline USING btree (created_at);


--
-- TOC entry 2623 (class 1259 OID 2033230)
-- Name: pipeline_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pipeline_id_idx ON public.pipeline USING btree (id);


--
-- TOC entry 2624 (class 1259 OID 2033231)
-- Name: pipeline_id_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pipeline_id_idx1 ON public.pipeline USING btree (id);


--
-- TOC entry 2625 (class 1259 OID 2033232)
-- Name: pipeline_name_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pipeline_name_idx ON public.pipeline USING btree (name);


--
-- TOC entry 2626 (class 1259 OID 2033233)
-- Name: pipeline_name_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pipeline_name_idx1 ON public.pipeline USING btree (name);


--
-- TOC entry 2627 (class 1259 OID 2033234)
-- Name: pipeline_organization_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pipeline_organization_id_idx ON public.pipeline USING btree (organization_id);


--
-- TOC entry 2628 (class 1259 OID 2033235)
-- Name: pipeline_organization_id_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pipeline_organization_id_idx1 ON public.pipeline USING btree (organization_id);


--
-- TOC entry 2635 (class 1259 OID 2033236)
-- Name: pipeline_product_pipeline_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pipeline_product_pipeline_id_idx ON public.pipeline_product USING btree (pipeline_id);


--
-- TOC entry 2636 (class 1259 OID 2033237)
-- Name: pipeline_product_pipeline_id_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pipeline_product_pipeline_id_idx1 ON public.pipeline_product USING btree (pipeline_id);


--
-- TOC entry 2639 (class 1259 OID 2033238)
-- Name: pipeline_stage_created_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pipeline_stage_created_at_idx ON public.pipeline_stage USING btree (created_at);


--
-- TOC entry 2640 (class 1259 OID 2033239)
-- Name: pipeline_stage_created_at_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pipeline_stage_created_at_idx1 ON public.pipeline_stage USING btree (created_at);


--
-- TOC entry 2641 (class 1259 OID 2033240)
-- Name: pipeline_stage_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pipeline_stage_id_idx ON public.pipeline_stage USING btree (id);


--
-- TOC entry 2642 (class 1259 OID 2033241)
-- Name: pipeline_stage_id_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pipeline_stage_id_idx1 ON public.pipeline_stage USING btree (id);


--
-- TOC entry 2643 (class 1259 OID 2033242)
-- Name: pipeline_stage_pipeline_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pipeline_stage_pipeline_id_idx ON public.pipeline_stage USING btree (pipeline_id);


--
-- TOC entry 2644 (class 1259 OID 2033243)
-- Name: pipeline_stage_pipeline_id_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pipeline_stage_pipeline_id_idx1 ON public.pipeline_stage USING btree (pipeline_id);


--
-- TOC entry 2647 (class 1259 OID 2033244)
-- Name: pipeline_stage_stage_name_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pipeline_stage_stage_name_idx ON public.pipeline_stage USING btree (stage_name);


--
-- TOC entry 2648 (class 1259 OID 2033245)
-- Name: pipeline_stage_stage_name_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pipeline_stage_stage_name_idx1 ON public.pipeline_stage USING btree (stage_name);


--
-- TOC entry 2649 (class 1259 OID 2033246)
-- Name: pipeline_stage_updated_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pipeline_stage_updated_at_idx ON public.pipeline_stage USING btree (updated_at);


--
-- TOC entry 2650 (class 1259 OID 2033247)
-- Name: pipeline_stage_updated_at_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pipeline_stage_updated_at_idx1 ON public.pipeline_stage USING btree (updated_at);


--
-- TOC entry 2651 (class 1259 OID 2033248)
-- Name: pipeline_team_pipeline_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pipeline_team_pipeline_id_idx ON public.pipeline_team USING btree (pipeline_id);


--
-- TOC entry 2652 (class 1259 OID 2033249)
-- Name: pipeline_team_pipeline_id_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pipeline_team_pipeline_id_idx1 ON public.pipeline_team USING btree (pipeline_id);


--
-- TOC entry 2631 (class 1259 OID 2033250)
-- Name: pipeline_updated_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pipeline_updated_at_idx ON public.pipeline USING btree (updated_at);


--
-- TOC entry 2632 (class 1259 OID 2033251)
-- Name: pipeline_updated_at_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pipeline_updated_at_idx1 ON public.pipeline USING btree (updated_at);


--
-- TOC entry 2633 (class 1259 OID 2033252)
-- Name: pipeline_xml_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pipeline_xml_idx ON public.pipeline USING btree (xml);


--
-- TOC entry 2634 (class 1259 OID 2033253)
-- Name: pipeline_xml_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pipeline_xml_idx1 ON public.pipeline USING btree (xml);


--
-- TOC entry 2673 (class 1259 OID 2033254)
-- Name: product_asset_asset_name_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_asset_asset_name_idx ON public.product_asset USING btree (asset_name);


--
-- TOC entry 2674 (class 1259 OID 2033255)
-- Name: product_asset_asset_name_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_asset_asset_name_idx1 ON public.product_asset USING btree (asset_name);


--
-- TOC entry 2675 (class 1259 OID 2033256)
-- Name: product_asset_asset_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_asset_asset_type_idx ON public.product_asset USING btree (asset_type);


--
-- TOC entry 2676 (class 1259 OID 2033257)
-- Name: product_asset_asset_type_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_asset_asset_type_idx1 ON public.product_asset USING btree (asset_type);


--
-- TOC entry 2677 (class 1259 OID 2033258)
-- Name: product_asset_asset_url_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_asset_asset_url_idx ON public.product_asset USING btree (asset_url);


--
-- TOC entry 2678 (class 1259 OID 2033259)
-- Name: product_asset_asset_url_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_asset_asset_url_idx1 ON public.product_asset USING btree (asset_url);


--
-- TOC entry 2679 (class 1259 OID 2033260)
-- Name: product_asset_asset_value_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_asset_asset_value_idx ON public.product_asset USING btree (asset_value);


--
-- TOC entry 2680 (class 1259 OID 2033261)
-- Name: product_asset_asset_value_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_asset_asset_value_idx1 ON public.product_asset USING btree (asset_value);


--
-- TOC entry 2681 (class 1259 OID 2033262)
-- Name: product_asset_created_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_asset_created_at_idx ON public.product_asset USING btree (created_at);


--
-- TOC entry 2682 (class 1259 OID 2033263)
-- Name: product_asset_created_at_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_asset_created_at_idx1 ON public.product_asset USING btree (created_at);


--
-- TOC entry 2683 (class 1259 OID 2033264)
-- Name: product_asset_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_asset_id_idx ON public.product_asset USING btree (id);


--
-- TOC entry 2684 (class 1259 OID 2033265)
-- Name: product_asset_id_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_asset_id_idx1 ON public.product_asset USING btree (id);


--
-- TOC entry 2687 (class 1259 OID 2033266)
-- Name: product_asset_product_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_asset_product_id_idx ON public.product_asset USING btree (product_id);


--
-- TOC entry 2688 (class 1259 OID 2033267)
-- Name: product_asset_product_id_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_asset_product_id_idx1 ON public.product_asset USING btree (product_id);


--
-- TOC entry 2689 (class 1259 OID 2033268)
-- Name: product_asset_updated_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_asset_updated_at_idx ON public.product_asset USING btree (updated_at);


--
-- TOC entry 2690 (class 1259 OID 2033269)
-- Name: product_asset_updated_at_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_asset_updated_at_idx1 ON public.product_asset USING btree (updated_at);


--
-- TOC entry 2655 (class 1259 OID 2033270)
-- Name: product_created_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_created_at_idx ON public.product USING btree (created_at);


--
-- TOC entry 2656 (class 1259 OID 2033271)
-- Name: product_created_at_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_created_at_idx1 ON public.product USING btree (created_at);


--
-- TOC entry 2657 (class 1259 OID 2033272)
-- Name: product_description_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_description_idx ON public.product USING btree (description);


--
-- TOC entry 2658 (class 1259 OID 2033273)
-- Name: product_description_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_description_idx1 ON public.product USING btree (description);


--
-- TOC entry 2659 (class 1259 OID 2033274)
-- Name: product_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_id_idx ON public.product USING btree (id);


--
-- TOC entry 2660 (class 1259 OID 2033275)
-- Name: product_id_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_id_idx1 ON public.product USING btree (id);


--
-- TOC entry 2661 (class 1259 OID 2033276)
-- Name: product_image_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_image_idx ON public.product USING btree (image);


--
-- TOC entry 2662 (class 1259 OID 2033277)
-- Name: product_image_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_image_idx1 ON public.product USING btree (image);


--
-- TOC entry 2663 (class 1259 OID 2033278)
-- Name: product_name_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_name_idx ON public.product USING btree (name);


--
-- TOC entry 2664 (class 1259 OID 2033279)
-- Name: product_name_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_name_idx1 ON public.product USING btree (name);


--
-- TOC entry 2665 (class 1259 OID 2033280)
-- Name: product_organization_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_organization_id_idx ON public.product USING btree (organization_id);


--
-- TOC entry 2666 (class 1259 OID 2033281)
-- Name: product_organization_id_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_organization_id_idx1 ON public.product USING btree (organization_id);


--
-- TOC entry 2669 (class 1259 OID 2033282)
-- Name: product_signal_color_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_signal_color_idx ON public.product USING btree (signal_color);


--
-- TOC entry 2691 (class 1259 OID 2033283)
-- Name: product_signal_color_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_signal_color_idx1 ON public.product_signal USING btree (color);


--
-- TOC entry 2670 (class 1259 OID 2033284)
-- Name: product_signal_color_idx2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_signal_color_idx2 ON public.product USING btree (signal_color);


--
-- TOC entry 2692 (class 1259 OID 2033285)
-- Name: product_signal_color_idx3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_signal_color_idx3 ON public.product_signal USING btree (color);


--
-- TOC entry 2693 (class 1259 OID 2033286)
-- Name: product_signal_created_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_signal_created_at_idx ON public.product_signal USING btree (created_at);


--
-- TOC entry 2694 (class 1259 OID 2033287)
-- Name: product_signal_created_at_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_signal_created_at_idx1 ON public.product_signal USING btree (created_at);


--
-- TOC entry 2695 (class 1259 OID 2033288)
-- Name: product_signal_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_signal_id_idx ON public.product_signal USING btree (id);


--
-- TOC entry 2696 (class 1259 OID 2033289)
-- Name: product_signal_id_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_signal_id_idx1 ON public.product_signal USING btree (id);


--
-- TOC entry 2699 (class 1259 OID 2033290)
-- Name: product_signal_is_active_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_signal_is_active_idx ON public.product_signal USING btree (is_active);


--
-- TOC entry 2700 (class 1259 OID 2033291)
-- Name: product_signal_is_active_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_signal_is_active_idx1 ON public.product_signal USING btree (is_active);


--
-- TOC entry 2701 (class 1259 OID 2033292)
-- Name: product_signal_name_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_signal_name_idx ON public.product_signal USING btree (name);


--
-- TOC entry 2702 (class 1259 OID 2033293)
-- Name: product_signal_name_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_signal_name_idx1 ON public.product_signal USING btree (name);


--
-- TOC entry 2705 (class 1259 OID 2033294)
-- Name: product_signal_product_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_signal_product_id_idx ON public.product_signal USING btree (product_id);


--
-- TOC entry 2706 (class 1259 OID 2033295)
-- Name: product_signal_product_id_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_signal_product_id_idx1 ON public.product_signal USING btree (product_id);


--
-- TOC entry 2707 (class 1259 OID 2033296)
-- Name: product_signal_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_signal_type_idx ON public.product_signal USING btree (type);


--
-- TOC entry 2708 (class 1259 OID 2033297)
-- Name: product_signal_type_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_signal_type_idx1 ON public.product_signal USING btree (type);


--
-- TOC entry 2709 (class 1259 OID 2033298)
-- Name: product_signal_updated_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_signal_updated_at_idx ON public.product_signal USING btree (updated_at);


--
-- TOC entry 2710 (class 1259 OID 2033299)
-- Name: product_signal_updated_at_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_signal_updated_at_idx1 ON public.product_signal USING btree (updated_at);


--
-- TOC entry 2711 (class 1259 OID 2033300)
-- Name: product_signal_value_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_signal_value_idx ON public.product_signal USING btree (value);


--
-- TOC entry 2712 (class 1259 OID 2033301)
-- Name: product_signal_value_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_signal_value_idx1 ON public.product_signal USING btree (value);


--
-- TOC entry 2671 (class 1259 OID 2033302)
-- Name: product_updated_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_updated_at_idx ON public.product USING btree (updated_at);


--
-- TOC entry 2672 (class 1259 OID 2033303)
-- Name: product_updated_at_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_updated_at_idx1 ON public.product USING btree (updated_at);


--
-- TOC entry 2713 (class 1259 OID 2033304)
-- Name: role_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX role_id_idx ON public.role USING btree (id);


--
-- TOC entry 2714 (class 1259 OID 2033305)
-- Name: role_id_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX role_id_idx1 ON public.role USING btree (id);


--
-- TOC entry 2715 (class 1259 OID 2033306)
-- Name: role_role_name_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX role_role_name_idx ON public.role USING btree (role_name);


--
-- TOC entry 2716 (class 1259 OID 2033307)
-- Name: role_role_name_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX role_role_name_idx1 ON public.role USING btree (role_name);


--
-- TOC entry 2717 (class 1259 OID 2033308)
-- Name: sales_contact_person_city_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_contact_person_city_idx ON public.sales_contact_person USING btree (city);


--
-- TOC entry 2718 (class 1259 OID 2033309)
-- Name: sales_contact_person_company_name_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_contact_person_company_name_idx ON public.sales_contact_person USING btree (company_name);


--
-- TOC entry 2719 (class 1259 OID 2033310)
-- Name: sales_contact_person_country_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_contact_person_country_idx ON public.sales_contact_person USING btree (country);


--
-- TOC entry 2720 (class 1259 OID 2033311)
-- Name: sales_contact_person_created_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_contact_person_created_at_idx ON public.sales_contact_person USING btree (created_at);


--
-- TOC entry 2721 (class 1259 OID 2033312)
-- Name: sales_contact_person_email_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_contact_person_email_idx ON public.sales_contact_person USING btree (email);


--
-- TOC entry 2724 (class 1259 OID 2033313)
-- Name: sales_contact_person_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_contact_person_id_idx ON public.sales_contact_person USING btree (id);


--
-- TOC entry 2725 (class 1259 OID 2033314)
-- Name: sales_contact_person_language_pref_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_contact_person_language_pref_idx ON public.sales_contact_person USING btree (language_pref);


--
-- TOC entry 2726 (class 1259 OID 2033315)
-- Name: sales_contact_person_lead_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_contact_person_lead_id_idx ON public.sales_contact_person USING btree (lead_id);


--
-- TOC entry 2727 (class 1259 OID 2033316)
-- Name: sales_contact_person_name_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_contact_person_name_idx ON public.sales_contact_person USING btree (name);


--
-- TOC entry 2728 (class 1259 OID 2033317)
-- Name: sales_contact_person_office_phone_number_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_contact_person_office_phone_number_idx ON public.sales_contact_person USING btree (office_phone_number);


--
-- TOC entry 2729 (class 1259 OID 2033318)
-- Name: sales_contact_person_phone_number_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_contact_person_phone_number_idx ON public.sales_contact_person USING btree (phone_number);


--
-- TOC entry 2732 (class 1259 OID 2033319)
-- Name: sales_contact_person_state_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_contact_person_state_idx ON public.sales_contact_person USING btree (state);


--
-- TOC entry 2733 (class 1259 OID 2033320)
-- Name: sales_contact_person_updated_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_contact_person_updated_at_idx ON public.sales_contact_person USING btree (updated_at);


--
-- TOC entry 2734 (class 1259 OID 2033321)
-- Name: sales_favorite_created_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_favorite_created_at_idx ON public.sales_favorite USING btree (created_at);


--
-- TOC entry 2735 (class 1259 OID 2033322)
-- Name: sales_favorite_created_at_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_favorite_created_at_idx1 ON public.sales_favorite USING btree (created_at);


--
-- TOC entry 2736 (class 1259 OID 2033323)
-- Name: sales_favorite_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_favorite_id_idx ON public.sales_favorite USING btree (id);


--
-- TOC entry 2737 (class 1259 OID 2033324)
-- Name: sales_favorite_id_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_favorite_id_idx1 ON public.sales_favorite USING btree (id);


--
-- TOC entry 2738 (class 1259 OID 2033325)
-- Name: sales_favorite_is_favorite_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_favorite_is_favorite_idx ON public.sales_favorite USING btree (is_favorite);


--
-- TOC entry 2739 (class 1259 OID 2033326)
-- Name: sales_favorite_is_favorite_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_favorite_is_favorite_idx1 ON public.sales_favorite USING btree (is_favorite);


--
-- TOC entry 2742 (class 1259 OID 2033327)
-- Name: sales_favorite_task_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_favorite_task_id_idx ON public.sales_favorite USING btree (task_id);


--
-- TOC entry 2743 (class 1259 OID 2033328)
-- Name: sales_favorite_task_id_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_favorite_task_id_idx1 ON public.sales_favorite USING btree (task_id);


--
-- TOC entry 2744 (class 1259 OID 2033329)
-- Name: sales_favorite_updated_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_favorite_updated_at_idx ON public.sales_favorite USING btree (updated_at);


--
-- TOC entry 2745 (class 1259 OID 2033330)
-- Name: sales_favorite_updated_at_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_favorite_updated_at_idx1 ON public.sales_favorite USING btree (updated_at);


--
-- TOC entry 2746 (class 1259 OID 2033331)
-- Name: sales_ideal_created_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_ideal_created_at_idx ON public.sales_ideal USING btree (created_at);


--
-- TOC entry 2747 (class 1259 OID 2033332)
-- Name: sales_ideal_created_at_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_ideal_created_at_idx1 ON public.sales_ideal USING btree (created_at);


--
-- TOC entry 2748 (class 1259 OID 2033333)
-- Name: sales_ideal_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_ideal_id_idx ON public.sales_ideal USING btree (id);


--
-- TOC entry 2749 (class 1259 OID 2033334)
-- Name: sales_ideal_id_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_ideal_id_idx1 ON public.sales_ideal USING btree (id);


--
-- TOC entry 2750 (class 1259 OID 2033335)
-- Name: sales_ideal_is_ideal_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_ideal_is_ideal_idx ON public.sales_ideal USING btree (is_ideal);


--
-- TOC entry 2751 (class 1259 OID 2033336)
-- Name: sales_ideal_is_ideal_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_ideal_is_ideal_idx1 ON public.sales_ideal USING btree (is_ideal);


--
-- TOC entry 2754 (class 1259 OID 2033337)
-- Name: sales_ideal_task_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_ideal_task_id_idx ON public.sales_ideal USING btree (task_id);


--
-- TOC entry 2755 (class 1259 OID 2033338)
-- Name: sales_ideal_task_id_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_ideal_task_id_idx1 ON public.sales_ideal USING btree (task_id);


--
-- TOC entry 2756 (class 1259 OID 2033339)
-- Name: sales_ideal_updated_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_ideal_updated_at_idx ON public.sales_ideal USING btree (updated_at);


--
-- TOC entry 2757 (class 1259 OID 2033340)
-- Name: sales_ideal_updated_at_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_ideal_updated_at_idx1 ON public.sales_ideal USING btree (updated_at);


--
-- TOC entry 2758 (class 1259 OID 2033341)
-- Name: sales_manager_profile_currency_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_manager_profile_currency_idx ON public.sales_manager_profile USING btree (currency);


--
-- TOC entry 2759 (class 1259 OID 2033342)
-- Name: sales_manager_profile_currency_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_manager_profile_currency_idx1 ON public.sales_manager_profile USING btree (currency);


--
-- TOC entry 2760 (class 1259 OID 2033343)
-- Name: sales_manager_profile_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_manager_profile_id_idx ON public.sales_manager_profile USING btree (id);


--
-- TOC entry 2761 (class 1259 OID 2033344)
-- Name: sales_manager_profile_id_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_manager_profile_id_idx1 ON public.sales_manager_profile USING btree (id);


--
-- TOC entry 2762 (class 1259 OID 2033345)
-- Name: sales_manager_profile_language_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_manager_profile_language_idx ON public.sales_manager_profile USING btree (language);


--
-- TOC entry 2763 (class 1259 OID 2033346)
-- Name: sales_manager_profile_language_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_manager_profile_language_idx1 ON public.sales_manager_profile USING btree (language);


--
-- TOC entry 2764 (class 1259 OID 2033347)
-- Name: sales_manager_profile_language_pref_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_manager_profile_language_pref_idx ON public.sales_manager_profile USING btree (language_pref);


--
-- TOC entry 2765 (class 1259 OID 2033348)
-- Name: sales_manager_profile_location_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_manager_profile_location_idx ON public.sales_manager_profile USING btree (location);


--
-- TOC entry 2766 (class 1259 OID 2033349)
-- Name: sales_manager_profile_location_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_manager_profile_location_idx1 ON public.sales_manager_profile USING btree (location);


--
-- TOC entry 2767 (class 1259 OID 2033350)
-- Name: sales_manager_profile_timezone_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_manager_profile_timezone_idx ON public.sales_manager_profile USING btree (timezone);


--
-- TOC entry 2768 (class 1259 OID 2033351)
-- Name: sales_manager_profile_timezone_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_manager_profile_timezone_idx1 ON public.sales_manager_profile USING btree (timezone);


--
-- TOC entry 2769 (class 1259 OID 2033352)
-- Name: sales_manager_profile_user_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_manager_profile_user_id_idx ON public.sales_manager_profile USING btree (user_id);


--
-- TOC entry 2770 (class 1259 OID 2033353)
-- Name: sales_manager_profile_user_id_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sales_manager_profile_user_id_idx1 ON public.sales_manager_profile USING btree (user_id);


--
-- TOC entry 2773 (class 1259 OID 2033354)
-- Name: signal_caught_signal_generated_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX signal_caught_signal_generated_id_idx ON public.signal_caught USING btree (signal_generated_id);


--
-- TOC entry 2774 (class 1259 OID 2033355)
-- Name: signal_caught_snippet_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX signal_caught_snippet_id_idx ON public.signal_caught USING btree (snippet_id);


--
-- TOC entry 2779 (class 1259 OID 2033356)
-- Name: snippet_task_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX snippet_task_id_idx ON public.snippet USING btree (task_id);


--
-- TOC entry 2780 (class 1259 OID 2033357)
-- Name: snippet_text__idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX snippet_text__idx ON public.snippet USING btree (text_);


--
-- TOC entry 2781 (class 1259 OID 2033362)
-- Name: stage_task_created_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX stage_task_created_at_idx ON public.stage_task USING btree (created_at);


--
-- TOC entry 2782 (class 1259 OID 2033363)
-- Name: stage_task_created_at_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX stage_task_created_at_idx1 ON public.stage_task USING btree (created_at);


--
-- TOC entry 2783 (class 1259 OID 2033364)
-- Name: stage_task_description_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX stage_task_description_idx ON public.stage_task USING btree (description);


--
-- TOC entry 2784 (class 1259 OID 2033365)
-- Name: stage_task_description_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX stage_task_description_idx1 ON public.stage_task USING btree (description);


--
-- TOC entry 2785 (class 1259 OID 2033366)
-- Name: stage_task_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX stage_task_id_idx ON public.stage_task USING btree (id);


--
-- TOC entry 2786 (class 1259 OID 2033367)
-- Name: stage_task_id_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX stage_task_id_idx1 ON public.stage_task USING btree (id);


--
-- TOC entry 2789 (class 1259 OID 2033368)
-- Name: stage_task_stage_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX stage_task_stage_id_idx ON public.stage_task USING btree (stage_id);


--
-- TOC entry 2790 (class 1259 OID 2033369)
-- Name: stage_task_stage_id_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX stage_task_stage_id_idx1 ON public.stage_task USING btree (stage_id);


--
-- TOC entry 2791 (class 1259 OID 2033370)
-- Name: stage_task_task_name_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX stage_task_task_name_idx ON public.stage_task USING btree (task_name);


--
-- TOC entry 2792 (class 1259 OID 2033371)
-- Name: stage_task_task_name_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX stage_task_task_name_idx1 ON public.stage_task USING btree (task_name);


--
-- TOC entry 2793 (class 1259 OID 2033372)
-- Name: stage_task_task_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX stage_task_task_type_idx ON public.stage_task USING btree (task_type);


--
-- TOC entry 2794 (class 1259 OID 2033373)
-- Name: stage_task_task_type_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX stage_task_task_type_idx1 ON public.stage_task USING btree (task_type);


--
-- TOC entry 2795 (class 1259 OID 2033374)
-- Name: stage_task_updated_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX stage_task_updated_at_idx ON public.stage_task USING btree (updated_at);


--
-- TOC entry 2796 (class 1259 OID 2033375)
-- Name: stage_task_updated_at_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX stage_task_updated_at_idx1 ON public.stage_task USING btree (updated_at);


--
-- TOC entry 2797 (class 1259 OID 2033376)
-- Name: task_actor_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX task_actor_idx ON public.task USING btree (actor);


--
-- TOC entry 2798 (class 1259 OID 2033377)
-- Name: task_call_duration_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX task_call_duration_idx ON public.task USING btree (call_duration);


--
-- TOC entry 2799 (class 1259 OID 2033383)
-- Name: task_call_rating_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX task_call_rating_idx ON public.task USING btree (call_rating);


--
-- TOC entry 2800 (class 1259 OID 2033386)
-- Name: task_callsid_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX task_callsid_idx ON public.task USING btree (callsid);


--
-- TOC entry 2801 (class 1259 OID 2033387)
-- Name: task_created_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX task_created_at_idx ON public.task USING btree (created_at);


--
-- TOC entry 2802 (class 1259 OID 2033388)
-- Name: task_description_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX task_description_idx ON public.task USING btree (description);


--
-- TOC entry 2803 (class 1259 OID 2033389)
-- Name: task_direction_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX task_direction_idx ON public.task USING btree (direction);


--
-- TOC entry 2804 (class 1259 OID 2033390)
-- Name: task_disposition_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX task_disposition_idx ON public.task USING btree (disposition);


--
-- TOC entry 2805 (class 1259 OID 2033391)
-- Name: task_duration_in_hours_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX task_duration_in_hours_idx ON public.task USING btree (duration_in_hours);


--
-- TOC entry 2806 (class 1259 OID 2033392)
-- Name: task_end_date_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX task_end_date_idx ON public.task USING btree (end_date);


--
-- TOC entry 2807 (class 1259 OID 2033393)
-- Name: task_follow_up_duration_in_days_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX task_follow_up_duration_in_days_idx ON public.task USING btree (follow_up_duration_in_days);


--
-- TOC entry 2808 (class 1259 OID 2033394)
-- Name: task_followup_date_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX task_followup_date_idx ON public.task USING btree (followup_date);


--
-- TOC entry 2809 (class 1259 OID 2033395)
-- Name: task_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX task_id_idx ON public.task USING btree (id);


--
-- TOC entry 2812 (class 1259 OID 2033396)
-- Name: task_is_active_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX task_is_active_idx ON public.task USING btree (is_active);


--
-- TOC entry 2813 (class 1259 OID 2033397)
-- Name: task_is_repeatative_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX task_is_repeatative_idx ON public.task USING btree (is_repeatative);


--
-- TOC entry 2814 (class 1259 OID 2033398)
-- Name: task_is_timed_task_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX task_is_timed_task_idx ON public.task USING btree (is_timed_task);


--
-- TOC entry 2815 (class 1259 OID 2033399)
-- Name: task_latitude_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX task_latitude_idx ON public.task USING btree (latitude);


--
-- TOC entry 2816 (class 1259 OID 2033400)
-- Name: task_lead_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX task_lead_id_idx ON public.task USING btree (lead_id);


--
-- TOC entry 2817 (class 1259 OID 2033401)
-- Name: task_longitude_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX task_longitude_idx ON public.task USING btree (longitude);


--
-- TOC entry 2818 (class 1259 OID 2033402)
-- Name: task_name_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX task_name_idx ON public.task USING btree (name);


--
-- TOC entry 2819 (class 1259 OID 2033403)
-- Name: task_owner_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX task_owner_idx ON public.task USING btree (owner);


--
-- TOC entry 2820 (class 1259 OID 2033404)
-- Name: task_pipeline_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX task_pipeline_id_idx ON public.task USING btree (pipeline_id);


--
-- TOC entry 2823 (class 1259 OID 2033405)
-- Name: task_priority_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX task_priority_idx ON public.task USING btree (priority);


--
-- TOC entry 2824 (class 1259 OID 2033406)
-- Name: task_sales_contact_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX task_sales_contact_id_idx ON public.task USING btree (sales_contact_id);


--
-- TOC entry 2825 (class 1259 OID 2033407)
-- Name: task_score_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX task_score_idx ON public.task USING btree (score);


--
-- TOC entry 2826 (class 1259 OID 2033408)
-- Name: task_sentiment_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX task_sentiment_idx ON public.task USING btree (sentiment);


--
-- TOC entry 2827 (class 1259 OID 2033409)
-- Name: task_special_score_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX task_special_score_idx ON public.task USING btree (special_score);


--
-- TOC entry 2828 (class 1259 OID 2033410)
-- Name: task_stage_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX task_stage_id_idx ON public.task USING btree (stage_id);


--
-- TOC entry 2829 (class 1259 OID 2033411)
-- Name: task_start_date_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX task_start_date_idx ON public.task USING btree (start_date);


--
-- TOC entry 2830 (class 1259 OID 2033412)
-- Name: task_status_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX task_status_idx ON public.task USING btree (status);


--
-- TOC entry 2831 (class 1259 OID 2033413)
-- Name: task_tags_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX task_tags_idx ON public.task USING btree (tags);


--
-- TOC entry 2832 (class 1259 OID 2033414)
-- Name: task_talk_ratio_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX task_talk_ratio_idx ON public.task USING btree (talk_ratio);


--
-- TOC entry 2833 (class 1259 OID 2033415)
-- Name: task_task_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX task_task_type_idx ON public.task USING btree (task_type);


--
-- TOC entry 2834 (class 1259 OID 2033416)
-- Name: task_updated_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX task_updated_at_idx ON public.task USING btree (updated_at);


--
-- TOC entry 2835 (class 1259 OID 2033417)
-- Name: task_voice_quality_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX task_voice_quality_idx ON public.task USING btree (voice_quality);


--
-- TOC entry 2839 (class 1259 OID 2033418)
-- Name: tomcat_sessions_app_name_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tomcat_sessions_app_name_idx ON public.tomcat_sessions USING btree (app_name);


--
-- TOC entry 2840 (class 1259 OID 2033419)
-- Name: tomcat_sessions_app_name_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tomcat_sessions_app_name_idx1 ON public.tomcat_sessions USING btree (app_name);


--
-- TOC entry 2841 (class 1259 OID 2033420)
-- Name: tomcat_sessions_last_access_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tomcat_sessions_last_access_idx ON public.tomcat_sessions USING btree (last_access);


--
-- TOC entry 2842 (class 1259 OID 2033421)
-- Name: tomcat_sessions_max_inactive_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tomcat_sessions_max_inactive_idx ON public.tomcat_sessions USING btree (max_inactive);


--
-- TOC entry 2845 (class 1259 OID 2033422)
-- Name: tomcat_sessions_session_data_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tomcat_sessions_session_data_idx ON public.tomcat_sessions USING btree (session_data);


--
-- TOC entry 2846 (class 1259 OID 2033423)
-- Name: tomcat_sessions_session_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tomcat_sessions_session_id_idx ON public.tomcat_sessions USING btree (session_id);


--
-- TOC entry 2847 (class 1259 OID 2033424)
-- Name: tomcat_sessions_session_id_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tomcat_sessions_session_id_idx1 ON public.tomcat_sessions USING btree (session_id);


--
-- TOC entry 2848 (class 1259 OID 2033425)
-- Name: tomcat_sessions_valid_session_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tomcat_sessions_valid_session_idx ON public.tomcat_sessions USING btree (valid_session);


--
-- TOC entry 2849 (class 1259 OID 2033426)
-- Name: twilio_call_log_asr_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX twilio_call_log_asr_idx ON public.twilio_call_log USING btree (asr);


--
-- TOC entry 2850 (class 1259 OID 2033427)
-- Name: twilio_call_log_call_from_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX twilio_call_log_call_from_idx ON public.twilio_call_log USING btree (call_from);


--
-- TOC entry 2851 (class 1259 OID 2033428)
-- Name: twilio_call_log_call_to_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX twilio_call_log_call_to_idx ON public.twilio_call_log USING btree (call_to);


--
-- TOC entry 2852 (class 1259 OID 2033429)
-- Name: twilio_call_log_country_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX twilio_call_log_country_idx ON public.twilio_call_log USING btree (country);


--
-- TOC entry 2853 (class 1259 OID 2033430)
-- Name: twilio_call_log_direction_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX twilio_call_log_direction_idx ON public.twilio_call_log USING btree (direction);


--
-- TOC entry 2854 (class 1259 OID 2033431)
-- Name: twilio_call_log_duration_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX twilio_call_log_duration_idx ON public.twilio_call_log USING btree (duration);


--
-- TOC entry 2855 (class 1259 OID 2033432)
-- Name: twilio_call_log_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX twilio_call_log_id_idx ON public.twilio_call_log USING btree (id);


--
-- TOC entry 2856 (class 1259 OID 2033433)
-- Name: twilio_call_log_parent_call_sid_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX twilio_call_log_parent_call_sid_idx ON public.twilio_call_log USING btree (parent_call_sid);


--
-- TOC entry 2859 (class 1259 OID 2033434)
-- Name: twilio_call_log_price_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX twilio_call_log_price_idx ON public.twilio_call_log USING btree (price);


--
-- TOC entry 2860 (class 1259 OID 2033435)
-- Name: twilio_call_log_price_unit_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX twilio_call_log_price_unit_idx ON public.twilio_call_log USING btree (price_unit);


--
-- TOC entry 2861 (class 1259 OID 2033436)
-- Name: twilio_call_log_sid_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX twilio_call_log_sid_idx ON public.twilio_call_log USING btree (sid);


--
-- TOC entry 2862 (class 1259 OID 2033437)
-- Name: twilio_call_log_start_time_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX twilio_call_log_start_time_idx ON public.twilio_call_log USING btree (start_time);


--
-- TOC entry 2863 (class 1259 OID 2033438)
-- Name: twilio_call_log_status_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX twilio_call_log_status_idx ON public.twilio_call_log USING btree (status);


--
-- TOC entry 2864 (class 1259 OID 2033439)
-- Name: twilio_call_log_task_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX twilio_call_log_task_id_idx ON public.twilio_call_log USING btree (task_id);


--
-- TOC entry 2869 (class 1259 OID 2033440)
-- Name: twilio_js_log_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX twilio_js_log_id_idx ON public.twilio_js_log USING btree (id);


--
-- TOC entry 2870 (class 1259 OID 2033441)
-- Name: twilio_js_log_message_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX twilio_js_log_message_idx ON public.twilio_js_log USING btree (message);


--
-- TOC entry 2873 (class 1259 OID 2033442)
-- Name: twilio_js_log_sid_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX twilio_js_log_sid_idx ON public.twilio_js_log USING btree (sid);


--
-- TOC entry 2874 (class 1259 OID 2033443)
-- Name: twilio_js_log_user_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX twilio_js_log_user_id_idx ON public.twilio_js_log USING btree (user_id);


--
-- TOC entry 2877 (class 1259 OID 2033444)
-- Name: user_login_log_action_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_login_log_action_idx ON public.user_login_log USING btree (action);


--
-- TOC entry 2878 (class 1259 OID 2033445)
-- Name: user_login_log_action_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_login_log_action_idx1 ON public.user_login_log USING btree (action);


--
-- TOC entry 2879 (class 1259 OID 2033446)
-- Name: user_login_log_created_at_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_login_log_created_at_idx ON public.user_login_log USING btree (created_at);


--
-- TOC entry 2880 (class 1259 OID 2033447)
-- Name: user_login_log_created_at_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_login_log_created_at_idx1 ON public.user_login_log USING btree (created_at);


--
-- TOC entry 2881 (class 1259 OID 2033448)
-- Name: user_login_log_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_login_log_id_idx ON public.user_login_log USING btree (id);


--
-- TOC entry 2882 (class 1259 OID 2033449)
-- Name: user_login_log_id_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_login_log_id_idx1 ON public.user_login_log USING btree (id);


--
-- TOC entry 2885 (class 1259 OID 2033450)
-- Name: user_login_log_user_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_login_log_user_id_idx ON public.user_login_log USING btree (user_id);


--
-- TOC entry 2886 (class 1259 OID 2033451)
-- Name: user_login_log_user_id_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_login_log_user_id_idx1 ON public.user_login_log USING btree (user_id);


--
-- TOC entry 2887 (class 1259 OID 2033452)
-- Name: user_manager_user_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_manager_user_id_idx ON public.user_manager USING btree (user_id);


--
-- TOC entry 2888 (class 1259 OID 2033453)
-- Name: user_manager_user_id_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_manager_user_id_idx1 ON public.user_manager USING btree (user_id);


--
-- TOC entry 2889 (class 1259 OID 2033454)
-- Name: user_profile_aadhar_no_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_profile_aadhar_no_idx ON public.user_profile USING btree (aadhar_no);


--
-- TOC entry 2890 (class 1259 OID 2033455)
-- Name: user_profile_aadhar_no_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_profile_aadhar_no_idx1 ON public.user_profile USING btree (aadhar_no);


--
-- TOC entry 2891 (class 1259 OID 2033456)
-- Name: user_profile_address_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_profile_address_id_idx ON public.user_profile USING btree (address_id);


--
-- TOC entry 2892 (class 1259 OID 2033457)
-- Name: user_profile_address_id_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_profile_address_id_idx1 ON public.user_profile USING btree (address_id);


--
-- TOC entry 2893 (class 1259 OID 2033458)
-- Name: user_profile_caste_category_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_profile_caste_category_idx ON public.user_profile USING btree (caste_category);


--
-- TOC entry 2894 (class 1259 OID 2033459)
-- Name: user_profile_caste_category_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_profile_caste_category_idx1 ON public.user_profile USING btree (caste_category);


--
-- TOC entry 2895 (class 1259 OID 2033460)
-- Name: user_profile_dob_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_profile_dob_idx ON public.user_profile USING btree (dob);


--
-- TOC entry 2896 (class 1259 OID 2033461)
-- Name: user_profile_dob_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_profile_dob_idx1 ON public.user_profile USING btree (dob);


--
-- TOC entry 2897 (class 1259 OID 2033462)
-- Name: user_profile_father_name_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_profile_father_name_idx ON public.user_profile USING btree (father_name);


--
-- TOC entry 2898 (class 1259 OID 2033463)
-- Name: user_profile_father_name_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_profile_father_name_idx1 ON public.user_profile USING btree (father_name);


--
-- TOC entry 2899 (class 1259 OID 2033464)
-- Name: user_profile_gender_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_profile_gender_idx ON public.user_profile USING btree (gender);


--
-- TOC entry 2900 (class 1259 OID 2033465)
-- Name: user_profile_gender_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_profile_gender_idx1 ON public.user_profile USING btree (gender);


--
-- TOC entry 2901 (class 1259 OID 2033466)
-- Name: user_profile_mother_name_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_profile_mother_name_idx ON public.user_profile USING btree (mother_name);


--
-- TOC entry 2902 (class 1259 OID 2033467)
-- Name: user_profile_mother_name_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_profile_mother_name_idx1 ON public.user_profile USING btree (mother_name);


--
-- TOC entry 2903 (class 1259 OID 2033468)
-- Name: user_profile_name_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_profile_name_idx ON public.user_profile USING btree (name);


--
-- TOC entry 2904 (class 1259 OID 2033469)
-- Name: user_profile_name_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_profile_name_idx1 ON public.user_profile USING btree (name);


--
-- TOC entry 2905 (class 1259 OID 2033470)
-- Name: user_profile_place_of_birth_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_profile_place_of_birth_idx ON public.user_profile USING btree (place_of_birth);


--
-- TOC entry 2906 (class 1259 OID 2033471)
-- Name: user_profile_place_of_birth_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_profile_place_of_birth_idx1 ON public.user_profile USING btree (place_of_birth);


--
-- TOC entry 2907 (class 1259 OID 2033472)
-- Name: user_profile_profile_image_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_profile_profile_image_idx ON public.user_profile USING btree (profile_image);


--
-- TOC entry 2908 (class 1259 OID 2033473)
-- Name: user_profile_profile_image_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_profile_profile_image_idx1 ON public.user_profile USING btree (profile_image);


--
-- TOC entry 2909 (class 1259 OID 2033474)
-- Name: user_profile_religion_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_profile_religion_idx ON public.user_profile USING btree (religion);


--
-- TOC entry 2910 (class 1259 OID 2033475)
-- Name: user_profile_religion_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_profile_religion_idx1 ON public.user_profile USING btree (religion);


--
-- TOC entry 2911 (class 1259 OID 2033476)
-- Name: user_profile_user_category_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_profile_user_category_idx ON public.user_profile USING btree (user_category);


--
-- TOC entry 2912 (class 1259 OID 2033477)
-- Name: user_profile_user_category_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_profile_user_category_idx1 ON public.user_profile USING btree (user_category);


--
-- TOC entry 2913 (class 1259 OID 2033478)
-- Name: user_profile_user_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_profile_user_id_idx ON public.user_profile USING btree (user_id);


--
-- TOC entry 2914 (class 1259 OID 2033479)
-- Name: user_profile_user_id_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_profile_user_id_idx1 ON public.user_profile USING btree (user_id);


--
-- TOC entry 2915 (class 1259 OID 2033480)
-- Name: user_role_userid_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_role_userid_idx ON public.user_role USING btree (userid);


--
-- TOC entry 2916 (class 1259 OID 2033481)
-- Name: user_role_userid_idx1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_role_userid_idx1 ON public.user_role USING btree (userid);


--
-- TOC entry 2917 (class 1259 OID 2033482)
-- Name: user_sip_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_sip_id_idx ON public.user_sip USING btree (id);


--
-- TOC entry 2920 (class 1259 OID 2033483)
-- Name: user_sip_user_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_sip_user_id_idx ON public.user_sip USING btree (user_id);


--
-- TOC entry 2923 (class 2606 OID 2033484)
-- Name: calling_issues_actor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calling_issues
    ADD CONSTRAINT calling_issues_actor_fkey FOREIGN KEY (actor) REFERENCES public.istar_user(id);


--
-- TOC entry 2924 (class 2606 OID 2033489)
-- Name: calling_issues_cx_actor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calling_issues
    ADD CONSTRAINT calling_issues_cx_actor_fkey FOREIGN KEY (cx_actor) REFERENCES public.istar_user(id);


--
-- TOC entry 2925 (class 2606 OID 2033494)
-- Name: faq_keyword_faq_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.faq_keyword
    ADD CONSTRAINT faq_keyword_faq_id_fkey FOREIGN KEY (faq_id) REFERENCES public.faq(id);


--
-- TOC entry 2926 (class 2606 OID 2033499)
-- Name: job_tasks_job_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.job_tasks
    ADD CONSTRAINT job_tasks_job_id_fkey FOREIGN KEY (job_id) REFERENCES public.job(id);


--
-- TOC entry 2927 (class 2606 OID 2033504)
-- Name: lead_actor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lead
    ADD CONSTRAINT lead_actor_fkey FOREIGN KEY (actor) REFERENCES public.istar_user(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2928 (class 2606 OID 2033509)
-- Name: lead_owner_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lead
    ADD CONSTRAINT lead_owner_fkey FOREIGN KEY (owner) REFERENCES public.istar_user(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2929 (class 2606 OID 2033514)
-- Name: lead_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lead
    ADD CONSTRAINT lead_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2930 (class 2606 OID 2033519)
-- Name: notification_from_user_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notification
    ADD CONSTRAINT notification_from_user_fkey FOREIGN KEY (from_user) REFERENCES public.istar_user(id);


--
-- TOC entry 2931 (class 2606 OID 2033524)
-- Name: notification_to_user_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notification
    ADD CONSTRAINT notification_to_user_fkey FOREIGN KEY (to_user) REFERENCES public.istar_user(id);


--
-- TOC entry 2932 (class 2606 OID 2033529)
-- Name: number_change_request_raised_by_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.number_change_request
    ADD CONSTRAINT number_change_request_raised_by_fkey FOREIGN KEY (raised_by) REFERENCES public.istar_user(id);


--
-- TOC entry 2933 (class 2606 OID 2033534)
-- Name: organization_configuration_organization_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.organization_configuration
    ADD CONSTRAINT organization_configuration_organization_id_fkey FOREIGN KEY (organization_id) REFERENCES public.organization(id);


--
-- TOC entry 2934 (class 2606 OID 2033539)
-- Name: pipeline_product_pipeline_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pipeline_product
    ADD CONSTRAINT pipeline_product_pipeline_id_fkey FOREIGN KEY (pipeline_id) REFERENCES public.pipeline(id);


--
-- TOC entry 2935 (class 2606 OID 2033544)
-- Name: pipeline_product_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pipeline_product
    ADD CONSTRAINT pipeline_product_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(id);


--
-- TOC entry 2936 (class 2606 OID 2033549)
-- Name: pipeline_stage_pipeline_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pipeline_stage
    ADD CONSTRAINT pipeline_stage_pipeline_id_fkey FOREIGN KEY (pipeline_id) REFERENCES public.pipeline(id);


--
-- TOC entry 2937 (class 2606 OID 2033554)
-- Name: pipeline_team_pipeline_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pipeline_team
    ADD CONSTRAINT pipeline_team_pipeline_id_fkey FOREIGN KEY (pipeline_id) REFERENCES public.pipeline(id);


--
-- TOC entry 2938 (class 2606 OID 2033559)
-- Name: pipeline_team_team_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pipeline_team
    ADD CONSTRAINT pipeline_team_team_id_fkey FOREIGN KEY (team_id) REFERENCES public.istar_group(id);


--
-- TOC entry 2940 (class 2606 OID 2033564)
-- Name: product_asset_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_asset
    ADD CONSTRAINT product_asset_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2939 (class 2606 OID 2033569)
-- Name: product_organization_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_organization_id_fkey FOREIGN KEY (organization_id) REFERENCES public.organization(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2941 (class 2606 OID 2033574)
-- Name: product_signal_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_signal
    ADD CONSTRAINT product_signal_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(id);


--
-- TOC entry 2942 (class 2606 OID 2033579)
-- Name: sales_contact_person_lead_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales_contact_person
    ADD CONSTRAINT sales_contact_person_lead_id_fkey FOREIGN KEY (lead_id) REFERENCES public.lead(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2943 (class 2606 OID 2033584)
-- Name: sales_manager_profile_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales_manager_profile
    ADD CONSTRAINT sales_manager_profile_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.istar_user(id);


--
-- TOC entry 2944 (class 2606 OID 2033589)
-- Name: signal_caught_signal_generated_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.signal_caught
    ADD CONSTRAINT signal_caught_signal_generated_id_fkey FOREIGN KEY (signal_generated_id) REFERENCES public.signal_generated(id);


--
-- TOC entry 2945 (class 2606 OID 2033594)
-- Name: signal_caught_snippet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.signal_caught
    ADD CONSTRAINT signal_caught_snippet_id_fkey FOREIGN KEY (snippet_id) REFERENCES public.snippet(id);


--
-- TOC entry 2946 (class 2606 OID 2033599)
-- Name: signal_generated_signal_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.signal_generated
    ADD CONSTRAINT signal_generated_signal_id_fkey FOREIGN KEY (signal_id) REFERENCES public.product_signal(id);


--
-- TOC entry 2947 (class 2606 OID 2033604)
-- Name: snippet_task_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.snippet
    ADD CONSTRAINT snippet_task_id_fkey FOREIGN KEY (task_id) REFERENCES public.task(id);


--
-- TOC entry 2948 (class 2606 OID 2033609)
-- Name: stage_task_stage_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stage_task
    ADD CONSTRAINT stage_task_stage_id_fkey FOREIGN KEY (stage_id) REFERENCES public.pipeline_stage(id);


--
-- TOC entry 2949 (class 2606 OID 2033614)
-- Name: task_actor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.task
    ADD CONSTRAINT task_actor_fkey FOREIGN KEY (actor) REFERENCES public.istar_user(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2950 (class 2606 OID 2033619)
-- Name: task_assignee_group_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.task
    ADD CONSTRAINT task_assignee_group_fkey FOREIGN KEY (assignee_group) REFERENCES public.istar_group(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2951 (class 2606 OID 2033624)
-- Name: task_assignee_member_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.task
    ADD CONSTRAINT task_assignee_member_fkey FOREIGN KEY (assignee_member) REFERENCES public.istar_user(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2952 (class 2606 OID 2033629)
-- Name: task_owner_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.task
    ADD CONSTRAINT task_owner_fkey FOREIGN KEY (owner) REFERENCES public.istar_user(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2953 (class 2606 OID 2033634)
-- Name: twilio_js_log_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.twilio_js_log
    ADD CONSTRAINT twilio_js_log_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.istar_user(id);


--
-- TOC entry 3075 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2019-10-07 17:43:30 IST

--
-- PostgreSQL database dump complete
--

INSERT INTO public."role" (id, role_name, created_at) VALUES(19, 'PRESENTOR', '2017-11-27 20:38:19.000');
INSERT INTO public."role" (id, role_name, created_at) VALUES(16, 'MASTER_TRAINER', '2017-11-27 20:38:19.000');
INSERT INTO public."role" (id, role_name, created_at) VALUES(12, 'CREATIVE_CREATOR', '2017-11-27 20:38:19.000');
INSERT INTO public."role" (id, role_name, created_at) VALUES(11, 'CONTENT_CREATOR', '2017-11-27 20:38:19.000');
INSERT INTO public."role" (id, role_name, created_at) VALUES(10, 'CONTENT_REVIEWER', '2017-11-27 20:38:19.000');
INSERT INTO public."role" (id, role_name, created_at) VALUES(9, 'CREATIVE_ADMIN', '2017-11-27 20:38:19.000');
INSERT INTO public."role" (id, role_name, created_at) VALUES(8, 'CONTENT_ADMIN', '2017-11-27 20:38:19.000');
INSERT INTO public."role" (id, role_name, created_at) VALUES(7, 'PANELIST', '2017-11-27 20:38:19.000');
INSERT INTO public."role" (id, role_name, created_at) VALUES(6, 'EXECUTIVE RECRUITER', '2017-11-27 20:38:19.000');
INSERT INTO public."role" (id, role_name, created_at) VALUES(5, 'RECRUITER', '2017-11-27 20:38:19.000');
INSERT INTO public."role" (id, role_name, created_at) VALUES(1, 'SUPER_ADMIN', '2017-11-27 20:38:19.000');
INSERT INTO public."role" (id, role_name, created_at) VALUES(4, 'COORDINATOR', '2017-11-27 20:38:19.000');
INSERT INTO public."role" (id, role_name, created_at) VALUES(17, 'TRAINER', '2017-11-27 20:38:19.000');
INSERT INTO public."role" (id, role_name, created_at) VALUES(18, 'STUDENT', '2017-11-27 20:38:19.000');
INSERT INTO public."role" (id, role_name, created_at) VALUES(3, 'ORG_ADMIN', '2017-11-27 20:38:19.000');
INSERT INTO public."role" (id, role_name, created_at) VALUES(2, 'OWNER', '2018-08-07 16:55:55.000');
INSERT INTO public."role" (id, role_name, created_at) VALUES(15, 'IT_ADMIN', '2018-08-07 16:55:33.000');
INSERT INTO public."role" (id, role_name, created_at) VALUES(14, 'SALES_ASSOCIATE', '2018-08-10 13:33:30.000');
INSERT INTO public."role" (id, role_name, created_at) VALUES(13, 'SALES_MANAGER', '2018-01-12 07:48:40.000');
INSERT INTO public.istar_user (id, email, password, created_at, mobile, auth_token, login_type, is_verified, is_supend, is_supended, is_deleted, show_real_time_notification, fcm_token, designation) VALUES(198075, 'admin@istarindia.com', 'cc03e747a6afbbcbf8be7668acfebee5', '2018-07-24 16:07:16.000', '1234567876', NULL, NULL, true, NULL, false, false, false, 'eNmXMzE_S2Y:APA91bGge9Ckgo6cIGoz5wYgdKh1bXKjTeX1elMSgDiLQRUBJcQt2Ai_GR30kctArfm7_j-4eC5iH5OIgcRSP_s_ImxW-yfA8Do_2NzMKbapHvG-zxbrwAgAURIroRWjHD0OTdBWE333', NULL);
INSERT INTO public.sales_manager_profile (id, timezone, location, "language", currency, user_id, language_pref, check_point_questions) VALUES(155, 'Asia/Calcutta', 'IN', 'en', 'INR', 198075, 'en-IN', NULL);
INSERT INTO public.user_profile (address_id, "name", dob, gender, profile_image, user_id, aadhar_no, father_name, mother_name, user_category, religion, caste_category, place_of_birth, twilio_number, sip_username, sip_password, sip_url) VALUES(2031, 'Vaibhav Verma', NULL, NULL, 'https://storage.googleapis.com/istar-user-images/files/734fd2a8-2e8b-4396-b3ba-9c09cd7f0600', 198075, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'undefined', NULL, NULL, NULL);
INSERT INTO public.user_role (userid, roleid) VALUES(198075, 1);
insert into "public"."organization" ( "id", "name", "industry", "created_at", "updated_at", "website", "founded", "contact_name", "contact_email", "contact_phone", "employee_count" ) values (1, 'Salesken', 'Information Technology/IT', 'now()', 'now()', 'http://salesken.ai.com', null, 'Rohit kumar', 'admin@istarindia.com', '+917624941620', '10' ) returning id;
INSERT INTO public.org_user (organizationid, userid) VALUES(3, 198075);
