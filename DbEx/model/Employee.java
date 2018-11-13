package com.hexaware.ftp08.model;

import com.hexaware.ftp08.persistence.DbConnection;
import com.hexaware.ftp08.persistence.EmployeeDAO;

import java.util.Objects;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.Calendar;

/**
 * Employee class to store employee personal details.
 * @author hexware
 */
public class Employee {

  /**
   * empId to store employee id.
   */
  private int empId;

  /**
   * empName to store employee name.
   */

  private String empName;

  /**
   * empEmail to store employee email.
   */
  private String empEmail;

  /**
   * empMobNo to store employee mobile number.
   */
  private long empMobNo;

   /**
   * empDptName to store employee department name.
   */
  private String empDptName;

   /**
   * empDateJoined to store employee date of joining.
   */
  private String empDateJoined;

   /**
   * empMgrId to store employee manager id.
   */
  private int empMgrId;

   /**
   * empLeaveBalance to store employee leave balance.
   */
  private int empLeaveBalance;

  @Override
  public final boolean equals(final Object ob) {
    if (ob == null) {
      return false;
    }
    if (getClass() != ob.getClass()) {
      return false;
    }
    Employee emp = (Employee) ob;
    if (Objects.equals(empId, emp.empId) && Objects.equals(empName, emp.empName)
        && Objects.equals(empEmail, emp.empEmail) && Objects.equals(empMobNo, emp.empMobNo)
        && Objects.equals(empDptName, emp.empDptName) && Objects.equals(empMgrId, emp.empMgrId)
        && Objects.equals(empLeaveBalance, emp.empLeaveBalance)) {
      return true;
    }
    return false;
  }
  @Override
  public final int hashCode() {
    return Objects.hash(empId, empName, empEmail,
    empMobNo, empDptName, empMgrId, empLeaveBalance);
  }

  /**
   * @param argEmpId to initialize employee id.
   */
  public Employee(final int argEmpId) {
    this.empId = argEmpId;
  }

  /**
   * @param argEmpId to initialize employee id.
   * @param argEmpName to initialize employee name.
   * @param argEmpEmail to initialize employee email.
   * @param argEmpMobNo to initialize employee mobile number.
   * @param argEmpDptName to initialize employee department name.
   * @param argEmpMgrId to initialize employee manager id.
   * @param argEmpLeaveBalance to initialize employee leave balance.
   */
  public Employee(final int argEmpId, final String argEmpName, final String argEmpEmail,
                  final long argEmpMobNo, final String argEmpDptName,
                  final int argEmpMgrId, final int argEmpLeaveBalance) {
    this.empId = argEmpId;
    this.empName = argEmpName;
    this.empEmail = argEmpEmail;
    this.empMobNo = argEmpMobNo;
    this.empDptName = argEmpDptName;
    this.empMgrId = argEmpMgrId;
    this.empLeaveBalance = argEmpLeaveBalance;

  }

  /**
   * Gets the EmployeeId.
   * @return this Employee's ID.
   */
  public final int getEmpId() {
    return empId;
  }

  /**
   *
   * @param argEmpId to set employee id.
   */
  public final void setEmpId(final int argEmpId) {
    this.empId = argEmpId;
  }

  /**
   * Gets the EmployeeName.
   * @return this Employee's name.
   */
  public final String getEmpName() {
    return empName;
  }

  /**
   *
   * @param argEmpName to set employee name.
   */
  public final void setEmpName(final String argEmpName) {
    this.empName = argEmpName;
  }

  /**
   * Gets the EmployeeEmail.
   * @return this Employee's Email.
   */
  public final String getEmpEmail() {
    return empEmail;
  }

  /**
   *
   * @param argEmpEmail to set employee Email.
   */
  public final void setEmpEmail(final String argEmpEmail) {
    this.empEmail = argEmpEmail;
  }

  /**
   * Gets the EmployeeMobNo.
   * @return this Employee's Mobile number.
   */
  public final long getEmpMobNo() {
    return empMobNo;
  }

  /**
   *
   * @param argEmpMobNo to set employee mobile Number.
   */
  public final void setEmpMobNo(final long argEmpMobNo) {
    this.empMobNo = argEmpMobNo;
  }

  /**
   * Gets the EmployeeDptName.
   * @return this Employee's department Name.
   */
  public final String getEmpDptName() {
    return empDptName;
  }

  /**
   *
   * @param argEmpDptName to set employee Department Name.
   */
  public final void setEmpDptName(final String argEmpDptName) {
    this.empDptName = argEmpDptName;
  }

