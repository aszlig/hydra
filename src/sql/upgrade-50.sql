-- Rename all database identifiers to use underscores. Generated by:
-- https://gist.github.com/aszlig/59ea813c28731d339b9764c46f363200
ALTER TABLE "aggregateconstituents" RENAME TO "aggregate_constituents";
ALTER TABLE "buildinputs" RENAME TO "build_inputs";
ALTER TABLE "buildmetrics" RENAME TO "build_metrics";
ALTER TABLE "buildoutputs" RENAME TO "build_outputs";
ALTER TABLE "buildproducts" RENAME TO "build_products";
ALTER TABLE "buildstepoutputs" RENAME TO "build_step_outputs";
ALTER TABLE "buildsteps" RENAME TO "build_steps";
ALTER TABLE "cachedbazaarinputs" RENAME TO "cached_bazaar_inputs";
ALTER TABLE "cachedcvsinputs" RENAME TO "cached_cvs_inputs";
ALTER TABLE "cacheddarcsinputs" RENAME TO "cached_darcs_inputs";
ALTER TABLE "cachedgitinputs" RENAME TO "cached_git_inputs";
ALTER TABLE "cachedhginputs" RENAME TO "cached_hg_inputs";
ALTER TABLE "cachedpathinputs" RENAME TO "cached_path_inputs";
ALTER TABLE "cachedsubversioninputs" RENAME TO "cached_subversion_inputs";
ALTER TABLE "failedpaths" RENAME TO "failed_paths";
ALTER TABLE "jobsetevalinputs" RENAME TO "jobset_eval_inputs";
ALTER TABLE "jobsetevalmembers" RENAME TO "jobset_eval_members";
ALTER TABLE "jobsetevals" RENAME TO "jobset_evals";
ALTER TABLE "jobsetinputalts" RENAME TO "jobset_input_alts";
ALTER TABLE "jobsetinputs" RENAME TO "jobset_inputs";
ALTER TABLE "jobsetrenames" RENAME TO "jobset_renames";
ALTER TABLE "newsitems" RENAME TO "news_items";
ALTER TABLE "nrbuilds" RENAME TO "nr_builds";
ALTER TABLE "projectmembers" RENAME TO "project_members";
ALTER TABLE "releasemembers" RENAME TO "release_members";
ALTER TABLE "starredjobs" RENAME TO "starred_jobs";
ALTER TABLE "systemstatus" RENAME TO "system_status";
ALTER TABLE "systemtypes" RENAME TO "system_types";
ALTER TABLE "urirevmapper" RENAME TO "uri_rev_mapper";
ALTER TABLE "userroles" RENAME TO "user_roles";
ALTER INDEX "indexbuildinputsonbuild" RENAME TO "index_build_inputs_on_build";
ALTER INDEX "indexbuildinputsondependency" RENAME TO "index_build_inputs_on_dependency";
ALTER INDEX "indexbuildmetricsonjobtimestamp" RENAME TO "index_build_metrics_on_job_timestamp";
ALTER INDEX "indexbuildproducstonbuildandtype" RENAME TO "index_build_producst_on_build_and_type";
ALTER INDEX "indexbuildproductsonbuild" RENAME TO "index_build_products_on_build";
ALTER INDEX "indexbuildsondrvpath" RENAME TO "index_builds_on_drv_path";
ALTER INDEX "indexbuildsonfinished" RENAME TO "index_builds_on_finished";
ALTER INDEX "indexbuildsonfinishedstoptime" RENAME TO "index_builds_on_finished_stop_time";
ALTER INDEX "indexbuildsoniscurrent" RENAME TO "index_builds_on_is_current";
ALTER INDEX "indexbuildsonjobfinishedid" RENAME TO "index_builds_on_job_finished_id";
ALTER INDEX "indexbuildsonjobiscurrent" RENAME TO "index_builds_on_job_is_current";
ALTER INDEX "indexbuildsonjobsetiscurrent" RENAME TO "index_builds_on_jobset_is_current";
ALTER INDEX "indexbuildsonjobset" RENAME TO "index_builds_on_jobset";
ALTER INDEX "indexbuildsonkeep" RENAME TO "index_builds_on_keep";
ALTER INDEX "indexbuildsonproject" RENAME TO "index_builds_on_project";
ALTER INDEX "indexbuildsontimestamp" RENAME TO "index_builds_on_timestamp";
ALTER INDEX "indexbuildstepoutputsonpath" RENAME TO "index_build_step_outputs_on_path";
ALTER INDEX "indexbuildstepsonbusy" RENAME TO "index_build_steps_on_busy";
ALTER INDEX "indexbuildstepsondrvpath" RENAME TO "index_build_steps_on_drv_path";
ALTER INDEX "indexbuildstepsonpropagatedfrom" RENAME TO "index_build_steps_on_propagated_from";
ALTER INDEX "indexbuildstepsonstoptime" RENAME TO "index_build_steps_on_stop_time";
ALTER INDEX "indexcachedbazaarinputsonurirevision" RENAME TO "index_cached_bazaar_inputs_on_uri_revision";
ALTER INDEX "indexcachedgitinputsonhash" RENAME TO "index_cached_git_inputs_on_hash";
ALTER INDEX "indexcachedhginputsonhash" RENAME TO "index_cached_hg_inputs_on_hash";
ALTER INDEX "indexcachedsubversioninputsonurirevision" RENAME TO "index_cached_subversion_inputs_on_uri_revision";
ALTER INDEX "indexjobsetevalmembersonbuild" RENAME TO "index_jobset_eval_members_on_build";
ALTER INDEX "indexjobsetevalmembersoneval" RENAME TO "index_jobset_eval_members_on_eval";
ALTER INDEX "indexjobsetevalsonjobsetid" RENAME TO "index_jobset_evals_on_jobset_id";
ALTER INDEX "indexjobsetinputaltsoninput" RENAME TO "index_jobset_input_alts_on_input";
ALTER INDEX "indexjobsetinputaltsonjobset" RENAME TO "index_jobset_input_alts_on_jobset";
ALTER INDEX "indexprojectsonenabled" RENAME TO "index_projects_on_enabled";
ALTER INDEX "indexreleasemembersonbuild" RENAME TO "index_release_members_on_build";
ALTER SEQUENCE buildinputs_id_seq RENAME TO build_inputs_id_seq;
ALTER SEQUENCE jobsetevals_id_seq RENAME TO jobset_evals_id_seq;
ALTER SEQUENCE newsitems_id_seq RENAME TO news_items_id_seq;

