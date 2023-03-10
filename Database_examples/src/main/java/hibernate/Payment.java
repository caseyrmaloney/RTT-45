package hibernate;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Entity
@EqualsAndHashCode
@Table(name = "payments")  // BAM !!! Justin
public class Payment {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Integer id;

	
	@Column(name = "customer_id", insertable=false, updatable=false)
	private Integer customerId;

	@ToString.Exclude
	@EqualsAndHashCode.Exclude
	@ManyToOne(fetch = FetchType.EAGER, optional = false, cascade = CascadeType.ALL)
	@JoinColumn(name = "customer_id", nullable = false)
	private Customer customer;

	@Column(name = "check_number")
	private String checkNumber;

	@Column(name = "payment_date")
	@Temporal(TemporalType.DATE)
	private Date paymentDate;

	
	@Column(name = "amount", columnDefinition = "decimal", precision = 10, scale = 2)
	private Double amount;

}