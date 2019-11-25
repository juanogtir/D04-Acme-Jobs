
package acme.features.administrator.commercialBanner;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import acme.entities.commercialBanners.CommercialBanner;
import acme.framework.repositories.AbstractRepository;

@Repository
public interface AdministratorCommercialBannerRepository extends AbstractRepository {

	@Query("select c from CommercialBanner c where c.id = ?1")
	CommercialBanner findOneById(int id);

	@Query("select c from CommercialBanner c")
	Collection<CommercialBanner> findMany();
}