  /**
   * Gets the EmployeeDateJoined.
   * @return this Employee's Date Joined.
   */
  public final String getEmpDateJoined() {
    return empDateJoined;
  }

  /**
   *
   * @param argEmpDateJoined to set employee DateJoined.
   */
  public final void setEmpDateJoined(final String argEmpDateJoined) {
    this.empDateJoined = argEmpDateJoined;
  }

  /**
   * Gets the EmployeeMgrId.
   * @return this Employee's Manager Id.
   */
  public final int getEmpMgrId() {
    return empMgrId;
  }

  /**
   *
   * @param argEmpMgrId to set employee Manager Id.
   */
  public final void setEmpMgrId(final int argEmpMgrId) {
    this.empMgrId = argEmpMgrId;
  }

  /**
   * Gets the EmployeeLeaveBalance.
   * @return this Employee's Leave Balance.
   */
  public final int getEmpLeaveBalance() {
    return empLeaveBalance;
  }

  /**
   *
   * @param argEmpLeaveBalance to set employee Leave Balance.
   */
  public final void setEmpLeaveBalance(final int argEmpLeaveBalance) {
    this.empLeaveBalance = argEmpLeaveBalance;
  }

  /**
   * The dao for employee.
   */
  private static EmployeeDAO dao() {
    DbConnection db = new DbConnection();
    return db.getConnect().onDemand(EmployeeDAO.class);
  }

  /**
   * list all employee details.
   * @return all employees' details
   */
  public static Employee[] listAll() {

    List<Employee> es = dao().list();
    return es.toArray(new Employee[es.size()]);
  }

  /**
   * list employee details by id.
   * @param empID id to get employee details.
   * @return Employee
   */
  public static Employee listById(final int empID) {
    return dao().find(empID);
  }

    /**
   * insert employee leave details.
   * @param dt3 to get employee details.
   * @param dt4 to get employee details..
   * @throws ParseException throws Parse Exception
   * @return workdays which returns String value
   */
  public static int getWorkingDaysBetweenTwoDates(final String dt3, final String  dt4) throws ParseException {
    java.util.Date startData = new SimpleDateFormat("yyyy/MM/dd").parse(dt3);
    java.util.Date endData = new SimpleDateFormat("yyyy/MM/dd").parse(dt4);

    Calendar startCal = Calendar.getInstance();
    startCal.setTime(startData);
    Calendar startCalc = Calendar.getInstance();
    startCalc.setTime(startData);
    Calendar endCal = Calendar.getInstance();
    endCal.setTime(endData);
    int workDays = 1;
    int holiDays = 0;
    TreeMap<Integer, String> hm = new TreeMap<Integer, String>();
    hm.put(1, "2018/01/01");
    hm.put(2, "2018/02/01");
    hm.put(3, "2018/03/01");
    hm.put(4, "2018/04/01");
    hm.put(5, "2018/05/01");
    hm.put(6, "2018/06/01");
    hm.put(7, "2018/07/01");
    hm.put(8, "2018/08/01");
    hm.put(8, "2018/09/01");
    hm.put(8, "2018/10/01");
    hm.put(8, "2018/11/01");
    hm.put(8, "2018/12/01");
    while (startCalc.getTimeInMillis() <= endCal.getTimeInMillis()) {
      for (Map.Entry m:hm.entrySet()) {
        String holiday = (String) m.getValue();
        Calendar tholiday = Calendar.getInstance();
        java.util.Date dholiday = new SimpleDateFormat("yyyy/MM/dd").parse(holiday);
        tholiday.setTime(dholiday);
        if (startCalc.getTime().equals(tholiday.getTime()) && startCalc.get(Calendar.DAY_OF_WEEK) != Calendar.SATURDAY
            && startCalc.get(Calendar.DAY_OF_WEEK) != Calendar.SUNDAY) {
          ++holiDays;
        }
      } startCalc.add(Calendar.DAY_OF_MONTH, 1);
    }


    if (startCal.getTimeInMillis() == endCal.getTimeInMillis()) {
      return 1;
    }
    if (startCal.getTimeInMillis() > endCal.getTimeInMillis()) {
      startCal.setTime(endData);
      endCal.setTime(startData);
    }
    do {
      startCal.add(Calendar.DAY_OF_MONTH, 1);
      if (startCal.get(Calendar.DAY_OF_WEEK) != Calendar.SATURDAY
          && startCal.get(Calendar.DAY_OF_WEEK) != Calendar.SUNDAY) {
        ++workDays;
      }
    } while (startCal.getTimeInMillis() < endCal.getTimeInMillis());
    workDays = workDays - holiDays;
    return workDays;

  }

