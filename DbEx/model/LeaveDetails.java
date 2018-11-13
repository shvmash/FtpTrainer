package com.hexaware.ftp08.model;
import java.util.Objects;
import java.sql.Date;
import java.util.List;
import com.hexaware.ftp08.persistence.DbConnection;
import com.hexaware.ftp08.persistence.LeaveDetailsDAO;
/**
 * Leave Details class to store employee leave details.
 * @author hexware
 */
public class LeaveDetails {
    /**
     * leaId to store leave id.
     */
  private int leaId;
    /**
     * leaStartDate to store leave start date.
     */
  private Date leaStartDate;
    /**
     * leaEndDate to store leave end date.
     */
  private Date leaEndDate;
    /**
     * noOfDays to store number of days.
     */
  private int leaNoOfDays;
    /**
     * leaReason to store employee leave reason.
     */
  private String leaReason;
    /**
     * leaType to store employee leave type.
     */
  private LeaveType leaType;
    /**
     * leaAppliedOn to store employee leave applied on.
     */
  private Date leaAppliedOn;
    /**
     * leaMgrComments to store employee leave manager comments.
     */
  private String leaMgrComments;
    /**
     * leaStatus to store employee leave status.
     */
  private LeaveStatus leaStatus;
    /**
     * leaStatus to store employee leave status.
     */
  private int emplId;
  @Override
  public final boolean equals(final Object ob) {
    if (ob == null) {
      return false;
    }
    if (getClass() != ob.getClass()) {
      return false;
    }
    LeaveDetails lea = (LeaveDetails) ob;
    if (Objects.equals(leaId, lea.leaId) && Objects.equals(leaStartDate, lea.leaStartDate)
        && Objects.equals(leaEndDate, lea.leaEndDate) && Objects.equals(leaNoOfDays, lea.leaNoOfDays)
        && Objects.equals(leaReason, lea.leaReason) && Objects.equals(leaType, lea.leaType)
        && Objects.equals(leaAppliedOn, lea.leaAppliedOn) && Objects.equals(leaMgrComments, lea.leaMgrComments)
        && Objects.equals(leaStatus, lea.leaStatus) && Objects.equals(emplId, lea.emplId)) {
      return true;
    }
    return false;
  }
  @Override
  public final int hashCode() {
    return Objects.hash(leaId, leaStartDate, leaEndDate,
    leaNoOfDays, leaReason, leaType, leaAppliedOn, leaMgrComments, leaStatus, emplId);
  }

  @Override
  public final String toString() {
    return "| leave id          |" + leaId + "\n| employee id       |"
            + emplId + "\n| start date        |" + leaStartDate + "\n| end date          |"
            + leaEndDate + "\n| number of days    |" + leaNoOfDays + "\n| leave reason      |"
            + leaReason + "\n| leave type        |" + leaType + "\n| leave applied on  |"
            + leaAppliedOn + "\n| manager comments  |" + leaMgrComments + "\n| leave status      |" + leaStatus;
  }

  /**
   * default constructor of LeaveDetails class.
   */
  public LeaveDetails() {

  }
  /**
   * @param argLeaId to initialize employee id.
   */
  public LeaveDetails(final int argLeaId) {
    this.leaId = argLeaId;
  }
  /**
  * @param argLeaId to initialize leave id.
  * @param argLeaStartDate to initialize leave start date.
  * @param argLeaEndDate to initialize leave end date.
  * @param argLeaNoOfDays to initialize leave number of days.
  * @param argLeaReason to initialize leave reason.
  * @param argLeaType to initialize leave type.
  * @param argLeaAppliedOn to initialize leave applied on.
  * @param argLeaMgrComments to initialize leave manager comments.
  * @param argLeaStatus to initialize leave status.
  * @param argEmplId to initialize employee id.
  */
  public LeaveDetails(final int argLeaId, final Date argLeaStartDate, final Date argLeaEndDate,
                        final int argLeaNoOfDays, final String argLeaReason, final LeaveType argLeaType,
                        final Date argLeaAppliedOn, final String argLeaMgrComments,
                        final LeaveStatus argLeaStatus, final int argEmplId) {
    this.leaId = argLeaId;
    this.leaStartDate = argLeaStartDate;
    this.leaEndDate = argLeaEndDate;
    this.leaNoOfDays = argLeaNoOfDays;
    this.leaReason = argLeaReason;
    this.leaType = argLeaType;
    this.leaAppliedOn = argLeaAppliedOn;
    this.leaMgrComments = argLeaMgrComments;
    this.leaStatus = argLeaStatus;
    this.emplId = argEmplId;
  }
  /**
  * The dao for Leave details.
  */
  private static LeaveDetailsDAO dao() {
    DbConnection db = new DbConnection();
    return db.getConnect().onDemand(LeaveDetailsDAO.class);
  }
  /**
  * list employee details by id.
  * @param empID id to get leave details.
  * @return LeaveDetails
  */
  /**
  * Gets the Leave Id.
  * @return this Employee's ID.
  */
  public final int getLeaId() {
    return leaId;
  }
  /**
  *
  * @param argLeaId to set leave id.
  */
  public final void setLeaId(final int argLeaId) {
    this.leaId = argLeaId;
  }
  /**
  * Gets the start date.
  * @return this start date.
  */
  public final Date getLeaStartDate() {
    return leaStartDate;
  }
  /**
  *
  * @param argLeaStartDate to set leave start date.
  */
  public final void setLeaStartDate(final Date argLeaStartDate) {
    this.leaStartDate = argLeaStartDate;
  }
  /**
  * Gets the Leave End Date.
  * @return this Leave End Date.
  */
  public final Date getLeaEndDate() {
    return leaEndDate;
  }
  /**
  *
  * @param argLeaEndDate to set leave end date.
  */
  public final void setLeaEndDate(final Date argLeaEndDate) {
    this.leaEndDate = argLeaEndDate;
  }
  /**
  * Gets the Leave Id.
  * @return this Employee's ID.
  */
  public final int getLeaNoOfDays() {
    return leaNoOfDays;
  }
  /**
  *
  * @param argLeaNoOfDays to set leave id.
  */
  public final void setLeaNoOfDays(final int argLeaNoOfDays) {
    this.leaNoOfDays = argLeaNoOfDays;
  }
  /**
  * Gets the Leave Reason.
  * @return this Reason for Leave.
  */
  public final String getLeaReason() {
    return leaReason;
  }
  /**
  *
  * @param argLeaReason to set leave reason.
  */
  public final void setLeaReason(final String argLeaReason) {
    this.leaReason = argLeaReason;
  }
  /**
  * Gets the Leave type.
  * @return this Leave Type.
  */
  public final LeaveType getLeaType() {
    return leaType;
  }
  /**
  *
  * @param argLeaType to set Leave Type.
  */
  public final void setLeaType(final LeaveType argLeaType) {
    this.leaType = argLeaType;
  }
  /**
  * Gets the Leave Applied on.
  * @return this Leave Applied on.
  */
  public final Date getLeaAppliedOn() {
    return leaAppliedOn;
  }
  /**
  *
  * @param argLeaAppliedOn to set Leave Applied on.
  */
  public final void setLeaAppliedOn(final Date argLeaAppliedOn) {
    this.leaAppliedOn = argLeaAppliedOn;
  }
  /**
  * Gets the Manager comments on leave.
  * @return this Manager comments on leave.
  */
  public final String getLeaMgrComments() {
    return leaMgrComments;
  }
  /**
  * @param argLeaMgrComments to set manager comments.
  */
  public final void setLeaMgrComments(final String argLeaMgrComments) {
    this.leaMgrComments = argLeaMgrComments;
  }
  /**
  * Gets the leave status.
  * @return this leave status.
  */
  public final LeaveStatus getLeaStatus() {
    return leaStatus;
  }
  /**
  *
  * @param argLeaStatus to set leave status.
  */
  public final void setLeaStatus(final LeaveStatus argLeaStatus) {
    this.leaStatus = argLeaStatus;
  }

