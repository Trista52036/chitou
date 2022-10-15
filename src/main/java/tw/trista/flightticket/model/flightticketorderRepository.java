package tw.trista.flightticket.model;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface flightticketorderRepository extends JpaRepository<flightticketorder, String> {

	@Query("from flightticketorder where lastname= :lastname")
	public List<flightticketorder> findByLastname(String lastname);
}

