SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict xPYt7zftMZlTlSshD0j24W85rzssVc7Tk5scKatu6mGpuxGDMyJWKLKixkZq5WA

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

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

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
\.


--
-- Data for Name: custom_oauth_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."custom_oauth_providers" ("id", "provider_type", "identifier", "name", "client_id", "client_secret", "acceptable_client_ids", "scopes", "pkce_enabled", "attribute_mapping", "authorization_params", "enabled", "email_optional", "issuer", "discovery_url", "skip_nonce_check", "cached_discovery", "discovery_cached_at", "authorization_url", "token_url", "userinfo_url", "jwks_uri", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at", "invite_token", "referrer", "oauth_client_state_id", "linking_target_id", "email_optional") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") FROM stdin;
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") FROM stdin;
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_clients" ("id", "client_secret_hash", "registration_type", "redirect_uris", "grant_types", "client_name", "client_uri", "logo_uri", "created_at", "updated_at", "deleted_at", "client_type", "token_endpoint_auth_method") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag", "oauth_client_id", "refresh_token_hmac_key", "refresh_token_counter", "scopes") FROM stdin;
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret", "phone", "last_challenged_at", "web_authn_credential", "web_authn_aaguid", "last_webauthn_challenge_data") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address", "otp_code", "web_authn_session_data") FROM stdin;
\.


--
-- Data for Name: oauth_authorizations; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_authorizations" ("id", "authorization_id", "client_id", "user_id", "redirect_uri", "scope", "state", "resource", "code_challenge", "code_challenge_method", "response_type", "status", "authorization_code", "created_at", "expires_at", "approved_at", "nonce") FROM stdin;
\.


--
-- Data for Name: oauth_client_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_client_states" ("id", "provider_type", "code_verifier", "created_at") FROM stdin;
\.


--
-- Data for Name: oauth_consents; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_consents" ("id", "user_id", "client_id", "scopes", "granted_at", "revoked_at") FROM stdin;
\.


--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at", "disabled") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at", "name_id_format") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: webauthn_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."webauthn_challenges" ("id", "user_id", "challenge_type", "session_data", "created_at", "expires_at") FROM stdin;
\.


--
-- Data for Name: webauthn_credentials; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."webauthn_credentials" ("id", "user_id", "credential_id", "public_key", "attestation_type", "aaguid", "sign_count", "transports", "backup_eligible", "backed_up", "friendly_name", "created_at", "updated_at", "last_used_at") FROM stdin;
\.


--
-- Data for Name: Challenge; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."Challenge" ("id", "title", "description", "instructions", "type", "category", "icon", "createdAt") FROM stdin;
\.


--
-- Data for Name: ChallengeLocation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."ChallengeLocation" ("id", "challengeId", "lat", "lng", "locationName") FROM stdin;
\.


--
-- Data for Name: ChallengeReward; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."ChallengeReward" ("id", "challengeId", "coins", "amount") FROM stdin;
\.


--
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."User" ("id", "email", "passwordHash", "role", "consentAcceptedAt", "createdAt") FROM stdin;
fdbb21b8-1663-4f36-b237-2f18583a5ea8	poemania941@gmail.com	$2b$12$Jz.cNmPYciSrWRJjckL3D.u5MutqMrzVcd0wmvx/phQkvMYBZfFN2	USER	2026-04-26 14:43:02.797	2026-04-26 14:42:38.536
\.


--
-- Data for Name: Floor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."Floor" ("id", "userId", "level", "name", "material", "positionX", "positionY", "positionZ", "sizeMultiplier", "hasWalls", "createdAt") FROM stdin;
e73cc960-dc6f-45f7-81cc-83f5953a29bc	fdbb21b8-1663-4f36-b237-2f18583a5ea8	1	\N	WOOD	0	0	0	2	t	2026-05-03 13:34:15.79
\.


--
-- Data for Name: GameState; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."GameState" ("userId", "constructionPhase", "selectedCity", "selectedMaterial", "hasRoof", "ecoFeatures", "gridPosition", "updatedAt") FROM stdin;
\.


--
-- Data for Name: PasswordResetToken; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."PasswordResetToken" ("id", "email", "token", "expires") FROM stdin;
\.


