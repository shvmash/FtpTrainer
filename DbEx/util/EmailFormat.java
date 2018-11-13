package com.hexaware.ftp08.util;

/**
 * @return String value.
 */
public final class EmailFormat {
  private EmailFormat() {

  }
  /**
   * @return String value.
   * @param userName initialize userName
   * @param message initialize message
   */
  public static String getActivationCodeEmail(final String userName, final String message) {
    return "Welcome" + userName + "!<br /><span style='color:green'>" + message + "</span><br/>";
  }
}
