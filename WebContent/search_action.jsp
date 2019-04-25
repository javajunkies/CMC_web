<%@page language="java" import="CMC2.*,java.util.*"%>
<%UserInteraction ui = new UserInteraction();
String school = request.getParameter("school");
String state = request.getParameters("state");
String location = request.getParameters("location");
String control = request.getParameters("control");
int minStudents = Integer.parseInt(request.getParameters("minStudents"));
int maxStudents = Integer.parseInt(request.getParameters("maxStudents"));
double minPercentFemale = Double.parseDouble(request.getParameters("minPercentFemale"));
double maxPercentFemale = Double.parseDouble(request.getParameters("maxPercentFemale"));
double minSATVerbal = Double.parseDouble(request.getParameters("minSATVerbal"));
double maxSATVerbal = Double.parseDouble(request.getParameters("maxSATVerbal"));
double minSATMath = Double.parseDouble(request.getParameters("minSATMath"));
double maxSATMath = Double.parseDouble(request.getParameters("maxSATMath"));
double minExpenses = Double.parseDouble(request.getParameters("minExpenses"));
double maxExpenses = Double.parseDouble(request.getParameters("maxExpenses"));
double minPercentFinancialAid = Double.parseDouble(request.getParameters("minPercentFinancialAid"));
double maxPercentFinancialAid = Double.parseDouble(request.getParameters("maxPercentFinancialAid"));
int minNumberApplicants = Integer.parseInt(request.getParameters("minNumberApplicants"));
int maxNumberApplicants = Integer.parseInt(request.getParameters("maxNumberApplicants"));
double minPercentAdmitted = Double.parseDouble(request.getParameters("minPercentAdmitted"));
double maxPercentAdmitted = Double.parseDouble(request.getParameters("maxPercentAdmitted"));
double minPercentEnrolled = Double.parseDouble(request.getParameters("minPercentEnrolled"));
double maxPercentEnrolled = Double.parseDouble(request.getParameters("maxPercentEnrolled"));
int minAcademicsScale = Integer.parseInt(request.getParameters("minAcademicsScale"));
int maxAcademicsScale = Integer.parseInt(request.getParameters("maxAcademicsScale"));
int minSocialScale = Integer.parseInt(request.getParameters("minSocialScale"));
int maxSocialScale = Integer.parseInt(request.getParameters("maxSocialScale"));
int minQualityOfLife = Integer.parseInt(request.getParameters("minQualityOfLife"));
int maxQualityOfLife = Integer.parseInt(request.getParameters("maxQualityOfLife"));

ArrayList result = ui.searchUniversities(school, state, false , location, control, minStudents, maxStudents, minPercentFemale, maxPercentFemale, minSATVerbal, maxSATVerbal, minSATMath, maxSATMath, minExpenses, maxExpenses, minPercentFinancialAid, maxPercentFinancialAid, minNumberApplicants, maxNumberApplicants, minPercentAdmitted, maxPercentAdmitted, minPercentEnrolled, maxPercentEnrolled, minAcademicsScale, maxAcademicsScale, minSocialScale, maxSocialScale, minQualityOfLife, maxQualityOfLife);

%>