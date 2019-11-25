
package acme.forms;

import java.io.Serializable;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Dashboard implements Serializable {

	// Serialization identifier -------------------------------------------

	private static final long	serialVersionUID	= 1L;

	//Attributes ----------------------------------------------------------

	Integer						totalNumberOfAnnouncements;
	Integer						totalNumberOfCompanyRecords;
	Integer						totalNumberOfInvestorRecords;
	//Reward
	Double						minimumReward;
	Double						maximumReward;
	Double						averageReward;
	Double						standardDesviationReward;
	//Offer
	Double						minimumOffer;
	Double						maximumOffer;
	Double						averageOffer;
	Double						standardDesviationOffer;

	// Chart atts.
	List<String>				companySectors;
	List<Long>					numberCompanys; //nº companys per sector

	List<String>				investorSectors;
	List<Long>					numberInvestors; //nº investors per sector

	// Derived attributes -------------------------------------------------

	// Relationships ------------------------------------------------------
}
