package tw.weber.hotel.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "reservation")
public class Reservation{

	@Id
	@Column(name = "reservationid")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int reservationID;
	
	@Column(name = "orderid")
	private String orderId;
	
	@Column(name = "memberid")
	private int memberID;
	
	private String booker;
	
	private String email;
	
	private String phone;
	
	@Column(name = "roomid")
	private String roomID;
	
	@Column(name = "roomname")
	private String roomName;
	
	@Column(name = "checkindate")
	private String checkInDate;
	
	@Column(name = "checkoutdate")
	private String checkOutDate;
	
	@Column(name = "paymentdate")
	private String paymentDate;
	
	@Column(name = "addbed")
	private String addBed;
	
	@Column(name = "numberofpeople")
	private int numberOfPeople;
	
	@Column(name = "hotelname")
	private String hotelName;
	
	@Column(name = "orderstatus")
	private String orderStatus;
	
	@Column(name = "hotelid")
	private Integer hotelID;
	
	@Transient
	private String totalAmount;
	
	public Reservation() {
		
	}
	
	public Reservation(int reservationID, int memberID, String booker, String email, String phone, String roomID,
			String roomName, String checkInDate, String checkOutDate, String paymentDate, String addBed,
			int numberOfPeople, String hotelName) {
		super();
		this.reservationID = reservationID;
		this.memberID = memberID;
		this.booker = booker;
		this.email = email;
		this.phone = phone;
		this.roomID = roomID;
		this.roomName = roomName;
		this.checkInDate = checkInDate;
		this.checkOutDate = checkOutDate;
		this.paymentDate = paymentDate;
		this.addBed = addBed;
		this.numberOfPeople = numberOfPeople;
		this.hotelName = hotelName;
	}

	public Reservation(int reservationID, String orderId, int memberID, String booker, String email, String phone,
			String roomID, String roomName, String checkInDate, String checkOutDate, String paymentDate, String addBed,
			int numberOfPeople, String hotelName, String orderStatus, Integer hotelID) {
		super();
		this.reservationID = reservationID;
		this.orderId = orderId;
		this.memberID = memberID;
		this.booker = booker;
		this.email = email;
		this.phone = phone;
		this.roomID = roomID;
		this.roomName = roomName;
		this.checkInDate = checkInDate;
		this.checkOutDate = checkOutDate;
		this.paymentDate = paymentDate;
		this.addBed = addBed;
		this.numberOfPeople = numberOfPeople;
		this.hotelName = hotelName;
		this.orderStatus = orderStatus;
		this.hotelID = hotelID;
	}

	public int getReservationID() {
		return reservationID;
	}

	public void setReservationID(int reservationID) {
		this.reservationID = reservationID;
	}

	public int getMemberID() {
		return memberID;
	}

	public void setMemberID(int memberID) {
		this.memberID = memberID;
	}

	public String getBooker() {
		return booker;
	}

	public void setBooker(String booker) {
		this.booker = booker;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getRoomID() {
		return roomID;
	}

	public void setRoomID(String roomID) {
		this.roomID = roomID;
	}

	public String getRoomName() {
		return roomName;
	}

	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}

	public String getCheckInDate() {
		return checkInDate;
	}

	public void setCheckInDate(String checkInDate) {
		this.checkInDate = checkInDate;
	}

	public String getCheckOutDate() {
		return checkOutDate;
	}

	public void setCheckOutDate(String checkOutDate) {
		this.checkOutDate = checkOutDate;
	}

	public String getPaymentDate() {
		return paymentDate;
	}

	public void setPaymentDate(String paymentDate) {
		this.paymentDate = paymentDate;
	}

	public String getAddBed() {
		return addBed;
	}

	public void setAddBed(String addBed) {
		this.addBed = addBed;
	}

	public int getNumberOfPeople() {
		return numberOfPeople;
	}

	public void setNumberOfPeople(int numberOfPeople) {
		this.numberOfPeople = numberOfPeople;
	}

	public String getHotelName() {
		return hotelName;
	}

	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}

	public String getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(String totalAmount) {
		this.totalAmount = totalAmount;
	}
	
	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public String getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}
	
	public Integer getHotelID() {
		return hotelID;
	}

	public void setHotelID(Integer hotelID) {
		this.hotelID = hotelID;
	}

	@Override
	public String toString() {
		return "Reservation [reservationID=" + reservationID + ", orderId=" + orderId + ", memberID=" + memberID
				+ ", booker=" + booker + ", email=" + email + ", phone=" + phone + ", roomID=" + roomID + ", roomName="
				+ roomName + ", checkInDate=" + checkInDate + ", checkOutDate=" + checkOutDate + ", paymentDate="
				+ paymentDate + ", addBed=" + addBed + ", numberOfPeople=" + numberOfPeople + ", hotelName=" + hotelName
				+ ", orderStatus=" + orderStatus + ", hotelID=" + hotelID + ", totalAmount=" + totalAmount + "]";
	}


	

	
	

	
	
}
