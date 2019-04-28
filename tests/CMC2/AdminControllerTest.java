package CMC2;

import static org.junit.Assert.*;


import org.junit.Before;
import org.junit.AfterClass;
import org.junit.Test;

import CMC2.AdminController;
import CMC2.DBController;

/**
 * @author dkuhr001
 *
 */

public class AdminControllerTest {
	//@BeforeClass
	private AdminController ac;
	private static DBController db;
	/**
	 * @throws java.lang.Exception
	 */
	@Before
	public void setUp() throws Exception {
		ac = new AdminController();
		db = new DBController();
		db.createUser("Test", "FakeUser", "adminconttest", "Password1", 'u');
	}

	@Test
	public void testLoginValid() {
		int login = ac.login("adminconttest","Password1");
		assertEquals("Login Successful",0,login);
		
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testLoginIncorrectUsername() {
		ac.login("juserssss","user");
		
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testLoginIncorrectPassword() {
		ac.login("juser","user22");
		
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testLoginInactiveUser() {
		db.deactivateUser("juser");
		ac.login("juser","user");
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testLoginTemporaryAccount() {
		db.registerNewUser("dane","kuhr","dkuhr","danekuhr1234");
		ac.login("dkuhr","danekuhr1234");
	}
	

	@Test
	public void testLogoff() {
		ac.logoff();
	}
	
	
	
	
	@Test
	public void testViewUniversities() {
		ac.viewUniversities();
	}

	@Test
	public void testRemoveUniversity() {
		int remove = ac.removeUniversity("AUGSBURG");
		assertTrue("University removed", remove != 0 && remove!=-1);
		ac.addUniversity("AUGSBURG", "MINNESOTA", "SMALL-CITY", "PRIVATE" , 10000, 43, 420, 490, 29991, 80, 4000, 85, 50, 1, 3, 4);
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testRemoveUniversityInvalid() {
		ac.removeUniversity("hdfh57");
		}
	
	
	
	
	@Test
	public void testAddUniversity() {
		int add = ac.addUniversity("ADDED", "MINNESOTA", "SMALL-CITY", "PRIVATE", 555,
	            44, 342, 456, 6653, 
	            66, 6688, 88, 
	            55, 4, 3, 1);
		assertTrue("University added.", add > 0);
		ac.removeUniversity("ADDED");
		
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testAddUniversityInvalidSchool() {
		int expected = 0;
		int actual = ac.addUniversity("AUGSBURG", "MINNESOTA", "SMALL-CITY", "PRIVATE", 555,
	            44, 342, 456, 6653, 
	            66, 6688, 88, 
	            55, 4, 3, 1);
		assertTrue("Null State expected.", expected == actual);
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testAddUniversityNullState() {
		int expected = 0;
		int actual = ac.addUniversity("Asdjfh", "", "SMALL-CITY", "PRIVATE", 555,
	            44, 342, 456, 6653, 
	            66, 6688, 88, 
	            55, 4, 3, 1);
		assertTrue("Null State expected.", expected == actual);
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testAddUniversityNullLocation() {
		int expected = 0;
		int actual = ac.addUniversity("Asdjfh", "MINN", "", "PRIVATE", 555,
	            44, 342, 456, 6653, 
	            66, 6688, 88, 
	            55, 4, 3, 1);
		assertTrue("Null State expected.", expected == actual);
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testAddUniversityNullControl() {
		int expected = 0;
		int actual = ac.addUniversity("Asdjfh", "MINNN", "SMALL-CITY", "", 555,
	            44, 342, 456, 6653, 
	            66, 6688, 88, 
	            55, 4, 3, 1);
		assertTrue("Null State expected.", expected == actual);
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testAddUniversityInvalidNumStudents() {
		int expected = 0;
		int actual = ac.addUniversity("Asdjfh", "MINNN", "SMALL-CITY", "PRIVATE", -5,
	            44, 342, 456, 6653, 
	            66, 6688, 88, 
	            55, 4, 3, 1);
		assertTrue("Null State expected.", expected == actual);
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testAddUniversityInvalidPercentFemale() {
		int expected = 0;
		int actual = ac.addUniversity("Asdjfh", "MINNN", "SMALL-CITY", "PRIVATE", 555,
	            -445, 342, 456, 6653, 
	            66, 6688, 88, 
	            55, 4, 3, 1);
		assertTrue("Null State expected.", expected == actual);
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testAddUniversityInvalidSATVerbal() {
		int expected = 0;
		int actual = ac.addUniversity("Asdjfh", "MINNN", "SMALL-CITY", "PRIVATE", 555,
	            44, -342, 456, 6653, 
	            66, 6688, 88, 
	            55, 4, 3, 1);
		assertTrue("Null State expected.", expected == actual);
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testAddUniversityInvalidSATMath() {
		int expected = 0;
		int actual = ac.addUniversity("Asdjfh", "MINNN", "SMALL-CITY", "PRIVATE", 555,
	            445, 342, -456, 6653, 
	            66, 6688, 88, 
	            55, 4, 3, 1);
		assertTrue("Null State expected.", expected == actual);
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testAddUniversityInvalidExpenses() {
		int expected = 0;
		int actual = ac.addUniversity("Asdjfh", "MINNN", "SMALL-CITY", "PRIVATE", 555,
	            44, 342, 456, -6653, 
	            66, 6688, 88, 
	            55, 4, 3, 1);
		assertTrue("Null State expected.", expected == actual);
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testAddUniversityInvalidPercentFinancialAid() {
		int expected = 0;
		int actual = ac.addUniversity("Asdjfh", "MINNN", "SMALL-CITY", "PRIVATE", 555,
	            44, 342, 456, 6653, 
	            660, 6688, 88, 
	            55, 4, 3, 1);
		assertTrue("Null State expected.", expected == actual);
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testAddUniversityInvalidNumberOfApplicants() {
		int expected = 0;
		int actual = ac.addUniversity("Asdjfh", "MINNN", "SMALL-CITY", "PRIVATE", 555,
	            44, 342, 456, 6653, 
	            66, -6688, 88, 
	            55, 4, 3, 1);
		assertTrue("Null State expected.", expected == actual);
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testAddUniversityInvalidPercentAdmitted() {
		int expected = 0;
		int actual = ac.addUniversity("Asdjfh", "MINNN", "SMALL-CITY", "PRIVATE", 555,
	            44, 342, 456, 6653, 
	            66, 6688, 881, 
	            55, 4, 3, 1);
		assertTrue("Null State expected.", expected == actual);
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testAddUniversityInvalidPercentEnrolled() {
		int expected = 0;
		int actual = ac.addUniversity("Asdjfh", "MINNN", "SMALL-CITY", "PRIVATE", 555,
	            44, 342, 456, 6653, 
	            66, 6688, 88, 
	            -55, 4, 3, 1);
		assertTrue("Null State expected.", expected == actual);
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testAddUniversityInvalidAcademicsScale() {
		int expected = 0;
		int actual = ac.addUniversity("Asdjfh", "MINNN", "SMALL-CITY", "PRIVATE", 555,
	            44, 342, 456, 6653, 
	            66, 6688, 88, 
	            55, 74, 3, 1);
		assertTrue("Null State expected.", expected == actual);
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testAddUniversityInvalidSocialScale() {
		int expected = 0;
		int actual = ac.addUniversity("Asdjfh", "MINNN", "SMALL-CITY", "PRIVATE", 555,
	            44, 342, 456, 6653, 
	            66, 6688, 88, 
	            55, 4, 32, 1);
		assertTrue("Null State expected.", expected == actual);
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testAddUniversityInvalidQualityOfLifeScale() {
		int expected = 0;
		int actual = ac.addUniversity("Asdjfh", "MINNN", "SMALL-CITY", "PRIVATE", 555,
	            44, 342, 456, 6653, 
	            66, 6688, 88, 
	            55, 7, 3, -1);
		assertTrue("Invalid scale expected.", expected == actual);
	}
	
	
	
	
	
	
	
	
	@Test
	public void testEditUniversity() {
		int add = ac.editUniversity("AUGSBURG", "MINNESOTA", "SMALL-CITY", "PRIVATE", 555,
	            44, 342, 456, 6653, 
	            66, 6688, 88, 
	            55, 4, 3, 4);
		assertTrue("University edited.", add > 0);
		ac.editUniversity("AUGSBURG", "MINNESOTA", "SMALL-CITY", "PRIVATE", 555,
	            44, 342, 456, 6653, 
	            66, 6688, 88, 
	            55, 4, 3, 1);
		
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testEditUniversityInvalidSchool() {
		ac.editUniversity("", "MINNESOTA", "SMALL-CITY", "PRIVATE", 555,
	            44, 342, 456, 6653, 
	            66, 6688, 88, 
	            55, 4, 3, 1);
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testEditUniversityNullState() {
		ac.editUniversity("Asdjfh", "", "SMALL-CITY", "PRIVATE", 555,
	            44, 342, 456, 6653, 
	            66, 6688, 88, 
	            55, 4, 3, 1);
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testEditUniversityNullLocation() {
		ac.editUniversity("Asdjfh", "MINN", "", "PRIVATE", 555,
	            44, 342, 456, 6653, 
	            66, 6688, 88, 
	            55, 4, 3, 1);
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testEditUniversityNullControl() {
		ac.editUniversity("Asdjfh", "MINNN", "SMALL-CITY", "", 555,
	            44, 342, 456, 6653, 
	            66, 6688, 88, 
	            55, 4, 3, 1);
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testEditUniversityInvalidNumStudents() {
		ac.editUniversity("Asdjfh", "MINNN", "SMALL-CITY", "PRIVATE", -5,
	            44, 342, 456, 6653, 
	            66, 6688, 88, 
	            55, 4, 3, 1);
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testEditUniversityInvalidPercentFemale() {
		ac.editUniversity("Asdjfh", "MINNN", "SMALL-CITY", "PRIVATE", 555,
	            -445, 342, 456, 6653, 
	            66, 6688, 88, 
	            55, 4, 3, 1);
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testEditUniversityInvalidSATVerbal() {
		ac.editUniversity("Asdjfh", "MINNN", "SMALL-CITY", "PRIVATE", 555,
	            44, -342, 456, 6653, 
	            66, 6688, 88, 
	            55, 4, 3, 1);
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testEditUniversityInvalidSATMath() {
		ac.editUniversity("Asdjfh", "MINNN", "SMALL-CITY", "PRIVATE", 555,
	            445, 342, -456, 6653, 
	            66, 6688, 88, 
	            55, 4, 3, 1);
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testEditUniversityInvalidExpenses() {
		ac.editUniversity("Asdjfh", "MINNN", "SMALL-CITY", "PRIVATE", 555,
	            44, 342, 456, -6653, 
	            66, 6688, 88, 
	            55, 4, 3, 1);
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testEditUniversityInvalidPercentFinancialAid() {
		ac.editUniversity("Asdjfh", "MINNN", "SMALL-CITY", "PRIVATE", 555,
	            44, 342, 456, 6653, 
	            660, 6688, 88, 
	            55, 4, 3, 1);
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testEditUniversityInvalidNumberOfApplicants() {
		ac.editUniversity("Asdjfh", "MINNN", "SMALL-CITY", "PRIVATE", 555,
	            44, 342, 456, 6653, 
	            66, -6688, 88, 
	            55, 4, 3, 1);
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testEditUniversityInvalidPercentAdmitted() {
		ac.editUniversity("Asdjfh", "MINNN", "SMALL-CITY", "PRIVATE", 555,
	            44, 342, 456, 6653, 
	            66, 6688, 881, 
	            55, 4, 3, 1);
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testEditUniversityInvalidPercentEnrolled() {
		ac.editUniversity("Asdjfh", "MINNN", "SMALL-CITY", "PRIVATE", 555,
	            44, 342, 456, 6653, 
	            66, 6688, 88, 
	            -55, 4, 3, 1);
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testEditUniversityInvalidAcademicsScale() {
		ac.editUniversity("Asdjfh", "MINNN", "SMALL-CITY", "PRIVATE", 555,
	            44, 342, 456, 6653, 
	            66, 6688, 88, 
	            55, 74, 3, 1);
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testEditUniversityInvalidSocialScale() {
		ac.editUniversity("Asdjfh", "MINNN", "SMALL-CITY", "PRIVATE", 555,
	            44, 342, 456, 6653, 
	            66, 6688, 88, 
	            55, 4, 32, 1);
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testEditUniversityLowQualityOfLifeScale() {
		ac.editUniversity("Asdjfh", "MINNN", "SMALL-CITY", "PRIVATE", 555,
	            44, 342, 456, 6653, 
	            66, 6688, 88, 
	            55, 7, 3, -1);
	}
	
	
	
	@Test
	public void testEditUser() {
		int expected = 1;
		int actual = ac.editUser("adminconttest", "First", "Last1", "password1", 'u', 'Y');
		assertEquals(expected, actual);

	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testEditUserNotUniqueUsername() {
		
		int edit = ac.editUser("ladmin", "First", "Last1", "user", 'u', 'Y');
		assertTrue("Not edited", edit <=0);
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testEditUserInvalidPassword() {
		int edit = ac.editUser("juser", "First", "Last1", "u", 'u', 'Y');
		assertTrue("Not edited", edit <=0);
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testEditUserInvalidStatus() {
		int edit = ac.editUser("juser", "First", "Last1", "user", 'u', 'T');
		assertTrue("Not edited", edit <=0);
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testEditUserInvalidType() {
		int edit = ac.editUser("juser", "First", "Last1", "user", 'w', 'Y');
		assertTrue("Not edited", edit <=0);
	}
	
	
	

	
	
	@Test
	public void testIsUniqueUsername() {
		boolean unique = ac.isUniqueUsername("juser123");
		assertTrue("Username is not unique.", unique == true);

	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testIsUniqueUsernameNullUsername() {
		ac.isUniqueUsername("");
	}
	
	
	
	
	
	
	@Test

	public void testAddUser() {
		int add = ac.addNewUser("First", "Last1", "userAdded", "password1", 'u');
		assertTrue("User added.", add > 0);
		ac.deleteUser("userAdded");
	}
	
	

	@Test(expected = IllegalArgumentException.class)
	public void testAddUserNotUniqueUsername() {
		ac.addNewUser("First", "Last1", "nadmin", "password1", 'u');
	}


	@Test(expected = IllegalArgumentException.class)
	public void testAddUserInvalidPassword() {
		ac.addNewUser("First", "Last1", "tester", "er", 'u');
	}


	@Test(expected = IllegalArgumentException.class)
	public void testAddUserInvalidType() {
		ac.addNewUser("First", "Last1", "tester2", "password1", 'r');
	}

	
	
	
	public void testViewUserInfo() {
		ac.viewUserInfo("juser");
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testViewUserInfoInvalidUsername() {
		ac.viewUserInfo("john");
	}
	
	
	
	@Test
	public void testDeactivateUser() {
		db.createUser("T", "R", "FAKER", "Password1", 'u');
		int deactivate = ac.deactivateUser("FAKER");
		assertEquals(deactivate, 1);
	}
	
	
	@Test
	public void testDeleteUser() {
		db.createUser("T", "R", "FAKER", "Password1", 'u');
		int expected = 1;
		int actual = ac.deleteUser("FAKER");
		assertEquals(expected, actual);

	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testDeleteUserInvalidUsername() {
		ac.deleteUser("abcd");
	}
	
	
	@AfterClass
	public static void setUpAfterClass()  {
		db.deleteUser("dkuhr");
		db.deleteUser("adminconttest");
		db.deleteUser("FAKER");
	}	
}




