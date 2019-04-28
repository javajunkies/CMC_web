<%@page language="java" import="CMC2.*,java.util.*"%>
<%UserInteraction ui = new UserInteraction();
String school = request.getParameter("school");
String state = request.getParameter("state");
String location = request.getParameter("location");
String control = request.getParameter("control");
int minStudents = Integer.parseInt(request.getParameter("minStudents"));
int maxStudents = Integer.parseInt(request.getParameter("maxStudents"));
double minPercentFemale = Double.parseDouble(request.getParameter("minPercentFemale"));
double maxPercentFemale = Double.parseDouble(request.getParameter("maxPercentFemale"));
double minSATVerbal = Double.parseDouble(request.getParameter("minSATVerbal"));
double maxSATVerbal = Double.parseDouble(request.getParameter("maxSATVerbal"));
double minSATMath = Double.parseDouble(request.getParameter("minSATMath"));
double maxSATMath = Double.parseDouble(request.getParameter("maxSATMath"));
double minExpenses = Double.parseDouble(request.getParameter("minExpenses"));
double maxExpenses = Double.parseDouble(request.getParameter("maxExpenses"));
double minPercentFinancialAid = Double.parseDouble(request.getParameter("minPercentFinancialAid"));
double maxPercentFinancialAid = Double.parseDouble(request.getParameter("maxPercentFinancialAid"));
int minNumberApplicants = Integer.parseInt(request.getParameter("minNumberApplicants"));
int maxNumberApplicants = Integer.parseInt(request.getParameter("maxNumberApplicants"));
double minPercentAdmitted = Double.parseDouble(request.getParameter("minPercentAdmitted"));
double maxPercentAdmitted = Double.parseDouble(request.getParameter("maxPercentAdmitted"));
double minPercentEnrolled = Double.parseDouble(request.getParameter("minPercentEnrolled"));
double maxPercentEnrolled = Double.parseDouble(request.getParameter("maxPercentEnrolled"));
int minAcademicsScale = Integer.parseInt(request.getParameter("minAcademicsScale"));
int maxAcademicsScale = Integer.parseInt(request.getParameter("maxAcademicsScale"));
int minSocialScale = Integer.parseInt(request.getParameter("minSocialScale"));
int maxSocialScale = Integer.parseInt(request.getParameter("maxSocialScale"));
int minQualityOfLife = Integer.parseInt(request.getParameter("minQualityOfLife"));
int maxQualityOfLife = Integer.parseInt(request.getParameter("maxQualityOfLife"));

ArrayList result = ui.searchUniversities(school, state, false , location, control, minStudents, maxStudents, minPercentFemale, maxPercentFemale, minSATVerbal, maxSATVerbal, minSATMath, maxSATMath, minExpenses, maxExpenses, minPercentFinancialAid, maxPercentFinancialAid, minNumberApplicants, maxNumberApplicants, minPercentAdmitted, maxPercentAdmitted, minPercentEnrolled, maxPercentEnrolled, minAcademicsScale, maxAcademicsScale, minSocialScale, maxSocialScale, minQualityOfLife, maxQualityOfLife);

%>