DROP TRIGGER buildbumped ON builds;

DROP TRIGGER buildcancelled ON builds;

DROP TRIGGER buildrestarted ON builds;

DROP TRIGGER buildsadded ON builds;

DROP TRIGGER buildsdeleted ON builds;

DROP TRIGGER nrbuildsfinished ON builds;

DROP TRIGGER jobsetshareschanged ON jobsets;

DROP FUNCTION modifynrbuildsfinished();

DROP FUNCTION notifybuildbumped();

DROP FUNCTION notifybuildcancelled();

DROP FUNCTION notifybuildrestarted();

DROP FUNCTION notifybuildsadded();

DROP FUNCTION notifybuildsdeleted();

DROP FUNCTION notifyjobsetshareschanged();

ALTER TABLE build_inputs
	DROP CONSTRAINT buildinputs_pkey;

ALTER TABLE build_metrics
	DROP CONSTRAINT buildmetrics_pkey;

ALTER TABLE build_outputs
	DROP CONSTRAINT buildoutputs_pkey;

ALTER TABLE build_products
	DROP CONSTRAINT buildproducts_pkey;

ALTER TABLE build_step_outputs
	DROP CONSTRAINT buildstepoutputs_pkey;

ALTER TABLE cached_bazaar_inputs
	DROP CONSTRAINT cachedbazaarinputs_pkey;

ALTER TABLE cached_cvs_inputs
	DROP CONSTRAINT cachedcvsinputs_pkey;

ALTER TABLE cached_darcs_inputs
	DROP CONSTRAINT cacheddarcsinputs_pkey;

ALTER TABLE cached_git_inputs
	DROP CONSTRAINT cachedgitinputs_pkey;

ALTER TABLE cached_hg_inputs
	DROP CONSTRAINT cachedhginputs_pkey;

ALTER TABLE cached_path_inputs
	DROP CONSTRAINT cachedpathinputs_pkey;

ALTER TABLE cached_subversion_inputs
	DROP CONSTRAINT cachedsubversioninputs_pkey;

ALTER TABLE failed_paths
	DROP CONSTRAINT failedpaths_pkey;

ALTER TABLE jobset_eval_inputs
	DROP CONSTRAINT jobsetevalinputs_pkey;

ALTER TABLE jobset_eval_members
	DROP CONSTRAINT jobsetevalmembers_pkey;

