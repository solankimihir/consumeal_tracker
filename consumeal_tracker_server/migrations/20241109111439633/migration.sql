BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "items_in_a_meal" DROP COLUMN "tags";

--
-- MIGRATION VERSION FOR consumeal_tracker
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('consumeal_tracker', '20241109111439633', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20241109111439633', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
