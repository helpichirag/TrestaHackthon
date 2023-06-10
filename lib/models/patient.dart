// To parse this JSON data, do
//
//     final patient = patientFromJson(jsonString);

import 'dart:convert';

List<Patient> patientFromJson(String str) => List<Patient>.from(json.decode(str).map((x) => Patient.fromJson(x)));

String patientToJson(List<Patient> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Patient {
    String uniqueId;
    District district;
    Gender gender;
    int age;
    CurrentQualification currentQualification;
    OrphanStatus orphanStatus;
    AttendedCamp interestedStudy;
    DroppedOut droppedOut;
    AttendedCamp enoughMedicines;
    int daysMedsMissed;
    Cd4Count cd4Count;
    Cd4CountNum cd4CountNum;
    VlCount vlCount;
    VlCountNum vlCountNum;
    FallenSick fallenSick;
    ShareHealthIssues shareHealthIssues;
    TbSymptoms tbSymptoms;
    AttendedCamp tbPositive;
    AttendedCamp hivFriends;
    FriendsSameArt friendsSameArt;
    WhereMetFriends whereMetFriends;
    AttendedCamp attendedCamp;
    AttendedCamp friendsInCamp;
    TopicsOfDiscussion topicsOfDiscussion;
    LikesInCamp likesInCamp;
    AttendedCamp livelihoodTrainingProgram;
    AttendedCamp siblingJob;
    FriendsSameArt travelToArtCenterProgram;
    ShareAboutYourself shareAboutYourself;
    KindOfSupport kindOfSupport;
    DisclosingSharingStatus disclosingSharingStatus;
    String understandingLifeChoices;
    String qualitiesForPe;
    FocusForIndependentAndSustainableLife focusForIndependentAndSustainableLife;
    PeHelpFuture peHelpFuture;
    DiscussInLargeGroups discussInLargeGroups;

    Patient({
        required this.uniqueId,
        required this.district,
        required this.gender,
        required this.age,
        required this.currentQualification,
        required this.orphanStatus,
        required this.interestedStudy,
        required this.droppedOut,
        required this.enoughMedicines,
        required this.daysMedsMissed,
        required this.cd4Count,
        required this.cd4CountNum,
        required this.vlCount,
        required this.vlCountNum,
        required this.fallenSick,
        required this.shareHealthIssues,
        required this.tbSymptoms,
        required this.tbPositive,
        required this.hivFriends,
        required this.friendsSameArt,
        required this.whereMetFriends,
        required this.attendedCamp,
        required this.friendsInCamp,
        required this.topicsOfDiscussion,
        required this.likesInCamp,
        required this.livelihoodTrainingProgram,
        required this.siblingJob,
        required this.travelToArtCenterProgram,
        required this.shareAboutYourself,
        required this.kindOfSupport,
        required this.disclosingSharingStatus,
        required this.understandingLifeChoices,
        required this.qualitiesForPe,
        required this.focusForIndependentAndSustainableLife,
        required this.peHelpFuture,
        required this.discussInLargeGroups,
    });

    factory Patient.fromJson(Map<String, dynamic> json) => Patient(
        uniqueId: json["Unique_ID"],
        district: districtValues.map[json["District"]]!,
        gender: genderValues.map[json["Gender"]]!,
        age: json["Age"],
        currentQualification: currentQualificationValues.map[json["Current_Qualification"]]!,
        orphanStatus: orphanStatusValues.map[json["Orphan_Status"]]!,
        interestedStudy: attendedCampValues.map[json["Interested_Study"]]!,
        droppedOut: droppedOutValues.map[json["Dropped_Out"]]!,
        enoughMedicines: attendedCampValues.map[json["Enough_Medicines"]]!,
        daysMedsMissed: json["Days_Meds_Missed"],
        cd4Count: cd4CountValues.map[json["CD4_Count"]]!,
        cd4CountNum: cd4CountNumValues.map[json["CD4_Count_Num"]]!,
        vlCount: vlCountValues.map[json["VL_Count"]]!,
        vlCountNum: vlCountNumValues.map[json["VL_Count_Num"]]!,
        fallenSick: fallenSickValues.map[json["Fallen_Sick"]]!,
        shareHealthIssues: shareHealthIssuesValues.map[json["Share_Health_Issues"]]!,
        tbSymptoms: tbSymptomsValues.map[json["TB_symptoms"]]!,
        tbPositive: attendedCampValues.map[json["TB_positive"]]!,
        hivFriends: attendedCampValues.map[json["HIV_Friends"]]!,
        friendsSameArt: friendsSameArtValues.map[json["Friends_Same_ART"]]!,
        whereMetFriends: whereMetFriendsValues.map[json["Where_Met_Friends"]]!,
        attendedCamp: attendedCampValues.map[json["Attended_Camp"]]!,
        friendsInCamp: attendedCampValues.map[json["Friends_In_Camp"]]!,
        topicsOfDiscussion: topicsOfDiscussionValues.map[json["Topics_Of_Discussion"]]!,
        likesInCamp: likesInCampValues.map[json["Likes_In_Camp"]]!,
        livelihoodTrainingProgram: attendedCampValues.map[json["Livelihood_Training_Program"]]!,
        siblingJob: attendedCampValues.map[json["Sibling_Job"]]!,
        travelToArtCenterProgram: friendsSameArtValues.map[json["Travel_To_ART_Center_Program"]]!,
        shareAboutYourself: shareAboutYourselfValues.map[json["Share_About_Yourself"]]!,
        kindOfSupport: kindOfSupportValues.map[json["Kind_Of_Support"]]!,
        disclosingSharingStatus: disclosingSharingStatusValues.map[json["Disclosing_Sharing_Status"]]!,
        understandingLifeChoices: json["Understanding_Life_Choices"],
        qualitiesForPe: json["Qualities_For_PE"],
        focusForIndependentAndSustainableLife: focusForIndependentAndSustainableLifeValues.map[json["Focus_For_Independent_And_Sustainable_Life"]]!,
        peHelpFuture: peHelpFutureValues.map[json["PE_Help_Future"]]!,
        discussInLargeGroups: discussInLargeGroupsValues.map[json["Discuss_In_Large_Groups"]]!,
    );

    Map<String, dynamic> toJson() => {
        "Unique_ID": uniqueId,
        "District": districtValues.reverse[district],
        "Gender": genderValues.reverse[gender],
        "Age": age,
        "Current_Qualification": currentQualificationValues.reverse[currentQualification],
        "Orphan_Status": orphanStatusValues.reverse[orphanStatus],
        "Interested_Study": attendedCampValues.reverse[interestedStudy],
        "Dropped_Out": droppedOutValues.reverse[droppedOut],
        "Enough_Medicines": attendedCampValues.reverse[enoughMedicines],
        "Days_Meds_Missed": daysMedsMissed,
        "CD4_Count": cd4CountValues.reverse[cd4Count],
        "CD4_Count_Num": cd4CountNumValues.reverse[cd4CountNum],
        "VL_Count": vlCountValues.reverse[vlCount],
        "VL_Count_Num": vlCountNumValues.reverse[vlCountNum],
        "Fallen_Sick": fallenSickValues.reverse[fallenSick],
        "Share_Health_Issues": shareHealthIssuesValues.reverse[shareHealthIssues],
        "TB_symptoms": tbSymptomsValues.reverse[tbSymptoms],
        "TB_positive": attendedCampValues.reverse[tbPositive],
        "HIV_Friends": attendedCampValues.reverse[hivFriends],
        "Friends_Same_ART": friendsSameArtValues.reverse[friendsSameArt],
        "Where_Met_Friends": whereMetFriendsValues.reverse[whereMetFriends],
        "Attended_Camp": attendedCampValues.reverse[attendedCamp],
        "Friends_In_Camp": attendedCampValues.reverse[friendsInCamp],
        "Topics_Of_Discussion": topicsOfDiscussionValues.reverse[topicsOfDiscussion],
        "Likes_In_Camp": likesInCampValues.reverse[likesInCamp],
        "Livelihood_Training_Program": attendedCampValues.reverse[livelihoodTrainingProgram],
        "Sibling_Job": attendedCampValues.reverse[siblingJob],
        "Travel_To_ART_Center_Program": friendsSameArtValues.reverse[travelToArtCenterProgram],
        "Share_About_Yourself": shareAboutYourselfValues.reverse[shareAboutYourself],
        "Kind_Of_Support": kindOfSupportValues.reverse[kindOfSupport],
        "Disclosing_Sharing_Status": disclosingSharingStatusValues.reverse[disclosingSharingStatus],
        "Understanding_Life_Choices": understandingLifeChoices,
        "Qualities_For_PE": qualitiesForPe,
        "Focus_For_Independent_And_Sustainable_Life": focusForIndependentAndSustainableLifeValues.reverse[focusForIndependentAndSustainableLife],
        "PE_Help_Future": peHelpFutureValues.reverse[peHelpFuture],
        "Discuss_In_Large_Groups": discussInLargeGroupsValues.reverse[discussInLargeGroups],
    };
}

enum AttendedCamp { NO, YES, I_HAVE_FOR_A_WEEK }

final attendedCampValues = EnumValues({
    "I have for a week": AttendedCamp.I_HAVE_FOR_A_WEEK,
    "No": AttendedCamp.NO,
    "Yes": AttendedCamp.YES
});

enum Cd4Count { YES, I_DO_NOT_KNOW }

final cd4CountValues = EnumValues({
    "I do not Know": Cd4Count.I_DO_NOT_KNOW,
    "Yes": Cd4Count.YES
});

enum Cd4CountNum { ABOVE_550, THE_450_TO_550, THE_301_TO_450, THE_300_AND_BELOW, NA }

final cd4CountNumValues = EnumValues({
    "Above 550": Cd4CountNum.ABOVE_550,
    "NA": Cd4CountNum.NA,
    "300 and below": Cd4CountNum.THE_300_AND_BELOW,
    "301 to 450": Cd4CountNum.THE_301_TO_450,
    "450 to 550 ": Cd4CountNum.THE_450_TO_550
});

enum CurrentQualification { THE_12_TH_PASS, DEGREE_PROGRAM, THE_10_TH_PASS }

final currentQualificationValues = EnumValues({
    "Degree program": CurrentQualification.DEGREE_PROGRAM,
    "10th Pass": CurrentQualification.THE_10_TH_PASS,
    "12th Pass": CurrentQualification.THE_12_TH_PASS
});

enum DisclosingSharingStatus { WE_GET_HELP_TO_BE_HEALTHY_AND_SUSTAINABLE, WE_GET_FRIENDS_WITH_WHOM_WE_CAN_SHARE_OUR_CONCERNS, WE_GET_THE_SUPPORT_WE_NEED }

final disclosingSharingStatusValues = EnumValues({
    "We get friends with whom we can share our concerns ": DisclosingSharingStatus.WE_GET_FRIENDS_WITH_WHOM_WE_CAN_SHARE_OUR_CONCERNS,
    "We get help to be healthy and sustainable": DisclosingSharingStatus.WE_GET_HELP_TO_BE_HEALTHY_AND_SUSTAINABLE,
    "We get the support we need": DisclosingSharingStatus.WE_GET_THE_SUPPORT_WE_NEED
});

enum DiscussInLargeGroups { DISAGREE, AGREE, STRONGLY_DISAGREE, STRONGLY_AGREE }

final discussInLargeGroupsValues = EnumValues({
    "Agree": DiscussInLargeGroups.AGREE,
    "Disagree": DiscussInLargeGroups.DISAGREE,
    "Strongly Agree": DiscussInLargeGroups.STRONGLY_AGREE,
    "Strongly Disagree": DiscussInLargeGroups.STRONGLY_DISAGREE
});

enum District { BAGALKOTE, BANGALORE, BIDAR, BIJAPUR, GULBARGA, KOLAR, TUMKUR }

final districtValues = EnumValues({
    "Bagalkote": District.BAGALKOTE,
    "Bangalore": District.BANGALORE,
    "Bidar": District.BIDAR,
    "Bijapur": District.BIJAPUR,
    "Gulbarga": District.GULBARGA,
    "Kolar": District.KOLAR,
    "Tumkur": District.TUMKUR
});

enum DroppedOut { NA, DEGREE, THE_10_TH, THE_12_TH }

final droppedOutValues = EnumValues({
    "Degree": DroppedOut.DEGREE,
    "NA": DroppedOut.NA,
    "10th": DroppedOut.THE_10_TH,
    "12th": DroppedOut.THE_12_TH
});

enum FallenSick { NO, FEVER_AND_COUGH, COLD_AND_COUGH, ALLERGY_IN_FACE }

final fallenSickValues = EnumValues({
    "Allergy in face": FallenSick.ALLERGY_IN_FACE,
    "Cold and cough": FallenSick.COLD_AND_COUGH,
    "Fever and Cough": FallenSick.FEVER_AND_COUGH,
    "No": FallenSick.NO
});

enum FocusForIndependentAndSustainableLife { TRAINING_PROGRAMS_THAT_HELP_TO_BE_HEALTHY, A_JOB_WITHOUT_DISCRIMINATION, OPPORTUNITIES_TO_STUDY }

final focusForIndependentAndSustainableLifeValues = EnumValues({
    "A Job without discrimination": FocusForIndependentAndSustainableLife.A_JOB_WITHOUT_DISCRIMINATION,
    "Opportunities to study": FocusForIndependentAndSustainableLife.OPPORTUNITIES_TO_STUDY,
    "Training programs that help to be healthy": FocusForIndependentAndSustainableLife.TRAINING_PROGRAMS_THAT_HELP_TO_BE_HEALTHY
});

enum FriendsSameArt { NA, YES, NO }

final friendsSameArtValues = EnumValues({
    "NA": FriendsSameArt.NA,
    "No": FriendsSameArt.NO,
    "Yes": FriendsSameArt.YES
});

enum Gender { MALE, FEMALE }

final genderValues = EnumValues({
    "Female": Gender.FEMALE,
    "Male": Gender.MALE
});

enum KindOfSupport { SOMEBODY_TO_SHARE_ABOUT_OUR_CONCERNS, FRIENDS_WHO_HELP_US, SOMEBODY_TO_UNDERSTAND_AND_SUPPORT_US }

final kindOfSupportValues = EnumValues({
    "Friends, who help us": KindOfSupport.FRIENDS_WHO_HELP_US,
    "Somebody to share about our concerns.": KindOfSupport.SOMEBODY_TO_SHARE_ABOUT_OUR_CONCERNS,
    "Somebody to understand and support us.": KindOfSupport.SOMEBODY_TO_UNDERSTAND_AND_SUPPORT_US
});

enum LikesInCamp { ADDRESSED_CONCERNS_HEALTH_AND_LIVELIHOODS, I_DID_NOT_ATTEND_A_CAMP, MAKING_NEW_FRIENDS, GAMES }

final likesInCampValues = EnumValues({
    "Addressed concerns - health and livelihoods.": LikesInCamp.ADDRESSED_CONCERNS_HEALTH_AND_LIVELIHOODS,
    "Games": LikesInCamp.GAMES,
    "I did not attend a camp": LikesInCamp.I_DID_NOT_ATTEND_A_CAMP,
    "Making new friends": LikesInCamp.MAKING_NEW_FRIENDS
});

enum OrphanStatus { DOUBLE_ORPHAN, SINGLE_ORPHAN }

final orphanStatusValues = EnumValues({
    "Double Orphan": OrphanStatus.DOUBLE_ORPHAN,
    "Single Orphan": OrphanStatus.SINGLE_ORPHAN
});

enum PeHelpFuture { I_AM_CONFIDENT_THAT_I_CAN_LIVE_A_HEALTHY_LIFE, I_AM_NOT_WORRIED_ABOUT_HIV, THIS_IS_THE_FIRST_TIME_I_WAS_ABLE_TO_SHARE_ABOUT_MYSELF }

final peHelpFutureValues = EnumValues({
    "I am confident that I can live a healthy life.": PeHelpFuture.I_AM_CONFIDENT_THAT_I_CAN_LIVE_A_HEALTHY_LIFE,
    "I am not worried about HIV.": PeHelpFuture.I_AM_NOT_WORRIED_ABOUT_HIV,
    "This is the first time I was able to share about myself": PeHelpFuture.THIS_IS_THE_FIRST_TIME_I_WAS_ABLE_TO_SHARE_ABOUT_MYSELF
});

enum ShareAboutYourself { NOT_TO_ANYONE, I_CAN_SHARE_TO_PEOPLE_WHO_ARE_CLOSE_TO_ME_AND_ARE_SUPPORTIVE, YES }

final shareAboutYourselfValues = EnumValues({
    "I can share to people who are close to me and are supportive": ShareAboutYourself.I_CAN_SHARE_TO_PEOPLE_WHO_ARE_CLOSE_TO_ME_AND_ARE_SUPPORTIVE,
    "Not to anyone": ShareAboutYourself.NOT_TO_ANYONE,
    "Yes": ShareAboutYourself.YES
});

enum ShareHealthIssues { CLOSE_FAMILY_MEMBERS, ART_AND_FIELD_TEAM, FIELD_WORKERS, SELF_ADDRESSING }

final shareHealthIssuesValues = EnumValues({
    "ART and Field Team": ShareHealthIssues.ART_AND_FIELD_TEAM,
    "Close Family Members": ShareHealthIssues.CLOSE_FAMILY_MEMBERS,
    "Field Workers": ShareHealthIssues.FIELD_WORKERS,
    "Self addressing": ShareHealthIssues.SELF_ADDRESSING
});

enum TbSymptoms { COUGH, COUGH_WEIGHT_LOSS, FEVER, NIGHT_SWEATS, I_DO_NOT_KNOW, COUGH_NIGHT_SWEATS, WEIGHT_LOSS, FEVER_COUGH_WEIGHT_LOSS, FEVER_COUGH_NIGHT_SWEATS_WEIGHT_LOSS, FEVER_COUGH, FEVER_NIGHT_SWEATS_WEIGHT_LOSS, NIGHT_SWEATS_WEIGHT_LOSS, FEVER_WEIGHT_LOSS, FEVER_COUGH_NIGHT_SWEATS }

final tbSymptomsValues = EnumValues({
    "Cough": TbSymptoms.COUGH,
    "Cough, Night Sweats": TbSymptoms.COUGH_NIGHT_SWEATS,
    "Cough, Weight Loss": TbSymptoms.COUGH_WEIGHT_LOSS,
    "Fever": TbSymptoms.FEVER,
    "Fever, Cough": TbSymptoms.FEVER_COUGH,
    "Fever, Cough, Night Sweats": TbSymptoms.FEVER_COUGH_NIGHT_SWEATS,
    "Fever, Cough, Night Sweats, Weight Loss": TbSymptoms.FEVER_COUGH_NIGHT_SWEATS_WEIGHT_LOSS,
    "Fever, Cough, Weight Loss": TbSymptoms.FEVER_COUGH_WEIGHT_LOSS,
    "Fever, Night Sweats, Weight Loss": TbSymptoms.FEVER_NIGHT_SWEATS_WEIGHT_LOSS,
    "Fever, Weight Loss": TbSymptoms.FEVER_WEIGHT_LOSS,
    "I do not know": TbSymptoms.I_DO_NOT_KNOW,
    "Night Sweats": TbSymptoms.NIGHT_SWEATS,
    "Night Sweats, Weight Loss": TbSymptoms.NIGHT_SWEATS_WEIGHT_LOSS,
    "Weight Loss": TbSymptoms.WEIGHT_LOSS
});

enum TopicsOfDiscussion { TREATMENT_ADHERENCE_AND_HEALTHY_LIVING, INTEGRATING_EDUCATION, UNDERSTANDING_JOB_PLACEMENTS }

final topicsOfDiscussionValues = EnumValues({
    "Integrating Education ": TopicsOfDiscussion.INTEGRATING_EDUCATION,
    "Treatment Adherence and Healthy Living": TopicsOfDiscussion.TREATMENT_ADHERENCE_AND_HEALTHY_LIVING,
    "Understanding Job Placements": TopicsOfDiscussion.UNDERSTANDING_JOB_PLACEMENTS
});

enum VlCount { YES, I_DO_NOT_KNOW }

final vlCountValues = EnumValues({
    "I do not know": VlCount.I_DO_NOT_KNOW,
    "Yes": VlCount.YES
});

enum VlCountNum { TARGET_NOT_DETECTED_TND, THE_0_AND_LESS_THEN_75_COPIES, THE_200_TO_400_COPIES, THE_75_TO_200_COPIES, NA, THE_400_TO_500_COPIES }

final vlCountNumValues = EnumValues({
    "NA": VlCountNum.NA,
    "Target not detected (TND)": VlCountNum.TARGET_NOT_DETECTED_TND,
    "0 and less then 75 copies": VlCountNum.THE_0_AND_LESS_THEN_75_COPIES,
    "200 to 400 copies": VlCountNum.THE_200_TO_400_COPIES,
    "400 to 500 copies": VlCountNum.THE_400_TO_500_COPIES,
    "75 to 200 copies": VlCountNum.THE_75_TO_200_COPIES
});

enum WhereMetFriends { NA, CAMPS, ART_CENTRE, SCHOOL_COLLEGE }

final whereMetFriendsValues = EnumValues({
    "ART Centre": WhereMetFriends.ART_CENTRE,
    "Camps": WhereMetFriends.CAMPS,
    "NA": WhereMetFriends.NA,
    "School/ College": WhereMetFriends.SCHOOL_COLLEGE
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