ALTER TABLE jobset_eval_inputs
	DROP CONSTRAINT jobsetevalinputs_eval_fkey;

ALTER TABLE jobset_eval_members
	DROP CONSTRAINT jobsetevalmembers_eval_fkey;

ALTER TABLE jobset_input_alts
	DROP CONSTRAINT jobsetinputalts_project_fkey;

ALTER TABLE jobset_evals
	DROP CONSTRAINT jobsetevals_pkey;

ALTER TABLE jobset_input_alts
	DROP CONSTRAINT jobsetinputalts_pkey;

ALTER TABLE jobset_inputs
	DROP CONSTRAINT jobsetinputs_pkey;

ALTER TABLE jobset_renames
	DROP CONSTRAINT jobsetrenames_pkey;

ALTER TABLE news_items
	DROP CONSTRAINT newsitems_pkey;

ALTER TABLE nr_builds
	DROP CONSTRAINT nrbuilds_pkey;

ALTER TABLE project_members
	DROP CONSTRAINT projectmembers_pkey;

ALTER TABLE release_members
	DROP CONSTRAINT releasemembers_pkey;

ALTER TABLE starred_jobs
	DROP CONSTRAINT starredjobs_pkey;

ALTER TABLE system_status
	DROP CONSTRAINT systemstatus_pkey;

ALTER TABLE system_types
	DROP CONSTRAINT systemtypes_pkey;

ALTER TABLE uri_rev_mapper
	DROP CONSTRAINT urirevmapper_pkey;

ALTER TABLE user_roles
	DROP CONSTRAINT userroles_pkey;

ALTER TABLE aggregate_constituents
	DROP CONSTRAINT aggregateconstituents_aggregate_fkey;

ALTER TABLE aggregate_constituents
	DROP CONSTRAINT aggregateconstituents_constituent_fkey;

ALTER TABLE build_inputs
	DROP CONSTRAINT buildinputs_build_fkey;

ALTER TABLE build_inputs
	DROP CONSTRAINT buildinputs_dependency_fkey;

ALTER TABLE build_metrics
	DROP CONSTRAINT buildmetrics_build_fkey;

ALTER TABLE build_metrics
	DROP CONSTRAINT buildmetrics_project_fkey;

ALTER TABLE build_metrics
	DROP CONSTRAINT buildmetrics_project_fkey1;

ALTER TABLE build_metrics
	DROP CONSTRAINT buildmetrics_project_fkey2;

ALTER TABLE build_outputs
	DROP CONSTRAINT buildoutputs_build_fkey;

ALTER TABLE build_products
	DROP CONSTRAINT buildproducts_build_fkey;

ALTER TABLE build_step_outputs
	DROP CONSTRAINT buildstepoutputs_build_fkey;

ALTER TABLE build_step_outputs
	DROP CONSTRAINT buildstepoutputs_build_fkey1;

ALTER TABLE build_steps
	DROP CONSTRAINT buildsteps_pkey;

ALTER TABLE build_steps
	DROP CONSTRAINT buildsteps_build_fkey;

ALTER TABLE build_steps
	DROP CONSTRAINT buildsteps_propagatedfrom_fkey;

ALTER TABLE builds
	DROP CONSTRAINT builds_check;

ALTER TABLE builds
	DROP CONSTRAINT builds_check1;

ALTER TABLE jobset_eval_inputs
	DROP CONSTRAINT jobsetevalinputs_dependency_fkey;

ALTER TABLE jobset_eval_members
	DROP CONSTRAINT jobsetevalmembers_build_fkey;

ALTER TABLE jobset_evals
	DROP CONSTRAINT jobsetevals_project_fkey;

ALTER TABLE jobset_evals
	DROP CONSTRAINT jobsetevals_project_fkey1;

ALTER TABLE jobset_inputs
	DROP CONSTRAINT jobsetinputs_project_fkey;

ALTER TABLE jobset_renames
	DROP CONSTRAINT jobsetrenames_project_fkey;

ALTER TABLE jobset_renames
	DROP CONSTRAINT jobsetrenames_project_fkey1;

ALTER TABLE news_items
	DROP CONSTRAINT newsitems_author_fkey;

ALTER TABLE project_members
	DROP CONSTRAINT projectmembers_project_fkey;

ALTER TABLE project_members
	DROP CONSTRAINT projectmembers_username_fkey;

