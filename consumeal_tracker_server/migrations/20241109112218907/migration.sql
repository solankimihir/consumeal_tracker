BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "meals" DROP COLUMN "tag";

--
-- MIGRATION VERSION FOR consumeal_tracker
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('consumeal_tracker', '20241109112218907', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20241109112218907', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
