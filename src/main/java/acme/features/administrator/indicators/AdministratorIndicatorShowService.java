
package acme.features.administrator.indicators;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import acme.forms.Indicators;
import acme.framework.components.Model;
import acme.framework.components.Request;
import acme.framework.entities.Administrator;
import acme.framework.services.AbstractShowService;

@Service
public class AdministratorIndicatorShowService implements AbstractShowService<Administrator, Indicators> {

	@Autowired
	private AdministratorIndicatorRepository repository;


	@Override
	public boolean authorise(final Request<Indicators> request) {
		assert request != null;
		return true;
	}

	@Override
	public void unbind(final Request<Indicators> request, final Indicators entity, final Model model) {
		assert request != null;
		assert request != null;
		assert request != null;

		request.unbind(entity, model, "averageJobsPerEmployer", "averageApplicationsPerEmployer", "averageApplicationsPerWorker", "ratioAcceptedApplications", "ratioPendingApplications", "ratioRejectedApplications", "ratioPublishedJobs", "ratioDraftJobs");

	}

	@Override
	public Indicators findOne(final Request<Indicators> request) {
		assert request != null;

		Indicators result = new Indicators();

		result.setAverageApplicationsPerEmployer(this.repository.averageApplicationsPerEmployer());
		result.setAverageApplicationsPerWorker(this.repository.averageApplicationsPerWorker());
		result.setAverageJobsPerEmployer(this.repository.averageJobsPerEmployer());
		result.setRatioAcceptedApplications(this.repository.ratioAcceptedApplications());
		result.setRatioPendingApplications(this.repository.ratioPendingApplications());
		result.setRatioRejectedApplications(this.repository.ratioRejectedApplications());
		result.setRatioPublishedJobs(this.repository.ratioPublishedJobs());
		result.setRatioDraftJobs(this.repository.ratioDraftJobs());

		return result;
	}

}