ALTER TABLE release_members
	DROP CONSTRAINT releasemembers_build_fkey;

ALTER TABLE release_members
	DROP CONSTRAINT releasemembers_project_fkey;

ALTER TABLE release_members
	DROP CONSTRAINT releasemembers_project_fkey1;

ALTER TABLE starred_jobs
	DROP CONSTRAINT starredjobs_project_fkey;

ALTER TABLE starred_jobs
	DROP CONSTRAINT starredjobs_project_fkey1;

ALTER TABLE starred_jobs
	DROP CONSTRAINT starredjobs_project_fkey2;

ALTER TABLE starred_jobs
	DROP CONSTRAINT starredjobs_username_fkey;

ALTER TABLE user_roles
	DROP CONSTRAINT userroles_username_fkey;

DROP INDEX index_build_steps_on_drv_path;

DROP INDEX index_build_steps_on_propagated_from;

DROP INDEX index_build_steps_on_stop_time;

DROP INDEX index_builds_on_drv_path;

DROP INDEX index_builds_on_finished_stop_time;

DROP INDEX index_builds_on_is_current;

DROP INDEX index_builds_on_job_is_current;

DROP INDEX index_builds_on_jobset_is_current;

DROP INDEX index_jobset_evals_on_jobset_id;

ALTER TABLE build_inputs RENAME COLUMN emailresponsible TO email_responsible;

ALTER TABLE build_products RENAME COLUMN filesize TO file_size;
ALTER TABLE build_products RENAME COLUMN defaultpath TO default_path;

ALTER TABLE build_steps RENAME COLUMN drvpath TO drv_path;
ALTER TABLE build_steps RENAME COLUMN errormsg TO error_msg;
ALTER TABLE build_steps RENAME COLUMN starttime TO start_time;
ALTER TABLE build_steps RENAME COLUMN stoptime TO stop_time;
ALTER TABLE build_steps RENAME COLUMN propagatedfrom TO propagated_from;

ALTER TABLE builds RENAME COLUMN nixname TO nix_name;
ALTER TABLE builds RENAME COLUMN drvpath TO drv_path;
ALTER TABLE builds RENAME COLUMN ischannel TO is_channel;
ALTER TABLE builds RENAME COLUMN iscurrent TO is_current;
ALTER TABLE builds RENAME COLUMN nixexprinput TO nix_expr_input;
ALTER TABLE builds RENAME COLUMN nixexprpath TO nix_expr_path;
ALTER TABLE builds RENAME COLUMN globalpriority TO global_priority;
ALTER TABLE builds RENAME COLUMN starttime TO start_time;
ALTER TABLE builds RENAME COLUMN stoptime TO stop_time;
ALTER TABLE builds RENAME COLUMN iscachedbuild TO is_cached_build;
ALTER TABLE builds RENAME COLUMN buildstatus TO build_status;
ALTER TABLE builds RENAME COLUMN closuresize TO closure_size;
ALTER TABLE builds RENAME COLUMN releasename TO release_name;

ALTER TABLE cached_bazaar_inputs RENAME COLUMN storepath TO store_path;

ALTER TABLE cached_cvs_inputs RENAME COLUMN lastseen TO last_seen;
ALTER TABLE cached_cvs_inputs RENAME COLUMN storepath TO store_path;

ALTER TABLE cached_darcs_inputs RENAME COLUMN storepath TO store_path;
ALTER TABLE cached_darcs_inputs RENAME COLUMN revcount TO rev_count;

ALTER TABLE cached_git_inputs RENAME COLUMN storepath TO store_path;

ALTER TABLE cached_hg_inputs RENAME COLUMN storepath TO store_path;

ALTER TABLE cached_path_inputs RENAME COLUMN srcpath TO src_path;
ALTER TABLE cached_path_inputs RENAME COLUMN lastseen TO last_seen;
ALTER TABLE cached_path_inputs RENAME COLUMN storepath TO store_path;

ALTER TABLE cached_subversion_inputs RENAME COLUMN storepath TO store_path;

ALTER TABLE jobset_eval_inputs RENAME COLUMN altnr TO alt_nr;

ALTER TABLE jobset_eval_members RENAME COLUMN isnew TO is_new;

ALTER TABLE jobset_evals RENAME COLUMN checkouttime TO checkout_time;
ALTER TABLE jobset_evals RENAME COLUMN evaltime TO eval_time;
ALTER TABLE jobset_evals RENAME COLUMN hasnewbuilds TO has_new_builds;
ALTER TABLE jobset_evals RENAME COLUMN nrbuilds TO nr_builds;
ALTER TABLE jobset_evals RENAME COLUMN nrsucceeded TO nr_succeeded;