--
-- Data for Name: PlacedItem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."PlacedItem" ("id", "floorId", "type", "sizeLevel", "positionX", "positionY", "positionZ", "rotationY", "createdAt") FROM stdin;
bcc4b7af-e052-4cbd-84d8-f4f066dad4e8	e73cc960-dc6f-45f7-81cc-83f5953a29bc	CHAIR	3	-6.973440228005712	0	-5.126640520766369	0	2026-05-03 13:34:39.243
f8849056-3810-4586-9d94-fb33574109ac	e73cc960-dc6f-45f7-81cc-83f5953a29bc	LOW_STOOL	3	-2.318984437541806	0	-7.18	0	2026-05-03 13:34:41.82
ddf438b2-d2e0-4122-81c9-859b7cb6436c	e73cc960-dc6f-45f7-81cc-83f5953a29bc	WASTE_BASKET	3	-5.277276150121056	0	-7.1	0	2026-05-03 13:34:43.517
da083144-dd6b-481d-9190-6c7bfafe8e1d	e73cc960-dc6f-45f7-81cc-83f5953a29bc	NIGHTSTAND	3	-3.9067729287464825	0	-6.8	0	2026-05-03 13:34:47.141
2695a86f-289a-45bd-8e6e-1549d4e9864f	e73cc960-dc6f-45f7-81cc-83f5953a29bc	FLOOR_LAMP	3	-6.66	0	-6.66	0	2026-05-03 13:34:45.508
a2e713f0-e45e-40cf-92c6-1d53328ae34c	e73cc960-dc6f-45f7-81cc-83f5953a29bc	RUG	3	4.640000000000001	0	3.5199999999999996	0	2026-05-03 17:06:03.367
febbbc5b-dcf2-4411-a87f-1ac922128514	e73cc960-dc6f-45f7-81cc-83f5953a29bc	SIDE_TABLE	3	6.17043838488407	0	-7.06	0	2026-05-03 17:06:05.111
52155668-a3d9-4733-b8e0-80e268f4216e	e73cc960-dc6f-45f7-81cc-83f5953a29bc	COAT_RACK	3	4.4594386536229	0	-7.26	0	2026-05-03 17:06:06.679
f9d3178b-71fe-4e3e-9857-93d84e2f24c0	e73cc960-dc6f-45f7-81cc-83f5953a29bc	WALL_ORGANIZER	3	-0.8509287216300834	0	-7.29	0	2026-05-03 17:06:08.288
61fa0c2d-4714-4568-8036-7b9984e17b09	e73cc960-dc6f-45f7-81cc-83f5953a29bc	BED	3	1.7188484376740618	0	-5.42	0	2026-05-03 17:06:09.713
\.


