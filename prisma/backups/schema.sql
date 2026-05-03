


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




ALTER SCHEMA "public" OWNER TO "postgres";


CREATE EXTENSION IF NOT EXISTS "pg_stat_statements" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "pgcrypto" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "supabase_vault" WITH SCHEMA "vault";






CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA "extensions";






CREATE TYPE "public"."Category" AS ENUM (
    'AMBIENTALISMO',
    'FILANTROPIA',
    'BUEN_VECINO',
    'BUENA_VIBRA',
    'CONOCIMIENTO',
    'MONEDAS'
);


ALTER TYPE "public"."Category" OWNER TO "postgres";


CREATE TYPE "public"."Role" AS ENUM (
    'USER',
    'ADMIN',
    'RESEARCHER'
);


ALTER TYPE "public"."Role" OWNER TO "postgres";


CREATE TYPE "public"."SubmissionStatus" AS ENUM (
    'PENDING',
    'APPROVED',
    'REJECTED'
);


ALTER TYPE "public"."SubmissionStatus" OWNER TO "postgres";


CREATE TYPE "public"."Type" AS ENUM (
    'TRIVIA',
    'CHALLENGE',
    'INFRASTRUCTURE_REPORT'
);


ALTER TYPE "public"."Type" OWNER TO "postgres";

SET default_tablespace = '';

SET default_table_access_method = "heap";


