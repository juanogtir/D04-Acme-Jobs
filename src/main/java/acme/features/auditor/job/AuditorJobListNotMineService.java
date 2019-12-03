
package acme.features.auditor.job;

import java.util.Collection;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import acme.entities.jobs.Job;
import acme.entities.roles.Auditor;
import acme.framework.components.Model;
import acme.framework.components.Request;
import acme.framework.entities.Principal;
import acme.framework.services.AbstractListService;

@Service
public class AuditorJobListNotMineService implements AbstractListService<Auditor, Job> {

	// Internal state ---------------------------------------------------------

	@Autowired
	AuditorJobRepository repository;


	@Override
	public boolean authorise(final Request<Job> request) {
		assert request != null;

		return true;
	}

	@Override
	public void unbind(final Request<Job> request, final Job entity, final Model model) {
		assert request != null;
		assert entity != null;
		assert model != null;

		request.unbind(entity, model, "referenceNumber", "title", "deadline");
	}

	@Override
	public Collection<Job> findMany(final Request<Job> request) {
		assert request != null;

		Collection<Job> todosJobs;
		Collection<Job> jobsRealizados;
		Collection<Job> result;
		Principal principal;

		principal = request.getPrincipal();
		jobsRealizados = this.repository.findManyByAuditorId(principal.getActiveRoleId());
		todosJobs = this.repository.findManyJobs();
		result = todosJobs.stream().filter(j -> !jobsRealizados.contains(j)).collect(Collectors.toList());

		return result;
	}
}