--
-- Data for Name: PointsLedger; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."PointsLedger" ("id", "userId", "category", "amount", "reason", "referenceId", "createdAt") FROM stdin;
22c43623-96ad-435c-8e33-691cffd4fae3	fdbb21b8-1663-4f36-b237-2f18583a5ea8	MONEDAS	-100	BUILD_FLOOR	\N	2026-05-03 13:34:15.704
28dd4b23-444f-4fc4-a2cf-ef0f875b43a9	fdbb21b8-1663-4f36-b237-2f18583a5ea8	MONEDAS	-10	BUILD_ITEM_CHAIR	\N	2026-05-03 13:34:39.174
8ab7d278-9d94-4774-9ecd-615a7d9e9cc7	fdbb21b8-1663-4f36-b237-2f18583a5ea8	MONEDAS	-10	BUILD_ITEM_LOW_STOOL	\N	2026-05-03 13:34:41.751
5bfa2799-c203-4d91-8980-b4c518a6a053	fdbb21b8-1663-4f36-b237-2f18583a5ea8	MONEDAS	-10	BUILD_ITEM_WASTE_BASKET	\N	2026-05-03 13:34:43.448
edf67acf-8f1b-48d2-853d-340bd87cf246	fdbb21b8-1663-4f36-b237-2f18583a5ea8	MONEDAS	-15	BUILD_ITEM_FLOOR_LAMP	\N	2026-05-03 13:34:45.44
3ff51b6a-1986-40ed-b9a7-377d861710f1	fdbb21b8-1663-4f36-b237-2f18583a5ea8	MONEDAS	-15	BUILD_ITEM_NIGHTSTAND	\N	2026-05-03 13:34:47.072
testing	fdbb21b8-1663-4f36-b237-2f18583a5ea8	MONEDAS	20000000	testing	testing	2026-04-26 09:24:48
testing-philanthropy	fdbb21b8-1663-4f36-b237-2f18583a5ea8	FILANTROPIA	2000	testing-philanthropy	testing-philanthropy	2026-04-26 11:43:05
testing-environmentalism	fdbb21b8-1663-4f36-b237-2f18583a5ea8	AMBIENTALISMO	2000	testing-environmentalism	testing-environmentalism	2026-04-27 02:03:43
testing-good-neighbor	fdbb21b8-1663-4f36-b237-2f18583a5ea8	BUEN_VECINO	2000	testing-good-neighbor	testing-good-neighbor	2026-04-27 02:04:34
testing-good-vibes	fdbb21b8-1663-4f36-b237-2f18583a5ea8	BUENA_VIBRA	2000	testing-good-vibes	testing-good-vibes	2026-04-27 02:05:34
testing-knowledge	fdbb21b8-1663-4f36-b237-2f18583a5ea8	CONOCIMIENTO	2000	testing-knowledge	testing-knowledge	2026-04-27 02:06:20
e9169fa8-01c3-478a-adc4-1b88a4f3a835	fdbb21b8-1663-4f36-b237-2f18583a5ea8	MONEDAS	-15	BUILD_ITEM_RUG	\N	2026-05-03 17:06:03.285
190bce61-a701-44f8-b193-ad60216628d6	fdbb21b8-1663-4f36-b237-2f18583a5ea8	MONEDAS	-15	BUILD_ITEM_SIDE_TABLE	\N	2026-05-03 17:06:05.039
725fcc6b-1498-4261-a797-818dbb1d7841	fdbb21b8-1663-4f36-b237-2f18583a5ea8	MONEDAS	-15	BUILD_ITEM_COAT_RACK	\N	2026-05-03 17:06:06.607
2c119ae2-3151-42c7-878e-93fe66cd2b6e	fdbb21b8-1663-4f36-b237-2f18583a5ea8	MONEDAS	-15	BUILD_ITEM_WALL_ORGANIZER	\N	2026-05-03 17:06:08.216
5f9d6809-9688-46b5-a1c6-2e3c1af1cb4e	fdbb21b8-1663-4f36-b237-2f18583a5ea8	MONEDAS	-20	BUILD_ITEM_BED	\N	2026-05-03 17:06:09.64
\.


--
-- Data for Name: Profile; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."Profile" ("userId", "nickname", "age", "university", "currentCityId", "currentPhase", "avatarUrl") FROM stdin;
fdbb21b8-1663-4f36-b237-2f18583a5ea8	Omar B	30	Universidad Nacional Autónoma de México	CHARCOS	PRELIMINARES	\N
\.


--
-- Data for Name: Stair; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."Stair" ("id", "userId", "fromFloorId", "toFloorId", "material", "startX", "startZ", "endX", "endZ", "createdAt") FROM stdin;
\.


--
-- Data for Name: Submission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."Submission" ("id", "userId", "type", "category", "content", "evidenceUrl", "status", "createdAt") FROM stdin;
\.


--
-- Data for Name: TriviaRecord; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."TriviaRecord" ("id", "userId", "triviaId", "attempts", "isCorrect", "lastAttemptAt") FROM stdin;
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id", "type") FROM stdin;
evidences	evidences	\N	2026-04-19 12:59:32.999848+00	2026-04-19 12:59:32.999848+00	t	f	\N	\N	\N	STANDARD
avatars	avatars	\N	2026-04-19 16:55:51.057768+00	2026-04-19 16:55:51.057768+00	t	f	\N	\N	\N	STANDARD
\.


--
-- Data for Name: buckets_analytics; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_analytics" ("name", "type", "format", "created_at", "updated_at", "id", "deleted_at") FROM stdin;
\.