CREATE TABLE IF NOT EXISTS "public"."Challenge" (
    "id" "text" NOT NULL,
    "title" "text" NOT NULL,
    "description" "text" NOT NULL,
    "instructions" "text" NOT NULL,
    "type" "public"."Type" NOT NULL,
    "category" "public"."Category" NOT NULL,
    "icon" "text" NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."Challenge" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."ChallengeLocation" (
    "id" "text" NOT NULL,
    "challengeId" "text" NOT NULL,
    "lat" double precision NOT NULL,
    "lng" double precision NOT NULL,
    "locationName" "text"
);


ALTER TABLE "public"."ChallengeLocation" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."ChallengeReward" (
    "id" "text" NOT NULL,
    "challengeId" "text" NOT NULL,
    "coins" integer NOT NULL,
    "amount" integer NOT NULL
);


ALTER TABLE "public"."ChallengeReward" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."Floor" (
    "id" "text" NOT NULL,
    "userId" "text" NOT NULL,
    "level" integer NOT NULL,
    "name" "text",
    "material" "text" NOT NULL,
    "positionX" double precision DEFAULT 0 NOT NULL,
    "positionY" double precision DEFAULT 0 NOT NULL,
    "positionZ" double precision DEFAULT 0 NOT NULL,
    "sizeMultiplier" integer DEFAULT 1 NOT NULL,
    "hasWalls" boolean DEFAULT false NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."Floor" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."GameState" (
    "userId" "text" NOT NULL,
    "constructionPhase" integer DEFAULT 0 NOT NULL,
    "selectedCity" "text",
    "selectedMaterial" "text",
    "hasRoof" boolean DEFAULT false NOT NULL,
    "ecoFeatures" "jsonb",
    "gridPosition" "jsonb",
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE "public"."GameState" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."PasswordResetToken" (
    "id" "text" NOT NULL,
    "email" "text" NOT NULL,
    "token" "text" NOT NULL,
    "expires" timestamp(3) without time zone NOT NULL
);


ALTER TABLE "public"."PasswordResetToken" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."PlacedItem" (
    "id" "text" NOT NULL,
    "floorId" "text" NOT NULL,
    "type" "text" NOT NULL,
    "sizeLevel" integer DEFAULT 1 NOT NULL,
    "positionX" double precision DEFAULT 0 NOT NULL,
    "positionY" double precision DEFAULT 0 NOT NULL,
    "positionZ" double precision DEFAULT 0 NOT NULL,
    "rotationY" double precision DEFAULT 0 NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."PlacedItem" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."PointsLedger" (
    "id" "text" NOT NULL,
    "userId" "text" NOT NULL,
    "category" "public"."Category" NOT NULL,
    "amount" integer NOT NULL,
    "reason" "text" NOT NULL,
    "referenceId" "text",
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."PointsLedger" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."Profile" (
    "userId" "text" NOT NULL,
    "nickname" "text" NOT NULL,
    "age" integer NOT NULL,
    "university" "text" NOT NULL,
    "currentCityId" "text" NOT NULL,
    "currentPhase" "text" DEFAULT 'PRELIMINARES'::"text" NOT NULL,
    "avatarUrl" "text"
);


ALTER TABLE "public"."Profile" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."Stair" (
    "id" "text" NOT NULL,
    "userId" "text" NOT NULL,
    "fromFloorId" "text" NOT NULL,
    "toFloorId" "text" NOT NULL,
    "material" "text" DEFAULT 'WOOD'::"text" NOT NULL,
    "startX" double precision DEFAULT 0 NOT NULL,
    "startZ" double precision DEFAULT 0 NOT NULL,
    "endX" double precision DEFAULT 0 NOT NULL,
    "endZ" double precision DEFAULT 0 NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."Stair" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."Submission" (
    "id" "text" NOT NULL,
    "userId" "text" NOT NULL,
    "type" "text" NOT NULL,
    "category" "public"."Category" NOT NULL,
    "content" "jsonb",
    "evidenceUrl" "text",
    "status" "public"."SubmissionStatus" DEFAULT 'APPROVED'::"public"."SubmissionStatus" NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."Submission" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."TriviaRecord" (
    "id" "text" NOT NULL,
    "userId" "text" NOT NULL,
    "triviaId" "text" NOT NULL,
    "attempts" integer DEFAULT 0 NOT NULL,
    "isCorrect" boolean DEFAULT false NOT NULL,
    "lastAttemptAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."TriviaRecord" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."User" (
    "id" "text" NOT NULL,
    "email" "text" NOT NULL,
    "passwordHash" "text" NOT NULL,
    "role" "public"."Role" DEFAULT 'USER'::"public"."Role" NOT NULL,
    "consentAcceptedAt" timestamp(3) without time zone,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."User" OWNER TO "postgres";


ALTER TABLE ONLY "public"."ChallengeLocation"
    ADD CONSTRAINT "ChallengeLocation_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."ChallengeReward"
    ADD CONSTRAINT "ChallengeReward_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."Challenge"
    ADD CONSTRAINT "Challenge_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."Floor"
    ADD CONSTRAINT "Floor_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."GameState"
    ADD CONSTRAINT "GameState_pkey" PRIMARY KEY ("userId");



ALTER TABLE ONLY "public"."PasswordResetToken"
    ADD CONSTRAINT "PasswordResetToken_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."PlacedItem"
    ADD CONSTRAINT "PlacedItem_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."PointsLedger"
    ADD CONSTRAINT "PointsLedger_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."Profile"
    ADD CONSTRAINT "Profile_pkey" PRIMARY KEY ("userId");



ALTER TABLE ONLY "public"."Stair"
    ADD CONSTRAINT "Stair_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."Submission"
    ADD CONSTRAINT "Submission_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."TriviaRecord"
    ADD CONSTRAINT "TriviaRecord_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY ("id");



CREATE UNIQUE INDEX "Challenge_title_key" ON "public"."Challenge" USING "btree" ("title");



CREATE INDEX "PasswordResetToken_email_idx" ON "public"."PasswordResetToken" USING "btree" ("email");



CREATE UNIQUE INDEX "PasswordResetToken_email_token_key" ON "public"."PasswordResetToken" USING "btree" ("email", "token");



CREATE UNIQUE INDEX "PasswordResetToken_token_key" ON "public"."PasswordResetToken" USING "btree" ("token");



CREATE INDEX "PointsLedger_userId_category_idx" ON "public"."PointsLedger" USING "btree" ("userId", "category");



CREATE UNIQUE INDEX "Profile_nickname_key" ON "public"."Profile" USING "btree" ("nickname");



CREATE UNIQUE INDEX "TriviaRecord_userId_triviaId_key" ON "public"."TriviaRecord" USING "btree" ("userId", "triviaId");



CREATE UNIQUE INDEX "User_email_key" ON "public"."User" USING "btree" ("email");



ALTER TABLE ONLY "public"."ChallengeLocation"
    ADD CONSTRAINT "ChallengeLocation_challengeId_fkey" FOREIGN KEY ("challengeId") REFERENCES "public"."Challenge"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."ChallengeReward"
    ADD CONSTRAINT "ChallengeReward_challengeId_fkey" FOREIGN KEY ("challengeId") REFERENCES "public"."Challenge"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."Floor"
    ADD CONSTRAINT "Floor_userId_fkey" FOREIGN KEY ("userId") REFERENCES "public"."User"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."GameState"
    ADD CONSTRAINT "GameState_userId_fkey" FOREIGN KEY ("userId") REFERENCES "public"."User"("id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."PlacedItem"
    ADD CONSTRAINT "PlacedItem_floorId_fkey" FOREIGN KEY ("floorId") REFERENCES "public"."Floor"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."PointsLedger"
    ADD CONSTRAINT "PointsLedger_userId_fkey" FOREIGN KEY ("userId") REFERENCES "public"."User"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."Profile"
    ADD CONSTRAINT "Profile_userId_fkey" FOREIGN KEY ("userId") REFERENCES "public"."User"("id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."Stair"
    ADD CONSTRAINT "Stair_userId_fkey" FOREIGN KEY ("userId") REFERENCES "public"."User"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."Submission"
    ADD CONSTRAINT "Submission_userId_fkey" FOREIGN KEY ("userId") REFERENCES "public"."User"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."TriviaRecord"
    ADD CONSTRAINT "TriviaRecord_userId_fkey" FOREIGN KEY ("userId") REFERENCES "public"."User"("id") ON UPDATE CASCADE ON DELETE RESTRICT;





ALTER PUBLICATION "supabase_realtime" OWNER TO "postgres";


REVOKE USAGE ON SCHEMA "public" FROM PUBLIC;




































































































































































































