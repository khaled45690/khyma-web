import 'dart:convert';


class Prayer {
  String str1;
  String str2;
  String fromJson;
  Prayer (String strFirst, String strSecond){
    this.str1 = strFirst;
    this.str2 = strSecond;
    var myData = jsonDecode(data);
    this.fromJson = myData["data"][0]["timings"]["Fajr"];
  }

  String data = '''
{
    "code": 200,
    "status": "OK",
    "data": [
        {
            "timings": {
                "Fajr": "04:55 (EET)",
                "Sunrise": "06:21 (EET)",
                "Dhuhr": "12:07 (EET)",
                "Asr": "15:25 (EET)",
                "Sunset": "17:54 (EET)",
                "Maghrib": "17:54 (EET)",
                "Isha": "19:11 (EET)",
                "Imsak": "04:45 (EET)",
                "Midnight": "00:08 (EET)"
            },
            "date": {
                "readable": "01 Mar 2021",
                "timestamp": "1614582061",
                "gregorian": {
                    "date": "01-03-2021",
                    "format": "DD-MM-YYYY",
                    "day": "01",
                    "weekday": {
                        "en": "Monday"
                    },
                    "month": {
                        "number": 3,
                        "en": "March"
                    },
                    "year": "2021",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "17-07-1442",
                    "format": "DD-MM-YYYY",
                    "day": "17",
                    "weekday": {
                        "en": "Al Athnayn",
                        "ar": "الاثنين"
                    },
                    "month": {
                        "number": 7,
                        "en": "Rajab",
                        "ar": "رَجَب"
                    },
                    "year": "1442",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 30.0444196,
                "longitude": 31.2357116,
                "timezone": "Africa/Cairo",
                "method": {
                    "id": 5,
                    "name": "Egyptian General Authority of Survey",
                    "params": {
                        "Fajr": 19.5,
                        "Isha": 17.5
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:54 (EET)",
                "Sunrise": "06:20 (EET)",
                "Dhuhr": "12:07 (EET)",
                "Asr": "15:25 (EET)",
                "Sunset": "17:55 (EET)",
                "Maghrib": "17:55 (EET)",
                "Isha": "19:12 (EET)",
                "Imsak": "04:44 (EET)",
                "Midnight": "00:07 (EET)"
            },
            "date": {
                "readable": "02 Mar 2021",
                "timestamp": "1614668461",
                "gregorian": {
                    "date": "02-03-2021",
                    "format": "DD-MM-YYYY",
                    "day": "02",
                    "weekday": {
                        "en": "Tuesday"
                    },
                    "month": {
                        "number": 3,
                        "en": "March"
                    },
                    "year": "2021",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "18-07-1442",
                    "format": "DD-MM-YYYY",
                    "day": "18",
                    "weekday": {
                        "en": "Al Thalaata",
                        "ar": "الثلاثاء"
                    },
                    "month": {
                        "number": 7,
                        "en": "Rajab",
                        "ar": "رَجَب"
                    },
                    "year": "1442",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 30.0444196,
                "longitude": 31.2357116,
                "timezone": "Africa/Cairo",
                "method": {
                    "id": 5,
                    "name": "Egyptian General Authority of Survey",
                    "params": {
                        "Fajr": 19.5,
                        "Isha": 17.5
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:52 (EET)",
                "Sunrise": "06:19 (EET)",
                "Dhuhr": "12:07 (EET)",
                "Asr": "15:26 (EET)",
                "Sunset": "17:56 (EET)",
                "Maghrib": "17:56 (EET)",
                "Isha": "19:13 (EET)",
                "Imsak": "04:42 (EET)",
                "Midnight": "00:07 (EET)"
            },
            "date": {
                "readable": "03 Mar 2021",
                "timestamp": "1614754861",
                "gregorian": {
                    "date": "03-03-2021",
                    "format": "DD-MM-YYYY",
                    "day": "03",
                    "weekday": {
                        "en": "Wednesday"
                    },
                    "month": {
                        "number": 3,
                        "en": "March"
                    },
                    "year": "2021",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "19-07-1442",
                    "format": "DD-MM-YYYY",
                    "day": "19",
                    "weekday": {
                        "en": "Al Arba'a",
                        "ar": "الاربعاء"
                    },
                    "month": {
                        "number": 7,
                        "en": "Rajab",
                        "ar": "رَجَب"
                    },
                    "year": "1442",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 30.0444196,
                "longitude": 31.2357116,
                "timezone": "Africa/Cairo",
                "method": {
                    "id": 5,
                    "name": "Egyptian General Authority of Survey",
                    "params": {
                        "Fajr": 19.5,
                        "Isha": 17.5
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:51 (EET)",
                "Sunrise": "06:18 (EET)",
                "Dhuhr": "12:07 (EET)",
                "Asr": "15:26 (EET)",
                "Sunset": "17:56 (EET)",
                "Maghrib": "17:56 (EET)",
                "Isha": "19:13 (EET)",
                "Imsak": "04:41 (EET)",
                "Midnight": "00:07 (EET)"
            },
            "date": {
                "readable": "04 Mar 2021",
                "timestamp": "1614841261",
                "gregorian": {
                    "date": "04-03-2021",
                    "format": "DD-MM-YYYY",
                    "day": "04",
                    "weekday": {
                        "en": "Thursday"
                    },
                    "month": {
                        "number": 3,
                        "en": "March"
                    },
                    "year": "2021",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "20-07-1442",
                    "format": "DD-MM-YYYY",
                    "day": "20",
                    "weekday": {
                        "en": "Al Khamees",
                        "ar": "الخميس"
                    },
                    "month": {
                        "number": 7,
                        "en": "Rajab",
                        "ar": "رَجَب"
                    },
                    "year": "1442",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 30.0444196,
                "longitude": 31.2357116,
                "timezone": "Africa/Cairo",
                "method": {
                    "id": 5,
                    "name": "Egyptian General Authority of Survey",
                    "params": {
                        "Fajr": 19.5,
                        "Isha": 17.5
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:50 (EET)",
                "Sunrise": "06:17 (EET)",
                "Dhuhr": "12:07 (EET)",
                "Asr": "15:26 (EET)",
                "Sunset": "17:57 (EET)",
                "Maghrib": "17:57 (EET)",
                "Isha": "19:14 (EET)",
                "Imsak": "04:40 (EET)",
                "Midnight": "00:07 (EET)"
            },
            "date": {
                "readable": "05 Mar 2021",
                "timestamp": "1614927661",
                "gregorian": {
                    "date": "05-03-2021",
                    "format": "DD-MM-YYYY",
                    "day": "05",
                    "weekday": {
                        "en": "Friday"
                    },
                    "month": {
                        "number": 3,
                        "en": "March"
                    },
                    "year": "2021",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "21-07-1442",
                    "format": "DD-MM-YYYY",
                    "day": "21",
                    "weekday": {
                        "en": "Al Juma'a",
                        "ar": "الجمعة"
                    },
                    "month": {
                        "number": 7,
                        "en": "Rajab",
                        "ar": "رَجَب"
                    },
                    "year": "1442",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 30.0444196,
                "longitude": 31.2357116,
                "timezone": "Africa/Cairo",
                "method": {
                    "id": 5,
                    "name": "Egyptian General Authority of Survey",
                    "params": {
                        "Fajr": 19.5,
                        "Isha": 17.5
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:49 (EET)",
                "Sunrise": "06:15 (EET)",
                "Dhuhr": "12:06 (EET)",
                "Asr": "15:27 (EET)",
                "Sunset": "17:58 (EET)",
                "Maghrib": "17:58 (EET)",
                "Isha": "19:15 (EET)",
                "Imsak": "04:39 (EET)",
                "Midnight": "00:06 (EET)"
            },
            "date": {
                "readable": "06 Mar 2021",
                "timestamp": "1615014061",
                "gregorian": {
                    "date": "06-03-2021",
                    "format": "DD-MM-YYYY",
                    "day": "06",
                    "weekday": {
                        "en": "Saturday"
                    },
                    "month": {
                        "number": 3,
                        "en": "March"
                    },
                    "year": "2021",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "22-07-1442",
                    "format": "DD-MM-YYYY",
                    "day": "22",
                    "weekday": {
                        "en": "Al Sabt",
                        "ar": "السبت"
                    },
                    "month": {
                        "number": 7,
                        "en": "Rajab",
                        "ar": "رَجَب"
                    },
                    "year": "1442",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 30.0444196,
                "longitude": 31.2357116,
                "timezone": "Africa/Cairo",
                "method": {
                    "id": 5,
                    "name": "Egyptian General Authority of Survey",
                    "params": {
                        "Fajr": 19.5,
                        "Isha": 17.5
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:48 (EET)",
                "Sunrise": "06:14 (EET)",
                "Dhuhr": "12:06 (EET)",
                "Asr": "15:27 (EET)",
                "Sunset": "17:58 (EET)",
                "Maghrib": "17:58 (EET)",
                "Isha": "19:15 (EET)",
                "Imsak": "04:38 (EET)",
                "Midnight": "00:06 (EET)"
            },
            "date": {
                "readable": "07 Mar 2021",
                "timestamp": "1615100461",
                "gregorian": {
                    "date": "07-03-2021",
                    "format": "DD-MM-YYYY",
                    "day": "07",
                    "weekday": {
                        "en": "Sunday"
                    },
                    "month": {
                        "number": 3,
                        "en": "March"
                    },
                    "year": "2021",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "23-07-1442",
                    "format": "DD-MM-YYYY",
                    "day": "23",
                    "weekday": {
                        "en": "Al Ahad",
                        "ar": "الاحد"
                    },
                    "month": {
                        "number": 7,
                        "en": "Rajab",
                        "ar": "رَجَب"
                    },
                    "year": "1442",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 30.0444196,
                "longitude": 31.2357116,
                "timezone": "Africa/Cairo",
                "method": {
                    "id": 5,
                    "name": "Egyptian General Authority of Survey",
                    "params": {
                        "Fajr": 19.5,
                        "Isha": 17.5
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:47 (EET)",
                "Sunrise": "06:13 (EET)",
                "Dhuhr": "12:06 (EET)",
                "Asr": "15:27 (EET)",
                "Sunset": "17:59 (EET)",
                "Maghrib": "17:59 (EET)",
                "Isha": "19:16 (EET)",
                "Imsak": "04:37 (EET)",
                "Midnight": "00:06 (EET)"
            },
            "date": {
                "readable": "08 Mar 2021",
                "timestamp": "1615186861",
                "gregorian": {
                    "date": "08-03-2021",
                    "format": "DD-MM-YYYY",
                    "day": "08",
                    "weekday": {
                        "en": "Monday"
                    },
                    "month": {
                        "number": 3,
                        "en": "March"
                    },
                    "year": "2021",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "24-07-1442",
                    "format": "DD-MM-YYYY",
                    "day": "24",
                    "weekday": {
                        "en": "Al Athnayn",
                        "ar": "الاثنين"
                    },
                    "month": {
                        "number": 7,
                        "en": "Rajab",
                        "ar": "رَجَب"
                    },
                    "year": "1442",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 30.0444196,
                "longitude": 31.2357116,
                "timezone": "Africa/Cairo",
                "method": {
                    "id": 5,
                    "name": "Egyptian General Authority of Survey",
                    "params": {
                        "Fajr": 19.5,
                        "Isha": 17.5
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:46 (EET)",
                "Sunrise": "06:12 (EET)",
                "Dhuhr": "12:06 (EET)",
                "Asr": "15:27 (EET)",
                "Sunset": "18:00 (EET)",
                "Maghrib": "18:00 (EET)",
                "Isha": "19:17 (EET)",
                "Imsak": "04:36 (EET)",
                "Midnight": "00:06 (EET)"
            },
            "date": {
                "readable": "09 Mar 2021",
                "timestamp": "1615273261",
                "gregorian": {
                    "date": "09-03-2021",
                    "format": "DD-MM-YYYY",
                    "day": "09",
                    "weekday": {
                        "en": "Tuesday"
                    },
                    "month": {
                        "number": 3,
                        "en": "March"
                    },
                    "year": "2021",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "25-07-1442",
                    "format": "DD-MM-YYYY",
                    "day": "25",
                    "weekday": {
                        "en": "Al Thalaata",
                        "ar": "الثلاثاء"
                    },
                    "month": {
                        "number": 7,
                        "en": "Rajab",
                        "ar": "رَجَب"
                    },
                    "year": "1442",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 30.0444196,
                "longitude": 31.2357116,
                "timezone": "Africa/Cairo",
                "method": {
                    "id": 5,
                    "name": "Egyptian General Authority of Survey",
                    "params": {
                        "Fajr": 19.5,
                        "Isha": 17.5
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:44 (EET)",
                "Sunrise": "06:11 (EET)",
                "Dhuhr": "12:05 (EET)",
                "Asr": "15:28 (EET)",
                "Sunset": "18:00 (EET)",
                "Maghrib": "18:00 (EET)",
                "Isha": "19:17 (EET)",
                "Imsak": "04:34 (EET)",
                "Midnight": "00:06 (EET)"
            },
            "date": {
                "readable": "10 Mar 2021",
                "timestamp": "1615359661",
                "gregorian": {
                    "date": "10-03-2021",
                    "format": "DD-MM-YYYY",
                    "day": "10",
                    "weekday": {
                        "en": "Wednesday"
                    },
                    "month": {
                        "number": 3,
                        "en": "March"
                    },
                    "year": "2021",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "26-07-1442",
                    "format": "DD-MM-YYYY",
                    "day": "26",
                    "weekday": {
                        "en": "Al Arba'a",
                        "ar": "الاربعاء"
                    },
                    "month": {
                        "number": 7,
                        "en": "Rajab",
                        "ar": "رَجَب"
                    },
                    "year": "1442",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 30.0444196,
                "longitude": 31.2357116,
                "timezone": "Africa/Cairo",
                "method": {
                    "id": 5,
                    "name": "Egyptian General Authority of Survey",
                    "params": {
                        "Fajr": 19.5,
                        "Isha": 17.5
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:43 (EET)",
                "Sunrise": "06:10 (EET)",
                "Dhuhr": "12:05 (EET)",
                "Asr": "15:28 (EET)",
                "Sunset": "18:01 (EET)",
                "Maghrib": "18:01 (EET)",
                "Isha": "19:18 (EET)",
                "Imsak": "04:33 (EET)",
                "Midnight": "00:05 (EET)"
            },
            "date": {
                "readable": "11 Mar 2021",
                "timestamp": "1615446061",
                "gregorian": {
                    "date": "11-03-2021",
                    "format": "DD-MM-YYYY",
                    "day": "11",
                    "weekday": {
                        "en": "Thursday"
                    },
                    "month": {
                        "number": 3,
                        "en": "March"
                    },
                    "year": "2021",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "27-07-1442",
                    "format": "DD-MM-YYYY",
                    "day": "27",
                    "weekday": {
                        "en": "Al Khamees",
                        "ar": "الخميس"
                    },
                    "month": {
                        "number": 7,
                        "en": "Rajab",
                        "ar": "رَجَب"
                    },
                    "year": "1442",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": [
                        "Lailat-ul-Miraj"
                    ]
                }
            },
            "meta": {
                "latitude": 30.0444196,
                "longitude": 31.2357116,
                "timezone": "Africa/Cairo",
                "method": {
                    "id": 5,
                    "name": "Egyptian General Authority of Survey",
                    "params": {
                        "Fajr": 19.5,
                        "Isha": 17.5
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:42 (EET)",
                "Sunrise": "06:09 (EET)",
                "Dhuhr": "12:05 (EET)",
                "Asr": "15:28 (EET)",
                "Sunset": "18:01 (EET)",
                "Maghrib": "18:01 (EET)",
                "Isha": "19:19 (EET)",
                "Imsak": "04:32 (EET)",
                "Midnight": "00:05 (EET)"
            },
            "date": {
                "readable": "12 Mar 2021",
                "timestamp": "1615532461",
                "gregorian": {
                    "date": "12-03-2021",
                    "format": "DD-MM-YYYY",
                    "day": "12",
                    "weekday": {
                        "en": "Friday"
                    },
                    "month": {
                        "number": 3,
                        "en": "March"
                    },
                    "year": "2021",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "28-07-1442",
                    "format": "DD-MM-YYYY",
                    "day": "28",
                    "weekday": {
                        "en": "Al Juma'a",
                        "ar": "الجمعة"
                    },
                    "month": {
                        "number": 7,
                        "en": "Rajab",
                        "ar": "رَجَب"
                    },
                    "year": "1442",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 30.0444196,
                "longitude": 31.2357116,
                "timezone": "Africa/Cairo",
                "method": {
                    "id": 5,
                    "name": "Egyptian General Authority of Survey",
                    "params": {
                        "Fajr": 19.5,
                        "Isha": 17.5
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:41 (EET)",
                "Sunrise": "06:07 (EET)",
                "Dhuhr": "12:04 (EET)",
                "Asr": "15:28 (EET)",
                "Sunset": "18:02 (EET)",
                "Maghrib": "18:02 (EET)",
                "Isha": "19:19 (EET)",
                "Imsak": "04:31 (EET)",
                "Midnight": "00:05 (EET)"
            },
            "date": {
                "readable": "13 Mar 2021",
                "timestamp": "1615618861",
                "gregorian": {
                    "date": "13-03-2021",
                    "format": "DD-MM-YYYY",
                    "day": "13",
                    "weekday": {
                        "en": "Saturday"
                    },
                    "month": {
                        "number": 3,
                        "en": "March"
                    },
                    "year": "2021",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "29-07-1442",
                    "format": "DD-MM-YYYY",
                    "day": "29",
                    "weekday": {
                        "en": "Al Sabt",
                        "ar": "السبت"
                    },
                    "month": {
                        "number": 7,
                        "en": "Rajab",
                        "ar": "رَجَب"
                    },
                    "year": "1442",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 30.0444196,
                "longitude": 31.2357116,
                "timezone": "Africa/Cairo",
                "method": {
                    "id": 5,
                    "name": "Egyptian General Authority of Survey",
                    "params": {
                        "Fajr": 19.5,
                        "Isha": 17.5
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:40 (EET)",
                "Sunrise": "06:06 (EET)",
                "Dhuhr": "12:04 (EET)",
                "Asr": "15:28 (EET)",
                "Sunset": "18:03 (EET)",
                "Maghrib": "18:03 (EET)",
                "Isha": "19:20 (EET)",
                "Imsak": "04:30 (EET)",
                "Midnight": "00:04 (EET)"
            },
            "date": {
                "readable": "14 Mar 2021",
                "timestamp": "1615705261",
                "gregorian": {
                    "date": "14-03-2021",
                    "format": "DD-MM-YYYY",
                    "day": "14",
                    "weekday": {
                        "en": "Sunday"
                    },
                    "month": {
                        "number": 3,
                        "en": "March"
                    },
                    "year": "2021",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "30-07-1442",
                    "format": "DD-MM-YYYY",
                    "day": "30",
                    "weekday": {
                        "en": "Al Ahad",
                        "ar": "الاحد"
                    },
                    "month": {
                        "number": 7,
                        "en": "Rajab",
                        "ar": "رَجَب"
                    },
                    "year": "1442",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 30.0444196,
                "longitude": 31.2357116,
                "timezone": "Africa/Cairo",
                "method": {
                    "id": 5,
                    "name": "Egyptian General Authority of Survey",
                    "params": {
                        "Fajr": 19.5,
                        "Isha": 17.5
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:38 (EET)",
                "Sunrise": "06:05 (EET)",
                "Dhuhr": "12:04 (EET)",
                "Asr": "15:29 (EET)",
                "Sunset": "18:03 (EET)",
                "Maghrib": "18:03 (EET)",
                "Isha": "19:21 (EET)",
                "Imsak": "04:28 (EET)",
                "Midnight": "00:04 (EET)"
            },
            "date": {
                "readable": "15 Mar 2021",
                "timestamp": "1615791661",
                "gregorian": {
                    "date": "15-03-2021",
                    "format": "DD-MM-YYYY",
                    "day": "15",
                    "weekday": {
                        "en": "Monday"
                    },
                    "month": {
                        "number": 3,
                        "en": "March"
                    },
                    "year": "2021",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "01-08-1442",
                    "format": "DD-MM-YYYY",
                    "day": "01",
                    "weekday": {
                        "en": "Al Athnayn",
                        "ar": "الاثنين"
                    },
                    "month": {
                        "number": 8,
                        "en": "Shaʿbān",
                        "ar": "شَعْبان"
                    },
                    "year": "1442",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 30.0444196,
                "longitude": 31.2357116,
                "timezone": "Africa/Cairo",
                "method": {
                    "id": 5,
                    "name": "Egyptian General Authority of Survey",
                    "params": {
                        "Fajr": 19.5,
                        "Isha": 17.5
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:37 (EET)",
                "Sunrise": "06:04 (EET)",
                "Dhuhr": "12:04 (EET)",
                "Asr": "15:29 (EET)",
                "Sunset": "18:04 (EET)",
                "Maghrib": "18:04 (EET)",
                "Isha": "19:21 (EET)",
                "Imsak": "04:27 (EET)",
                "Midnight": "00:04 (EET)"
            },
            "date": {
                "readable": "16 Mar 2021",
                "timestamp": "1615878061",
                "gregorian": {
                    "date": "16-03-2021",
                    "format": "DD-MM-YYYY",
                    "day": "16",
                    "weekday": {
                        "en": "Tuesday"
                    },
                    "month": {
                        "number": 3,
                        "en": "March"
                    },
                    "year": "2021",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "02-08-1442",
                    "format": "DD-MM-YYYY",
                    "day": "02",
                    "weekday": {
                        "en": "Al Thalaata",
                        "ar": "الثلاثاء"
                    },
                    "month": {
                        "number": 8,
                        "en": "Shaʿbān",
                        "ar": "شَعْبان"
                    },
                    "year": "1442",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 30.0444196,
                "longitude": 31.2357116,
                "timezone": "Africa/Cairo",
                "method": {
                    "id": 5,
                    "name": "Egyptian General Authority of Survey",
                    "params": {
                        "Fajr": 19.5,
                        "Isha": 17.5
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:36 (EET)",
                "Sunrise": "06:03 (EET)",
                "Dhuhr": "12:03 (EET)",
                "Asr": "15:29 (EET)",
                "Sunset": "18:05 (EET)",
                "Maghrib": "18:05 (EET)",
                "Isha": "19:22 (EET)",
                "Imsak": "04:26 (EET)",
                "Midnight": "00:04 (EET)"
            },
            "date": {
                "readable": "17 Mar 2021",
                "timestamp": "1615964461",
                "gregorian": {
                    "date": "17-03-2021",
                    "format": "DD-MM-YYYY",
                    "day": "17",
                    "weekday": {
                        "en": "Wednesday"
                    },
                    "month": {
                        "number": 3,
                        "en": "March"
                    },
                    "year": "2021",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "03-08-1442",
                    "format": "DD-MM-YYYY",
                    "day": "03",
                    "weekday": {
                        "en": "Al Arba'a",
                        "ar": "الاربعاء"
                    },
                    "month": {
                        "number": 8,
                        "en": "Shaʿbān",
                        "ar": "شَعْبان"
                    },
                    "year": "1442",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 30.0444196,
                "longitude": 31.2357116,
                "timezone": "Africa/Cairo",
                "method": {
                    "id": 5,
                    "name": "Egyptian General Authority of Survey",
                    "params": {
                        "Fajr": 19.5,
                        "Isha": 17.5
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:35 (EET)",
                "Sunrise": "06:01 (EET)",
                "Dhuhr": "12:03 (EET)",
                "Asr": "15:29 (EET)",
                "Sunset": "18:05 (EET)",
                "Maghrib": "18:05 (EET)",
                "Isha": "19:23 (EET)",
                "Imsak": "04:25 (EET)",
                "Midnight": "00:03 (EET)"
            },
            "date": {
                "readable": "18 Mar 2021",
                "timestamp": "1616050861",
                "gregorian": {
                    "date": "18-03-2021",
                    "format": "DD-MM-YYYY",
                    "day": "18",
                    "weekday": {
                        "en": "Thursday"
                    },
                    "month": {
                        "number": 3,
                        "en": "March"
                    },
                    "year": "2021",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "04-08-1442",
                    "format": "DD-MM-YYYY",
                    "day": "04",
                    "weekday": {
                        "en": "Al Khamees",
                        "ar": "الخميس"
                    },
                    "month": {
                        "number": 8,
                        "en": "Shaʿbān",
                        "ar": "شَعْبان"
                    },
                    "year": "1442",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 30.0444196,
                "longitude": 31.2357116,
                "timezone": "Africa/Cairo",
                "method": {
                    "id": 5,
                    "name": "Egyptian General Authority of Survey",
                    "params": {
                        "Fajr": 19.5,
                        "Isha": 17.5
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:33 (EET)",
                "Sunrise": "06:00 (EET)",
                "Dhuhr": "12:03 (EET)",
                "Asr": "15:29 (EET)",
                "Sunset": "18:06 (EET)",
                "Maghrib": "18:06 (EET)",
                "Isha": "19:23 (EET)",
                "Imsak": "04:23 (EET)",
                "Midnight": "00:03 (EET)"
            },
            "date": {
                "readable": "19 Mar 2021",
                "timestamp": "1616137261",
                "gregorian": {
                    "date": "19-03-2021",
                    "format": "DD-MM-YYYY",
                    "day": "19",
                    "weekday": {
                        "en": "Friday"
                    },
                    "month": {
                        "number": 3,
                        "en": "March"
                    },
                    "year": "2021",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "05-08-1442",
                    "format": "DD-MM-YYYY",
                    "day": "05",
                    "weekday": {
                        "en": "Al Juma'a",
                        "ar": "الجمعة"
                    },
                    "month": {
                        "number": 8,
                        "en": "Shaʿbān",
                        "ar": "شَعْبان"
                    },
                    "year": "1442",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 30.0444196,
                "longitude": 31.2357116,
                "timezone": "Africa/Cairo",
                "method": {
                    "id": 5,
                    "name": "Egyptian General Authority of Survey",
                    "params": {
                        "Fajr": 19.5,
                        "Isha": 17.5
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:32 (EET)",
                "Sunrise": "05:59 (EET)",
                "Dhuhr": "12:02 (EET)",
                "Asr": "15:29 (EET)",
                "Sunset": "18:07 (EET)",
                "Maghrib": "18:07 (EET)",
                "Isha": "19:24 (EET)",
                "Imsak": "04:22 (EET)",
                "Midnight": "00:03 (EET)"
            },
            "date": {
                "readable": "20 Mar 2021",
                "timestamp": "1616223661",
                "gregorian": {
                    "date": "20-03-2021",
                    "format": "DD-MM-YYYY",
                    "day": "20",
                    "weekday": {
                        "en": "Saturday"
                    },
                    "month": {
                        "number": 3,
                        "en": "March"
                    },
                    "year": "2021",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "06-08-1442",
                    "format": "DD-MM-YYYY",
                    "day": "06",
                    "weekday": {
                        "en": "Al Sabt",
                        "ar": "السبت"
                    },
                    "month": {
                        "number": 8,
                        "en": "Shaʿbān",
                        "ar": "شَعْبان"
                    },
                    "year": "1442",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 30.0444196,
                "longitude": 31.2357116,
                "timezone": "Africa/Cairo",
                "method": {
                    "id": 5,
                    "name": "Egyptian General Authority of Survey",
                    "params": {
                        "Fajr": 19.5,
                        "Isha": 17.5
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:31 (EET)",
                "Sunrise": "05:58 (EET)",
                "Dhuhr": "12:02 (EET)",
                "Asr": "15:29 (EET)",
                "Sunset": "18:07 (EET)",
                "Maghrib": "18:07 (EET)",
                "Isha": "19:25 (EET)",
                "Imsak": "04:21 (EET)",
                "Midnight": "00:02 (EET)"
            },
            "date": {
                "readable": "21 Mar 2021",
                "timestamp": "1616310061",
                "gregorian": {
                    "date": "21-03-2021",
                    "format": "DD-MM-YYYY",
                    "day": "21",
                    "weekday": {
                        "en": "Sunday"
                    },
                    "month": {
                        "number": 3,
                        "en": "March"
                    },
                    "year": "2021",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "07-08-1442",
                    "format": "DD-MM-YYYY",
                    "day": "07",
                    "weekday": {
                        "en": "Al Ahad",
                        "ar": "الاحد"
                    },
                    "month": {
                        "number": 8,
                        "en": "Shaʿbān",
                        "ar": "شَعْبان"
                    },
                    "year": "1442",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 30.0444196,
                "longitude": 31.2357116,
                "timezone": "Africa/Cairo",
                "method": {
                    "id": 5,
                    "name": "Egyptian General Authority of Survey",
                    "params": {
                        "Fajr": 19.5,
                        "Isha": 17.5
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:30 (EET)",
                "Sunrise": "05:57 (EET)",
                "Dhuhr": "12:02 (EET)",
                "Asr": "15:30 (EET)",
                "Sunset": "18:08 (EET)",
                "Maghrib": "18:08 (EET)",
                "Isha": "19:25 (EET)",
                "Imsak": "04:20 (EET)",
                "Midnight": "00:02 (EET)"
            },
            "date": {
                "readable": "22 Mar 2021",
                "timestamp": "1616396461",
                "gregorian": {
                    "date": "22-03-2021",
                    "format": "DD-MM-YYYY",
                    "day": "22",
                    "weekday": {
                        "en": "Monday"
                    },
                    "month": {
                        "number": 3,
                        "en": "March"
                    },
                    "year": "2021",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "08-08-1442",
                    "format": "DD-MM-YYYY",
                    "day": "08",
                    "weekday": {
                        "en": "Al Athnayn",
                        "ar": "الاثنين"
                    },
                    "month": {
                        "number": 8,
                        "en": "Shaʿbān",
                        "ar": "شَعْبان"
                    },
                    "year": "1442",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 30.0444196,
                "longitude": 31.2357116,
                "timezone": "Africa/Cairo",
                "method": {
                    "id": 5,
                    "name": "Egyptian General Authority of Survey",
                    "params": {
                        "Fajr": 19.5,
                        "Isha": 17.5
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:28 (EET)",
                "Sunrise": "05:55 (EET)",
                "Dhuhr": "12:02 (EET)",
                "Asr": "15:30 (EET)",
                "Sunset": "18:08 (EET)",
                "Maghrib": "18:08 (EET)",
                "Isha": "19:26 (EET)",
                "Imsak": "04:18 (EET)",
                "Midnight": "00:02 (EET)"
            },
            "date": {
                "readable": "23 Mar 2021",
                "timestamp": "1616482861",
                "gregorian": {
                    "date": "23-03-2021",
                    "format": "DD-MM-YYYY",
                    "day": "23",
                    "weekday": {
                        "en": "Tuesday"
                    },
                    "month": {
                        "number": 3,
                        "en": "March"
                    },
                    "year": "2021",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "09-08-1442",
                    "format": "DD-MM-YYYY",
                    "day": "09",
                    "weekday": {
                        "en": "Al Thalaata",
                        "ar": "الثلاثاء"
                    },
                    "month": {
                        "number": 8,
                        "en": "Shaʿbān",
                        "ar": "شَعْبان"
                    },
                    "year": "1442",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 30.0444196,
                "longitude": 31.2357116,
                "timezone": "Africa/Cairo",
                "method": {
                    "id": 5,
                    "name": "Egyptian General Authority of Survey",
                    "params": {
                        "Fajr": 19.5,
                        "Isha": 17.5
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:27 (EET)",
                "Sunrise": "05:54 (EET)",
                "Dhuhr": "12:01 (EET)",
                "Asr": "15:30 (EET)",
                "Sunset": "18:09 (EET)",
                "Maghrib": "18:09 (EET)",
                "Isha": "19:27 (EET)",
                "Imsak": "04:17 (EET)",
                "Midnight": "00:02 (EET)"
            },
            "date": {
                "readable": "24 Mar 2021",
                "timestamp": "1616569261",
                "gregorian": {
                    "date": "24-03-2021",
                    "format": "DD-MM-YYYY",
                    "day": "24",
                    "weekday": {
                        "en": "Wednesday"
                    },
                    "month": {
                        "number": 3,
                        "en": "March"
                    },
                    "year": "2021",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "10-08-1442",
                    "format": "DD-MM-YYYY",
                    "day": "10",
                    "weekday": {
                        "en": "Al Arba'a",
                        "ar": "الاربعاء"
                    },
                    "month": {
                        "number": 8,
                        "en": "Shaʿbān",
                        "ar": "شَعْبان"
                    },
                    "year": "1442",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 30.0444196,
                "longitude": 31.2357116,
                "timezone": "Africa/Cairo",
                "method": {
                    "id": 5,
                    "name": "Egyptian General Authority of Survey",
                    "params": {
                        "Fajr": 19.5,
                        "Isha": 17.5
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:26 (EET)",
                "Sunrise": "05:53 (EET)",
                "Dhuhr": "12:01 (EET)",
                "Asr": "15:30 (EET)",
                "Sunset": "18:10 (EET)",
                "Maghrib": "18:10 (EET)",
                "Isha": "19:27 (EET)",
                "Imsak": "04:16 (EET)",
                "Midnight": "00:01 (EET)"
            },
            "date": {
                "readable": "25 Mar 2021",
                "timestamp": "1616655661",
                "gregorian": {
                    "date": "25-03-2021",
                    "format": "DD-MM-YYYY",
                    "day": "25",
                    "weekday": {
                        "en": "Thursday"
                    },
                    "month": {
                        "number": 3,
                        "en": "March"
                    },
                    "year": "2021",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "11-08-1442",
                    "format": "DD-MM-YYYY",
                    "day": "11",
                    "weekday": {
                        "en": "Al Khamees",
                        "ar": "الخميس"
                    },
                    "month": {
                        "number": 8,
                        "en": "Shaʿbān",
                        "ar": "شَعْبان"
                    },
                    "year": "1442",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 30.0444196,
                "longitude": 31.2357116,
                "timezone": "Africa/Cairo",
                "method": {
                    "id": 5,
                    "name": "Egyptian General Authority of Survey",
                    "params": {
                        "Fajr": 19.5,
                        "Isha": 17.5
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:24 (EET)",
                "Sunrise": "05:52 (EET)",
                "Dhuhr": "12:01 (EET)",
                "Asr": "15:30 (EET)",
                "Sunset": "18:10 (EET)",
                "Maghrib": "18:10 (EET)",
                "Isha": "19:28 (EET)",
                "Imsak": "04:14 (EET)",
                "Midnight": "00:01 (EET)"
            },
            "date": {
                "readable": "26 Mar 2021",
                "timestamp": "1616742061",
                "gregorian": {
                    "date": "26-03-2021",
                    "format": "DD-MM-YYYY",
                    "day": "26",
                    "weekday": {
                        "en": "Friday"
                    },
                    "month": {
                        "number": 3,
                        "en": "March"
                    },
                    "year": "2021",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "12-08-1442",
                    "format": "DD-MM-YYYY",
                    "day": "12",
                    "weekday": {
                        "en": "Al Juma'a",
                        "ar": "الجمعة"
                    },
                    "month": {
                        "number": 8,
                        "en": "Shaʿbān",
                        "ar": "شَعْبان"
                    },
                    "year": "1442",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 30.0444196,
                "longitude": 31.2357116,
                "timezone": "Africa/Cairo",
                "method": {
                    "id": 5,
                    "name": "Egyptian General Authority of Survey",
                    "params": {
                        "Fajr": 19.5,
                        "Isha": 17.5
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:23 (EET)",
                "Sunrise": "05:50 (EET)",
                "Dhuhr": "12:00 (EET)",
                "Asr": "15:30 (EET)",
                "Sunset": "18:11 (EET)",
                "Maghrib": "18:11 (EET)",
                "Isha": "19:29 (EET)",
                "Imsak": "04:13 (EET)",
                "Midnight": "00:01 (EET)"
            },
            "date": {
                "readable": "27 Mar 2021",
                "timestamp": "1616828461",
                "gregorian": {
                    "date": "27-03-2021",
                    "format": "DD-MM-YYYY",
                    "day": "27",
                    "weekday": {
                        "en": "Saturday"
                    },
                    "month": {
                        "number": 3,
                        "en": "March"
                    },
                    "year": "2021",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "13-08-1442",
                    "format": "DD-MM-YYYY",
                    "day": "13",
                    "weekday": {
                        "en": "Al Sabt",
                        "ar": "السبت"
                    },
                    "month": {
                        "number": 8,
                        "en": "Shaʿbān",
                        "ar": "شَعْبان"
                    },
                    "year": "1442",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 30.0444196,
                "longitude": 31.2357116,
                "timezone": "Africa/Cairo",
                "method": {
                    "id": 5,
                    "name": "Egyptian General Authority of Survey",
                    "params": {
                        "Fajr": 19.5,
                        "Isha": 17.5
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:22 (EET)",
                "Sunrise": "05:49 (EET)",
                "Dhuhr": "12:00 (EET)",
                "Asr": "15:30 (EET)",
                "Sunset": "18:11 (EET)",
                "Maghrib": "18:11 (EET)",
                "Isha": "19:30 (EET)",
                "Imsak": "04:12 (EET)",
                "Midnight": "00:00 (EET)"
            },
            "date": {
                "readable": "28 Mar 2021",
                "timestamp": "1616918461",
                "gregorian": {
                    "date": "28-03-2021",
                    "format": "DD-MM-YYYY",
                    "day": "28",
                    "weekday": {
                        "en": "Sunday"
                    },
                    "month": {
                        "number": 3,
                        "en": "March"
                    },
                    "year": "2021",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "14-08-1442",
                    "format": "DD-MM-YYYY",
                    "day": "14",
                    "weekday": {
                        "en": "Al Ahad",
                        "ar": "الاحد"
                    },
                    "month": {
                        "number": 8,
                        "en": "Shaʿbān",
                        "ar": "شَعْبان"
                    },
                    "year": "1442",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 30.0444196,
                "longitude": 31.2357116,
                "timezone": "Africa/Cairo",
                "method": {
                    "id": 5,
                    "name": "Egyptian General Authority of Survey",
                    "params": {
                        "Fajr": 19.5,
                        "Isha": 17.5
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:20 (EET)",
                "Sunrise": "05:48 (EET)",
                "Dhuhr": "12:00 (EET)",
                "Asr": "15:30 (EET)",
                "Sunset": "18:12 (EET)",
                "Maghrib": "18:12 (EET)",
                "Isha": "19:30 (EET)",
                "Imsak": "04:10 (EET)",
                "Midnight": "00:00 (EET)"
            },
            "date": {
                "readable": "29 Mar 2021",
                "timestamp": "1617004861",
                "gregorian": {
                    "date": "29-03-2021",
                    "format": "DD-MM-YYYY",
                    "day": "29",
                    "weekday": {
                        "en": "Monday"
                    },
                    "month": {
                        "number": 3,
                        "en": "March"
                    },
                    "year": "2021",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "15-08-1442",
                    "format": "DD-MM-YYYY",
                    "day": "15",
                    "weekday": {
                        "en": "Al Athnayn",
                        "ar": "الاثنين"
                    },
                    "month": {
                        "number": 8,
                        "en": "Shaʿbān",
                        "ar": "شَعْبان"
                    },
                    "year": "1442",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": [
                        "Lailat-ul-Bara'at"
                    ]
                }
            },
            "meta": {
                "latitude": 30.0444196,
                "longitude": 31.2357116,
                "timezone": "Africa/Cairo",
                "method": {
                    "id": 5,
                    "name": "Egyptian General Authority of Survey",
                    "params": {
                        "Fajr": 19.5,
                        "Isha": 17.5
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:19 (EET)",
                "Sunrise": "05:47 (EET)",
                "Dhuhr": "11:59 (EET)",
                "Asr": "15:30 (EET)",
                "Sunset": "18:13 (EET)",
                "Maghrib": "18:13 (EET)",
                "Isha": "19:31 (EET)",
                "Imsak": "04:09 (EET)",
                "Midnight": "00:00 (EET)"
            },
            "date": {
                "readable": "30 Mar 2021",
                "timestamp": "1617091261",
                "gregorian": {
                    "date": "30-03-2021",
                    "format": "DD-MM-YYYY",
                    "day": "30",
                    "weekday": {
                        "en": "Tuesday"
                    },
                    "month": {
                        "number": 3,
                        "en": "March"
                    },
                    "year": "2021",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "16-08-1442",
                    "format": "DD-MM-YYYY",
                    "day": "16",
                    "weekday": {
                        "en": "Al Thalaata",
                        "ar": "الثلاثاء"
                    },
                    "month": {
                        "number": 8,
                        "en": "Shaʿbān",
                        "ar": "شَعْبان"
                    },
                    "year": "1442",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 30.0444196,
                "longitude": 31.2357116,
                "timezone": "Africa/Cairo",
                "method": {
                    "id": 5,
                    "name": "Egyptian General Authority of Survey",
                    "params": {
                        "Fajr": 19.5,
                        "Isha": 17.5
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:18 (EET)",
                "Sunrise": "05:46 (EET)",
                "Dhuhr": "11:59 (EET)",
                "Asr": "15:30 (EET)",
                "Sunset": "18:13 (EET)",
                "Maghrib": "18:13 (EET)",
                "Isha": "19:32 (EET)",
                "Imsak": "04:08 (EET)",
                "Midnight": "23:59 (EET)"
            },
            "date": {
                "readable": "31 Mar 2021",
                "timestamp": "1617177661",
                "gregorian": {
                    "date": "31-03-2021",
                    "format": "DD-MM-YYYY",
                    "day": "31",
                    "weekday": {
                        "en": "Wednesday"
                    },
                    "month": {
                        "number": 3,
                        "en": "March"
                    },
                    "year": "2021",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "17-08-1442",
                    "format": "DD-MM-YYYY",
                    "day": "17",
                    "weekday": {
                        "en": "Al Arba'a",
                        "ar": "الاربعاء"
                    },
                    "month": {
                        "number": 8,
                        "en": "Shaʿbān",
                        "ar": "شَعْبان"
                    },
                    "year": "1442",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 30.0444196,
                "longitude": 31.2357116,
                "timezone": "Africa/Cairo",
                "method": {
                    "id": 5,
                    "name": "Egyptian General Authority of Survey",
                    "params": {
                        "Fajr": 19.5,
                        "Isha": 17.5
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        }
    ]
}
''';

}