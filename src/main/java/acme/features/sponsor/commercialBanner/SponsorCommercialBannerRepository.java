
package acme.features.sponsor.commercialBanner;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import acme.entities.commercialBanners.CommercialBanner;
import acme.framework.repositories.AbstractRepository;

@Repository
public interface SponsorCommercialBannerRepository extends AbstractRepository {

	@Query("select cb from CommercialBanner cb where cb.id = ?1")
	CommercialBanner findOneCommercialBannerById(int id);

	@Query("select cb from CommercialBanner cb where cb.sponsor.id = ?1")
	Collection<CommercialBanner> findManyBySponsorId(int id);
}
