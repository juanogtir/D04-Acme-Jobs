
package acme.features.administrator.indicators;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import acme.framework.repositories.AbstractRepository;

@Repository
public interface AdministratorIndicatorRepository extends AbstractRepository {

	@Query("select avg(select count(j) from Job j where j.employer.id = e.id) from Employer e")
	Double averageJobsPerEmployer();

	@Query("select avg(select count(a) from Application a where a.worker.id = w.id) from Worker w")
	Double averageApplicationsPerWorker();

	@Query("select avg(select count(a) from Application a where exists(select j from Job j where j.employer.id = e.id and a.job.id = j.id)) from Employer e")
	Double averageApplicationsPerEmployer();

	@Query("select 1.0 * count(a) / (select count(b) from Application b) from Application a where a.status = 'pending'")
	Double ratioPendingApplications();

	@Query("select 1.0 * count(a) / (select count(b) from Application b) from Application a where a.status = 'accepted'")
	Double ratioAcceptedApplications();

	@Query("select 1.0 * count(a) / (select count(b) from Application b) from Application a where a.status = 'rejected'")
	Double ratioRejectedApplications();

	@Query("select 1.0 * count(j) / (select count(ja) from Job ja) from Job j where exists(select a from Application a where a.job.id = j.id and a.status = 'pending')")
	Double ratioPendingJobs();

	@Query("select 1.0 * count(j) / (select count(ja) from Job ja) from Job j where exists(select a from Application a where a.job.id = j.id and a.status = 'accepted')")
	Double ratioAcceptedJobs();

	@Query("select 1.0 * count(j) / (select count(ja) from Job ja) from Job j where exists(select a from Application a where a.job.id = j.id and a.status = 'rejected')")
	Double ratioRejectedJobs();

}