ALTER TABLE jobset_input_alts RENAME COLUMN altnr TO alt_nr;

ALTER TABLE jobset_inputs RENAME COLUMN emailresponsible TO email_responsible;

ALTER TABLE jobsets RENAME COLUMN nixexprinput TO nix_expr_input;
ALTER TABLE jobsets RENAME COLUMN nixexprpath TO nix_expr_path;
ALTER TABLE jobsets RENAME COLUMN errormsg TO error_msg;
ALTER TABLE jobsets RENAME COLUMN errortime TO error_time;
ALTER TABLE jobsets RENAME COLUMN lastcheckedtime TO last_checked_time;
ALTER TABLE jobsets RENAME COLUMN triggertime TO trigger_time;
ALTER TABLE jobsets RENAME COLUMN enableemail TO enable_email;
ALTER TABLE jobsets RENAME COLUMN emailoverride TO email_override;
ALTER TABLE jobsets RENAME COLUMN checkinterval TO check_interval;
ALTER TABLE jobsets RENAME COLUMN schedulingshares TO scheduling_shares;
ALTER TABLE jobsets RENAME COLUMN fetcherrormsg TO fetch_error_msg;

ALTER TABLE news_items RENAME COLUMN createtime TO create_time;

ALTER TABLE projects RENAME COLUMN displayname TO display_name;

ALTER TABLE system_types RENAME COLUMN maxconcurrent TO max_concurrent;

ALTER TABLE users RENAME COLUMN fullname TO full_name;
ALTER TABLE users RENAME COLUMN emailaddress TO email_address;
ALTER TABLE users RENAME COLUMN emailonerror TO email_on_error;
ALTER TABLE users RENAME COLUMN publicdashboard TO public_dashboard;

CREATE OR REPLACE FUNCTION modify_nr_builds_finished() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
  begin
    if ((tg_op = 'INSERT' and new.finished = 1) or
        (tg_op = 'UPDATE' and old.finished = 0 and new.finished = 1)) then
      update nr_builds set count = count + 1 where what = 'finished';
    elsif ((tg_op = 'DELETE' and old.finished = 1) or
           (tg_op = 'UPDATE' and old.finished = 1 and new.finished = 0)) then
      update nr_builds set count = count - 1 where what = 'finished';
    end if;
    return null;
  end;
$$;

CREATE OR REPLACE FUNCTION notify_build_bumped() RETURNS trigger
    LANGUAGE plpgsql
    AS $$begin notify builds_bumped; return null; end;$$;

CREATE OR REPLACE FUNCTION notify_build_cancelled() RETURNS trigger
    LANGUAGE plpgsql
    AS $$begin notify builds_cancelled; return null; end;$$;

CREATE OR REPLACE FUNCTION notify_build_restarted() RETURNS trigger
    LANGUAGE plpgsql
    AS $$begin notify builds_restarted; return null; end;$$;

CREATE OR REPLACE FUNCTION notify_builds_added() RETURNS trigger
    LANGUAGE plpgsql
    AS $$begin notify builds_added; return null; end;$$;

CREATE OR REPLACE FUNCTION notify_builds_deleted() RETURNS trigger
    LANGUAGE plpgsql
    AS $$begin notify builds_deleted; return null; end;$$;

CREATE OR REPLACE FUNCTION notify_jobset_shares_changed() RETURNS trigger
    LANGUAGE plpgsql
    AS $$begin notify jobset_shares_changed; return null; end;$$;

ALTER TABLE build_inputs
	ADD CONSTRAINT build_inputs_pkey PRIMARY KEY (id);

ALTER TABLE build_metrics
	ADD CONSTRAINT build_metrics_pkey PRIMARY KEY (build, name);

ALTER TABLE build_outputs
	ADD CONSTRAINT build_outputs_pkey PRIMARY KEY (build, name);

ALTER TABLE build_products
	ADD CONSTRAINT build_products_pkey PRIMARY KEY (build, productnr);

ALTER TABLE build_step_outputs
	ADD CONSTRAINT build_step_outputs_pkey PRIMARY KEY (build, stepnr, name);

ALTER TABLE build_steps
	ADD CONSTRAINT build_steps_pkey PRIMARY KEY (build, stepnr);

