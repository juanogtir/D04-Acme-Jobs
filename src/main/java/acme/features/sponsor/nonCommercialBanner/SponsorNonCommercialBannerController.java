
package acme.features.sponsor.nonCommercialBanner;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import acme.components.CustomCommand;
import acme.entities.nonCommercialBanners.NonCommercialBanner;
import acme.entities.roles.Sponsor;
import acme.framework.components.BasicCommand;
import acme.framework.controllers.AbstractController;

@Controller
@RequestMapping("/sponsor/non-commercial-banner")
public class SponsorNonCommercialBannerController extends AbstractController<Sponsor, NonCommercialBanner> {

	@Autowired
	private SponsorNonCommercialBannerListMineService	listMineService;

	@Autowired
	private SponsorNonCommercialBannerShowService		showService;


	@PostConstruct
	private void initialise() {
		super.addCustomCommand(CustomCommand.LIST_MINE, BasicCommand.LIST, this.listMineService);
		super.addBasicCommand(BasicCommand.SHOW, this.showService);
	}
}
