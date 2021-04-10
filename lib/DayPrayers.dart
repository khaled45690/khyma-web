class DayPrayers{
  String Fajr;
  String Dhuhr;
  String Asr;
  String Maghrib;
  String Isha;
  String HijDay;
  String HijMonth;
  String HijYear;
  String GregDate;
  DayPrayers(String Fajr, String Dhuhr, String Asr, String Maghrib, String Isha, String HijDay, String HijMonth, String HijYear, String GregDate){
    this.Fajr = Fajr.substring(0 , 5);
    this.Dhuhr = Dhuhr.substring(0 , 5);
    this.Asr =  Asr.substring(0 , 5);
    this.Maghrib = Maghrib.substring(0 , 5);
    this.Isha = Isha.substring(0 , 5);
    this.HijDay = HijDay;
    this.HijMonth = HijMonth;
    this.HijYear = HijYear;
    this.GregDate = GregDate;
  }
}