ALTER TABLE cached_bazaar_inputs
	ADD CONSTRAINT cached_bazaar_inputs_pkey PRIMARY KEY (uri, revision);

ALTER TABLE cached_cvs_inputs
	ADD CONSTRAINT cached_cvs_inputs_pkey PRIMARY KEY (uri, module, sha256hash);

ALTER TABLE cached_darcs_inputs
	ADD CONSTRAINT cached_darcs_inputs_pkey PRIMARY KEY (uri, revision);

ALTER TABLE cached_git_inputs
	ADD CONSTRAINT cached_git_inputs_pkey PRIMARY KEY (uri, branch, revision);

ALTER TABLE cached_hg_inputs
	ADD CONSTRAINT cached_hg_inputs_pkey PRIMARY KEY (uri, branch, revision);

ALTER TABLE cached_path_inputs
	ADD CONSTRAINT cached_path_inputs_pkey PRIMARY KEY (src_path, sha256hash);

ALTER TABLE cached_subversion_inputs
	ADD CONSTRAINT cached_subversion_inputs_pkey PRIMARY KEY (uri, revision);

ALTER TABLE failed_paths
	ADD CONSTRAINT failed_paths_pkey PRIMARY KEY (path);

ALTER TABLE jobset_eval_inputs
	ADD CONSTRAINT jobset_eval_inputs_pkey PRIMARY KEY (eval, name, alt_nr);

ALTER TABLE jobset_eval_members
	ADD CONSTRAINT jobset_eval_members_pkey PRIMARY KEY (eval, build);

ALTER TABLE jobset_evals
	ADD CONSTRAINT jobset_evals_pkey PRIMARY KEY (id);

ALTER TABLE jobset_input_alts
	ADD CONSTRAINT jobset_input_alts_pkey PRIMARY KEY (project, jobset, input, alt_nr);

ALTER TABLE jobset_inputs
	ADD CONSTRAINT jobset_inputs_pkey PRIMARY KEY (project, jobset, name);

ALTER TABLE jobset_renames
	ADD CONSTRAINT jobset_renames_pkey PRIMARY KEY (project, from_);

ALTER TABLE news_items
	ADD CONSTRAINT news_items_pkey PRIMARY KEY (id);

ALTER TABLE nr_builds
	ADD CONSTRAINT nr_builds_pkey PRIMARY KEY (what);

ALTER TABLE project_members
	ADD CONSTRAINT project_members_pkey PRIMARY KEY (project, username);

ALTER TABLE release_members
	ADD CONSTRAINT release_members_pkey PRIMARY KEY (project, release_, build);

ALTER TABLE starred_jobs
	ADD CONSTRAINT starred_jobs_pkey PRIMARY KEY (username, project, jobset, job);

ALTER TABLE system_status
	ADD CONSTRAINT system_status_pkey PRIMARY KEY (what);

ALTER TABLE system_types
	ADD CONSTRAINT system_types_pkey PRIMARY KEY (system);

ALTER TABLE uri_rev_mapper
	ADD CONSTRAINT uri_rev_mapper_pkey PRIMARY KEY (baseuri);

ALTER TABLE user_roles
	ADD CONSTRAINT user_roles_pkey PRIMARY KEY (username, role);

ALTER TABLE aggregate_constituents
	ADD CONSTRAINT aggregate_constituents_aggregate_fkey FOREIGN KEY (aggregate) REFERENCES builds(id) ON DELETE CASCADE;

ALTER TABLE aggregate_constituents
	ADD CONSTRAINT aggregate_constituents_constituent_fkey FOREIGN KEY (constituent) REFERENCES builds(id) ON DELETE CASCADE;

ALTER TABLE build_inputs
	ADD CONSTRAINT build_inputs_build_fkey FOREIGN KEY (build) REFERENCES builds(id) ON DELETE CASCADE;

ALTER TABLE build_inputs
	ADD CONSTRAINT build_inputs_dependency_fkey FOREIGN KEY (dependency) REFERENCES builds(id);

ALTER TABLE build_metrics
	ADD CONSTRAINT build_metrics_build_fkey FOREIGN KEY (build) REFERENCES builds(id) ON DELETE CASCADE;

ALTER TABLE build_metrics
	ADD CONSTRAINT build_metrics_project_fkey FOREIGN KEY (project) REFERENCES projects(name) ON UPDATE CASCADE;

