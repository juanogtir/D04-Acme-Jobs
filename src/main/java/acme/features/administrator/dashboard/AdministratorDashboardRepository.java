/*
 * AuthenticatedUserAccountRepository.java
 *
 * Copyright (c) 2019 Rafael Corchuelo.
 *
 * In keeping with the traditional purpose of furthering education and research, it is
 * the policy of the copyright owner to permit non-commercial use and redistribution of
 * this software. It has been tested carefully, but it is not guaranteed for any particular
 * purposes. The copyright owner does not offer any warranties or representations, nor do
 * they accept any liabilities with respect to them.
 */

package acme.features.administrator.dashboard;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import acme.framework.repositories.AbstractRepository;

@Repository
public interface AdministratorDashboardRepository extends AbstractRepository {
	/*
	 * @Query("select a from Announcement a where a.id = ?1")
	 * Announcement findOneById(int id);
	 *
	 * @Query("select a from Announcement a")
	 * Collection<Announcement> findManyAll();
	 */

	@Query("select count(a) from Announcement a")
	Integer countAnnouncements();

	@Query("select count(cr) from Company cr")
	Integer countCompanyRecords();

	@Query("select count(ir) from Investor ir")
	Integer countInvestorRecords();

	//Minimum, maximum, average, and standard deviation of the rewards of the active requests

	//@Query("select min(reward_amount) from acme_request where deadline >= CURRENT_DATE")
	@Query("select min(ar.reward.amount) from Solicitud ar where ar.deadline >= current_date()")
	Double minimumReward();

	@Query("select max(ar.reward.amount) from Solicitud ar where ar.deadline >= current_date()")
	Double maximumReward();

	@Query("select avg(ar.reward.amount) from Solicitud ar where ar.deadline >= current_date()")
	Double averageReward();

	@Query("select stddev(ar.reward.amount) from Solicitud ar where ar.deadline >= current_date()")
	Double standardDesviationReward();

	//Minimum, maximum, average, and standard deviation of the rewards of the active offers

	@Query("select min((ao.min.amount + ao.max.amount)/2) from Offer ao where ao.deadline >= current_date()")
	Double minimumOffer();

	//@Query("select max((max_amount + min_amount)/2) from Acme_offer where deadline >= CURRENT_DATE")
	@Query("select max((ao.min.amount + ao.max.amount)/2) from Offer ao where ao.deadline >= current_date()")
	Double maximumOffer();

	@Query("select avg((ao.min.amount + ao.max.amount)/2) from Offer ao where ao.deadline >= current_date()")
	Double averageOffer();

	@Query("select stddev((ao.min.amount + ao.max.amount)/2) from Offer ao where ao.deadline >= current_date()")
	Double standardDesviationOffer();

	@Query("select count(cr), cr.sector from Company cr group by cr.sector order by cr.sector")
	Collection<Object[]> getNumCompBySector();

	@Query("select count(ir), ir.sector from Investor ir group by ir.sector order by ir.sector")
	Collection<Object[]> getNumInvestorBySector();

}