  /**
  * Gets the emplId Id.
  * @return this Employee's ID.
  */
  public final int getEmplId() {
    return emplId;
  }
  /**
  * @param argEmplId to set employee id.
  */
  public final void setEmplId(final int argEmplId) {
    this.emplId = argEmplId;
  }
  /**
  * list all leave details.
  * @param empID for emp id
  * @return all leave details
  */
  public static LeaveDetails[] listLeaveDetails(final int empID) {

    List<LeaveDetails> ls = dao().lis(empID);
    return ls.toArray(new LeaveDetails[ls.size()]);
  }

  /**
  * list all pending details.
  * @param empID for emp id
  * @return all pending details
  */
  public static LeaveDetails[] listPendingApplications(final int empID) {
    List<LeaveDetails> ls2 = dao().finds(empID);
    return ls2.toArray(new LeaveDetails[ls2.size()]);
  }

  /**
  * list leave details by id.
  * @param leaId id to get employee details.
  * @return Employee
  */
  public static LeaveDetails listByLeaveId(final int leaId) {
    return dao().send(leaId);
  }
  /**
   * list leave detail by id.
   * @param leaId id to get leave details.
   * @param empMgrId id to get leave details.
   * @return LeaveDetail
   */
  public static LeaveDetails showApplication(final int leaId, final int empMgrId) {
    return dao().leaveApplication(leaId, empMgrId);
  }
  /**
  * approve the leave application.
  * @param leaId id to get leave details.
  * @param mgrComments id to update manager comments
  * @param employeeId employee id of the employee
  * @return String.
  */
  public static String approveLeave(final String mgrComments, final int leaId, final int employeeId) {
    String status = "APPROVED";
    LeaveDetails leav = listByLeaveId(leaId);
    Employee employee = Employee.listById(employeeId);
    if (leav.getLeaStatus() == LeaveStatus.DENIED) {
      int leaveBal = employee.getEmpLeaveBalance();
      int newLevBal = leaveBal - leav.getLeaNoOfDays();
      dao().approve(mgrComments, status, leaId, employeeId);
      dao().leaveBal(newLevBal, employeeId);
    } else if (leav.getLeaStatus() == LeaveStatus.PENDING) {
      dao().approve(mgrComments, status, leaId, employeeId);
    }
    String s = "LEAVE IS APPROVED";
    return s;
  }

  /**
  * deny the leave application.
  * @param leaId id to get leave details.
  * @param mgrComments id to update manager comments.
  * @param employeeId employee id of the employee
  * @return String.
  */
  public static String denyLeave(final String mgrComments, final int leaId, final int employeeId) {
    LeaveDetails l = LeaveDetails.listByLeaveId(leaId);
    Employee employee = Employee.listById(employeeId);
    int leaveBal = employee.getEmpLeaveBalance();
    int newLeaveBal = leaveBal + l.getLeaNoOfDays();
    String status = "DENIED";
    dao().deny(mgrComments, status, leaId, employeeId);
    dao().leaveBal(newLeaveBal, employeeId);
    String s = "LEAVE IS DENIED";
    return s;
  }


}