  /**
   * insert employee leave details.
   * @param startDate to get employee details.
   * @param endDate to get employee details.
   * @param reason to get employee reason.
   * @param argEmpId to get employee id.
   * @param days to get leave number of days.
   * @throws ParseException throws Parse Exception
   * @return s which returns String value
   */
  public static final String check(final String startDate, final String endDate,
                            final String reason, final int argEmpId, final int days) {
    String s = null;
    Employee employee = Employee.listById(argEmpId);
    int leaveBal = employee.getEmpLeaveBalance();
    if (leaveBal > 0) {
      int newLeaveBal = leaveBal - days;
      int empMgr;
      empMgr = employee.getEmpMgrId();
      if (days < employee.getEmpLeaveBalance()) {
        //s = "Applied";
        s = Employee.applyLeave(startDate, endDate, empMgr, reason, argEmpId, days, newLeaveBal);
      } else {
        s = "Leave balance is not sufficient";
        System.out.println("Sorry, No sufficient leave Balance available");
        //CliMain.callMain();
      }
    }
    return s;
  }

  /**
 * insert employee leave details.
 * @param startDate to get employee details.
 * @param endDate to get employee details.
 * @param reason to get employee reason.
 * @param argempId to get employee id.
 * @param days to get leave number of days.
 * @param empMgr to get leave number of days.
 * appliedDate for inserting applied on Date
 * @param leaveBal to get the leave balance.
 * diff for calculating difference between dates
 * numberOfDays to store number of days
 * @throws ParseException throws Parse Exception
 * @return applied.
 */
  public static final String applyLeave(final String startDate, final String endDate, final int empMgr,
                                 final String reason, final int argempId, final int days, final int leaveBal) {
    String s = null;
    try {
      java.util.Date dt1 = new SimpleDateFormat("yyyy/MM/dd").parse(startDate);
      java.sql.Date sDate = new java.sql.Date(dt1.getTime());
      java.util.Date dt2 = new SimpleDateFormat("yyyy/MM/dd").parse(endDate);
      java.sql.Date eDate = new java.sql.Date(dt2.getTime());
      //long diff = dt2.getTime() - dt1.getTime();
      //int numberOfDays = (int) TimeUnit.DAYS.convert(diff, TimeUnit.MILLISECONDS);
      int numberOfDays = getWorkingDaysBetweenTwoDates(startDate, endDate);
      java.sql.Date appliedDate = new java.sql.Date(new java.util.Date().getTime());
      LeaveDetails[] leaDetails = LeaveDetails.listLeaveDetails(argempId);
      for (LeaveDetails l : leaDetails) {
        if ((sDate.before(l.getLeaEndDate()) || sDate.equals(l.getLeaEndDate()))
            && (eDate.after(l.getLeaStartDate()) || eDate.equals(l.getLeaStartDate()))) {
          System.out.println("Dates are overlapping, you are already applied in this range");
          s = "Dates are overlapping, you are already applied in this range";
          return s;
        }
      }
      if (sDate.after(appliedDate) && eDate.after(appliedDate) && (eDate.after(sDate) || eDate.equals(sDate))
          && days == numberOfDays) {
        dao().insert(sDate, eDate, numberOfDays, appliedDate, reason, argempId);
        dao().leaveBal(leaveBal, argempId);
        if (empMgr != 0) {
          s = "Your request is forwarded to manager";
          System.out.println("Your request is forwarded to manager");
          return s;
        } else if (empMgr == 0) {
          dao().autoApproved(argempId);
          s = "Your request is auto approved";
          System.out.println("Your request is auto approved");
          return s;
        }
      } else {
        System.out.println("Either Start date or End date is incorrect: Please enter correct dates");
        s = "please enter correct dates";
      }

    } catch (ParseException e) {
      System.out.println("Please enter date in correct format");
      s = "Please enter date in correct format";
    }
    return s;
  }

  /**
  * list the manager id.
  * @return this list
  * @param empId to get employee id.
  */
  public static Employee listManager(final int empId) {
    return dao().listMgr(empId);
  }

  /**
  * list the manager id for that specific id.
  * @return this list
  * @param empId to get employee id.
  */
  public static Employee specificManager(final int empId) {
    return dao().listMgr1(empId);
  }
}