ALTER TABLE build_metrics
	ADD CONSTRAINT build_metrics_project_fkey1 FOREIGN KEY (project, jobset) REFERENCES jobsets(project, name) ON UPDATE CASCADE;

ALTER TABLE build_metrics
	ADD CONSTRAINT build_metrics_project_fkey2 FOREIGN KEY (project, jobset, job) REFERENCES jobs(project, jobset, name) ON UPDATE CASCADE;

ALTER TABLE build_outputs
	ADD CONSTRAINT build_outputs_build_fkey FOREIGN KEY (build) REFERENCES builds(id) ON DELETE CASCADE;

ALTER TABLE build_products
	ADD CONSTRAINT build_products_build_fkey FOREIGN KEY (build) REFERENCES builds(id) ON DELETE CASCADE;

ALTER TABLE build_step_outputs
	ADD CONSTRAINT build_step_outputs_build_fkey FOREIGN KEY (build) REFERENCES builds(id) ON DELETE CASCADE;

ALTER TABLE build_step_outputs
	ADD CONSTRAINT build_step_outputs_build_fkey1 FOREIGN KEY (build, stepnr) REFERENCES build_steps(build, stepnr) ON DELETE CASCADE;

ALTER TABLE build_steps
	ADD CONSTRAINT build_steps_build_fkey FOREIGN KEY (build) REFERENCES builds(id) ON DELETE CASCADE;

ALTER TABLE build_steps
	ADD CONSTRAINT build_steps_propagated_from_fkey FOREIGN KEY (propagated_from) REFERENCES builds(id) ON DELETE CASCADE;

ALTER TABLE builds
	ADD CONSTRAINT builds_check CHECK (((finished = 0) OR ((stop_time IS NOT NULL) AND (stop_time <> 0))));

ALTER TABLE builds
	ADD CONSTRAINT builds_check1 CHECK (((finished = 0) OR ((start_time IS NOT NULL) AND (start_time <> 0))));

ALTER TABLE jobset_eval_inputs
	ADD CONSTRAINT jobset_eval_inputs_dependency_fkey FOREIGN KEY (dependency) REFERENCES builds(id);

ALTER TABLE jobset_eval_inputs
	ADD CONSTRAINT jobset_eval_inputs_eval_fkey FOREIGN KEY (eval) REFERENCES jobset_evals(id) ON DELETE CASCADE;

ALTER TABLE jobset_eval_members
	ADD CONSTRAINT jobset_eval_members_build_fkey FOREIGN KEY (build) REFERENCES builds(id) ON DELETE CASCADE;

ALTER TABLE jobset_eval_members
	ADD CONSTRAINT jobset_eval_members_eval_fkey FOREIGN KEY (eval) REFERENCES jobset_evals(id) ON DELETE CASCADE;

ALTER TABLE jobset_evals
	ADD CONSTRAINT jobset_evals_project_fkey FOREIGN KEY (project) REFERENCES projects(name) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE jobset_evals
	ADD CONSTRAINT jobset_evals_project_fkey1 FOREIGN KEY (project, jobset) REFERENCES jobsets(project, name) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE jobset_input_alts
	ADD CONSTRAINT jobset_input_alts_project_fkey FOREIGN KEY (project, jobset, input) REFERENCES jobset_inputs(project, jobset, name) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE jobset_inputs
	ADD CONSTRAINT jobset_inputs_project_fkey FOREIGN KEY (project, jobset) REFERENCES jobsets(project, name) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE jobset_renames
	ADD CONSTRAINT jobset_renames_project_fkey FOREIGN KEY (project) REFERENCES projects(name) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE jobset_renames
	ADD CONSTRAINT jobset_renames_project_fkey1 FOREIGN KEY (project, to_) REFERENCES jobsets(project, name) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE news_items
	ADD CONSTRAINT news_items_author_fkey FOREIGN KEY (author) REFERENCES users(username) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE project_members
	ADD CONSTRAINT project_members_project_fkey FOREIGN KEY (project) REFERENCES projects(name) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE project_members
	ADD CONSTRAINT project_members_username_fkey FOREIGN KEY (username) REFERENCES users(username) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE release_members
	ADD CONSTRAINT release_members_build_fkey FOREIGN KEY (build) REFERENCES builds(id);