--
-- Data for Name: buckets_vectors; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_vectors" ("id", "type", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata") FROM stdin;
da3d808b-633e-4608-a29a-16ce1628e47b	evidences	7f4a6096-045e-46d1-ad9d-1b4052cbefb1/1776605736870-_NGEL_DE_LA_INDEPENDENCIA.jpg	\N	2026-04-19 13:35:38.208396+00	2026-04-19 13:35:38.208396+00	2026-04-19 13:35:38.208396+00	{"eTag": "\\"692bc73cfeb1bb87e972d7e77ac95918\\"", "size": 2035762, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-04-19T13:35:39.000Z", "contentLength": 2035762, "httpStatusCode": 200}	e0da1778-9070-4af1-8c8b-c97143685a42	\N	{}
bf51726e-965d-44f7-a9e0-87ee9e463288	evidences	7f4a6096-045e-46d1-ad9d-1b4052cbefb1/1776607977689-image_2026-02-16_19-26-28.webp	\N	2026-04-19 14:12:58.652312+00	2026-04-19 14:12:58.652312+00	2026-04-19 14:12:58.652312+00	{"eTag": "\\"23ab18e43c231e65317b82eecf0790ea\\"", "size": 162354, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2026-04-19T14:12:59.000Z", "contentLength": 162354, "httpStatusCode": 200}	9029e185-2406-4c7f-8a88-103cdfef531e	\N	{}
64bf99d7-1fd8-4cd6-ac7b-0758a815fe8b	evidences	7f4a6096-045e-46d1-ad9d-1b4052cbefb1/1776608621947-.trashed-1739795256-IMG_20241003_182130.webp	\N	2026-04-19 14:23:42.630647+00	2026-04-19 14:23:42.630647+00	2026-04-19 14:23:42.630647+00	{"eTag": "\\"e4c24e4c3fc47eaacea912b4e7e27c05\\"", "size": 103744, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2026-04-19T14:23:43.000Z", "contentLength": 103744, "httpStatusCode": 200}	b27ac689-2f34-4177-a8b8-52be577ee49c	\N	{}
68ffebd9-2c3b-44b0-bcad-573eeb7995d1	evidences	7f4a6096-045e-46d1-ad9d-1b4052cbefb1/1776610842584-IMG_20241211_125217.webp	\N	2026-04-19 15:00:43.23659+00	2026-04-19 15:00:43.23659+00	2026-04-19 15:00:43.23659+00	{"eTag": "\\"b55e7666e8e0f2bd8b683e85cbd39410\\"", "size": 158330, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2026-04-19T15:00:44.000Z", "contentLength": 158330, "httpStatusCode": 200}	7e9ed92e-aaac-427c-823a-c124d5ce2189	\N	{}
c2a13760-76b1-43eb-8037-7f62e3d6e203	evidences	7f4a6096-045e-46d1-ad9d-1b4052cbefb1/1776610931681-001varos.webp	\N	2026-04-19 15:02:12.17375+00	2026-04-19 15:02:12.17375+00	2026-04-19 15:02:12.17375+00	{"eTag": "\\"256e7731a6897349eab49dd5035e7a92\\"", "size": 69094, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2026-04-19T15:02:13.000Z", "contentLength": 69094, "httpStatusCode": 200}	bb8c9b4e-a219-4334-ba19-70f7cc6cdeb8	\N	{}
b82d5949-12ab-4683-826b-02d71f9350af	evidences	7f4a6096-045e-46d1-ad9d-1b4052cbefb1/challenges/1776613335407-IMG_20250115_145412.webp	\N	2026-04-19 15:42:15.966268+00	2026-04-19 15:42:15.966268+00	2026-04-19 15:42:15.966268+00	{"eTag": "\\"d95a41a68be1a2981d845be60e5b4dc2\\"", "size": 66400, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2026-04-19T15:42:16.000Z", "contentLength": 66400, "httpStatusCode": 200}	1ddf92f6-569c-4172-9a6c-939bf918801c	\N	{}
a56d673b-48a5-4946-b78f-c88ccde3b899	avatars	7f4a6096-045e-46d1-ad9d-1b4052cbefb1/avatar-1776617895235-IMG_20241211_125217.webp	\N	2026-04-19 16:58:15.915754+00	2026-04-19 16:58:15.915754+00	2026-04-19 16:58:15.915754+00	{"eTag": "\\"2095e31ce96c4cb920ea7cfe6405d0de\\"", "size": 22110, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2026-04-19T16:58:16.000Z", "contentLength": 22110, "httpStatusCode": 200}	47efd44a-81ff-40cb-84ed-aebd060f9293	\N	{}
561d32c6-e2fa-4262-b5b7-ae1a2b16bc45	avatars	7f4a6096-045e-46d1-ad9d-1b4052cbefb1/avatar-1776618226562-98e4516518fd90afe738f53b367db573.webp	\N	2026-04-19 17:03:47.127798+00	2026-04-19 17:03:47.127798+00	2026-04-19 17:03:47.127798+00	{"eTag": "\\"d6db096d0f831daf59d33d12a9188c9e\\"", "size": 18996, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2026-04-19T17:03:48.000Z", "contentLength": 18996, "httpStatusCode": 200}	b1ef8b09-cfe3-44fa-b3ea-628e603ec02e	\N	{}
e357078a-6317-4b44-ab5f-8be65eec3da2	avatars	7f4a6096-045e-46d1-ad9d-1b4052cbefb1/avatar-1776618530012-unnamed.webp	\N	2026-04-19 17:08:50.463362+00	2026-04-19 17:08:50.463362+00	2026-04-19 17:08:50.463362+00	{"eTag": "\\"3a8c846997d6c991e2d6028eb6027454\\"", "size": 35274, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2026-04-19T17:08:51.000Z", "contentLength": 35274, "httpStatusCode": 200}	51eb1371-4fa0-470f-89c7-7fca0061ab3a	\N	{}
8c3bb714-c952-4268-9aa3-ff21be314ac4	avatars	7f4a6096-045e-46d1-ad9d-1b4052cbefb1/avatar-1776619117480-robot.webp	\N	2026-04-19 17:18:37.988462+00	2026-04-19 17:18:37.988462+00	2026-04-19 17:18:37.988462+00	{"eTag": "\\"d94179f279b8a1c1131200ba069cff37\\"", "size": 22416, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2026-04-19T17:18:38.000Z", "contentLength": 22416, "httpStatusCode": 200}	ba370554-e9b2-4fee-80cf-9cfaa91501f9	\N	{}
ddf10906-4eb2-425c-b02a-fee2347c79a2	avatars	f6f21570-8c2b-4648-a393-26cef699fa24/avatar-1776666017895-angie_caricatura.webp	\N	2026-04-20 06:20:18.537589+00	2026-04-20 06:20:18.537589+00	2026-04-20 06:20:18.537589+00	{"eTag": "\\"0550fce93efc1df79fed20d8bc73d86d\\"", "size": 8848, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2026-04-20T06:20:19.000Z", "contentLength": 8848, "httpStatusCode": 200}	c85fe4fa-e558-49fa-82b0-d6bc4d91c24f	\N	{}
5ad1faac-6f2d-45d5-afbb-8638545618d5	avatars	48b79cda-f876-493d-8f3c-c4cbc197ae82/avatar-1776785776372-IMG_20241022_210008.webp	\N	2026-04-21 15:36:17.151236+00	2026-04-21 15:36:17.151236+00	2026-04-21 15:36:17.151236+00	{"eTag": "\\"6a9aa4433577995860dc33e725876f2a\\"", "size": 14956, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2026-04-21T15:36:18.000Z", "contentLength": 14956, "httpStatusCode": 200}	604947e9-0354-4203-80ef-72f425a996eb	\N	{}
b3236274-79a7-4388-8b35-ee2f1f0daede	evidences	48b79cda-f876-493d-8f3c-c4cbc197ae82/challenges/1776899329416-IMG_20241211_125217.webp	\N	2026-04-22 23:08:50.052696+00	2026-04-22 23:08:50.052696+00	2026-04-22 23:08:50.052696+00	{"eTag": "\\"b55e7666e8e0f2bd8b683e85cbd39410\\"", "size": 158330, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2026-04-22T23:08:50.000Z", "contentLength": 158330, "httpStatusCode": 200}	bd201a77-fd6c-4506-b658-c4ab1e7c1bb3	\N	{}
50dc405b-9aea-4e09-81ce-66be011f601e	evidences	48b79cda-f876-493d-8f3c-c4cbc197ae82/1776904876287-IMG_20241211_125217.webp	\N	2026-04-23 00:41:17.141481+00	2026-04-23 00:41:17.141481+00	2026-04-23 00:41:17.141481+00	{"eTag": "\\"b55e7666e8e0f2bd8b683e85cbd39410\\"", "size": 158330, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2026-04-23T00:41:18.000Z", "contentLength": 158330, "httpStatusCode": 200}	8a44945c-a10d-4bdd-be0f-855fa7d47d65	\N	{}
ae22f4fc-87ed-46d6-ba22-8f0e25b253fb	evidences	48b79cda-f876-493d-8f3c-c4cbc197ae82/1776904900800-IMG_20241211_125217.webp	\N	2026-04-23 00:41:41.49555+00	2026-04-23 00:41:41.49555+00	2026-04-23 00:41:41.49555+00	{"eTag": "\\"b55e7666e8e0f2bd8b683e85cbd39410\\"", "size": 158330, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2026-04-23T00:41:42.000Z", "contentLength": 158330, "httpStatusCode": 200}	dfbb396e-ec62-44bc-9a10-c820d26af6e7	\N	{}
460f7e4a-97f0-45e9-bb3e-cb2b9676e6dc	evidences	48b79cda-f876-493d-8f3c-c4cbc197ae82/challenges/1776905270986-IMG_20241211_125217.webp	\N	2026-04-23 00:47:51.81067+00	2026-04-23 00:47:51.81067+00	2026-04-23 00:47:51.81067+00	{"eTag": "\\"b55e7666e8e0f2bd8b683e85cbd39410\\"", "size": 158330, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2026-04-23T00:47:52.000Z", "contentLength": 158330, "httpStatusCode": 200}	14b99d96-460a-4e36-9635-665ad58c9167	\N	{}
6a863cfb-13b3-4205-b0bf-72670ac9a905	evidences	48b79cda-f876-493d-8f3c-c4cbc197ae82/challenges/1776909604828-IMG_20241211_125217.webp	\N	2026-04-23 02:00:05.689022+00	2026-04-23 02:00:05.689022+00	2026-04-23 02:00:05.689022+00	{"eTag": "\\"b55e7666e8e0f2bd8b683e85cbd39410\\"", "size": 158330, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2026-04-23T02:00:06.000Z", "contentLength": 158330, "httpStatusCode": 200}	e04b86e6-114c-4692-b00e-d8dd089827a4	\N	{}
bc5405c3-4cd6-4d67-91c0-5931524f583e	evidences	7f4a6096-045e-46d1-ad9d-1b4052cbefb1/challenges/1776912215252-IMG_20241211_125217.webp	\N	2026-04-23 02:43:35.810398+00	2026-04-23 02:43:35.810398+00	2026-04-23 02:43:35.810398+00	{"eTag": "\\"b55e7666e8e0f2bd8b683e85cbd39410\\"", "size": 158330, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2026-04-23T02:43:36.000Z", "contentLength": 158330, "httpStatusCode": 200}	b4c0c622-388d-4047-b064-1618e873c365	\N	{}
2706bf6d-877b-4e80-b809-9ba95cf7305d	evidences	7f4a6096-045e-46d1-ad9d-1b4052cbefb1/1776912231174-IMG_20241211_125217.webp	\N	2026-04-23 02:43:51.657633+00	2026-04-23 02:43:51.657633+00	2026-04-23 02:43:51.657633+00	{"eTag": "\\"b55e7666e8e0f2bd8b683e85cbd39410\\"", "size": 158330, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2026-04-23T02:43:52.000Z", "contentLength": 158330, "httpStatusCode": 200}	ddc14f6f-1f0b-4c05-8b16-3b7c6403b271	\N	{}
fe607475-0c32-4f94-91ba-5d8ab0d8c0ca	evidences	7f4a6096-045e-46d1-ad9d-1b4052cbefb1/1776912255918-_NGEL_DE_LA_INDEPENDENCIA.webp	\N	2026-04-23 02:44:16.393912+00	2026-04-23 02:44:16.393912+00	2026-04-23 02:44:16.393912+00	{"eTag": "\\"2d80be513d011d59f302f568dffd9263\\"", "size": 142474, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2026-04-23T02:44:17.000Z", "contentLength": 142474, "httpStatusCode": 200}	1acc84eb-a5c2-495d-9cac-05ae8204a98f	\N	{}
2a0b5a91-c46a-4d95-ac7d-815fd361d5b3	evidences	7f4a6096-045e-46d1-ad9d-1b4052cbefb1/challenges/1776912955885-IMG_20241211_125217.webp	\N	2026-04-23 02:55:56.72034+00	2026-04-23 02:55:56.72034+00	2026-04-23 02:55:56.72034+00	{"eTag": "\\"b55e7666e8e0f2bd8b683e85cbd39410\\"", "size": 158330, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2026-04-23T02:55:57.000Z", "contentLength": 158330, "httpStatusCode": 200}	aee9ea4d-fb3d-4054-8305-ec1156a31943	\N	{}
1d2e5d67-16ee-4766-9265-2389aeb6c58b	evidences	7f4a6096-045e-46d1-ad9d-1b4052cbefb1/1776913602156-IMG_20241211_125217.webp	\N	2026-04-23 03:06:42.993069+00	2026-04-23 03:06:42.993069+00	2026-04-23 03:06:42.993069+00	{"eTag": "\\"b55e7666e8e0f2bd8b683e85cbd39410\\"", "size": 158330, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2026-04-23T03:06:43.000Z", "contentLength": 158330, "httpStatusCode": 200}	453b56ae-84d8-4215-852a-051a435c80b9	\N	{}
02e65240-8b0a-43df-8805-d157e5ede99f	evidences	7f4a6096-045e-46d1-ad9d-1b4052cbefb1/1776913701562-IMG_20241211_125217.webp	\N	2026-04-23 03:08:22.08395+00	2026-04-23 03:08:22.08395+00	2026-04-23 03:08:22.08395+00	{"eTag": "\\"b55e7666e8e0f2bd8b683e85cbd39410\\"", "size": 158330, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2026-04-23T03:08:23.000Z", "contentLength": 158330, "httpStatusCode": 200}	a3331470-f789-40e0-8a0a-e2681d217345	\N	{}
f170370d-84de-41e3-946c-c69dc40bdacf	evidences	fdbb21b8-1663-4f36-b237-2f18583a5ea8/challenges/1777214643801-_NGEL_DE_LA_INDEPENDENCIA.webp	\N	2026-04-26 14:44:04.538471+00	2026-04-26 14:44:04.538471+00	2026-04-26 14:44:04.538471+00	{"eTag": "\\"2d80be513d011d59f302f568dffd9263\\"", "size": 142474, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2026-04-26T14:44:05.000Z", "contentLength": 142474, "httpStatusCode": 200}	678e0502-f345-4766-a580-1d1ca65e46ad	\N	{}
f656e74f-b536-4518-945d-93be8b80837f	evidences	fdbb21b8-1663-4f36-b237-2f18583a5ea8/challenges/1777214677697-_NGEL_DE_LA_INDEPENDENCIA.webp	\N	2026-04-26 14:44:38.109833+00	2026-04-26 14:44:38.109833+00	2026-04-26 14:44:38.109833+00	{"eTag": "\\"2d80be513d011d59f302f568dffd9263\\"", "size": 142474, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2026-04-26T14:44:39.000Z", "contentLength": 142474, "httpStatusCode": 200}	51d6e342-ee64-498e-be69-26989e0c7422	\N	{}
16ffaaef-3a24-413d-822e-6083a0cce8cf	evidences	fdbb21b8-1663-4f36-b237-2f18583a5ea8/challenges/1777214694936-_NGEL_DE_LA_INDEPENDENCIA.webp	\N	2026-04-26 14:44:55.395355+00	2026-04-26 14:44:55.395355+00	2026-04-26 14:44:55.395355+00	{"eTag": "\\"2d80be513d011d59f302f568dffd9263\\"", "size": 142474, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2026-04-26T14:44:56.000Z", "contentLength": 142474, "httpStatusCode": 200}	bb6719ae-a796-403f-b420-b5f02c15b551	\N	{}
e8019e35-aceb-4aa1-ae12-0b4ccdc56429	evidences	fdbb21b8-1663-4f36-b237-2f18583a5ea8/challenges/1777214778382-IMG_20241211_125217.webp	\N	2026-04-26 14:46:19.10083+00	2026-04-26 14:46:19.10083+00	2026-04-26 14:46:19.10083+00	{"eTag": "\\"b55e7666e8e0f2bd8b683e85cbd39410\\"", "size": 158330, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2026-04-26T14:46:20.000Z", "contentLength": 158330, "httpStatusCode": 200}	c46838ce-6b8e-4c3e-9a72-36774587f34a	\N	{}
\.


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads" ("id", "in_progress_size", "upload_signature", "bucket_id", "key", "version", "owner_id", "created_at", "user_metadata", "metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads_parts" ("id", "upload_id", "size", "part_number", "bucket_id", "key", "etag", "owner_id", "version", "created_at") FROM stdin;
\.


--
-- Data for Name: vector_indexes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."vector_indexes" ("id", "name", "bucket_id", "data_type", "dimension", "distance_metric", "metadata_configuration", "created_at", "updated_at") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

-- \unrestrict xPYt7zftMZlTlSshD0j24W85rzssVc7Tk5scKatu6mGpuxGDMyJWKLKixkZq5WA

RESET ALL;
