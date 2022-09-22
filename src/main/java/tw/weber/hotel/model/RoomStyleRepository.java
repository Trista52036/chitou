package tw.weber.hotel.model;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface RoomStyleRepository extends JpaRepository<RoomStyle, Integer> {
	
//	@Query(value = "select * from hotel where ?1 like concat('%',?2,'%')",nativeQuery = true)
//	public List<Hotel> findAllByKey(String type,String key);
	
	public List<RoomStyle> findAllByHotel(Hotel hotel);
	
//	@Query("from Hotel where HotelID like concat('%',?1,'%')")
//	public List<Room> findAllByRoomIDIDContaining(String keyword);
//	public List<Room> findAllByNameContaining(String keyword);
//	public List<Room> findAllByAddressContaining(String keyword);
//	public List<Room> findAllByTypeContaining(String keyword);
//	public List<Room> findAllByIntroContaining(String keyword);
//	public List<Room> findAllByCountryContaining(String keyword);
//	public List<Room> findAllByPhoneContaining(String keyword);
//	public List<Room> findAllByStatusContaining(String keyword);
//	@Query("from Hotel where Capacity like concat('%',?1,'%')")
//	public List<Room> findAllByCapacity(String keyword);
//	public List<Room> findAllByOwnerContaining(String keyword);
//	@Query("from Hotel where AveragePrice like concat('%',?1,'%')")
//	public List<Room> findAllByAveragePriceContaining(String keyword);
}