ALTER TABLE release_members
	ADD CONSTRAINT release_members_project_fkey FOREIGN KEY (project) REFERENCES projects(name) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE release_members
	ADD CONSTRAINT release_members_project_fkey1 FOREIGN KEY (project, release_) REFERENCES releases(project, name) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE starred_jobs
	ADD CONSTRAINT starred_jobs_project_fkey FOREIGN KEY (project) REFERENCES projects(name) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE starred_jobs
	ADD CONSTRAINT starred_jobs_project_fkey1 FOREIGN KEY (project, jobset) REFERENCES jobsets(project, name) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE starred_jobs
	ADD CONSTRAINT starred_jobs_project_fkey2 FOREIGN KEY (project, jobset, job) REFERENCES jobs(project, jobset, name) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE starred_jobs
	ADD CONSTRAINT starred_jobs_username_fkey FOREIGN KEY (username) REFERENCES users(username) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE user_roles
	ADD CONSTRAINT user_roles_username_fkey FOREIGN KEY (username) REFERENCES users(username) ON UPDATE CASCADE ON DELETE CASCADE;

CREATE INDEX index_build_steps_on_drv_path ON build_steps USING btree (drv_path);

CREATE INDEX index_build_steps_on_propagated_from ON build_steps USING btree (propagated_from) WHERE (propagated_from IS NOT NULL);

CREATE INDEX index_build_steps_on_stop_time ON build_steps USING btree (stop_time DESC) WHERE ((start_time IS NOT NULL) AND (stop_time IS NOT NULL));

CREATE INDEX index_builds_on_drv_path ON builds USING btree (drv_path);

CREATE INDEX index_builds_on_finished_stop_time ON builds USING btree (finished, stop_time DESC);

CREATE INDEX index_builds_on_is_current ON builds USING btree (is_current) WHERE (is_current = 1);

CREATE INDEX index_builds_on_job_is_current ON builds USING btree (project, jobset, job, is_current) WHERE (is_current = 1);

CREATE INDEX index_builds_on_jobset_is_current ON builds USING btree (project, jobset, is_current) WHERE (is_current = 1);

CREATE INDEX index_jobset_evals_on_jobset_id ON jobset_evals USING btree (project, jobset, id DESC) WHERE (has_new_builds = 1);

CREATE TRIGGER build_bumped
	AFTER UPDATE ON builds
	FOR EACH ROW
	WHEN ((old.global_priority <> new.global_priority))
	EXECUTE PROCEDURE notify_build_bumped();

CREATE TRIGGER build_cancelled
	AFTER UPDATE ON builds
	FOR EACH ROW
	WHEN (((old.finished = 0) AND (new.finished = 1) AND (new.build_status = 4)))
	EXECUTE PROCEDURE notify_build_cancelled();

CREATE TRIGGER build_restarted
	AFTER UPDATE ON builds
	FOR EACH ROW
	WHEN (((old.finished = 1) AND (new.finished = 0)))
	EXECUTE PROCEDURE notify_build_restarted();

CREATE TRIGGER builds_added
	AFTER INSERT ON builds
	FOR EACH STATEMENT
	EXECUTE PROCEDURE notify_builds_added();

CREATE TRIGGER builds_deleted
	AFTER DELETE ON builds
	FOR EACH STATEMENT
	EXECUTE PROCEDURE notify_builds_deleted();

CREATE TRIGGER nr_builds_finished
	AFTER INSERT OR UPDATE OR DELETE ON builds
	FOR EACH ROW
	EXECUTE PROCEDURE modify_nr_builds_finished();

CREATE TRIGGER jobset_shares_changed
	AFTER UPDATE ON jobsets
	FOR EACH ROW
	WHEN ((old.scheduling_shares <> new.scheduling_shares))
	EXECUTE PROCEDURE notify_jobset_shares_changed();

ALTER TABLE jobsets DROP CONSTRAINT IF EXISTS jobsets_schedulingshares_check;
ALTER TABLE jobsets DROP CONSTRAINT IF EXISTS jobsets_check;
ALTER TABLE jobsets ADD CONSTRAINT jobsets_check CHECK (scheduling_shares > 0);

DROP INDEX IF EXISTS indexbuildoutputsonpath;
CREATE INDEX index_build_outputs_on_path ON build_outputs(path);

ALTER TABLE aggregate_constituents
	RENAME CONSTRAINT aggregateconstituents_pkey TO aggregate_constituents_pkey;

DROP RULE idempotentinsert ON failed_paths;
CREATE RULE idempotent_insert AS ON INSERT TO failed_paths
    WHERE EXISTS (SELECT 1 FROM failed_paths where path = new.path)
    DO INSTEAD NOTHING;
