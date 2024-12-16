{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Partners.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.Partners.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AvailableOffer_OfferLevel
    AvailableOffer_OfferLevel
      (
        AvailableOffer_OfferLevel_OFFERLEVELUNSPECIFIED,
        AvailableOffer_OfferLevel_OFFERLEVELDENYPROBLEM,
        AvailableOffer_OfferLevel_OFFERLEVELDENYCONTRACT,
        AvailableOffer_OfferLevel_OFFERLEVELMANUAL,
        AvailableOffer_OfferLevel_OFFER_LEVEL_LIMIT_0,
        AvailableOffer_OfferLevel_OFFER_LEVEL_LIMIT_5,
        AvailableOffer_OfferLevel_OFFER_LEVEL_LIMIT_15,
        AvailableOffer_OfferLevel_OFFER_LEVEL_LIMIT_50,
        ..
      ),

    -- * AvailableOffer_OfferType
    AvailableOffer_OfferType
      (
        AvailableOffer_OfferType_OFFERTYPEUNSPECIFIED,
        AvailableOffer_OfferType_OFFERTYPESPENDXGETY,
        AvailableOffer_OfferType_OFFERTYPEVIDEO,
        AvailableOffer_OfferType_OFFERTYPESPENDMATCH,
        ..
      ),

    -- * Certification_CertificationType
    Certification_CertificationType
      (
        Certification_CertificationType_CERTIFICATIONTYPEUNSPECIFIED,
        Certification_CertificationType_CTADWORDS,
        Certification_CertificationType_CTYOUTUBE,
        Certification_CertificationType_CTVIDEOADS,
        Certification_CertificationType_CTANALYTICS,
        Certification_CertificationType_CTDOUBLECLICK,
        Certification_CertificationType_CTSHOPPING,
        Certification_CertificationType_CTMOBILE,
        Certification_CertificationType_CTDIGITALSALES,
        Certification_CertificationType_CTADWORDSSEARCH,
        Certification_CertificationType_CTADWORDSDISPLAY,
        Certification_CertificationType_CTMOBILESITES,
        ..
      ),

    -- * CertificationExamStatus_Type
    CertificationExamStatus_Type
      (
        CertificationExamStatus_Type_CERTIFICATIONEXAMTYPEUNSPECIFIED,
        CertificationExamStatus_Type_CETADWORDSFUNDAMENTALS,
        CertificationExamStatus_Type_CETADWORDSADVANCEDSEARCH,
        CertificationExamStatus_Type_CETADWORDSADVANCEDDISPLAY,
        CertificationExamStatus_Type_CETVIDEOADS,
        CertificationExamStatus_Type_CETDOUBLECLICK,
        CertificationExamStatus_Type_CETANALYTICS,
        CertificationExamStatus_Type_CETSHOPPING,
        CertificationExamStatus_Type_CETMOBILE,
        CertificationExamStatus_Type_CETDIGITALSALES,
        CertificationExamStatus_Type_CETMOBILESITES,
        ..
      ),

    -- * CertificationStatus_Type
    CertificationStatus_Type
      (
        CertificationStatus_Type_CERTIFICATIONTYPEUNSPECIFIED,
        CertificationStatus_Type_CTADWORDS,
        CertificationStatus_Type_CTYOUTUBE,
        CertificationStatus_Type_CTVIDEOADS,
        CertificationStatus_Type_CTANALYTICS,
        CertificationStatus_Type_CTDOUBLECLICK,
        CertificationStatus_Type_CTSHOPPING,
        CertificationStatus_Type_CTMOBILE,
        CertificationStatus_Type_CTDIGITALSALES,
        CertificationStatus_Type_CTADWORDSSEARCH,
        CertificationStatus_Type_CTADWORDSDISPLAY,
        CertificationStatus_Type_CTMOBILESITES,
        ..
      ),

    -- * Company_BadgeTier
    Company_BadgeTier
      (
        Company_BadgeTier_BADGETIERNONE,
        Company_BadgeTier_BADGETIERREGULAR,
        Company_BadgeTier_BADGETIERPREMIER,
        ..
      ),

    -- * Company_ProfileStatus
    Company_ProfileStatus
      (
        Company_ProfileStatus_COMPANYPROFILESTATUSUNSPECIFIED,
        Company_ProfileStatus_Hidden,
        Company_ProfileStatus_Published,
        Company_ProfileStatus_Searchable,
        ..
      ),

    -- * CompanyRelation_BadgeTier
    CompanyRelation_BadgeTier
      (
        CompanyRelation_BadgeTier_BADGETIERNONE,
        CompanyRelation_BadgeTier_BADGETIERREGULAR,
        CompanyRelation_BadgeTier_BADGETIERPREMIER,
        ..
      ),

    -- * CompanyRelation_State
    CompanyRelation_State
      (
        CompanyRelation_State_USERCOMPANYREATIONSTATENONESPECIFIED,
        CompanyRelation_State_USERCOMPANYRELATIONSTATEAWAITEMAIL,
        CompanyRelation_State_USERCOMPANYRELATIONSTATEAWAITADMIN,
        CompanyRelation_State_USERCOMPANYRELATIONSTATEAPPROVED,
        ..
      ),

    -- * CountryOfferInfo_OfferType
    CountryOfferInfo_OfferType
      (
        CountryOfferInfo_OfferType_OFFERTYPEUNSPECIFIED,
        CountryOfferInfo_OfferType_OFFERTYPESPENDXGETY,
        CountryOfferInfo_OfferType_OFFERTYPEVIDEO,
        CountryOfferInfo_OfferType_OFFERTYPESPENDMATCH,
        ..
      ),

    -- * CreateLeadResponse_RecaptchaStatus
    CreateLeadResponse_RecaptchaStatus
      (
        CreateLeadResponse_RecaptchaStatus_RECAPTCHASTATUSUNSPECIFIED,
        CreateLeadResponse_RecaptchaStatus_RSNOTNEEDED,
        CreateLeadResponse_RecaptchaStatus_RSPASSED,
        CreateLeadResponse_RecaptchaStatus_RSFAILED,
        ..
      ),

    -- * EventData_Key
    EventData_Key
      (
        EventData_Key_EVENTDATATYPEUNSPECIFIED,
        EventData_Key_Action,
        EventData_Key_AGENCYID,
        EventData_Key_AGENCYNAME,
        EventData_Key_AGENCYPHONENUMBER,
        EventData_Key_AGENCYWEBSITE,
        EventData_Key_Budget,
        EventData_Key_CENTERPOINT,
        EventData_Key_Certification,
        EventData_Key_Comment,
        EventData_Key_Country,
        EventData_Key_Currency,
        EventData_Key_CURRENTLYVIEWEDAGENCYID,
        EventData_Key_Distance,
        EventData_Key_DISTANCETYPE,
        EventData_Key_Exam,
        EventData_Key_HISTORYTOKEN,
        EventData_Key_ID,
        EventData_Key_Industry,
        EventData_Key_INSIGHTTAG,
        EventData_Key_Language,
        EventData_Key_Location,
        EventData_Key_MARKETINGOPTIN,
        EventData_Key_Query,
        EventData_Key_SEARCHSTARTINDEX,
        EventData_Key_Service,
        EventData_Key_SHOWVOW,
        EventData_Key_Solution,
        EventData_Key_TRAFFICSOURCEID,
        EventData_Key_TRAFFICSUBID,
        EventData_Key_VIEWPORT,
        EventData_Key_Website,
        EventData_Key_Details,
        EventData_Key_EXPERIMENTID,
        EventData_Key_GPSMOTIVATION,
        EventData_Key_Url,
        EventData_Key_ELEMENTFOCUS,
        EventData_Key_Progress,
        ..
      ),

    -- * ExamStatus_ExamType
    ExamStatus_ExamType
      (
        ExamStatus_ExamType_CERTIFICATIONEXAMTYPEUNSPECIFIED,
        ExamStatus_ExamType_CETADWORDSFUNDAMENTALS,
        ExamStatus_ExamType_CETADWORDSADVANCEDSEARCH,
        ExamStatus_ExamType_CETADWORDSADVANCEDDISPLAY,
        ExamStatus_ExamType_CETVIDEOADS,
        ExamStatus_ExamType_CETDOUBLECLICK,
        ExamStatus_ExamType_CETANALYTICS,
        ExamStatus_ExamType_CETSHOPPING,
        ExamStatus_ExamType_CETMOBILE,
        ExamStatus_ExamType_CETDIGITALSALES,
        ExamStatus_ExamType_CETMOBILESITES,
        ..
      ),

    -- * HistoricalOffer_OfferType
    HistoricalOffer_OfferType
      (
        HistoricalOffer_OfferType_OFFERTYPEUNSPECIFIED,
        HistoricalOffer_OfferType_OFFERTYPESPENDXGETY,
        HistoricalOffer_OfferType_OFFERTYPEVIDEO,
        HistoricalOffer_OfferType_OFFERTYPESPENDMATCH,
        ..
      ),

    -- * HistoricalOffer_Status
    HistoricalOffer_Status
      (
        HistoricalOffer_Status_OFFERSTATUSUNSPECIFIED,
        HistoricalOffer_Status_OFFERSTATUSDISTRIBUTED,
        HistoricalOffer_Status_OFFERSTATUSREDEEMED,
        HistoricalOffer_Status_OFFERSTATUSAWARDED,
        HistoricalOffer_Status_OFFERSTATUSEXPIRED,
        ..
      ),

    -- * Lead_State
    Lead_State
      (
        Lead_State_LEADSTATEUNSPECIFIED,
        Lead_State_Lead,
        Lead_State_Contacted,
        Lead_State_Client,
        Lead_State_Other,
        ..
      ),

    -- * Lead_Type
    Lead_Type
      (
        Lead_Type_LEADTYPEUNSPECIFIED,
        Lead_Type_LTGPS,
        ..
      ),

    -- * ListOffersResponse_NoOfferReason
    ListOffersResponse_NoOfferReason
      (
        ListOffersResponse_NoOfferReason_NOOFFERREASONUNSPECIFIED,
        ListOffersResponse_NoOfferReason_NOOFFERREASONNOMCC,
        ListOffersResponse_NoOfferReason_NOOFFERREASONLIMITREACHED,
        ListOffersResponse_NoOfferReason_NOOFFERREASONINELIGIBLE,
        ..
      ),

    -- * LogMessageRequest_Level
    LogMessageRequest_Level
      (
        LogMessageRequest_Level_MESSAGELEVELUNSPECIFIED,
        LogMessageRequest_Level_MLFINE,
        LogMessageRequest_Level_MLINFO,
        LogMessageRequest_Level_MLWARNING,
        LogMessageRequest_Level_MLSEVERE,
        ..
      ),

    -- * LogUserEventRequest_EventAction
    LogUserEventRequest_EventAction
      (
        LogUserEventRequest_EventAction_EVENTACTIONUNSPECIFIED,
        LogUserEventRequest_EventAction_SMBCLICKEDFINDAPARTNERBUTTONBOTTOM,
        LogUserEventRequest_EventAction_SMBCLICKEDFINDAPARTNERBUTTONTOP,
        LogUserEventRequest_EventAction_AGENCYCLICKEDJOINNOWBUTTONBOTTOM,
        LogUserEventRequest_EventAction_AGENCYCLICKEDJOINNOWBUTTONTOP,
        LogUserEventRequest_EventAction_SMBCANCELEDPARTNERCONTACTFORM,
        LogUserEventRequest_EventAction_SMBCLICKEDCONTACTAPARTNER,
        LogUserEventRequest_EventAction_SMBCOMPLETEDPARTNERCONTACTFORM,
        LogUserEventRequest_EventAction_SMBENTEREDEMAILINCONTACTPARTNERFORM,
        LogUserEventRequest_EventAction_SMBENTEREDNAMEINCONTACTPARTNERFORM,
        LogUserEventRequest_EventAction_SMBENTEREDPHONEINCONTACTPARTNERFORM,
        LogUserEventRequest_EventAction_SMBFAILEDRECAPTCHAINCONTACTPARTNERFORM,
        LogUserEventRequest_EventAction_PARTNERVIEWEDBYSMB,
        LogUserEventRequest_EventAction_SMBCANCELEDPARTNERCONTACTFORMONGPS,
        LogUserEventRequest_EventAction_SMBCHANGEDASEARCHPARAMETERTOP,
        LogUserEventRequest_EventAction_SMBCLICKEDCONTACTAPARTNERONGPS,
        LogUserEventRequest_EventAction_SMBCLICKEDSHOWMOREPARTNERSBUTTONBOTTOM,
        LogUserEventRequest_EventAction_SMBCOMPLETEDPARTNERCONTACTFORMONGPS,
        LogUserEventRequest_EventAction_SMBNOPARTNERSAVAILABLEWITHSEARCHCRITERIA,
        LogUserEventRequest_EventAction_SMBPERFORMEDSEARCHONGPS,
        LogUserEventRequest_EventAction_SMBVIEWEDAPARTNERONGPS,
        LogUserEventRequest_EventAction_SMBCANCELEDPARTNERCONTACTFORMONPROFILEPAGE,
        LogUserEventRequest_EventAction_SMBCLICKEDCONTACTAPARTNERONPROFILEPAGE,
        LogUserEventRequest_EventAction_SMBCLICKEDPARTNERWEBSITE,
        LogUserEventRequest_EventAction_SMBCOMPLETEDPARTNERCONTACTFORMONPROFILEPAGE,
        LogUserEventRequest_EventAction_SMBVIEWEDAPARTNERPROFILE,
        LogUserEventRequest_EventAction_AGENCYCLICKEDACCEPTTOSBUTTON,
        LogUserEventRequest_EventAction_AGENCYCHANGEDTOSCOUNTRY,
        LogUserEventRequest_EventAction_AGENCYADDEDADDRESSINMYPROFILEPORTAL,
        LogUserEventRequest_EventAction_AGENCYADDEDPHONENUMBERINMYPROFILEPORTAL,
        LogUserEventRequest_EventAction_AGENCYCHANGEDPRIMARYACCOUNTASSOCIATION,
        LogUserEventRequest_EventAction_AGENCYCHANGEDPRIMARYCOUNTRYASSOCIATION,
        LogUserEventRequest_EventAction_AGENCYCLICKEDAFFILIATEBUTTONINMYPROFILEINPORTAL,
        LogUserEventRequest_EventAction_AGENCYCLICKEDGIVEEDITACCESSINMYPROFILEPORTAL,
        LogUserEventRequest_EventAction_AGENCYCLICKEDLOGOUTINMYPROFILEPORTAL,
        LogUserEventRequest_EventAction_AGENCYCLICKEDMYPROFILELEFTNAVINPORTAL,
        LogUserEventRequest_EventAction_AGENCYCLICKEDSAVEANDCONTINUEATBOTOFCOMPLETEPROFILE,
        LogUserEventRequest_EventAction_AGENCYCLICKEDUNAFFILIATEINMYPROFILEPORTAL,
        LogUserEventRequest_EventAction_AGENCYFILLEDOUTCOMPAFFILIATIONINMYPROFILEPORTAL,
        LogUserEventRequest_EventAction_AGENCYSUCCESSFULLYCONNECTEDWITHCOMPANYINMYPROFILE,
        LogUserEventRequest_EventAction_AGENCYCLICKEDCREATEMCCINMYPROFILEPORTAL,
        LogUserEventRequest_EventAction_AGENCYDIDNTHAVEANMCCASSOCIATEDONCOMPLETEPROFILE,
        LogUserEventRequest_EventAction_AGENCYHADANMCCASSOCIATEDONCOMPLETEPROFILE,
        LogUserEventRequest_EventAction_AGENCYADDEDJOBFUNCTIONINMYPROFILEPORTAL,
        LogUserEventRequest_EventAction_AGENCYLOOKEDATJOBFUNCTIONDROPDOWN,
        LogUserEventRequest_EventAction_AGENCYSELECTEDACCOUNTMANAGERASJOBFUNCTION,
        LogUserEventRequest_EventAction_AGENCYSELECTEDACCOUNTPLANNERASJOBFUNCTION,
        LogUserEventRequest_EventAction_AGENCYSELECTEDANALYTICSASJOBFUNCTION,
        LogUserEventRequest_EventAction_AGENCYSELECTEDCREATIVEASJOBFUNCTION,
        LogUserEventRequest_EventAction_AGENCYSELECTEDMEDIABUYERASJOBFUNCTION,
        LogUserEventRequest_EventAction_AGENCYSELECTEDMEDIAPLANNERASJOBFUNCTION,
        LogUserEventRequest_EventAction_AGENCYSELECTEDOTHERASJOBFUNCTION,
        LogUserEventRequest_EventAction_AGENCYSELECTEDPRODUCTIONASJOBFUNCTION,
        LogUserEventRequest_EventAction_AGENCYSELECTEDSEOASJOBFUNCTION,
        LogUserEventRequest_EventAction_AGENCYSELECTEDSALESREPASJOBFUNCTION,
        LogUserEventRequest_EventAction_AGENCYSELECTEDSEARCHSPECIALISTASJOBFUNCTION,
        LogUserEventRequest_EventAction_AGENCYADDEDCHANNELSINMYPROFILEPORTAL,
        LogUserEventRequest_EventAction_AGENCYLOOKEDATADDCHANNELDROPDOWN,
        LogUserEventRequest_EventAction_AGENCYSELECTEDCROSSCHANNELFROMADDCHANNEL,
        LogUserEventRequest_EventAction_AGENCYSELECTEDDISPLAYFROMADDCHANNEL,
        LogUserEventRequest_EventAction_AGENCYSELECTEDMOBILEFROMADDCHANNEL,
        LogUserEventRequest_EventAction_AGENCYSELECTEDSEARCHFROMADDCHANNEL,
        LogUserEventRequest_EventAction_AGENCYSELECTEDSOCIALFROMADDCHANNEL,
        LogUserEventRequest_EventAction_AGENCYSELECTEDTOOLSFROMADDCHANNEL,
        LogUserEventRequest_EventAction_AGENCYSELECTEDYOUTUBEFROMADDCHANNEL,
        LogUserEventRequest_EventAction_AGENCYADDEDINDUSTRIESINMYPROFILEPORTAL,
        LogUserEventRequest_EventAction_AGENCYCHANGEDADDINDUSTRIESDROPDOWN,
        LogUserEventRequest_EventAction_AGENCYADDEDMARKETSINMYPROFILEPORTAL,
        LogUserEventRequest_EventAction_AGENCYCHANGEDADDMARKETSDROPDOWN,
        LogUserEventRequest_EventAction_AGENCYCHECKEDRECIEVEMAILPROMOTIONSMYPROFILE,
        LogUserEventRequest_EventAction_AGENCYCHECKEDRECIEVEMAILPROMOTIONSSIGNUP,
        LogUserEventRequest_EventAction_AGENCYSELECTEDOPTINBETATESTSANDMKTRESEARCH,
        LogUserEventRequest_EventAction_AGENCYSELECTEDOPTINBETATESTSINMYPROFILEPORTAL,
        LogUserEventRequest_EventAction_AGENCYSELECTEDOPTINNEWSINMYPROFILEPORTAL,
        LogUserEventRequest_EventAction_AGENCYSELECTEDOPTINNEWSINVITATIONSANDPROMOS,
        LogUserEventRequest_EventAction_AGENCYSELECTEDOPTINPERFORMANCESUGINMYPROFILEPORTAL,
        LogUserEventRequest_EventAction_AGENCYSELECTEDOPTINPERFORMANCESUGGESTIONS,
        LogUserEventRequest_EventAction_AGENCYSELECTEDOPTINSELECTALLEMAILNOTIFICATIONS,
        LogUserEventRequest_EventAction_AGENCYSELECTEDSELECTALLOPTINSINMYPROFILEPORTAL,
        LogUserEventRequest_EventAction_AGENCYCLICKEDBACKBUTTONONCONNECTWITHCOMPANY,
        LogUserEventRequest_EventAction_AGENCYCLICKEDCONTINUETOOVERVIEWONCONNECTWITHCOMPANY,
        LogUserEventRequest_EventAction_AGECNYCLICKEDCREATEMCCCONNECTWITHCOMPANYNOTFOUND,
        LogUserEventRequest_EventAction_AGECNYCLICKEDGIVEEDITACCESSCONNECTWITHCOMPANYNOTFOUND,
        LogUserEventRequest_EventAction_AGECNYCLICKEDLOGOUTCONNECTWITHCOMPANYNOTFOUND,
        LogUserEventRequest_EventAction_AGENCYCLICKEDSKIPFORNOWONCONNECTWITHCOMPANYPAGE,
        LogUserEventRequest_EventAction_AGENCYCLOSEDCONNECTEDTOCOMPANYXBUTTONWRONGCOMPANY,
        LogUserEventRequest_EventAction_AGENCYCOMPLETEDFIELDCONNECTWITHCOMPANY,
        LogUserEventRequest_EventAction_AGECNYFOUNDCOMPANYTOCONNECTWITH,
        LogUserEventRequest_EventAction_AGENCYSUCCESSFULLYCREATEDCOMPANY,
        LogUserEventRequest_EventAction_AGENCYADDEDNEWCOMPANYLOCATION,
        LogUserEventRequest_EventAction_AGENCYCLICKEDCOMMUNITYJOINNOWLINKINPORTALNOTIFICATIONS,
        LogUserEventRequest_EventAction_AGENCYCLICKEDCONNECTTOCOMPANYLINKINPORTALNOTIFICATIONS,
        LogUserEventRequest_EventAction_AGENCYCLICKEDGETCERTIFIEDLINKINPORTALNOTIFICATIONS,
        LogUserEventRequest_EventAction_AGENCYCLICKEDGETVIDEOADSCERTIFIEDLINKINPORTALNOTIFICATIONS,
        LogUserEventRequest_EventAction_AGENCYCLICKEDLINKTOMCCLINKINPORTALNOTIFICATIONS,
        LogUserEventRequest_EventAction_AGENCYCLICKEDINSIGHTCONTENTINPORTAL,
        LogUserEventRequest_EventAction_AGENCYCLICKEDINSIGHTSVIEWNOWPITCHDECKSINPORTAL,
        LogUserEventRequest_EventAction_AGENCYCLICKEDINSIGHTSLEFTNAVINPORTAL,
        LogUserEventRequest_EventAction_AGENCYCLICKEDINSIGHTSUPLOADCONTENT,
        LogUserEventRequest_EventAction_AGENCYCLICKEDINSIGHTSVIEWEDDEPRECATED,
        LogUserEventRequest_EventAction_AGENCYCLICKEDCOMMUNITYLEFTNAVINPORTAL,
        LogUserEventRequest_EventAction_AGENCYCLICKEDJOINCOMMUNITYBUTTONCOMMUNITYPORTAL,
        LogUserEventRequest_EventAction_AGENCYCLICKEDCERTIFICATIONSLEFTNAVINPORTAL,
        LogUserEventRequest_EventAction_AGENCYCLICKEDCERTIFICATIONSPRODUCTLEFTNAVINPORTAL,
        LogUserEventRequest_EventAction_AGENCYCLICKEDPARTNERSTATUSLEFTNAVINPORTAL,
        LogUserEventRequest_EventAction_AGENCYCLICKEDPARTNERSTATUSPRODUCTLEFTNAVINPORTAL,
        LogUserEventRequest_EventAction_AGENCYCLICKEDOFFERSLEFTNAVINPORTAL,
        LogUserEventRequest_EventAction_AGENCYCLICKEDSENDBUTTONONOFFERSPAGE,
        LogUserEventRequest_EventAction_AGENCYCLICKEDEXAMDETAILSONCERTADWORDSPAGE,
        LogUserEventRequest_EventAction_AGENCYCLICKEDSEEEXAMSCERTIFICATIONMAINPAGE,
        LogUserEventRequest_EventAction_AGENCYCLICKEDTAKEEXAMONCERTEXAMPAGE,
        LogUserEventRequest_EventAction_AGENCYOPENEDLASTADMINDIALOG,
        LogUserEventRequest_EventAction_AGENCYOPENEDDIALOGWITHNOUSERS,
        LogUserEventRequest_EventAction_AGENCYPROMOTEDUSERTOADMIN,
        LogUserEventRequest_EventAction_AGENCYUNAFFILIATED,
        LogUserEventRequest_EventAction_AGENCYCHANGEDROLES,
        LogUserEventRequest_EventAction_SMBCLICKEDCOMPANYNAMELINKTOPROFILE,
        LogUserEventRequest_EventAction_SMBVIEWEDADWORDSCERTIFICATE,
        LogUserEventRequest_EventAction_SMBVIEWEDADWORDSSEARCHCERTIFICATE,
        LogUserEventRequest_EventAction_SMBVIEWEDADWORDSDISPLAYCERTIFICATE,
        LogUserEventRequest_EventAction_SMBCLICKEDADWORDSCERTIFICATEHELPICON,
        LogUserEventRequest_EventAction_SMBVIEWEDANALYTICSCERTIFICATE,
        LogUserEventRequest_EventAction_SMBVIEWEDDOUBLECLICKCERTIFICATE,
        LogUserEventRequest_EventAction_SMBVIEWEDMOBILESITESCERTIFICATE,
        LogUserEventRequest_EventAction_SMBVIEWEDVIDEOADSCERTIFICATE,
        LogUserEventRequest_EventAction_SMBVIEWEDSHOPPINGCERTIFICATE,
        LogUserEventRequest_EventAction_SMBCLICKEDVIDEOADSCERTIFICATEHELPICON,
        LogUserEventRequest_EventAction_SMBVIEWEDDIGITALSALESCERTIFICATE,
        LogUserEventRequest_EventAction_CLICKEDHELPATBOTTOM,
        LogUserEventRequest_EventAction_CLICKEDHELPATTOP,
        LogUserEventRequest_EventAction_CLIENTERROR,
        LogUserEventRequest_EventAction_AGENCYCLICKEDLEFTNAVSTORIES,
        LogUserEventRequest_EventAction_Clicked,
        LogUserEventRequest_EventAction_SMBVIEWEDMOBILECERTIFICATE,
        LogUserEventRequest_EventAction_AGENCYFAILEDCOMPANYVERIFICATION,
        LogUserEventRequest_EventAction_VISITEDLANDING,
        LogUserEventRequest_EventAction_VISITEDGPS,
        LogUserEventRequest_EventAction_VISITEDAGENCYPORTAL,
        LogUserEventRequest_EventAction_CANCELLEDINDIVIDUALSIGNUP,
        LogUserEventRequest_EventAction_CANCELLEDCOMPANYSIGNUP,
        LogUserEventRequest_EventAction_AGENCYCLICKEDSIGNINBUTTONTOP,
        LogUserEventRequest_EventAction_AGENCYCLICKEDSAVEANDCONTINUEATBOTOFINCOMPLETEPROFILE,
        LogUserEventRequest_EventAction_AGENCYUNSELECTEDOPTINNEWSINVITATIONSANDPROMOS,
        LogUserEventRequest_EventAction_AGENCYUNSELECTEDOPTINBETATESTSANDMKTRESEARCH,
        LogUserEventRequest_EventAction_AGENCYUNSELECTEDOPTINPERFORMANCESUGGESTIONS,
        LogUserEventRequest_EventAction_AGENCYSELECTEDOPTOUTUNSELECTALLEMAILNOTIFICATIONS,
        LogUserEventRequest_EventAction_AGENCYLINKEDINDIVIDUALMCC,
        LogUserEventRequest_EventAction_AGENCYSUGGESTEDTOUSER,
        LogUserEventRequest_EventAction_AGENCYIGNOREDSUGGESTEDAGENCIESANDSEARCHED,
        LogUserEventRequest_EventAction_AGENCYPICKEDSUGGESTEDAGENCY,
        LogUserEventRequest_EventAction_AGENCYSEARCHEDFORAGENCIES,
        LogUserEventRequest_EventAction_AGENCYPICKEDSEARCHEDAGENCY,
        LogUserEventRequest_EventAction_AGENCYDISMISSEDAFFILIATIONWIDGET,
        LogUserEventRequest_EventAction_AGENCYCLICKEDINSIGHTSDOWNLOADCONTENT,
        LogUserEventRequest_EventAction_AGENCYPROGRESSINSIGHTSVIEWCONTENT,
        LogUserEventRequest_EventAction_AGENCYCLICKEDCANCELACCEPTTOSBUTTON,
        LogUserEventRequest_EventAction_SMBENTEREDWEBSITEINCONTACTPARTNERFORM,
        LogUserEventRequest_EventAction_AGENCYSELECTEDOPTINAFAMIGRATION,
        LogUserEventRequest_EventAction_AGENCYSELECTEDOPTOUTAFAMIGRATION,
        ..
      ),

    -- * LogUserEventRequest_EventCategory
    LogUserEventRequest_EventCategory
      (
        LogUserEventRequest_EventCategory_EVENTCATEGORYUNSPECIFIED,
        LogUserEventRequest_EventCategory_GOOGLEPARTNERSEARCH,
        LogUserEventRequest_EventCategory_GOOGLEPARTNERSIGNUPFLOW,
        LogUserEventRequest_EventCategory_GOOGLEPARTNERPORTAL,
        LogUserEventRequest_EventCategory_GOOGLEPARTNERPORTALMYPROFILE,
        LogUserEventRequest_EventCategory_GOOGLEPARTNERPORTALCERTIFICATIONS,
        LogUserEventRequest_EventCategory_GOOGLEPARTNERPORTALCOMMUNITY,
        LogUserEventRequest_EventCategory_GOOGLEPARTNERPORTALINSIGHTS,
        LogUserEventRequest_EventCategory_GOOGLEPARTNERPORTALCLIENTS,
        LogUserEventRequest_EventCategory_GOOGLEPARTNERPUBLICUSERPROFILE,
        LogUserEventRequest_EventCategory_GOOGLEPARTNERPANEL,
        LogUserEventRequest_EventCategory_GOOGLEPARTNERPORTALLASTADMINDIALOG,
        LogUserEventRequest_EventCategory_GOOGLEPARTNERCLIENT,
        LogUserEventRequest_EventCategory_GOOGLEPARTNERPORTALCOMPANYPROFILE,
        LogUserEventRequest_EventCategory_EXTERNALLINKS,
        LogUserEventRequest_EventCategory_GOOGLEPARTNERLANDING,
        ..
      ),

    -- * LogUserEventRequest_EventScope
    LogUserEventRequest_EventScope
      (
        LogUserEventRequest_EventScope_EVENTSCOPEUNSPECIFIED,
        LogUserEventRequest_EventScope_Visitor,
        LogUserEventRequest_EventScope_Session,
        LogUserEventRequest_EventScope_Page,
        ..
      ),

    -- * OfferCustomer_OfferType
    OfferCustomer_OfferType
      (
        OfferCustomer_OfferType_OFFERTYPEUNSPECIFIED,
        OfferCustomer_OfferType_OFFERTYPESPENDXGETY,
        OfferCustomer_OfferType_OFFERTYPEVIDEO,
        OfferCustomer_OfferType_OFFERTYPESPENDMATCH,
        ..
      ),

    -- * Rank_Type
    Rank_Type
      (
        Rank_Type_RANKTYPEUNSPECIFIED,
        Rank_Type_RTFINALSCORE,
        ..
      ),

    -- * SpecializationStatus_BadgeSpecialization
    SpecializationStatus_BadgeSpecialization
      (
        SpecializationStatus_BadgeSpecialization_BADGESPECIALIZATIONUNKNOWN,
        SpecializationStatus_BadgeSpecialization_BADGESPECIALIZATIONADWORDSSEARCH,
        SpecializationStatus_BadgeSpecialization_BADGESPECIALIZATIONADWORDSDISPLAY,
        SpecializationStatus_BadgeSpecialization_BADGESPECIALIZATIONADWORDSMOBILE,
        SpecializationStatus_BadgeSpecialization_BADGESPECIALIZATIONADWORDSVIDEO,
        SpecializationStatus_BadgeSpecialization_BADGESPECIALIZATIONADWORDSSHOPPING,
        ..
      ),

    -- * SpecializationStatus_BadgeSpecializationState
    SpecializationStatus_BadgeSpecializationState
      (
        SpecializationStatus_BadgeSpecializationState_BADGESPECIALIZATIONSTATEUNKNOWN,
        SpecializationStatus_BadgeSpecializationState_BADGESPECIALIZATIONSTATEPASSED,
        SpecializationStatus_BadgeSpecializationState_BADGESPECIALIZATIONSTATENOTPASSED,
        SpecializationStatus_BadgeSpecializationState_BADGESPECIALIZATIONSTATEINGRACE,
        ..
      ),
  ) where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv { fromXgafv :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv #-}

-- | Level of this offer.
newtype AvailableOffer_OfferLevel = AvailableOffer_OfferLevel { fromAvailableOffer_OfferLevel :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unset.
pattern AvailableOffer_OfferLevel_OFFERLEVELUNSPECIFIED :: AvailableOffer_OfferLevel
pattern AvailableOffer_OfferLevel_OFFERLEVELUNSPECIFIED = AvailableOffer_OfferLevel "OFFER_LEVEL_UNSPECIFIED"

-- | Users\/Agencies that have no offers because of a problem.
pattern AvailableOffer_OfferLevel_OFFERLEVELDENYPROBLEM :: AvailableOffer_OfferLevel
pattern AvailableOffer_OfferLevel_OFFERLEVELDENYPROBLEM = AvailableOffer_OfferLevel "OFFER_LEVEL_DENY_PROBLEM"

-- | Users\/Agencies that have no offers due to contractural agreements.
pattern AvailableOffer_OfferLevel_OFFERLEVELDENYCONTRACT :: AvailableOffer_OfferLevel
pattern AvailableOffer_OfferLevel_OFFERLEVELDENYCONTRACT = AvailableOffer_OfferLevel "OFFER_LEVEL_DENY_CONTRACT"

-- | Users\/Agencies that have a manually-configured limit.
pattern AvailableOffer_OfferLevel_OFFERLEVELMANUAL :: AvailableOffer_OfferLevel
pattern AvailableOffer_OfferLevel_OFFERLEVELMANUAL = AvailableOffer_OfferLevel "OFFER_LEVEL_MANUAL"

-- | Some Agencies don\'t get any offers.
pattern AvailableOffer_OfferLevel_OFFER_LEVEL_LIMIT_0 :: AvailableOffer_OfferLevel
pattern AvailableOffer_OfferLevel_OFFER_LEVEL_LIMIT_0 = AvailableOffer_OfferLevel "OFFER_LEVEL_LIMIT_0"

-- | Basic level gets 5 per month.
pattern AvailableOffer_OfferLevel_OFFER_LEVEL_LIMIT_5 :: AvailableOffer_OfferLevel
pattern AvailableOffer_OfferLevel_OFFER_LEVEL_LIMIT_5 = AvailableOffer_OfferLevel "OFFER_LEVEL_LIMIT_5"

-- | Agencies with adequate AHI and spend get 15\/month.
pattern AvailableOffer_OfferLevel_OFFER_LEVEL_LIMIT_15 :: AvailableOffer_OfferLevel
pattern AvailableOffer_OfferLevel_OFFER_LEVEL_LIMIT_15 = AvailableOffer_OfferLevel "OFFER_LEVEL_LIMIT_15"

-- | Badged partners (even in grace) get 50 per month.
pattern AvailableOffer_OfferLevel_OFFER_LEVEL_LIMIT_50 :: AvailableOffer_OfferLevel
pattern AvailableOffer_OfferLevel_OFFER_LEVEL_LIMIT_50 = AvailableOffer_OfferLevel "OFFER_LEVEL_LIMIT_50"

{-# COMPLETE
  AvailableOffer_OfferLevel_OFFERLEVELUNSPECIFIED,
  AvailableOffer_OfferLevel_OFFERLEVELDENYPROBLEM,
  AvailableOffer_OfferLevel_OFFERLEVELDENYCONTRACT,
  AvailableOffer_OfferLevel_OFFERLEVELMANUAL,
  AvailableOffer_OfferLevel_OFFER_LEVEL_LIMIT_0,
  AvailableOffer_OfferLevel_OFFER_LEVEL_LIMIT_5,
  AvailableOffer_OfferLevel_OFFER_LEVEL_LIMIT_15,
  AvailableOffer_OfferLevel_OFFER_LEVEL_LIMIT_50,
  AvailableOffer_OfferLevel #-}

-- | Type of offer.
newtype AvailableOffer_OfferType = AvailableOffer_OfferType { fromAvailableOffer_OfferType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unset.
pattern AvailableOffer_OfferType_OFFERTYPEUNSPECIFIED :: AvailableOffer_OfferType
pattern AvailableOffer_OfferType_OFFERTYPEUNSPECIFIED = AvailableOffer_OfferType "OFFER_TYPE_UNSPECIFIED"

-- | AdWords spend X get Y.
pattern AvailableOffer_OfferType_OFFERTYPESPENDXGETY :: AvailableOffer_OfferType
pattern AvailableOffer_OfferType_OFFERTYPESPENDXGETY = AvailableOffer_OfferType "OFFER_TYPE_SPEND_X_GET_Y"

-- | Youtube video.
pattern AvailableOffer_OfferType_OFFERTYPEVIDEO :: AvailableOffer_OfferType
pattern AvailableOffer_OfferType_OFFERTYPEVIDEO = AvailableOffer_OfferType "OFFER_TYPE_VIDEO"

-- | Spend Match up to Y.
pattern AvailableOffer_OfferType_OFFERTYPESPENDMATCH :: AvailableOffer_OfferType
pattern AvailableOffer_OfferType_OFFERTYPESPENDMATCH = AvailableOffer_OfferType "OFFER_TYPE_SPEND_MATCH"

{-# COMPLETE
  AvailableOffer_OfferType_OFFERTYPEUNSPECIFIED,
  AvailableOffer_OfferType_OFFERTYPESPENDXGETY,
  AvailableOffer_OfferType_OFFERTYPEVIDEO,
  AvailableOffer_OfferType_OFFERTYPESPENDMATCH,
  AvailableOffer_OfferType #-}

-- | The type of certification, the area of expertise.
newtype Certification_CertificationType = Certification_CertificationType { fromCertification_CertificationType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unchosen.
pattern Certification_CertificationType_CERTIFICATIONTYPEUNSPECIFIED :: Certification_CertificationType
pattern Certification_CertificationType_CERTIFICATIONTYPEUNSPECIFIED = Certification_CertificationType "CERTIFICATION_TYPE_UNSPECIFIED"

-- | AdWords certified.
pattern Certification_CertificationType_CTADWORDS :: Certification_CertificationType
pattern Certification_CertificationType_CTADWORDS = Certification_CertificationType "CT_ADWORDS"

-- | YouTube certified.
pattern Certification_CertificationType_CTYOUTUBE :: Certification_CertificationType
pattern Certification_CertificationType_CTYOUTUBE = Certification_CertificationType "CT_YOUTUBE"

-- | VideoAds certified.
pattern Certification_CertificationType_CTVIDEOADS :: Certification_CertificationType
pattern Certification_CertificationType_CTVIDEOADS = Certification_CertificationType "CT_VIDEOADS"

-- | Analytics certified.
pattern Certification_CertificationType_CTANALYTICS :: Certification_CertificationType
pattern Certification_CertificationType_CTANALYTICS = Certification_CertificationType "CT_ANALYTICS"

-- | DoubleClick certified.
pattern Certification_CertificationType_CTDOUBLECLICK :: Certification_CertificationType
pattern Certification_CertificationType_CTDOUBLECLICK = Certification_CertificationType "CT_DOUBLECLICK"

-- | Shopping certified.
pattern Certification_CertificationType_CTSHOPPING :: Certification_CertificationType
pattern Certification_CertificationType_CTSHOPPING = Certification_CertificationType "CT_SHOPPING"

-- | Mobile certified.
pattern Certification_CertificationType_CTMOBILE :: Certification_CertificationType
pattern Certification_CertificationType_CTMOBILE = Certification_CertificationType "CT_MOBILE"

-- | Digital sales certified.
pattern Certification_CertificationType_CTDIGITALSALES :: Certification_CertificationType
pattern Certification_CertificationType_CTDIGITALSALES = Certification_CertificationType "CT_DIGITAL_SALES"

-- | AdWords Search certified.
pattern Certification_CertificationType_CTADWORDSSEARCH :: Certification_CertificationType
pattern Certification_CertificationType_CTADWORDSSEARCH = Certification_CertificationType "CT_ADWORDS_SEARCH"

-- | AdWords Display certified.
pattern Certification_CertificationType_CTADWORDSDISPLAY :: Certification_CertificationType
pattern Certification_CertificationType_CTADWORDSDISPLAY = Certification_CertificationType "CT_ADWORDS_DISPLAY"

-- | Mobile Sites certified.
pattern Certification_CertificationType_CTMOBILESITES :: Certification_CertificationType
pattern Certification_CertificationType_CTMOBILESITES = Certification_CertificationType "CT_MOBILE_SITES"

{-# COMPLETE
  Certification_CertificationType_CERTIFICATIONTYPEUNSPECIFIED,
  Certification_CertificationType_CTADWORDS,
  Certification_CertificationType_CTYOUTUBE,
  Certification_CertificationType_CTVIDEOADS,
  Certification_CertificationType_CTANALYTICS,
  Certification_CertificationType_CTDOUBLECLICK,
  Certification_CertificationType_CTSHOPPING,
  Certification_CertificationType_CTMOBILE,
  Certification_CertificationType_CTDIGITALSALES,
  Certification_CertificationType_CTADWORDSSEARCH,
  Certification_CertificationType_CTADWORDSDISPLAY,
  Certification_CertificationType_CTMOBILESITES,
  Certification_CertificationType #-}

-- | The type of certification exam.
newtype CertificationExamStatus_Type = CertificationExamStatus_Type { fromCertificationExamStatus_Type :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unchosen.
pattern CertificationExamStatus_Type_CERTIFICATIONEXAMTYPEUNSPECIFIED :: CertificationExamStatus_Type
pattern CertificationExamStatus_Type_CERTIFICATIONEXAMTYPEUNSPECIFIED = CertificationExamStatus_Type "CERTIFICATION_EXAM_TYPE_UNSPECIFIED"

-- | Adwords Fundamentals exam.
pattern CertificationExamStatus_Type_CETADWORDSFUNDAMENTALS :: CertificationExamStatus_Type
pattern CertificationExamStatus_Type_CETADWORDSFUNDAMENTALS = CertificationExamStatus_Type "CET_ADWORDS_FUNDAMENTALS"

-- | AdWords advanced search exam.
pattern CertificationExamStatus_Type_CETADWORDSADVANCEDSEARCH :: CertificationExamStatus_Type
pattern CertificationExamStatus_Type_CETADWORDSADVANCEDSEARCH = CertificationExamStatus_Type "CET_ADWORDS_ADVANCED_SEARCH"

-- | AdWords advanced display exam.
pattern CertificationExamStatus_Type_CETADWORDSADVANCEDDISPLAY :: CertificationExamStatus_Type
pattern CertificationExamStatus_Type_CETADWORDSADVANCEDDISPLAY = CertificationExamStatus_Type "CET_ADWORDS_ADVANCED_DISPLAY"

-- | VideoAds exam.
pattern CertificationExamStatus_Type_CETVIDEOADS :: CertificationExamStatus_Type
pattern CertificationExamStatus_Type_CETVIDEOADS = CertificationExamStatus_Type "CET_VIDEO_ADS"

-- | DoubleClick exam.
pattern CertificationExamStatus_Type_CETDOUBLECLICK :: CertificationExamStatus_Type
pattern CertificationExamStatus_Type_CETDOUBLECLICK = CertificationExamStatus_Type "CET_DOUBLECLICK"

-- | Analytics exam.
pattern CertificationExamStatus_Type_CETANALYTICS :: CertificationExamStatus_Type
pattern CertificationExamStatus_Type_CETANALYTICS = CertificationExamStatus_Type "CET_ANALYTICS"

-- | Shopping exam.
pattern CertificationExamStatus_Type_CETSHOPPING :: CertificationExamStatus_Type
pattern CertificationExamStatus_Type_CETSHOPPING = CertificationExamStatus_Type "CET_SHOPPING"

-- | Mobile exam.
pattern CertificationExamStatus_Type_CETMOBILE :: CertificationExamStatus_Type
pattern CertificationExamStatus_Type_CETMOBILE = CertificationExamStatus_Type "CET_MOBILE"

-- | Digital Sales exam.
pattern CertificationExamStatus_Type_CETDIGITALSALES :: CertificationExamStatus_Type
pattern CertificationExamStatus_Type_CETDIGITALSALES = CertificationExamStatus_Type "CET_DIGITAL_SALES"

-- | Mobile Sites exam.
pattern CertificationExamStatus_Type_CETMOBILESITES :: CertificationExamStatus_Type
pattern CertificationExamStatus_Type_CETMOBILESITES = CertificationExamStatus_Type "CET_MOBILE_SITES"

{-# COMPLETE
  CertificationExamStatus_Type_CERTIFICATIONEXAMTYPEUNSPECIFIED,
  CertificationExamStatus_Type_CETADWORDSFUNDAMENTALS,
  CertificationExamStatus_Type_CETADWORDSADVANCEDSEARCH,
  CertificationExamStatus_Type_CETADWORDSADVANCEDDISPLAY,
  CertificationExamStatus_Type_CETVIDEOADS,
  CertificationExamStatus_Type_CETDOUBLECLICK,
  CertificationExamStatus_Type_CETANALYTICS,
  CertificationExamStatus_Type_CETSHOPPING,
  CertificationExamStatus_Type_CETMOBILE,
  CertificationExamStatus_Type_CETDIGITALSALES,
  CertificationExamStatus_Type_CETMOBILESITES,
  CertificationExamStatus_Type #-}

-- | The type of the certification.
newtype CertificationStatus_Type = CertificationStatus_Type { fromCertificationStatus_Type :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unchosen.
pattern CertificationStatus_Type_CERTIFICATIONTYPEUNSPECIFIED :: CertificationStatus_Type
pattern CertificationStatus_Type_CERTIFICATIONTYPEUNSPECIFIED = CertificationStatus_Type "CERTIFICATION_TYPE_UNSPECIFIED"

-- | AdWords certified.
pattern CertificationStatus_Type_CTADWORDS :: CertificationStatus_Type
pattern CertificationStatus_Type_CTADWORDS = CertificationStatus_Type "CT_ADWORDS"

-- | YouTube certified.
pattern CertificationStatus_Type_CTYOUTUBE :: CertificationStatus_Type
pattern CertificationStatus_Type_CTYOUTUBE = CertificationStatus_Type "CT_YOUTUBE"

-- | VideoAds certified.
pattern CertificationStatus_Type_CTVIDEOADS :: CertificationStatus_Type
pattern CertificationStatus_Type_CTVIDEOADS = CertificationStatus_Type "CT_VIDEOADS"

-- | Analytics certified.
pattern CertificationStatus_Type_CTANALYTICS :: CertificationStatus_Type
pattern CertificationStatus_Type_CTANALYTICS = CertificationStatus_Type "CT_ANALYTICS"

-- | DoubleClick certified.
pattern CertificationStatus_Type_CTDOUBLECLICK :: CertificationStatus_Type
pattern CertificationStatus_Type_CTDOUBLECLICK = CertificationStatus_Type "CT_DOUBLECLICK"

-- | Shopping certified.
pattern CertificationStatus_Type_CTSHOPPING :: CertificationStatus_Type
pattern CertificationStatus_Type_CTSHOPPING = CertificationStatus_Type "CT_SHOPPING"

-- | Mobile certified.
pattern CertificationStatus_Type_CTMOBILE :: CertificationStatus_Type
pattern CertificationStatus_Type_CTMOBILE = CertificationStatus_Type "CT_MOBILE"

-- | Digital sales certified.
pattern CertificationStatus_Type_CTDIGITALSALES :: CertificationStatus_Type
pattern CertificationStatus_Type_CTDIGITALSALES = CertificationStatus_Type "CT_DIGITAL_SALES"

-- | AdWords Search certified.
pattern CertificationStatus_Type_CTADWORDSSEARCH :: CertificationStatus_Type
pattern CertificationStatus_Type_CTADWORDSSEARCH = CertificationStatus_Type "CT_ADWORDS_SEARCH"

-- | AdWords Display certified.
pattern CertificationStatus_Type_CTADWORDSDISPLAY :: CertificationStatus_Type
pattern CertificationStatus_Type_CTADWORDSDISPLAY = CertificationStatus_Type "CT_ADWORDS_DISPLAY"

-- | Mobile Sites certified.
pattern CertificationStatus_Type_CTMOBILESITES :: CertificationStatus_Type
pattern CertificationStatus_Type_CTMOBILESITES = CertificationStatus_Type "CT_MOBILE_SITES"

{-# COMPLETE
  CertificationStatus_Type_CERTIFICATIONTYPEUNSPECIFIED,
  CertificationStatus_Type_CTADWORDS,
  CertificationStatus_Type_CTYOUTUBE,
  CertificationStatus_Type_CTVIDEOADS,
  CertificationStatus_Type_CTANALYTICS,
  CertificationStatus_Type_CTDOUBLECLICK,
  CertificationStatus_Type_CTSHOPPING,
  CertificationStatus_Type_CTMOBILE,
  CertificationStatus_Type_CTDIGITALSALES,
  CertificationStatus_Type_CTADWORDSSEARCH,
  CertificationStatus_Type_CTADWORDSDISPLAY,
  CertificationStatus_Type_CTMOBILESITES,
  CertificationStatus_Type #-}

-- | Partner badge tier
newtype Company_BadgeTier = Company_BadgeTier { fromCompany_BadgeTier :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Tier badge is not set.
pattern Company_BadgeTier_BADGETIERNONE :: Company_BadgeTier
pattern Company_BadgeTier_BADGETIERNONE = Company_BadgeTier "BADGE_TIER_NONE"

-- | Agency has regular partner badge.
pattern Company_BadgeTier_BADGETIERREGULAR :: Company_BadgeTier
pattern Company_BadgeTier_BADGETIERREGULAR = Company_BadgeTier "BADGE_TIER_REGULAR"

-- | Agency has premier badge.
pattern Company_BadgeTier_BADGETIERPREMIER :: Company_BadgeTier
pattern Company_BadgeTier_BADGETIERPREMIER = Company_BadgeTier "BADGE_TIER_PREMIER"

{-# COMPLETE
  Company_BadgeTier_BADGETIERNONE,
  Company_BadgeTier_BADGETIERREGULAR,
  Company_BadgeTier_BADGETIERPREMIER,
  Company_BadgeTier #-}

-- | The public viewability status of the company\'s profile.
newtype Company_ProfileStatus = Company_ProfileStatus { fromCompany_ProfileStatus :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unchosen.
pattern Company_ProfileStatus_COMPANYPROFILESTATUSUNSPECIFIED :: Company_ProfileStatus
pattern Company_ProfileStatus_COMPANYPROFILESTATUSUNSPECIFIED = Company_ProfileStatus "COMPANY_PROFILE_STATUS_UNSPECIFIED"

-- | Company profile does not show up publicly.
pattern Company_ProfileStatus_Hidden :: Company_ProfileStatus
pattern Company_ProfileStatus_Hidden = Company_ProfileStatus "HIDDEN"

-- | Company profile can only be viewed by the profile\'s URL and not by Google Partner Search.
pattern Company_ProfileStatus_Published :: Company_ProfileStatus
pattern Company_ProfileStatus_Published = Company_ProfileStatus "PUBLISHED"

-- | Company profile can be viewed by the profile\'s URL and by Google Partner Search.
pattern Company_ProfileStatus_Searchable :: Company_ProfileStatus
pattern Company_ProfileStatus_Searchable = Company_ProfileStatus "SEARCHABLE"

{-# COMPLETE
  Company_ProfileStatus_COMPANYPROFILESTATUSUNSPECIFIED,
  Company_ProfileStatus_Hidden,
  Company_ProfileStatus_Published,
  Company_ProfileStatus_Searchable,
  Company_ProfileStatus #-}

-- | Whether the company is a Partner.
newtype CompanyRelation_BadgeTier = CompanyRelation_BadgeTier { fromCompanyRelation_BadgeTier :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Tier badge is not set.
pattern CompanyRelation_BadgeTier_BADGETIERNONE :: CompanyRelation_BadgeTier
pattern CompanyRelation_BadgeTier_BADGETIERNONE = CompanyRelation_BadgeTier "BADGE_TIER_NONE"

-- | Agency has regular partner badge.
pattern CompanyRelation_BadgeTier_BADGETIERREGULAR :: CompanyRelation_BadgeTier
pattern CompanyRelation_BadgeTier_BADGETIERREGULAR = CompanyRelation_BadgeTier "BADGE_TIER_REGULAR"

-- | Agency has premier badge.
pattern CompanyRelation_BadgeTier_BADGETIERPREMIER :: CompanyRelation_BadgeTier
pattern CompanyRelation_BadgeTier_BADGETIERPREMIER = CompanyRelation_BadgeTier "BADGE_TIER_PREMIER"

{-# COMPLETE
  CompanyRelation_BadgeTier_BADGETIERNONE,
  CompanyRelation_BadgeTier_BADGETIERREGULAR,
  CompanyRelation_BadgeTier_BADGETIERPREMIER,
  CompanyRelation_BadgeTier #-}

-- | The state of relationship, in terms of approvals.
newtype CompanyRelation_State = CompanyRelation_State { fromCompanyRelation_State :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Default unspecified value.
pattern CompanyRelation_State_USERCOMPANYREATIONSTATENONESPECIFIED :: CompanyRelation_State
pattern CompanyRelation_State_USERCOMPANYREATIONSTATENONESPECIFIED = CompanyRelation_State "USER_COMPANY_REATION_STATE_NONE_SPECIFIED"

-- | User has filled in a request to be associated with an company. Now waiting email confirmation.
pattern CompanyRelation_State_USERCOMPANYRELATIONSTATEAWAITEMAIL :: CompanyRelation_State
pattern CompanyRelation_State_USERCOMPANYRELATIONSTATEAWAITEMAIL = CompanyRelation_State "USER_COMPANY_RELATION_STATE_AWAIT_EMAIL"

-- | Pending approval from company. Email confirmation will not approve this one.
pattern CompanyRelation_State_USERCOMPANYRELATIONSTATEAWAITADMIN :: CompanyRelation_State
pattern CompanyRelation_State_USERCOMPANYRELATIONSTATEAWAITADMIN = CompanyRelation_State "USER_COMPANY_RELATION_STATE_AWAIT_ADMIN"

-- | Approved by company.
pattern CompanyRelation_State_USERCOMPANYRELATIONSTATEAPPROVED :: CompanyRelation_State
pattern CompanyRelation_State_USERCOMPANYRELATIONSTATEAPPROVED = CompanyRelation_State "USER_COMPANY_RELATION_STATE_APPROVED"

{-# COMPLETE
  CompanyRelation_State_USERCOMPANYREATIONSTATENONESPECIFIED,
  CompanyRelation_State_USERCOMPANYRELATIONSTATEAWAITEMAIL,
  CompanyRelation_State_USERCOMPANYRELATIONSTATEAWAITADMIN,
  CompanyRelation_State_USERCOMPANYRELATIONSTATEAPPROVED,
  CompanyRelation_State #-}

-- | Type of offer country is eligible for.
newtype CountryOfferInfo_OfferType = CountryOfferInfo_OfferType { fromCountryOfferInfo_OfferType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unset.
pattern CountryOfferInfo_OfferType_OFFERTYPEUNSPECIFIED :: CountryOfferInfo_OfferType
pattern CountryOfferInfo_OfferType_OFFERTYPEUNSPECIFIED = CountryOfferInfo_OfferType "OFFER_TYPE_UNSPECIFIED"

-- | AdWords spend X get Y.
pattern CountryOfferInfo_OfferType_OFFERTYPESPENDXGETY :: CountryOfferInfo_OfferType
pattern CountryOfferInfo_OfferType_OFFERTYPESPENDXGETY = CountryOfferInfo_OfferType "OFFER_TYPE_SPEND_X_GET_Y"

-- | Youtube video.
pattern CountryOfferInfo_OfferType_OFFERTYPEVIDEO :: CountryOfferInfo_OfferType
pattern CountryOfferInfo_OfferType_OFFERTYPEVIDEO = CountryOfferInfo_OfferType "OFFER_TYPE_VIDEO"

-- | Spend Match up to Y.
pattern CountryOfferInfo_OfferType_OFFERTYPESPENDMATCH :: CountryOfferInfo_OfferType
pattern CountryOfferInfo_OfferType_OFFERTYPESPENDMATCH = CountryOfferInfo_OfferType "OFFER_TYPE_SPEND_MATCH"

{-# COMPLETE
  CountryOfferInfo_OfferType_OFFERTYPEUNSPECIFIED,
  CountryOfferInfo_OfferType_OFFERTYPESPENDXGETY,
  CountryOfferInfo_OfferType_OFFERTYPEVIDEO,
  CountryOfferInfo_OfferType_OFFERTYPESPENDMATCH,
  CountryOfferInfo_OfferType #-}

-- | The outcome of \<a href=\"https:\/\/www.google.com\/recaptcha\/\">reCaptcha\<\/a> validation.
newtype CreateLeadResponse_RecaptchaStatus = CreateLeadResponse_RecaptchaStatus { fromCreateLeadResponse_RecaptchaStatus :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unchosen.
pattern CreateLeadResponse_RecaptchaStatus_RECAPTCHASTATUSUNSPECIFIED :: CreateLeadResponse_RecaptchaStatus
pattern CreateLeadResponse_RecaptchaStatus_RECAPTCHASTATUSUNSPECIFIED = CreateLeadResponse_RecaptchaStatus "RECAPTCHA_STATUS_UNSPECIFIED"

-- | No reCaptcha validation needed.
pattern CreateLeadResponse_RecaptchaStatus_RSNOTNEEDED :: CreateLeadResponse_RecaptchaStatus
pattern CreateLeadResponse_RecaptchaStatus_RSNOTNEEDED = CreateLeadResponse_RecaptchaStatus "RS_NOT_NEEDED"

-- | reCaptcha challenge passed.
pattern CreateLeadResponse_RecaptchaStatus_RSPASSED :: CreateLeadResponse_RecaptchaStatus
pattern CreateLeadResponse_RecaptchaStatus_RSPASSED = CreateLeadResponse_RecaptchaStatus "RS_PASSED"

-- | reCaptcha challenge failed.
pattern CreateLeadResponse_RecaptchaStatus_RSFAILED :: CreateLeadResponse_RecaptchaStatus
pattern CreateLeadResponse_RecaptchaStatus_RSFAILED = CreateLeadResponse_RecaptchaStatus "RS_FAILED"

{-# COMPLETE
  CreateLeadResponse_RecaptchaStatus_RECAPTCHASTATUSUNSPECIFIED,
  CreateLeadResponse_RecaptchaStatus_RSNOTNEEDED,
  CreateLeadResponse_RecaptchaStatus_RSPASSED,
  CreateLeadResponse_RecaptchaStatus_RSFAILED,
  CreateLeadResponse_RecaptchaStatus #-}

-- | Data type.
newtype EventData_Key = EventData_Key { fromEventData_Key :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unchosen.
pattern EventData_Key_EVENTDATATYPEUNSPECIFIED :: EventData_Key
pattern EventData_Key_EVENTDATATYPEUNSPECIFIED = EventData_Key "EVENT_DATA_TYPE_UNSPECIFIED"

-- | Action data.
pattern EventData_Key_Action :: EventData_Key
pattern EventData_Key_Action = EventData_Key "ACTION"

-- | Agency ID data.
pattern EventData_Key_AGENCYID :: EventData_Key
pattern EventData_Key_AGENCYID = EventData_Key "AGENCY_ID"

-- | Agency name data.
pattern EventData_Key_AGENCYNAME :: EventData_Key
pattern EventData_Key_AGENCYNAME = EventData_Key "AGENCY_NAME"

-- | Agency phone number data.
pattern EventData_Key_AGENCYPHONENUMBER :: EventData_Key
pattern EventData_Key_AGENCYPHONENUMBER = EventData_Key "AGENCY_PHONE_NUMBER"

-- | Agency website data.
pattern EventData_Key_AGENCYWEBSITE :: EventData_Key
pattern EventData_Key_AGENCYWEBSITE = EventData_Key "AGENCY_WEBSITE"

-- | Budget data.
pattern EventData_Key_Budget :: EventData_Key
pattern EventData_Key_Budget = EventData_Key "BUDGET"

-- | Center-point data.
pattern EventData_Key_CENTERPOINT :: EventData_Key
pattern EventData_Key_CENTERPOINT = EventData_Key "CENTER_POINT"

-- | Certification data.
pattern EventData_Key_Certification :: EventData_Key
pattern EventData_Key_Certification = EventData_Key "CERTIFICATION"

-- | Comment data.
pattern EventData_Key_Comment :: EventData_Key
pattern EventData_Key_Comment = EventData_Key "COMMENT"

-- | Country data.
pattern EventData_Key_Country :: EventData_Key
pattern EventData_Key_Country = EventData_Key "COUNTRY"

-- | Currency data.
pattern EventData_Key_Currency :: EventData_Key
pattern EventData_Key_Currency = EventData_Key "CURRENCY"

-- | Currently viewed agency ID data.
pattern EventData_Key_CURRENTLYVIEWEDAGENCYID :: EventData_Key
pattern EventData_Key_CURRENTLYVIEWEDAGENCYID = EventData_Key "CURRENTLY_VIEWED_AGENCY_ID"

-- | Distance data.
pattern EventData_Key_Distance :: EventData_Key
pattern EventData_Key_Distance = EventData_Key "DISTANCE"

-- | Distance type data.
pattern EventData_Key_DISTANCETYPE :: EventData_Key
pattern EventData_Key_DISTANCETYPE = EventData_Key "DISTANCE_TYPE"

-- | Exam data.
pattern EventData_Key_Exam :: EventData_Key
pattern EventData_Key_Exam = EventData_Key "EXAM"

-- | History token data.
pattern EventData_Key_HISTORYTOKEN :: EventData_Key
pattern EventData_Key_HISTORYTOKEN = EventData_Key "HISTORY_TOKEN"

-- | Identifier data.
pattern EventData_Key_ID :: EventData_Key
pattern EventData_Key_ID = EventData_Key "ID"

-- | Industry data.
pattern EventData_Key_Industry :: EventData_Key
pattern EventData_Key_Industry = EventData_Key "INDUSTRY"

-- | Insight tag data.
pattern EventData_Key_INSIGHTTAG :: EventData_Key
pattern EventData_Key_INSIGHTTAG = EventData_Key "INSIGHT_TAG"

-- | Language data.
pattern EventData_Key_Language :: EventData_Key
pattern EventData_Key_Language = EventData_Key "LANGUAGE"

-- | Location data.
pattern EventData_Key_Location :: EventData_Key
pattern EventData_Key_Location = EventData_Key "LOCATION"

-- | Marketing opt-in data.
pattern EventData_Key_MARKETINGOPTIN :: EventData_Key
pattern EventData_Key_MARKETINGOPTIN = EventData_Key "MARKETING_OPT_IN"

-- | Query data.
pattern EventData_Key_Query :: EventData_Key
pattern EventData_Key_Query = EventData_Key "QUERY"

-- | Search start index data.
pattern EventData_Key_SEARCHSTARTINDEX :: EventData_Key
pattern EventData_Key_SEARCHSTARTINDEX = EventData_Key "SEARCH_START_INDEX"

-- | Service data.
pattern EventData_Key_Service :: EventData_Key
pattern EventData_Key_Service = EventData_Key "SERVICE"

-- | Show vow data.
pattern EventData_Key_SHOWVOW :: EventData_Key
pattern EventData_Key_SHOWVOW = EventData_Key "SHOW_VOW"

-- | Solution data.
pattern EventData_Key_Solution :: EventData_Key
pattern EventData_Key_Solution = EventData_Key "SOLUTION"

-- | Traffic source ID data.
pattern EventData_Key_TRAFFICSOURCEID :: EventData_Key
pattern EventData_Key_TRAFFICSOURCEID = EventData_Key "TRAFFIC_SOURCE_ID"

-- | Traffic sub ID data.
pattern EventData_Key_TRAFFICSUBID :: EventData_Key
pattern EventData_Key_TRAFFICSUBID = EventData_Key "TRAFFIC_SUB_ID"

-- | Viewport data.
pattern EventData_Key_VIEWPORT :: EventData_Key
pattern EventData_Key_VIEWPORT = EventData_Key "VIEW_PORT"

-- | Website data.
pattern EventData_Key_Website :: EventData_Key
pattern EventData_Key_Website = EventData_Key "WEBSITE"

-- | Details data.
pattern EventData_Key_Details :: EventData_Key
pattern EventData_Key_Details = EventData_Key "DETAILS"

-- | Experiment ID data.
pattern EventData_Key_EXPERIMENTID :: EventData_Key
pattern EventData_Key_EXPERIMENTID = EventData_Key "EXPERIMENT_ID"

-- | Google Partner Search motivation data.
pattern EventData_Key_GPSMOTIVATION :: EventData_Key
pattern EventData_Key_GPSMOTIVATION = EventData_Key "GPS_MOTIVATION"

-- | URL data.
pattern EventData_Key_Url :: EventData_Key
pattern EventData_Key_Url = EventData_Key "URL"

-- | Element we wanted user to focus on.
pattern EventData_Key_ELEMENTFOCUS :: EventData_Key
pattern EventData_Key_ELEMENTFOCUS = EventData_Key "ELEMENT_FOCUS"

-- | Progress when viewing an item [0-100].
pattern EventData_Key_Progress :: EventData_Key
pattern EventData_Key_Progress = EventData_Key "PROGRESS"

{-# COMPLETE
  EventData_Key_EVENTDATATYPEUNSPECIFIED,
  EventData_Key_Action,
  EventData_Key_AGENCYID,
  EventData_Key_AGENCYNAME,
  EventData_Key_AGENCYPHONENUMBER,
  EventData_Key_AGENCYWEBSITE,
  EventData_Key_Budget,
  EventData_Key_CENTERPOINT,
  EventData_Key_Certification,
  EventData_Key_Comment,
  EventData_Key_Country,
  EventData_Key_Currency,
  EventData_Key_CURRENTLYVIEWEDAGENCYID,
  EventData_Key_Distance,
  EventData_Key_DISTANCETYPE,
  EventData_Key_Exam,
  EventData_Key_HISTORYTOKEN,
  EventData_Key_ID,
  EventData_Key_Industry,
  EventData_Key_INSIGHTTAG,
  EventData_Key_Language,
  EventData_Key_Location,
  EventData_Key_MARKETINGOPTIN,
  EventData_Key_Query,
  EventData_Key_SEARCHSTARTINDEX,
  EventData_Key_Service,
  EventData_Key_SHOWVOW,
  EventData_Key_Solution,
  EventData_Key_TRAFFICSOURCEID,
  EventData_Key_TRAFFICSUBID,
  EventData_Key_VIEWPORT,
  EventData_Key_Website,
  EventData_Key_Details,
  EventData_Key_EXPERIMENTID,
  EventData_Key_GPSMOTIVATION,
  EventData_Key_Url,
  EventData_Key_ELEMENTFOCUS,
  EventData_Key_Progress,
  EventData_Key #-}

-- | The type of the exam.
newtype ExamStatus_ExamType = ExamStatus_ExamType { fromExamStatus_ExamType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unchosen.
pattern ExamStatus_ExamType_CERTIFICATIONEXAMTYPEUNSPECIFIED :: ExamStatus_ExamType
pattern ExamStatus_ExamType_CERTIFICATIONEXAMTYPEUNSPECIFIED = ExamStatus_ExamType "CERTIFICATION_EXAM_TYPE_UNSPECIFIED"

-- | Adwords Fundamentals exam.
pattern ExamStatus_ExamType_CETADWORDSFUNDAMENTALS :: ExamStatus_ExamType
pattern ExamStatus_ExamType_CETADWORDSFUNDAMENTALS = ExamStatus_ExamType "CET_ADWORDS_FUNDAMENTALS"

-- | AdWords advanced search exam.
pattern ExamStatus_ExamType_CETADWORDSADVANCEDSEARCH :: ExamStatus_ExamType
pattern ExamStatus_ExamType_CETADWORDSADVANCEDSEARCH = ExamStatus_ExamType "CET_ADWORDS_ADVANCED_SEARCH"

-- | AdWords advanced display exam.
pattern ExamStatus_ExamType_CETADWORDSADVANCEDDISPLAY :: ExamStatus_ExamType
pattern ExamStatus_ExamType_CETADWORDSADVANCEDDISPLAY = ExamStatus_ExamType "CET_ADWORDS_ADVANCED_DISPLAY"

-- | VideoAds exam.
pattern ExamStatus_ExamType_CETVIDEOADS :: ExamStatus_ExamType
pattern ExamStatus_ExamType_CETVIDEOADS = ExamStatus_ExamType "CET_VIDEO_ADS"

-- | DoubleClick exam.
pattern ExamStatus_ExamType_CETDOUBLECLICK :: ExamStatus_ExamType
pattern ExamStatus_ExamType_CETDOUBLECLICK = ExamStatus_ExamType "CET_DOUBLECLICK"

-- | Analytics exam.
pattern ExamStatus_ExamType_CETANALYTICS :: ExamStatus_ExamType
pattern ExamStatus_ExamType_CETANALYTICS = ExamStatus_ExamType "CET_ANALYTICS"

-- | Shopping exam.
pattern ExamStatus_ExamType_CETSHOPPING :: ExamStatus_ExamType
pattern ExamStatus_ExamType_CETSHOPPING = ExamStatus_ExamType "CET_SHOPPING"

-- | Mobile exam.
pattern ExamStatus_ExamType_CETMOBILE :: ExamStatus_ExamType
pattern ExamStatus_ExamType_CETMOBILE = ExamStatus_ExamType "CET_MOBILE"

-- | Digital Sales exam.
pattern ExamStatus_ExamType_CETDIGITALSALES :: ExamStatus_ExamType
pattern ExamStatus_ExamType_CETDIGITALSALES = ExamStatus_ExamType "CET_DIGITAL_SALES"

-- | Mobile Sites exam.
pattern ExamStatus_ExamType_CETMOBILESITES :: ExamStatus_ExamType
pattern ExamStatus_ExamType_CETMOBILESITES = ExamStatus_ExamType "CET_MOBILE_SITES"

{-# COMPLETE
  ExamStatus_ExamType_CERTIFICATIONEXAMTYPEUNSPECIFIED,
  ExamStatus_ExamType_CETADWORDSFUNDAMENTALS,
  ExamStatus_ExamType_CETADWORDSADVANCEDSEARCH,
  ExamStatus_ExamType_CETADWORDSADVANCEDDISPLAY,
  ExamStatus_ExamType_CETVIDEOADS,
  ExamStatus_ExamType_CETDOUBLECLICK,
  ExamStatus_ExamType_CETANALYTICS,
  ExamStatus_ExamType_CETSHOPPING,
  ExamStatus_ExamType_CETMOBILE,
  ExamStatus_ExamType_CETDIGITALSALES,
  ExamStatus_ExamType_CETMOBILESITES,
  ExamStatus_ExamType #-}

-- | Type of offer.
newtype HistoricalOffer_OfferType = HistoricalOffer_OfferType { fromHistoricalOffer_OfferType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unset.
pattern HistoricalOffer_OfferType_OFFERTYPEUNSPECIFIED :: HistoricalOffer_OfferType
pattern HistoricalOffer_OfferType_OFFERTYPEUNSPECIFIED = HistoricalOffer_OfferType "OFFER_TYPE_UNSPECIFIED"

-- | AdWords spend X get Y.
pattern HistoricalOffer_OfferType_OFFERTYPESPENDXGETY :: HistoricalOffer_OfferType
pattern HistoricalOffer_OfferType_OFFERTYPESPENDXGETY = HistoricalOffer_OfferType "OFFER_TYPE_SPEND_X_GET_Y"

-- | Youtube video.
pattern HistoricalOffer_OfferType_OFFERTYPEVIDEO :: HistoricalOffer_OfferType
pattern HistoricalOffer_OfferType_OFFERTYPEVIDEO = HistoricalOffer_OfferType "OFFER_TYPE_VIDEO"

-- | Spend Match up to Y.
pattern HistoricalOffer_OfferType_OFFERTYPESPENDMATCH :: HistoricalOffer_OfferType
pattern HistoricalOffer_OfferType_OFFERTYPESPENDMATCH = HistoricalOffer_OfferType "OFFER_TYPE_SPEND_MATCH"

{-# COMPLETE
  HistoricalOffer_OfferType_OFFERTYPEUNSPECIFIED,
  HistoricalOffer_OfferType_OFFERTYPESPENDXGETY,
  HistoricalOffer_OfferType_OFFERTYPEVIDEO,
  HistoricalOffer_OfferType_OFFERTYPESPENDMATCH,
  HistoricalOffer_OfferType #-}

-- | Status of the offer.
newtype HistoricalOffer_Status = HistoricalOffer_Status { fromHistoricalOffer_Status :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unset.
pattern HistoricalOffer_Status_OFFERSTATUSUNSPECIFIED :: HistoricalOffer_Status
pattern HistoricalOffer_Status_OFFERSTATUSUNSPECIFIED = HistoricalOffer_Status "OFFER_STATUS_UNSPECIFIED"

-- | Offer distributed.
pattern HistoricalOffer_Status_OFFERSTATUSDISTRIBUTED :: HistoricalOffer_Status
pattern HistoricalOffer_Status_OFFERSTATUSDISTRIBUTED = HistoricalOffer_Status "OFFER_STATUS_DISTRIBUTED"

-- | Offer redeemed.
pattern HistoricalOffer_Status_OFFERSTATUSREDEEMED :: HistoricalOffer_Status
pattern HistoricalOffer_Status_OFFERSTATUSREDEEMED = HistoricalOffer_Status "OFFER_STATUS_REDEEMED"

-- | Offer awarded.
pattern HistoricalOffer_Status_OFFERSTATUSAWARDED :: HistoricalOffer_Status
pattern HistoricalOffer_Status_OFFERSTATUSAWARDED = HistoricalOffer_Status "OFFER_STATUS_AWARDED"

-- | Offer expired.
pattern HistoricalOffer_Status_OFFERSTATUSEXPIRED :: HistoricalOffer_Status
pattern HistoricalOffer_Status_OFFERSTATUSEXPIRED = HistoricalOffer_Status "OFFER_STATUS_EXPIRED"

{-# COMPLETE
  HistoricalOffer_Status_OFFERSTATUSUNSPECIFIED,
  HistoricalOffer_Status_OFFERSTATUSDISTRIBUTED,
  HistoricalOffer_Status_OFFERSTATUSREDEEMED,
  HistoricalOffer_Status_OFFERSTATUSAWARDED,
  HistoricalOffer_Status_OFFERSTATUSEXPIRED,
  HistoricalOffer_Status #-}

-- | The lead\'s state in relation to the company.
newtype Lead_State = Lead_State { fromLead_State :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unchosen.
pattern Lead_State_LEADSTATEUNSPECIFIED :: Lead_State
pattern Lead_State_LEADSTATEUNSPECIFIED = Lead_State "LEAD_STATE_UNSPECIFIED"

-- | Lead not yet contacted.
pattern Lead_State_Lead :: Lead_State
pattern Lead_State_Lead = Lead_State "LEAD"

-- | Lead has been contacted.
pattern Lead_State_Contacted :: Lead_State
pattern Lead_State_Contacted = Lead_State "CONTACTED"

-- | Lead has become a client.
pattern Lead_State_Client :: Lead_State
pattern Lead_State_Client = Lead_State "CLIENT"

-- | Lead in a state not covered by other options.
pattern Lead_State_Other :: Lead_State
pattern Lead_State_Other = Lead_State "OTHER"

{-# COMPLETE
  Lead_State_LEADSTATEUNSPECIFIED,
  Lead_State_Lead,
  Lead_State_Contacted,
  Lead_State_Client,
  Lead_State_Other,
  Lead_State #-}

-- | Type of lead.
newtype Lead_Type = Lead_Type { fromLead_Type :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unchosen.
pattern Lead_Type_LEADTYPEUNSPECIFIED :: Lead_Type
pattern Lead_Type_LEADTYPEUNSPECIFIED = Lead_Type "LEAD_TYPE_UNSPECIFIED"

-- | Google Partner Search.
pattern Lead_Type_LTGPS :: Lead_Type
pattern Lead_Type_LTGPS = Lead_Type "LT_GPS"

{-# COMPLETE
  Lead_Type_LEADTYPEUNSPECIFIED,
  Lead_Type_LTGPS,
  Lead_Type #-}

-- | Reason why no Offers are available.
newtype ListOffersResponse_NoOfferReason = ListOffersResponse_NoOfferReason { fromListOffersResponse_NoOfferReason :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unset.
pattern ListOffersResponse_NoOfferReason_NOOFFERREASONUNSPECIFIED :: ListOffersResponse_NoOfferReason
pattern ListOffersResponse_NoOfferReason_NOOFFERREASONUNSPECIFIED = ListOffersResponse_NoOfferReason "NO_OFFER_REASON_UNSPECIFIED"

-- | Not an MCC.
pattern ListOffersResponse_NoOfferReason_NOOFFERREASONNOMCC :: ListOffersResponse_NoOfferReason
pattern ListOffersResponse_NoOfferReason_NOOFFERREASONNOMCC = ListOffersResponse_NoOfferReason "NO_OFFER_REASON_NO_MCC"

-- | Offer limit has been reached.
pattern ListOffersResponse_NoOfferReason_NOOFFERREASONLIMITREACHED :: ListOffersResponse_NoOfferReason
pattern ListOffersResponse_NoOfferReason_NOOFFERREASONLIMITREACHED = ListOffersResponse_NoOfferReason "NO_OFFER_REASON_LIMIT_REACHED"

-- | Ineligible for offers.
pattern ListOffersResponse_NoOfferReason_NOOFFERREASONINELIGIBLE :: ListOffersResponse_NoOfferReason
pattern ListOffersResponse_NoOfferReason_NOOFFERREASONINELIGIBLE = ListOffersResponse_NoOfferReason "NO_OFFER_REASON_INELIGIBLE"

{-# COMPLETE
  ListOffersResponse_NoOfferReason_NOOFFERREASONUNSPECIFIED,
  ListOffersResponse_NoOfferReason_NOOFFERREASONNOMCC,
  ListOffersResponse_NoOfferReason_NOOFFERREASONLIMITREACHED,
  ListOffersResponse_NoOfferReason_NOOFFERREASONINELIGIBLE,
  ListOffersResponse_NoOfferReason #-}

-- | Message level of client message.
newtype LogMessageRequest_Level = LogMessageRequest_Level { fromLogMessageRequest_Level :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unchosen.
pattern LogMessageRequest_Level_MESSAGELEVELUNSPECIFIED :: LogMessageRequest_Level
pattern LogMessageRequest_Level_MESSAGELEVELUNSPECIFIED = LogMessageRequest_Level "MESSAGE_LEVEL_UNSPECIFIED"

-- | Message level for tracing information.
pattern LogMessageRequest_Level_MLFINE :: LogMessageRequest_Level
pattern LogMessageRequest_Level_MLFINE = LogMessageRequest_Level "ML_FINE"

-- | Message level for informational messages.
pattern LogMessageRequest_Level_MLINFO :: LogMessageRequest_Level
pattern LogMessageRequest_Level_MLINFO = LogMessageRequest_Level "ML_INFO"

-- | Message level for potential problems.
pattern LogMessageRequest_Level_MLWARNING :: LogMessageRequest_Level
pattern LogMessageRequest_Level_MLWARNING = LogMessageRequest_Level "ML_WARNING"

-- | Message level for serious failures.
pattern LogMessageRequest_Level_MLSEVERE :: LogMessageRequest_Level
pattern LogMessageRequest_Level_MLSEVERE = LogMessageRequest_Level "ML_SEVERE"

{-# COMPLETE
  LogMessageRequest_Level_MESSAGELEVELUNSPECIFIED,
  LogMessageRequest_Level_MLFINE,
  LogMessageRequest_Level_MLINFO,
  LogMessageRequest_Level_MLWARNING,
  LogMessageRequest_Level_MLSEVERE,
  LogMessageRequest_Level #-}

-- | The action that occurred.
newtype LogUserEventRequest_EventAction = LogUserEventRequest_EventAction { fromLogUserEventRequest_EventAction :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unchosen.
pattern LogUserEventRequest_EventAction_EVENTACTIONUNSPECIFIED :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_EVENTACTIONUNSPECIFIED = LogUserEventRequest_EventAction "EVENT_ACTION_UNSPECIFIED"

-- | Advertiser clicked @Find a partner@ bottom button.
pattern LogUserEventRequest_EventAction_SMBCLICKEDFINDAPARTNERBUTTONBOTTOM :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_SMBCLICKEDFINDAPARTNERBUTTONBOTTOM = LogUserEventRequest_EventAction "SMB_CLICKED_FIND_A_PARTNER_BUTTON_BOTTOM"

-- | Advertiser clicked @Find a partner@ top button.
pattern LogUserEventRequest_EventAction_SMBCLICKEDFINDAPARTNERBUTTONTOP :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_SMBCLICKEDFINDAPARTNERBUTTONTOP = LogUserEventRequest_EventAction "SMB_CLICKED_FIND_A_PARTNER_BUTTON_TOP"

-- | Agency clicked @Join now@ bottom button.
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDJOINNOWBUTTONBOTTOM :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDJOINNOWBUTTONBOTTOM = LogUserEventRequest_EventAction "AGENCY_CLICKED_JOIN_NOW_BUTTON_BOTTOM"

-- | Agency clicked @Join now@ top button.
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDJOINNOWBUTTONTOP :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDJOINNOWBUTTONTOP = LogUserEventRequest_EventAction "AGENCY_CLICKED_JOIN_NOW_BUTTON_TOP"

-- | Advertiser canceled partner contact form.
pattern LogUserEventRequest_EventAction_SMBCANCELEDPARTNERCONTACTFORM :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_SMBCANCELEDPARTNERCONTACTFORM = LogUserEventRequest_EventAction "SMB_CANCELED_PARTNER_CONTACT_FORM"

-- | Advertiser started partner contact form.
pattern LogUserEventRequest_EventAction_SMBCLICKEDCONTACTAPARTNER :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_SMBCLICKEDCONTACTAPARTNER = LogUserEventRequest_EventAction "SMB_CLICKED_CONTACT_A_PARTNER"

-- | Advertiser completed partner contact form.
pattern LogUserEventRequest_EventAction_SMBCOMPLETEDPARTNERCONTACTFORM :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_SMBCOMPLETEDPARTNERCONTACTFORM = LogUserEventRequest_EventAction "SMB_COMPLETED_PARTNER_CONTACT_FORM"

-- | Advertiser entered email in contact form.
pattern LogUserEventRequest_EventAction_SMBENTEREDEMAILINCONTACTPARTNERFORM :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_SMBENTEREDEMAILINCONTACTPARTNERFORM = LogUserEventRequest_EventAction "SMB_ENTERED_EMAIL_IN_CONTACT_PARTNER_FORM"

-- | Advertiser entered name in contact form.
pattern LogUserEventRequest_EventAction_SMBENTEREDNAMEINCONTACTPARTNERFORM :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_SMBENTEREDNAMEINCONTACTPARTNERFORM = LogUserEventRequest_EventAction "SMB_ENTERED_NAME_IN_CONTACT_PARTNER_FORM"

-- | Advertiser entered phone in contact form.
pattern LogUserEventRequest_EventAction_SMBENTEREDPHONEINCONTACTPARTNERFORM :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_SMBENTEREDPHONEINCONTACTPARTNERFORM = LogUserEventRequest_EventAction "SMB_ENTERED_PHONE_IN_CONTACT_PARTNER_FORM"

-- | Advertiser failed \<a href=\"https:\/\/www.google.com\/recaptcha\/\">reCaptcha\<\/a> in contact form.
pattern LogUserEventRequest_EventAction_SMBFAILEDRECAPTCHAINCONTACTPARTNERFORM :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_SMBFAILEDRECAPTCHAINCONTACTPARTNERFORM = LogUserEventRequest_EventAction "SMB_FAILED_RECAPTCHA_IN_CONTACT_PARTNER_FORM"

-- | Company viewed by advertiser.
pattern LogUserEventRequest_EventAction_PARTNERVIEWEDBYSMB :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_PARTNERVIEWEDBYSMB = LogUserEventRequest_EventAction "PARTNER_VIEWED_BY_SMB"

-- | Advertiser canceled partner contact form on Google Partner Search.
pattern LogUserEventRequest_EventAction_SMBCANCELEDPARTNERCONTACTFORMONGPS :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_SMBCANCELEDPARTNERCONTACTFORMONGPS = LogUserEventRequest_EventAction "SMB_CANCELED_PARTNER_CONTACT_FORM_ON_GPS"

-- | Advertiser changed a top search parameter.
pattern LogUserEventRequest_EventAction_SMBCHANGEDASEARCHPARAMETERTOP :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_SMBCHANGEDASEARCHPARAMETERTOP = LogUserEventRequest_EventAction "SMB_CHANGED_A_SEARCH_PARAMETER_TOP"

-- | Advertiser started partner contact form on Google Partner Search.
pattern LogUserEventRequest_EventAction_SMBCLICKEDCONTACTAPARTNERONGPS :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_SMBCLICKEDCONTACTAPARTNERONGPS = LogUserEventRequest_EventAction "SMB_CLICKED_CONTACT_A_PARTNER_ON_GPS"

-- | Advertiser clicked @Show more partners@ bottom button.
pattern LogUserEventRequest_EventAction_SMBCLICKEDSHOWMOREPARTNERSBUTTONBOTTOM :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_SMBCLICKEDSHOWMOREPARTNERSBUTTONBOTTOM = LogUserEventRequest_EventAction "SMB_CLICKED_SHOW_MORE_PARTNERS_BUTTON_BOTTOM"

-- | Advertiser completed partner contact form on Google Partner Search.
pattern LogUserEventRequest_EventAction_SMBCOMPLETEDPARTNERCONTACTFORMONGPS :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_SMBCOMPLETEDPARTNERCONTACTFORMONGPS = LogUserEventRequest_EventAction "SMB_COMPLETED_PARTNER_CONTACT_FORM_ON_GPS"

-- | Advertiser saw no partners available with search criteria.
pattern LogUserEventRequest_EventAction_SMBNOPARTNERSAVAILABLEWITHSEARCHCRITERIA :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_SMBNOPARTNERSAVAILABLEWITHSEARCHCRITERIA = LogUserEventRequest_EventAction "SMB_NO_PARTNERS_AVAILABLE_WITH_SEARCH_CRITERIA"

-- | Advertiser performed search on Google Partner Search.
pattern LogUserEventRequest_EventAction_SMBPERFORMEDSEARCHONGPS :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_SMBPERFORMEDSEARCHONGPS = LogUserEventRequest_EventAction "SMB_PERFORMED_SEARCH_ON_GPS"

-- | Advertiser viewed a partner on Google Partner Search.
pattern LogUserEventRequest_EventAction_SMBVIEWEDAPARTNERONGPS :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_SMBVIEWEDAPARTNERONGPS = LogUserEventRequest_EventAction "SMB_VIEWED_A_PARTNER_ON_GPS"

-- | Advertiser canceled partner contact form on profile page.
pattern LogUserEventRequest_EventAction_SMBCANCELEDPARTNERCONTACTFORMONPROFILEPAGE :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_SMBCANCELEDPARTNERCONTACTFORMONPROFILEPAGE = LogUserEventRequest_EventAction "SMB_CANCELED_PARTNER_CONTACT_FORM_ON_PROFILE_PAGE"

-- | Advertiser started partner contact form on profile page.
pattern LogUserEventRequest_EventAction_SMBCLICKEDCONTACTAPARTNERONPROFILEPAGE :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_SMBCLICKEDCONTACTAPARTNERONPROFILEPAGE = LogUserEventRequest_EventAction "SMB_CLICKED_CONTACT_A_PARTNER_ON_PROFILE_PAGE"

-- | Advertiser clicked partner website.
pattern LogUserEventRequest_EventAction_SMBCLICKEDPARTNERWEBSITE :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_SMBCLICKEDPARTNERWEBSITE = LogUserEventRequest_EventAction "SMB_CLICKED_PARTNER_WEBSITE"

-- | Advertiser completed contact form on profile page.
pattern LogUserEventRequest_EventAction_SMBCOMPLETEDPARTNERCONTACTFORMONPROFILEPAGE :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_SMBCOMPLETEDPARTNERCONTACTFORMONPROFILEPAGE = LogUserEventRequest_EventAction "SMB_COMPLETED_PARTNER_CONTACT_FORM_ON_PROFILE_PAGE"

-- | Advertiser viewed a partner profile.
pattern LogUserEventRequest_EventAction_SMBVIEWEDAPARTNERPROFILE :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_SMBVIEWEDAPARTNERPROFILE = LogUserEventRequest_EventAction "SMB_VIEWED_A_PARTNER_PROFILE"

-- | Agency clicked @accept Terms Of Service@ button.
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDACCEPTTOSBUTTON :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDACCEPTTOSBUTTON = LogUserEventRequest_EventAction "AGENCY_CLICKED_ACCEPT_TOS_BUTTON"

-- | Agency changed Terms Of Service country.
pattern LogUserEventRequest_EventAction_AGENCYCHANGEDTOSCOUNTRY :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCHANGEDTOSCOUNTRY = LogUserEventRequest_EventAction "AGENCY_CHANGED_TOS_COUNTRY"

-- | Agency added address in profile portal.
pattern LogUserEventRequest_EventAction_AGENCYADDEDADDRESSINMYPROFILEPORTAL :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYADDEDADDRESSINMYPROFILEPORTAL = LogUserEventRequest_EventAction "AGENCY_ADDED_ADDRESS_IN_MY_PROFILE_PORTAL"

-- | Agency added phone number in profile portal.
pattern LogUserEventRequest_EventAction_AGENCYADDEDPHONENUMBERINMYPROFILEPORTAL :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYADDEDPHONENUMBERINMYPROFILEPORTAL = LogUserEventRequest_EventAction "AGENCY_ADDED_PHONE_NUMBER_IN_MY_PROFILE_PORTAL"

-- | Agency changed primary account association.
pattern LogUserEventRequest_EventAction_AGENCYCHANGEDPRIMARYACCOUNTASSOCIATION :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCHANGEDPRIMARYACCOUNTASSOCIATION = LogUserEventRequest_EventAction "AGENCY_CHANGED_PRIMARY_ACCOUNT_ASSOCIATION"

-- | Agency changed primary country association.
pattern LogUserEventRequest_EventAction_AGENCYCHANGEDPRIMARYCOUNTRYASSOCIATION :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCHANGEDPRIMARYCOUNTRYASSOCIATION = LogUserEventRequest_EventAction "AGENCY_CHANGED_PRIMARY_COUNTRY_ASSOCIATION"

-- | Agency clicked @affiliate@ button in profile portal.
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDAFFILIATEBUTTONINMYPROFILEINPORTAL :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDAFFILIATEBUTTONINMYPROFILEINPORTAL = LogUserEventRequest_EventAction "AGENCY_CLICKED_AFFILIATE_BUTTON_IN_MY_PROFILE_IN_PORTAL"

-- | Agency clicked @give edit access@ in profile portal.
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDGIVEEDITACCESSINMYPROFILEPORTAL :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDGIVEEDITACCESSINMYPROFILEPORTAL = LogUserEventRequest_EventAction "AGENCY_CLICKED_GIVE_EDIT_ACCESS_IN_MY_PROFILE_PORTAL"

-- | Agency clicked @log out@ in profile portal.
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDLOGOUTINMYPROFILEPORTAL :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDLOGOUTINMYPROFILEPORTAL = LogUserEventRequest_EventAction "AGENCY_CLICKED_LOG_OUT_IN_MY_PROFILE_PORTAL"

-- | Agency clicked profile portal left nav.
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDMYPROFILELEFTNAVINPORTAL :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDMYPROFILELEFTNAVINPORTAL = LogUserEventRequest_EventAction "AGENCY_CLICKED_MY_PROFILE_LEFT_NAV_IN_PORTAL"

-- | Agency clicked @save and continue@ at bottom of complete profile.
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDSAVEANDCONTINUEATBOTOFCOMPLETEPROFILE :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDSAVEANDCONTINUEATBOTOFCOMPLETEPROFILE = LogUserEventRequest_EventAction "AGENCY_CLICKED_SAVE_AND_CONTINUE_AT_BOT_OF_COMPLETE_PROFILE"

-- | Agency clicked @unaffiliate@ in profile portal.
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDUNAFFILIATEINMYPROFILEPORTAL :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDUNAFFILIATEINMYPROFILEPORTAL = LogUserEventRequest_EventAction "AGENCY_CLICKED_UNAFFILIATE_IN_MY_PROFILE_PORTAL"

-- | Agency filled out company affiliation in profile portal.
pattern LogUserEventRequest_EventAction_AGENCYFILLEDOUTCOMPAFFILIATIONINMYPROFILEPORTAL :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYFILLEDOUTCOMPAFFILIATIONINMYPROFILEPORTAL = LogUserEventRequest_EventAction "AGENCY_FILLED_OUT_COMP_AFFILIATION_IN_MY_PROFILE_PORTAL"

-- | Agency successfully connected with company in profile portal.
pattern LogUserEventRequest_EventAction_AGENCYSUCCESSFULLYCONNECTEDWITHCOMPANYINMYPROFILE :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYSUCCESSFULLYCONNECTEDWITHCOMPANYINMYPROFILE = LogUserEventRequest_EventAction "AGENCY_SUCCESSFULLY_CONNECTED_WITH_COMPANY_IN_MY_PROFILE"

-- | Agency clicked create MCC in profile portal.
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDCREATEMCCINMYPROFILEPORTAL :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDCREATEMCCINMYPROFILEPORTAL = LogUserEventRequest_EventAction "AGENCY_CLICKED_CREATE_MCC_IN_MY_PROFILE_PORTAL"

-- | Agency did not have an MCC associated on profile portal.
pattern LogUserEventRequest_EventAction_AGENCYDIDNTHAVEANMCCASSOCIATEDONCOMPLETEPROFILE :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYDIDNTHAVEANMCCASSOCIATEDONCOMPLETEPROFILE = LogUserEventRequest_EventAction "AGENCY_DIDNT_HAVE_AN_MCC_ASSOCIATED_ON_COMPLETE_PROFILE"

-- | Agency had an MCC associated on profile portal.
pattern LogUserEventRequest_EventAction_AGENCYHADANMCCASSOCIATEDONCOMPLETEPROFILE :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYHADANMCCASSOCIATEDONCOMPLETEPROFILE = LogUserEventRequest_EventAction "AGENCY_HAD_AN_MCC_ASSOCIATED_ON_COMPLETE_PROFILE"

-- | Agency added job function in profile portal.
pattern LogUserEventRequest_EventAction_AGENCYADDEDJOBFUNCTIONINMYPROFILEPORTAL :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYADDEDJOBFUNCTIONINMYPROFILEPORTAL = LogUserEventRequest_EventAction "AGENCY_ADDED_JOB_FUNCTION_IN_MY_PROFILE_PORTAL"

-- | Agency looked at job function drop-down.
pattern LogUserEventRequest_EventAction_AGENCYLOOKEDATJOBFUNCTIONDROPDOWN :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYLOOKEDATJOBFUNCTIONDROPDOWN = LogUserEventRequest_EventAction "AGENCY_LOOKED_AT_JOB_FUNCTION_DROP_DOWN"

-- | Agency selected @account manage@ as job function.
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDACCOUNTMANAGERASJOBFUNCTION :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDACCOUNTMANAGERASJOBFUNCTION = LogUserEventRequest_EventAction "AGENCY_SELECTED_ACCOUNT_MANAGER_AS_JOB_FUNCTION"

-- | Agency selected @account planner@ as job function.
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDACCOUNTPLANNERASJOBFUNCTION :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDACCOUNTPLANNERASJOBFUNCTION = LogUserEventRequest_EventAction "AGENCY_SELECTED_ACCOUNT_PLANNER_AS_JOB_FUNCTION"

-- | Agency selected @Analytics@ as job function.
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDANALYTICSASJOBFUNCTION :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDANALYTICSASJOBFUNCTION = LogUserEventRequest_EventAction "AGENCY_SELECTED_ANALYTICS_AS_JOB_FUNCTION"

-- | Agency selected @creative@ as job function.
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDCREATIVEASJOBFUNCTION :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDCREATIVEASJOBFUNCTION = LogUserEventRequest_EventAction "AGENCY_SELECTED_CREATIVE_AS_JOB_FUNCTION"

-- | Agency selected @media buyer@ as job function.
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDMEDIABUYERASJOBFUNCTION :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDMEDIABUYERASJOBFUNCTION = LogUserEventRequest_EventAction "AGENCY_SELECTED_MEDIA_BUYER_AS_JOB_FUNCTION"

-- | Agency selected @media planner@ as job function.
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDMEDIAPLANNERASJOBFUNCTION :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDMEDIAPLANNERASJOBFUNCTION = LogUserEventRequest_EventAction "AGENCY_SELECTED_MEDIA_PLANNER_AS_JOB_FUNCTION"

-- | Agency selected @other@ as job function.
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDOTHERASJOBFUNCTION :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDOTHERASJOBFUNCTION = LogUserEventRequest_EventAction "AGENCY_SELECTED_OTHER_AS_JOB_FUNCTION"

-- | Agency selected @production@ as job function.
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDPRODUCTIONASJOBFUNCTION :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDPRODUCTIONASJOBFUNCTION = LogUserEventRequest_EventAction "AGENCY_SELECTED_PRODUCTION_AS_JOB_FUNCTION"

-- | Agency selected @SEO@ as job function.
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDSEOASJOBFUNCTION :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDSEOASJOBFUNCTION = LogUserEventRequest_EventAction "AGENCY_SELECTED_SEO_AS_JOB_FUNCTION"

-- | Agency selected @sales rep@ as job function.
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDSALESREPASJOBFUNCTION :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDSALESREPASJOBFUNCTION = LogUserEventRequest_EventAction "AGENCY_SELECTED_SALES_REP_AS_JOB_FUNCTION"

-- | Agency selected @search specialist@ as job function.
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDSEARCHSPECIALISTASJOBFUNCTION :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDSEARCHSPECIALISTASJOBFUNCTION = LogUserEventRequest_EventAction "AGENCY_SELECTED_SEARCH_SPECIALIST_AS_JOB_FUNCTION"

-- | Agency added channels in profile portal.
pattern LogUserEventRequest_EventAction_AGENCYADDEDCHANNELSINMYPROFILEPORTAL :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYADDEDCHANNELSINMYPROFILEPORTAL = LogUserEventRequest_EventAction "AGENCY_ADDED_CHANNELS_IN_MY_PROFILE_PORTAL"

-- | Agency looked at @add channel@ drop-down.
pattern LogUserEventRequest_EventAction_AGENCYLOOKEDATADDCHANNELDROPDOWN :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYLOOKEDATADDCHANNELDROPDOWN = LogUserEventRequest_EventAction "AGENCY_LOOKED_AT_ADD_CHANNEL_DROP_DOWN"

-- | Agency selected @cross channel@ from add channel drop-down.
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDCROSSCHANNELFROMADDCHANNEL :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDCROSSCHANNELFROMADDCHANNEL = LogUserEventRequest_EventAction "AGENCY_SELECTED_CROSS_CHANNEL_FROM_ADD_CHANNEL"

-- | Agency selected @display@ from add channel drop-down.
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDDISPLAYFROMADDCHANNEL :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDDISPLAYFROMADDCHANNEL = LogUserEventRequest_EventAction "AGENCY_SELECTED_DISPLAY_FROM_ADD_CHANNEL"

-- | Agency selected @mobile@ from add channel drop-down.
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDMOBILEFROMADDCHANNEL :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDMOBILEFROMADDCHANNEL = LogUserEventRequest_EventAction "AGENCY_SELECTED_MOBILE_FROM_ADD_CHANNEL"

-- | Agency selected @search@ from add channel drop-down.
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDSEARCHFROMADDCHANNEL :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDSEARCHFROMADDCHANNEL = LogUserEventRequest_EventAction "AGENCY_SELECTED_SEARCH_FROM_ADD_CHANNEL"

-- | Agency selected @social@ from add channel drop-down.
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDSOCIALFROMADDCHANNEL :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDSOCIALFROMADDCHANNEL = LogUserEventRequest_EventAction "AGENCY_SELECTED_SOCIAL_FROM_ADD_CHANNEL"

-- | Agency selected @tools@ from add channel drop-down.
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDTOOLSFROMADDCHANNEL :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDTOOLSFROMADDCHANNEL = LogUserEventRequest_EventAction "AGENCY_SELECTED_TOOLS_FROM_ADD_CHANNEL"

-- | Agency selected @YouTube@ from add channel drop-down.
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDYOUTUBEFROMADDCHANNEL :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDYOUTUBEFROMADDCHANNEL = LogUserEventRequest_EventAction "AGENCY_SELECTED_YOUTUBE_FROM_ADD_CHANNEL"

-- | Agency added industries in profile portal.
pattern LogUserEventRequest_EventAction_AGENCYADDEDINDUSTRIESINMYPROFILEPORTAL :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYADDEDINDUSTRIESINMYPROFILEPORTAL = LogUserEventRequest_EventAction "AGENCY_ADDED_INDUSTRIES_IN_MY_PROFILE_PORTAL"

-- | Agency changed @add industries@ drop-down.
pattern LogUserEventRequest_EventAction_AGENCYCHANGEDADDINDUSTRIESDROPDOWN :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCHANGEDADDINDUSTRIESDROPDOWN = LogUserEventRequest_EventAction "AGENCY_CHANGED_ADD_INDUSTRIES_DROP_DOWN"

-- | Agency added markets in profile portal.
pattern LogUserEventRequest_EventAction_AGENCYADDEDMARKETSINMYPROFILEPORTAL :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYADDEDMARKETSINMYPROFILEPORTAL = LogUserEventRequest_EventAction "AGENCY_ADDED_MARKETS_IN_MY_PROFILE_PORTAL"

-- | Agency changed @add markets@ drop-down.
pattern LogUserEventRequest_EventAction_AGENCYCHANGEDADDMARKETSDROPDOWN :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCHANGEDADDMARKETSDROPDOWN = LogUserEventRequest_EventAction "AGENCY_CHANGED_ADD_MARKETS_DROP_DOWN"

-- | Agency checked @recieve mail promotions@ in profile portal.
pattern LogUserEventRequest_EventAction_AGENCYCHECKEDRECIEVEMAILPROMOTIONSMYPROFILE :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCHECKEDRECIEVEMAILPROMOTIONSMYPROFILE = LogUserEventRequest_EventAction "AGENCY_CHECKED_RECIEVE_MAIL_PROMOTIONS_MYPROFILE"

-- | Agency checked @recieve mail promotions@ in sign-up.
pattern LogUserEventRequest_EventAction_AGENCYCHECKEDRECIEVEMAILPROMOTIONSSIGNUP :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCHECKEDRECIEVEMAILPROMOTIONSSIGNUP = LogUserEventRequest_EventAction "AGENCY_CHECKED_RECIEVE_MAIL_PROMOTIONS_SIGNUP"

-- | Agency selected @opt-in beta tests and market research@.
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDOPTINBETATESTSANDMKTRESEARCH :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDOPTINBETATESTSANDMKTRESEARCH = LogUserEventRequest_EventAction "AGENCY_SELECTED_OPT_IN_BETA_TESTS_AND_MKT_RESEARCH"

-- | Agency selected @opt-in beta tests@ in profile portal.
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDOPTINBETATESTSINMYPROFILEPORTAL :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDOPTINBETATESTSINMYPROFILEPORTAL = LogUserEventRequest_EventAction "AGENCY_SELECTED_OPT_IN_BETA_TESTS_IN_MY_PROFILE_PORTAL"

-- | Agency selected @opt-in news@ in profile portal.
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDOPTINNEWSINMYPROFILEPORTAL :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDOPTINNEWSINMYPROFILEPORTAL = LogUserEventRequest_EventAction "AGENCY_SELECTED_OPT_IN_NEWS_IN_MY_PROFILE_PORTAL"

-- | Agency selected @opt-in news invitations and promotions@.
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDOPTINNEWSINVITATIONSANDPROMOS :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDOPTINNEWSINVITATIONSANDPROMOS = LogUserEventRequest_EventAction "AGENCY_SELECTED_OPT_IN_NEWS_INVITATIONS_AND_PROMOS"

-- | Agency selected @opt-in performance SUG@ in profile portal.
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDOPTINPERFORMANCESUGINMYPROFILEPORTAL :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDOPTINPERFORMANCESUGINMYPROFILEPORTAL = LogUserEventRequest_EventAction "AGENCY_SELECTED_OPT_IN_PERFORMANCE_SUG_IN_MY_PROFILE_PORTAL"

-- | Agency selected @opt-in performance suggestions@.
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDOPTINPERFORMANCESUGGESTIONS :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDOPTINPERFORMANCESUGGESTIONS = LogUserEventRequest_EventAction "AGENCY_SELECTED_OPT_IN_PERFORMANCE_SUGGESTIONS"

-- | Agency selected @opt-in select all email notifications@.
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDOPTINSELECTALLEMAILNOTIFICATIONS :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDOPTINSELECTALLEMAILNOTIFICATIONS = LogUserEventRequest_EventAction "AGENCY_SELECTED_OPT_IN_SELECT_ALL_EMAIL_NOTIFICATIONS"

-- | Agency selected @select all opt-ins@ in profile portal.
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDSELECTALLOPTINSINMYPROFILEPORTAL :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDSELECTALLOPTINSINMYPROFILEPORTAL = LogUserEventRequest_EventAction "AGENCY_SELECTED_SELECT_ALL_OPT_INS_IN_MY_PROFILE_PORTAL"

-- | Agency clicked back button on @connect with company@.
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDBACKBUTTONONCONNECTWITHCOMPANY :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDBACKBUTTONONCONNECTWITHCOMPANY = LogUserEventRequest_EventAction "AGENCY_CLICKED_BACK_BUTTON_ON_CONNECT_WITH_COMPANY"

-- | Agency clicked continue to overview on @connect with company@.
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDCONTINUETOOVERVIEWONCONNECTWITHCOMPANY :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDCONTINUETOOVERVIEWONCONNECTWITHCOMPANY = LogUserEventRequest_EventAction "AGENCY_CLICKED_CONTINUE_TO_OVERVIEW_ON_CONNECT_WITH_COMPANY"

-- | Agency clicked @create MCC connect with company not found@.
pattern LogUserEventRequest_EventAction_AGECNYCLICKEDCREATEMCCCONNECTWITHCOMPANYNOTFOUND :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGECNYCLICKEDCREATEMCCCONNECTWITHCOMPANYNOTFOUND = LogUserEventRequest_EventAction "AGECNY_CLICKED_CREATE_MCC_CONNECT_WITH_COMPANY_NOT_FOUND"

-- | Agency clicked @give edit access connect with company not found@.
pattern LogUserEventRequest_EventAction_AGECNYCLICKEDGIVEEDITACCESSCONNECTWITHCOMPANYNOTFOUND :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGECNYCLICKEDGIVEEDITACCESSCONNECTWITHCOMPANYNOTFOUND = LogUserEventRequest_EventAction "AGECNY_CLICKED_GIVE_EDIT_ACCESS_CONNECT_WITH_COMPANY_NOT_FOUND"

-- | Agency clicked @log out connect with company not found@.
pattern LogUserEventRequest_EventAction_AGECNYCLICKEDLOGOUTCONNECTWITHCOMPANYNOTFOUND :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGECNYCLICKEDLOGOUTCONNECTWITHCOMPANYNOTFOUND = LogUserEventRequest_EventAction "AGECNY_CLICKED_LOG_OUT_CONNECT_WITH_COMPANY_NOT_FOUND"

-- | Agency clicked @skip for now on connect with company page@.
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDSKIPFORNOWONCONNECTWITHCOMPANYPAGE :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDSKIPFORNOWONCONNECTWITHCOMPANYPAGE = LogUserEventRequest_EventAction "AGENCY_CLICKED_SKIP_FOR_NOW_ON_CONNECT_WITH_COMPANY_PAGE"

-- | Agency closed connection to company.
pattern LogUserEventRequest_EventAction_AGENCYCLOSEDCONNECTEDTOCOMPANYXBUTTONWRONGCOMPANY :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCLOSEDCONNECTEDTOCOMPANYXBUTTONWRONGCOMPANY = LogUserEventRequest_EventAction "AGENCY_CLOSED_CONNECTED_TO_COMPANY_X_BUTTON_WRONG_COMPANY"

-- | Agency completed field connect with company.
pattern LogUserEventRequest_EventAction_AGENCYCOMPLETEDFIELDCONNECTWITHCOMPANY :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCOMPLETEDFIELDCONNECTWITHCOMPANY = LogUserEventRequest_EventAction "AGENCY_COMPLETED_FIELD_CONNECT_WITH_COMPANY"

-- | Agency found company to connect with.
pattern LogUserEventRequest_EventAction_AGECNYFOUNDCOMPANYTOCONNECTWITH :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGECNYFOUNDCOMPANYTOCONNECTWITH = LogUserEventRequest_EventAction "AGECNY_FOUND_COMPANY_TO_CONNECT_WITH"

-- | Agency successfully created company.
pattern LogUserEventRequest_EventAction_AGENCYSUCCESSFULLYCREATEDCOMPANY :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYSUCCESSFULLYCREATEDCOMPANY = LogUserEventRequest_EventAction "AGENCY_SUCCESSFULLY_CREATED_COMPANY"

-- | Agency added new company location.
pattern LogUserEventRequest_EventAction_AGENCYADDEDNEWCOMPANYLOCATION :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYADDEDNEWCOMPANYLOCATION = LogUserEventRequest_EventAction "AGENCY_ADDED_NEW_COMPANY_LOCATION"

-- | Agency clicked community @join now link@ in portal notifications.
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDCOMMUNITYJOINNOWLINKINPORTALNOTIFICATIONS :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDCOMMUNITYJOINNOWLINKINPORTALNOTIFICATIONS = LogUserEventRequest_EventAction "AGENCY_CLICKED_COMMUNITY_JOIN_NOW_LINK_IN_PORTAL_NOTIFICATIONS"

-- | Agency clicked @connect to company@ link in portal notifications.
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDCONNECTTOCOMPANYLINKINPORTALNOTIFICATIONS :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDCONNECTTOCOMPANYLINKINPORTALNOTIFICATIONS = LogUserEventRequest_EventAction "AGENCY_CLICKED_CONNECT_TO_COMPANY_LINK_IN_PORTAL_NOTIFICATIONS"

-- | Agency cliecked @get certified@ link in portal notifications.
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDGETCERTIFIEDLINKINPORTALNOTIFICATIONS :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDGETCERTIFIEDLINKINPORTALNOTIFICATIONS = LogUserEventRequest_EventAction "AGENCY_CLICKED_GET_CERTIFIED_LINK_IN_PORTAL_NOTIFICATIONS"

-- | Agency clicked @get VideoAds certified@ link in portal notifications.
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDGETVIDEOADSCERTIFIEDLINKINPORTALNOTIFICATIONS :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDGETVIDEOADSCERTIFIEDLINKINPORTALNOTIFICATIONS = LogUserEventRequest_EventAction "AGENCY_CLICKED_GET_VIDEO_ADS_CERTIFIED_LINK_IN_PORTAL_NOTIFICATIONS"

-- | Agency clicked @link to MCC@ link in portal notifications.
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDLINKTOMCCLINKINPORTALNOTIFICATIONS :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDLINKTOMCCLINKINPORTALNOTIFICATIONS = LogUserEventRequest_EventAction "AGENCY_CLICKED_LINK_TO_MCC_LINK_IN_PORTAL_NOTIFICATIONS"

-- | Agency clicked @insight content@ in portal.
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDINSIGHTCONTENTINPORTAL :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDINSIGHTCONTENTINPORTAL = LogUserEventRequest_EventAction "AGENCY_CLICKED_INSIGHT_CONTENT_IN_PORTAL"

-- | Agency clicked @insights view now pitch decks@ in portal.
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDINSIGHTSVIEWNOWPITCHDECKSINPORTAL :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDINSIGHTSVIEWNOWPITCHDECKSINPORTAL = LogUserEventRequest_EventAction "AGENCY_CLICKED_INSIGHTS_VIEW_NOW_PITCH_DECKS_IN_PORTAL"

-- | Agency clicked @insights@ left nav in portal.
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDINSIGHTSLEFTNAVINPORTAL :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDINSIGHTSLEFTNAVINPORTAL = LogUserEventRequest_EventAction "AGENCY_CLICKED_INSIGHTS_LEFT_NAV_IN_PORTAL"

-- | Agency clicked @insights upload content@.
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDINSIGHTSUPLOADCONTENT :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDINSIGHTSUPLOADCONTENT = LogUserEventRequest_EventAction "AGENCY_CLICKED_INSIGHTS_UPLOAD_CONTENT"

-- | Agency clicked @insights viewed deprecated@.
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDINSIGHTSVIEWEDDEPRECATED :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDINSIGHTSVIEWEDDEPRECATED = LogUserEventRequest_EventAction "AGENCY_CLICKED_INSIGHTS_VIEWED_DEPRECATED"

-- | Agency clicked @community@ left nav in portal.
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDCOMMUNITYLEFTNAVINPORTAL :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDCOMMUNITYLEFTNAVINPORTAL = LogUserEventRequest_EventAction "AGENCY_CLICKED_COMMUNITY_LEFT_NAV_IN_PORTAL"

-- | Agency clicked @join community@ button in community portal.
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDJOINCOMMUNITYBUTTONCOMMUNITYPORTAL :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDJOINCOMMUNITYBUTTONCOMMUNITYPORTAL = LogUserEventRequest_EventAction "AGENCY_CLICKED_JOIN_COMMUNITY_BUTTON_COMMUNITY_PORTAL"

-- | Agency clicked @certifications@ left nav in portal.
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDCERTIFICATIONSLEFTNAVINPORTAL :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDCERTIFICATIONSLEFTNAVINPORTAL = LogUserEventRequest_EventAction "AGENCY_CLICKED_CERTIFICATIONS_LEFT_NAV_IN_PORTAL"

-- | Agency clicked @certifications product@ left nav in portal.
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDCERTIFICATIONSPRODUCTLEFTNAVINPORTAL :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDCERTIFICATIONSPRODUCTLEFTNAVINPORTAL = LogUserEventRequest_EventAction "AGENCY_CLICKED_CERTIFICATIONS_PRODUCT_LEFT_NAV_IN_PORTAL"

-- | Agency clicked @partner status@ left nav in portal.
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDPARTNERSTATUSLEFTNAVINPORTAL :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDPARTNERSTATUSLEFTNAVINPORTAL = LogUserEventRequest_EventAction "AGENCY_CLICKED_PARTNER_STATUS_LEFT_NAV_IN_PORTAL"

-- | Agency clicked @partner status product@ left nav in portal.
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDPARTNERSTATUSPRODUCTLEFTNAVINPORTAL :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDPARTNERSTATUSPRODUCTLEFTNAVINPORTAL = LogUserEventRequest_EventAction "AGENCY_CLICKED_PARTNER_STATUS_PRODUCT_LEFT_NAV_IN_PORTAL"

-- | Agency clicked @offers@ left nav in portal.
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDOFFERSLEFTNAVINPORTAL :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDOFFERSLEFTNAVINPORTAL = LogUserEventRequest_EventAction "AGENCY_CLICKED_OFFERS_LEFT_NAV_IN_PORTAL"

-- | Agency clicked @send@ button on offers page.
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDSENDBUTTONONOFFERSPAGE :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDSENDBUTTONONOFFERSPAGE = LogUserEventRequest_EventAction "AGENCY_CLICKED_SEND_BUTTON_ON_OFFERS_PAGE"

-- | Agency clicked @exam details@ on certifications AdWords page.
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDEXAMDETAILSONCERTADWORDSPAGE :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDEXAMDETAILSONCERTADWORDSPAGE = LogUserEventRequest_EventAction "AGENCY_CLICKED_EXAM_DETAILS_ON_CERT_ADWORDS_PAGE"

-- | Agency clicked @see exams@ certifications main page.
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDSEEEXAMSCERTIFICATIONMAINPAGE :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDSEEEXAMSCERTIFICATIONMAINPAGE = LogUserEventRequest_EventAction "AGENCY_CLICKED_SEE_EXAMS_CERTIFICATION_MAIN_PAGE"

-- | Agency clicked @take exam@ on certifications exam page.
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDTAKEEXAMONCERTEXAMPAGE :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDTAKEEXAMONCERTEXAMPAGE = LogUserEventRequest_EventAction "AGENCY_CLICKED_TAKE_EXAM_ON_CERT_EXAM_PAGE"

-- | Agency opened @last admin@ dialog.
pattern LogUserEventRequest_EventAction_AGENCYOPENEDLASTADMINDIALOG :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYOPENEDLASTADMINDIALOG = LogUserEventRequest_EventAction "AGENCY_OPENED_LAST_ADMIN_DIALOG"

-- | Agency opened dialog with no users.
pattern LogUserEventRequest_EventAction_AGENCYOPENEDDIALOGWITHNOUSERS :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYOPENEDDIALOGWITHNOUSERS = LogUserEventRequest_EventAction "AGENCY_OPENED_DIALOG_WITH_NO_USERS"

-- | Agency promoted user to admin.
pattern LogUserEventRequest_EventAction_AGENCYPROMOTEDUSERTOADMIN :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYPROMOTEDUSERTOADMIN = LogUserEventRequest_EventAction "AGENCY_PROMOTED_USER_TO_ADMIN"

-- | Agency unaffiliated.
pattern LogUserEventRequest_EventAction_AGENCYUNAFFILIATED :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYUNAFFILIATED = LogUserEventRequest_EventAction "AGENCY_UNAFFILIATED"

-- | Agency changed roles.
pattern LogUserEventRequest_EventAction_AGENCYCHANGEDROLES :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCHANGEDROLES = LogUserEventRequest_EventAction "AGENCY_CHANGED_ROLES"

-- | Advertiser clicked @company name@ link to profile.
pattern LogUserEventRequest_EventAction_SMBCLICKEDCOMPANYNAMELINKTOPROFILE :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_SMBCLICKEDCOMPANYNAMELINKTOPROFILE = LogUserEventRequest_EventAction "SMB_CLICKED_COMPANY_NAME_LINK_TO_PROFILE"

-- | Advertiser viewed AdWords certificate.
pattern LogUserEventRequest_EventAction_SMBVIEWEDADWORDSCERTIFICATE :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_SMBVIEWEDADWORDSCERTIFICATE = LogUserEventRequest_EventAction "SMB_VIEWED_ADWORDS_CERTIFICATE"

-- | Advertiser viewed AdWords Search certificate.
pattern LogUserEventRequest_EventAction_SMBVIEWEDADWORDSSEARCHCERTIFICATE :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_SMBVIEWEDADWORDSSEARCHCERTIFICATE = LogUserEventRequest_EventAction "SMB_VIEWED_ADWORDS_SEARCH_CERTIFICATE"

-- | Advertiser viewed AdWords Display certificate.
pattern LogUserEventRequest_EventAction_SMBVIEWEDADWORDSDISPLAYCERTIFICATE :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_SMBVIEWEDADWORDSDISPLAYCERTIFICATE = LogUserEventRequest_EventAction "SMB_VIEWED_ADWORDS_DISPLAY_CERTIFICATE"

-- | Advertiser clicked AdWords certificate help icon.
pattern LogUserEventRequest_EventAction_SMBCLICKEDADWORDSCERTIFICATEHELPICON :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_SMBCLICKEDADWORDSCERTIFICATEHELPICON = LogUserEventRequest_EventAction "SMB_CLICKED_ADWORDS_CERTIFICATE_HELP_ICON"

-- | Advertiser viewed Analytics certificate.
pattern LogUserEventRequest_EventAction_SMBVIEWEDANALYTICSCERTIFICATE :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_SMBVIEWEDANALYTICSCERTIFICATE = LogUserEventRequest_EventAction "SMB_VIEWED_ANALYTICS_CERTIFICATE"

-- | Advertiser viewed DoubleClick certificate.
pattern LogUserEventRequest_EventAction_SMBVIEWEDDOUBLECLICKCERTIFICATE :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_SMBVIEWEDDOUBLECLICKCERTIFICATE = LogUserEventRequest_EventAction "SMB_VIEWED_DOUBLECLICK_CERTIFICATE"

-- | Advertiser viewed Mobile Sites certificate.
pattern LogUserEventRequest_EventAction_SMBVIEWEDMOBILESITESCERTIFICATE :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_SMBVIEWEDMOBILESITESCERTIFICATE = LogUserEventRequest_EventAction "SMB_VIEWED_MOBILE_SITES_CERTIFICATE"

-- | Advertiser viewed VideoAds certificate.
pattern LogUserEventRequest_EventAction_SMBVIEWEDVIDEOADSCERTIFICATE :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_SMBVIEWEDVIDEOADSCERTIFICATE = LogUserEventRequest_EventAction "SMB_VIEWED_VIDEO_ADS_CERTIFICATE"

-- | Advertiser clicked Shopping certificate help icon.
pattern LogUserEventRequest_EventAction_SMBVIEWEDSHOPPINGCERTIFICATE :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_SMBVIEWEDSHOPPINGCERTIFICATE = LogUserEventRequest_EventAction "SMB_VIEWED_SHOPPING_CERTIFICATE"

-- | Advertiser clicked VideoAds certificate help icon.
pattern LogUserEventRequest_EventAction_SMBCLICKEDVIDEOADSCERTIFICATEHELPICON :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_SMBCLICKEDVIDEOADSCERTIFICATEHELPICON = LogUserEventRequest_EventAction "SMB_CLICKED_VIDEO_ADS_CERTIFICATE_HELP_ICON"

-- | Advertiser viewed Digital Sales certificate.
pattern LogUserEventRequest_EventAction_SMBVIEWEDDIGITALSALESCERTIFICATE :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_SMBVIEWEDDIGITALSALESCERTIFICATE = LogUserEventRequest_EventAction "SMB_VIEWED_DIGITAL_SALES_CERTIFICATE"

-- | Clicked @help@ at bottom.
pattern LogUserEventRequest_EventAction_CLICKEDHELPATBOTTOM :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_CLICKEDHELPATBOTTOM = LogUserEventRequest_EventAction "CLICKED_HELP_AT_BOTTOM"

-- | Clicked @help@ at top.
pattern LogUserEventRequest_EventAction_CLICKEDHELPATTOP :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_CLICKEDHELPATTOP = LogUserEventRequest_EventAction "CLICKED_HELP_AT_TOP"

-- | Client error occurred.
pattern LogUserEventRequest_EventAction_CLIENTERROR :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_CLIENTERROR = LogUserEventRequest_EventAction "CLIENT_ERROR"

-- | Agency clicked left nav @stories@.
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDLEFTNAVSTORIES :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDLEFTNAVSTORIES = LogUserEventRequest_EventAction "AGENCY_CLICKED_LEFT_NAV_STORIES"

-- | Click occured.
pattern LogUserEventRequest_EventAction_Clicked :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_Clicked = LogUserEventRequest_EventAction "CLICKED"

-- | Advertiser clicked Mobile certificate help icon.
pattern LogUserEventRequest_EventAction_SMBVIEWEDMOBILECERTIFICATE :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_SMBVIEWEDMOBILECERTIFICATE = LogUserEventRequest_EventAction "SMB_VIEWED_MOBILE_CERTIFICATE"

-- | Agency failed the company verification.
pattern LogUserEventRequest_EventAction_AGENCYFAILEDCOMPANYVERIFICATION :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYFAILEDCOMPANYVERIFICATION = LogUserEventRequest_EventAction "AGENCY_FAILED_COMPANY_VERIFICATION"

-- | User visited the landing portion of Google Partners.
pattern LogUserEventRequest_EventAction_VISITEDLANDING :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_VISITEDLANDING = LogUserEventRequest_EventAction "VISITED_LANDING"

-- | User visited the Google Partner Search portion of Google Partners.
pattern LogUserEventRequest_EventAction_VISITEDGPS :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_VISITEDGPS = LogUserEventRequest_EventAction "VISITED_GPS"

-- | User visited the agency portal portion of Google Partners.
pattern LogUserEventRequest_EventAction_VISITEDAGENCYPORTAL :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_VISITEDAGENCYPORTAL = LogUserEventRequest_EventAction "VISITED_AGENCY_PORTAL"

-- | User cancelled signing up.
pattern LogUserEventRequest_EventAction_CANCELLEDINDIVIDUALSIGNUP :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_CANCELLEDINDIVIDUALSIGNUP = LogUserEventRequest_EventAction "CANCELLED_INDIVIDUAL_SIGN_UP"

-- | User cancelled signing up their company.
pattern LogUserEventRequest_EventAction_CANCELLEDCOMPANYSIGNUP :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_CANCELLEDCOMPANYSIGNUP = LogUserEventRequest_EventAction "CANCELLED_COMPANY_SIGN_UP"

-- | Agency clicked @Sign in@ top button.
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDSIGNINBUTTONTOP :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDSIGNINBUTTONTOP = LogUserEventRequest_EventAction "AGENCY_CLICKED_SIGN_IN_BUTTON_TOP"

-- | Agency clicked @save and continue@ at bottom of incomplete profile.
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDSAVEANDCONTINUEATBOTOFINCOMPLETEPROFILE :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDSAVEANDCONTINUEATBOTOFINCOMPLETEPROFILE = LogUserEventRequest_EventAction "AGENCY_CLICKED_SAVE_AND_CONTINUE_AT_BOT_OF_INCOMPLETE_PROFILE"

-- | Agency unselected @opt-in news invitations and promotions@.
pattern LogUserEventRequest_EventAction_AGENCYUNSELECTEDOPTINNEWSINVITATIONSANDPROMOS :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYUNSELECTEDOPTINNEWSINVITATIONSANDPROMOS = LogUserEventRequest_EventAction "AGENCY_UNSELECTED_OPT_IN_NEWS_INVITATIONS_AND_PROMOS"

-- | Agency unselected @opt-in beta tests and market research@.
pattern LogUserEventRequest_EventAction_AGENCYUNSELECTEDOPTINBETATESTSANDMKTRESEARCH :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYUNSELECTEDOPTINBETATESTSANDMKTRESEARCH = LogUserEventRequest_EventAction "AGENCY_UNSELECTED_OPT_IN_BETA_TESTS_AND_MKT_RESEARCH"

-- | Agency unselected @opt-in performance suggestions@.
pattern LogUserEventRequest_EventAction_AGENCYUNSELECTEDOPTINPERFORMANCESUGGESTIONS :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYUNSELECTEDOPTINPERFORMANCESUGGESTIONS = LogUserEventRequest_EventAction "AGENCY_UNSELECTED_OPT_IN_PERFORMANCE_SUGGESTIONS"

-- | Agency selected @opt-out unselect all email notifications@.
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDOPTOUTUNSELECTALLEMAILNOTIFICATIONS :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDOPTOUTUNSELECTALLEMAILNOTIFICATIONS = LogUserEventRequest_EventAction "AGENCY_SELECTED_OPT_OUT_UNSELECT_ALL_EMAIL_NOTIFICATIONS"

-- | Agency linked their individual MCC.
pattern LogUserEventRequest_EventAction_AGENCYLINKEDINDIVIDUALMCC :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYLINKEDINDIVIDUALMCC = LogUserEventRequest_EventAction "AGENCY_LINKED_INDIVIDUAL_MCC"

-- | Agency was suggested to user for affiliation.
pattern LogUserEventRequest_EventAction_AGENCYSUGGESTEDTOUSER :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYSUGGESTEDTOUSER = LogUserEventRequest_EventAction "AGENCY_SUGGESTED_TO_USER"

-- | Agency ignored suggested agencies and begin searching.
pattern LogUserEventRequest_EventAction_AGENCYIGNOREDSUGGESTEDAGENCIESANDSEARCHED :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYIGNOREDSUGGESTEDAGENCIESANDSEARCHED = LogUserEventRequest_EventAction "AGENCY_IGNORED_SUGGESTED_AGENCIES_AND_SEARCHED"

-- | Agency picked a suggested agency.
pattern LogUserEventRequest_EventAction_AGENCYPICKEDSUGGESTEDAGENCY :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYPICKEDSUGGESTEDAGENCY = LogUserEventRequest_EventAction "AGENCY_PICKED_SUGGESTED_AGENCY"

-- | Agency searched for agencies.
pattern LogUserEventRequest_EventAction_AGENCYSEARCHEDFORAGENCIES :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYSEARCHEDFORAGENCIES = LogUserEventRequest_EventAction "AGENCY_SEARCHED_FOR_AGENCIES"

-- | Agency picked a searched agency.
pattern LogUserEventRequest_EventAction_AGENCYPICKEDSEARCHEDAGENCY :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYPICKEDSEARCHEDAGENCY = LogUserEventRequest_EventAction "AGENCY_PICKED_SEARCHED_AGENCY"

-- | Agency dismissed affiliation widget.
pattern LogUserEventRequest_EventAction_AGENCYDISMISSEDAFFILIATIONWIDGET :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYDISMISSEDAFFILIATIONWIDGET = LogUserEventRequest_EventAction "AGENCY_DISMISSED_AFFILIATION_WIDGET"

-- | Agency clicked on the download link for downloading content.
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDINSIGHTSDOWNLOADCONTENT :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDINSIGHTSDOWNLOADCONTENT = LogUserEventRequest_EventAction "AGENCY_CLICKED_INSIGHTS_DOWNLOAD_CONTENT"

-- | Agency user is maklingg progress viewing a content item.
pattern LogUserEventRequest_EventAction_AGENCYPROGRESSINSIGHTSVIEWCONTENT :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYPROGRESSINSIGHTSVIEWCONTENT = LogUserEventRequest_EventAction "AGENCY_PROGRESS_INSIGHTS_VIEW_CONTENT"

-- | Agency clicked @cancel Terms Of Service@ button.
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDCANCELACCEPTTOSBUTTON :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYCLICKEDCANCELACCEPTTOSBUTTON = LogUserEventRequest_EventAction "AGENCY_CLICKED_CANCEL_ACCEPT_TOS_BUTTON"

-- | Advertiser entered website in contact form.
pattern LogUserEventRequest_EventAction_SMBENTEREDWEBSITEINCONTACTPARTNERFORM :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_SMBENTEREDWEBSITEINCONTACTPARTNERFORM = LogUserEventRequest_EventAction "SMB_ENTERED_WEBSITE_IN_CONTACT_PARTNER_FORM"

-- | Agency opted in for migrating their exams to Academy for Ads.
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDOPTINAFAMIGRATION :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDOPTINAFAMIGRATION = LogUserEventRequest_EventAction "AGENCY_SELECTED_OPT_IN_AFA_MIGRATION"

-- | Agency opted out for migrating their exams to Academy for Ads.
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDOPTOUTAFAMIGRATION :: LogUserEventRequest_EventAction
pattern LogUserEventRequest_EventAction_AGENCYSELECTEDOPTOUTAFAMIGRATION = LogUserEventRequest_EventAction "AGENCY_SELECTED_OPT_OUT_AFA_MIGRATION"

{-# COMPLETE
  LogUserEventRequest_EventAction_EVENTACTIONUNSPECIFIED,
  LogUserEventRequest_EventAction_SMBCLICKEDFINDAPARTNERBUTTONBOTTOM,
  LogUserEventRequest_EventAction_SMBCLICKEDFINDAPARTNERBUTTONTOP,
  LogUserEventRequest_EventAction_AGENCYCLICKEDJOINNOWBUTTONBOTTOM,
  LogUserEventRequest_EventAction_AGENCYCLICKEDJOINNOWBUTTONTOP,
  LogUserEventRequest_EventAction_SMBCANCELEDPARTNERCONTACTFORM,
  LogUserEventRequest_EventAction_SMBCLICKEDCONTACTAPARTNER,
  LogUserEventRequest_EventAction_SMBCOMPLETEDPARTNERCONTACTFORM,
  LogUserEventRequest_EventAction_SMBENTEREDEMAILINCONTACTPARTNERFORM,
  LogUserEventRequest_EventAction_SMBENTEREDNAMEINCONTACTPARTNERFORM,
  LogUserEventRequest_EventAction_SMBENTEREDPHONEINCONTACTPARTNERFORM,
  LogUserEventRequest_EventAction_SMBFAILEDRECAPTCHAINCONTACTPARTNERFORM,
  LogUserEventRequest_EventAction_PARTNERVIEWEDBYSMB,
  LogUserEventRequest_EventAction_SMBCANCELEDPARTNERCONTACTFORMONGPS,
  LogUserEventRequest_EventAction_SMBCHANGEDASEARCHPARAMETERTOP,
  LogUserEventRequest_EventAction_SMBCLICKEDCONTACTAPARTNERONGPS,
  LogUserEventRequest_EventAction_SMBCLICKEDSHOWMOREPARTNERSBUTTONBOTTOM,
  LogUserEventRequest_EventAction_SMBCOMPLETEDPARTNERCONTACTFORMONGPS,
  LogUserEventRequest_EventAction_SMBNOPARTNERSAVAILABLEWITHSEARCHCRITERIA,
  LogUserEventRequest_EventAction_SMBPERFORMEDSEARCHONGPS,
  LogUserEventRequest_EventAction_SMBVIEWEDAPARTNERONGPS,
  LogUserEventRequest_EventAction_SMBCANCELEDPARTNERCONTACTFORMONPROFILEPAGE,
  LogUserEventRequest_EventAction_SMBCLICKEDCONTACTAPARTNERONPROFILEPAGE,
  LogUserEventRequest_EventAction_SMBCLICKEDPARTNERWEBSITE,
  LogUserEventRequest_EventAction_SMBCOMPLETEDPARTNERCONTACTFORMONPROFILEPAGE,
  LogUserEventRequest_EventAction_SMBVIEWEDAPARTNERPROFILE,
  LogUserEventRequest_EventAction_AGENCYCLICKEDACCEPTTOSBUTTON,
  LogUserEventRequest_EventAction_AGENCYCHANGEDTOSCOUNTRY,
  LogUserEventRequest_EventAction_AGENCYADDEDADDRESSINMYPROFILEPORTAL,
  LogUserEventRequest_EventAction_AGENCYADDEDPHONENUMBERINMYPROFILEPORTAL,
  LogUserEventRequest_EventAction_AGENCYCHANGEDPRIMARYACCOUNTASSOCIATION,
  LogUserEventRequest_EventAction_AGENCYCHANGEDPRIMARYCOUNTRYASSOCIATION,
  LogUserEventRequest_EventAction_AGENCYCLICKEDAFFILIATEBUTTONINMYPROFILEINPORTAL,
  LogUserEventRequest_EventAction_AGENCYCLICKEDGIVEEDITACCESSINMYPROFILEPORTAL,
  LogUserEventRequest_EventAction_AGENCYCLICKEDLOGOUTINMYPROFILEPORTAL,
  LogUserEventRequest_EventAction_AGENCYCLICKEDMYPROFILELEFTNAVINPORTAL,
  LogUserEventRequest_EventAction_AGENCYCLICKEDSAVEANDCONTINUEATBOTOFCOMPLETEPROFILE,
  LogUserEventRequest_EventAction_AGENCYCLICKEDUNAFFILIATEINMYPROFILEPORTAL,
  LogUserEventRequest_EventAction_AGENCYFILLEDOUTCOMPAFFILIATIONINMYPROFILEPORTAL,
  LogUserEventRequest_EventAction_AGENCYSUCCESSFULLYCONNECTEDWITHCOMPANYINMYPROFILE,
  LogUserEventRequest_EventAction_AGENCYCLICKEDCREATEMCCINMYPROFILEPORTAL,
  LogUserEventRequest_EventAction_AGENCYDIDNTHAVEANMCCASSOCIATEDONCOMPLETEPROFILE,
  LogUserEventRequest_EventAction_AGENCYHADANMCCASSOCIATEDONCOMPLETEPROFILE,
  LogUserEventRequest_EventAction_AGENCYADDEDJOBFUNCTIONINMYPROFILEPORTAL,
  LogUserEventRequest_EventAction_AGENCYLOOKEDATJOBFUNCTIONDROPDOWN,
  LogUserEventRequest_EventAction_AGENCYSELECTEDACCOUNTMANAGERASJOBFUNCTION,
  LogUserEventRequest_EventAction_AGENCYSELECTEDACCOUNTPLANNERASJOBFUNCTION,
  LogUserEventRequest_EventAction_AGENCYSELECTEDANALYTICSASJOBFUNCTION,
  LogUserEventRequest_EventAction_AGENCYSELECTEDCREATIVEASJOBFUNCTION,
  LogUserEventRequest_EventAction_AGENCYSELECTEDMEDIABUYERASJOBFUNCTION,
  LogUserEventRequest_EventAction_AGENCYSELECTEDMEDIAPLANNERASJOBFUNCTION,
  LogUserEventRequest_EventAction_AGENCYSELECTEDOTHERASJOBFUNCTION,
  LogUserEventRequest_EventAction_AGENCYSELECTEDPRODUCTIONASJOBFUNCTION,
  LogUserEventRequest_EventAction_AGENCYSELECTEDSEOASJOBFUNCTION,
  LogUserEventRequest_EventAction_AGENCYSELECTEDSALESREPASJOBFUNCTION,
  LogUserEventRequest_EventAction_AGENCYSELECTEDSEARCHSPECIALISTASJOBFUNCTION,
  LogUserEventRequest_EventAction_AGENCYADDEDCHANNELSINMYPROFILEPORTAL,
  LogUserEventRequest_EventAction_AGENCYLOOKEDATADDCHANNELDROPDOWN,
  LogUserEventRequest_EventAction_AGENCYSELECTEDCROSSCHANNELFROMADDCHANNEL,
  LogUserEventRequest_EventAction_AGENCYSELECTEDDISPLAYFROMADDCHANNEL,
  LogUserEventRequest_EventAction_AGENCYSELECTEDMOBILEFROMADDCHANNEL,
  LogUserEventRequest_EventAction_AGENCYSELECTEDSEARCHFROMADDCHANNEL,
  LogUserEventRequest_EventAction_AGENCYSELECTEDSOCIALFROMADDCHANNEL,
  LogUserEventRequest_EventAction_AGENCYSELECTEDTOOLSFROMADDCHANNEL,
  LogUserEventRequest_EventAction_AGENCYSELECTEDYOUTUBEFROMADDCHANNEL,
  LogUserEventRequest_EventAction_AGENCYADDEDINDUSTRIESINMYPROFILEPORTAL,
  LogUserEventRequest_EventAction_AGENCYCHANGEDADDINDUSTRIESDROPDOWN,
  LogUserEventRequest_EventAction_AGENCYADDEDMARKETSINMYPROFILEPORTAL,
  LogUserEventRequest_EventAction_AGENCYCHANGEDADDMARKETSDROPDOWN,
  LogUserEventRequest_EventAction_AGENCYCHECKEDRECIEVEMAILPROMOTIONSMYPROFILE,
  LogUserEventRequest_EventAction_AGENCYCHECKEDRECIEVEMAILPROMOTIONSSIGNUP,
  LogUserEventRequest_EventAction_AGENCYSELECTEDOPTINBETATESTSANDMKTRESEARCH,
  LogUserEventRequest_EventAction_AGENCYSELECTEDOPTINBETATESTSINMYPROFILEPORTAL,
  LogUserEventRequest_EventAction_AGENCYSELECTEDOPTINNEWSINMYPROFILEPORTAL,
  LogUserEventRequest_EventAction_AGENCYSELECTEDOPTINNEWSINVITATIONSANDPROMOS,
  LogUserEventRequest_EventAction_AGENCYSELECTEDOPTINPERFORMANCESUGINMYPROFILEPORTAL,
  LogUserEventRequest_EventAction_AGENCYSELECTEDOPTINPERFORMANCESUGGESTIONS,
  LogUserEventRequest_EventAction_AGENCYSELECTEDOPTINSELECTALLEMAILNOTIFICATIONS,
  LogUserEventRequest_EventAction_AGENCYSELECTEDSELECTALLOPTINSINMYPROFILEPORTAL,
  LogUserEventRequest_EventAction_AGENCYCLICKEDBACKBUTTONONCONNECTWITHCOMPANY,
  LogUserEventRequest_EventAction_AGENCYCLICKEDCONTINUETOOVERVIEWONCONNECTWITHCOMPANY,
  LogUserEventRequest_EventAction_AGECNYCLICKEDCREATEMCCCONNECTWITHCOMPANYNOTFOUND,
  LogUserEventRequest_EventAction_AGECNYCLICKEDGIVEEDITACCESSCONNECTWITHCOMPANYNOTFOUND,
  LogUserEventRequest_EventAction_AGECNYCLICKEDLOGOUTCONNECTWITHCOMPANYNOTFOUND,
  LogUserEventRequest_EventAction_AGENCYCLICKEDSKIPFORNOWONCONNECTWITHCOMPANYPAGE,
  LogUserEventRequest_EventAction_AGENCYCLOSEDCONNECTEDTOCOMPANYXBUTTONWRONGCOMPANY,
  LogUserEventRequest_EventAction_AGENCYCOMPLETEDFIELDCONNECTWITHCOMPANY,
  LogUserEventRequest_EventAction_AGECNYFOUNDCOMPANYTOCONNECTWITH,
  LogUserEventRequest_EventAction_AGENCYSUCCESSFULLYCREATEDCOMPANY,
  LogUserEventRequest_EventAction_AGENCYADDEDNEWCOMPANYLOCATION,
  LogUserEventRequest_EventAction_AGENCYCLICKEDCOMMUNITYJOINNOWLINKINPORTALNOTIFICATIONS,
  LogUserEventRequest_EventAction_AGENCYCLICKEDCONNECTTOCOMPANYLINKINPORTALNOTIFICATIONS,
  LogUserEventRequest_EventAction_AGENCYCLICKEDGETCERTIFIEDLINKINPORTALNOTIFICATIONS,
  LogUserEventRequest_EventAction_AGENCYCLICKEDGETVIDEOADSCERTIFIEDLINKINPORTALNOTIFICATIONS,
  LogUserEventRequest_EventAction_AGENCYCLICKEDLINKTOMCCLINKINPORTALNOTIFICATIONS,
  LogUserEventRequest_EventAction_AGENCYCLICKEDINSIGHTCONTENTINPORTAL,
  LogUserEventRequest_EventAction_AGENCYCLICKEDINSIGHTSVIEWNOWPITCHDECKSINPORTAL,
  LogUserEventRequest_EventAction_AGENCYCLICKEDINSIGHTSLEFTNAVINPORTAL,
  LogUserEventRequest_EventAction_AGENCYCLICKEDINSIGHTSUPLOADCONTENT,
  LogUserEventRequest_EventAction_AGENCYCLICKEDINSIGHTSVIEWEDDEPRECATED,
  LogUserEventRequest_EventAction_AGENCYCLICKEDCOMMUNITYLEFTNAVINPORTAL,
  LogUserEventRequest_EventAction_AGENCYCLICKEDJOINCOMMUNITYBUTTONCOMMUNITYPORTAL,
  LogUserEventRequest_EventAction_AGENCYCLICKEDCERTIFICATIONSLEFTNAVINPORTAL,
  LogUserEventRequest_EventAction_AGENCYCLICKEDCERTIFICATIONSPRODUCTLEFTNAVINPORTAL,
  LogUserEventRequest_EventAction_AGENCYCLICKEDPARTNERSTATUSLEFTNAVINPORTAL,
  LogUserEventRequest_EventAction_AGENCYCLICKEDPARTNERSTATUSPRODUCTLEFTNAVINPORTAL,
  LogUserEventRequest_EventAction_AGENCYCLICKEDOFFERSLEFTNAVINPORTAL,
  LogUserEventRequest_EventAction_AGENCYCLICKEDSENDBUTTONONOFFERSPAGE,
  LogUserEventRequest_EventAction_AGENCYCLICKEDEXAMDETAILSONCERTADWORDSPAGE,
  LogUserEventRequest_EventAction_AGENCYCLICKEDSEEEXAMSCERTIFICATIONMAINPAGE,
  LogUserEventRequest_EventAction_AGENCYCLICKEDTAKEEXAMONCERTEXAMPAGE,
  LogUserEventRequest_EventAction_AGENCYOPENEDLASTADMINDIALOG,
  LogUserEventRequest_EventAction_AGENCYOPENEDDIALOGWITHNOUSERS,
  LogUserEventRequest_EventAction_AGENCYPROMOTEDUSERTOADMIN,
  LogUserEventRequest_EventAction_AGENCYUNAFFILIATED,
  LogUserEventRequest_EventAction_AGENCYCHANGEDROLES,
  LogUserEventRequest_EventAction_SMBCLICKEDCOMPANYNAMELINKTOPROFILE,
  LogUserEventRequest_EventAction_SMBVIEWEDADWORDSCERTIFICATE,
  LogUserEventRequest_EventAction_SMBVIEWEDADWORDSSEARCHCERTIFICATE,
  LogUserEventRequest_EventAction_SMBVIEWEDADWORDSDISPLAYCERTIFICATE,
  LogUserEventRequest_EventAction_SMBCLICKEDADWORDSCERTIFICATEHELPICON,
  LogUserEventRequest_EventAction_SMBVIEWEDANALYTICSCERTIFICATE,
  LogUserEventRequest_EventAction_SMBVIEWEDDOUBLECLICKCERTIFICATE,
  LogUserEventRequest_EventAction_SMBVIEWEDMOBILESITESCERTIFICATE,
  LogUserEventRequest_EventAction_SMBVIEWEDVIDEOADSCERTIFICATE,
  LogUserEventRequest_EventAction_SMBVIEWEDSHOPPINGCERTIFICATE,
  LogUserEventRequest_EventAction_SMBCLICKEDVIDEOADSCERTIFICATEHELPICON,
  LogUserEventRequest_EventAction_SMBVIEWEDDIGITALSALESCERTIFICATE,
  LogUserEventRequest_EventAction_CLICKEDHELPATBOTTOM,
  LogUserEventRequest_EventAction_CLICKEDHELPATTOP,
  LogUserEventRequest_EventAction_CLIENTERROR,
  LogUserEventRequest_EventAction_AGENCYCLICKEDLEFTNAVSTORIES,
  LogUserEventRequest_EventAction_Clicked,
  LogUserEventRequest_EventAction_SMBVIEWEDMOBILECERTIFICATE,
  LogUserEventRequest_EventAction_AGENCYFAILEDCOMPANYVERIFICATION,
  LogUserEventRequest_EventAction_VISITEDLANDING,
  LogUserEventRequest_EventAction_VISITEDGPS,
  LogUserEventRequest_EventAction_VISITEDAGENCYPORTAL,
  LogUserEventRequest_EventAction_CANCELLEDINDIVIDUALSIGNUP,
  LogUserEventRequest_EventAction_CANCELLEDCOMPANYSIGNUP,
  LogUserEventRequest_EventAction_AGENCYCLICKEDSIGNINBUTTONTOP,
  LogUserEventRequest_EventAction_AGENCYCLICKEDSAVEANDCONTINUEATBOTOFINCOMPLETEPROFILE,
  LogUserEventRequest_EventAction_AGENCYUNSELECTEDOPTINNEWSINVITATIONSANDPROMOS,
  LogUserEventRequest_EventAction_AGENCYUNSELECTEDOPTINBETATESTSANDMKTRESEARCH,
  LogUserEventRequest_EventAction_AGENCYUNSELECTEDOPTINPERFORMANCESUGGESTIONS,
  LogUserEventRequest_EventAction_AGENCYSELECTEDOPTOUTUNSELECTALLEMAILNOTIFICATIONS,
  LogUserEventRequest_EventAction_AGENCYLINKEDINDIVIDUALMCC,
  LogUserEventRequest_EventAction_AGENCYSUGGESTEDTOUSER,
  LogUserEventRequest_EventAction_AGENCYIGNOREDSUGGESTEDAGENCIESANDSEARCHED,
  LogUserEventRequest_EventAction_AGENCYPICKEDSUGGESTEDAGENCY,
  LogUserEventRequest_EventAction_AGENCYSEARCHEDFORAGENCIES,
  LogUserEventRequest_EventAction_AGENCYPICKEDSEARCHEDAGENCY,
  LogUserEventRequest_EventAction_AGENCYDISMISSEDAFFILIATIONWIDGET,
  LogUserEventRequest_EventAction_AGENCYCLICKEDINSIGHTSDOWNLOADCONTENT,
  LogUserEventRequest_EventAction_AGENCYPROGRESSINSIGHTSVIEWCONTENT,
  LogUserEventRequest_EventAction_AGENCYCLICKEDCANCELACCEPTTOSBUTTON,
  LogUserEventRequest_EventAction_SMBENTEREDWEBSITEINCONTACTPARTNERFORM,
  LogUserEventRequest_EventAction_AGENCYSELECTEDOPTINAFAMIGRATION,
  LogUserEventRequest_EventAction_AGENCYSELECTEDOPTOUTAFAMIGRATION,
  LogUserEventRequest_EventAction #-}

-- | The category the action belongs to.
newtype LogUserEventRequest_EventCategory = LogUserEventRequest_EventCategory { fromLogUserEventRequest_EventCategory :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unchosen.
pattern LogUserEventRequest_EventCategory_EVENTCATEGORYUNSPECIFIED :: LogUserEventRequest_EventCategory
pattern LogUserEventRequest_EventCategory_EVENTCATEGORYUNSPECIFIED = LogUserEventRequest_EventCategory "EVENT_CATEGORY_UNSPECIFIED"

-- | Google Partner Search category.
pattern LogUserEventRequest_EventCategory_GOOGLEPARTNERSEARCH :: LogUserEventRequest_EventCategory
pattern LogUserEventRequest_EventCategory_GOOGLEPARTNERSEARCH = LogUserEventRequest_EventCategory "GOOGLE_PARTNER_SEARCH"

-- | Google Partner sign-up flow category.
pattern LogUserEventRequest_EventCategory_GOOGLEPARTNERSIGNUPFLOW :: LogUserEventRequest_EventCategory
pattern LogUserEventRequest_EventCategory_GOOGLEPARTNERSIGNUPFLOW = LogUserEventRequest_EventCategory "GOOGLE_PARTNER_SIGNUP_FLOW"

-- | Google Partner portal category.
pattern LogUserEventRequest_EventCategory_GOOGLEPARTNERPORTAL :: LogUserEventRequest_EventCategory
pattern LogUserEventRequest_EventCategory_GOOGLEPARTNERPORTAL = LogUserEventRequest_EventCategory "GOOGLE_PARTNER_PORTAL"

-- | Google Partner portal my-profile category.
pattern LogUserEventRequest_EventCategory_GOOGLEPARTNERPORTALMYPROFILE :: LogUserEventRequest_EventCategory
pattern LogUserEventRequest_EventCategory_GOOGLEPARTNERPORTALMYPROFILE = LogUserEventRequest_EventCategory "GOOGLE_PARTNER_PORTAL_MY_PROFILE"

-- | Google Partner portal certifications category.
pattern LogUserEventRequest_EventCategory_GOOGLEPARTNERPORTALCERTIFICATIONS :: LogUserEventRequest_EventCategory
pattern LogUserEventRequest_EventCategory_GOOGLEPARTNERPORTALCERTIFICATIONS = LogUserEventRequest_EventCategory "GOOGLE_PARTNER_PORTAL_CERTIFICATIONS"

-- | Google Partner portal community category.
pattern LogUserEventRequest_EventCategory_GOOGLEPARTNERPORTALCOMMUNITY :: LogUserEventRequest_EventCategory
pattern LogUserEventRequest_EventCategory_GOOGLEPARTNERPORTALCOMMUNITY = LogUserEventRequest_EventCategory "GOOGLE_PARTNER_PORTAL_COMMUNITY"

-- | Google Partner portal insights category.
pattern LogUserEventRequest_EventCategory_GOOGLEPARTNERPORTALINSIGHTS :: LogUserEventRequest_EventCategory
pattern LogUserEventRequest_EventCategory_GOOGLEPARTNERPORTALINSIGHTS = LogUserEventRequest_EventCategory "GOOGLE_PARTNER_PORTAL_INSIGHTS"

-- | Google Partner portal clients category.
pattern LogUserEventRequest_EventCategory_GOOGLEPARTNERPORTALCLIENTS :: LogUserEventRequest_EventCategory
pattern LogUserEventRequest_EventCategory_GOOGLEPARTNERPORTALCLIENTS = LogUserEventRequest_EventCategory "GOOGLE_PARTNER_PORTAL_CLIENTS"

-- | Google Partner portal public user profile category.
pattern LogUserEventRequest_EventCategory_GOOGLEPARTNERPUBLICUSERPROFILE :: LogUserEventRequest_EventCategory
pattern LogUserEventRequest_EventCategory_GOOGLEPARTNERPUBLICUSERPROFILE = LogUserEventRequest_EventCategory "GOOGLE_PARTNER_PUBLIC_USER_PROFILE"

-- | Google Partner panel category.
pattern LogUserEventRequest_EventCategory_GOOGLEPARTNERPANEL :: LogUserEventRequest_EventCategory
pattern LogUserEventRequest_EventCategory_GOOGLEPARTNERPANEL = LogUserEventRequest_EventCategory "GOOGLE_PARTNER_PANEL"

-- | Google Partner portal last admin dialog category.
pattern LogUserEventRequest_EventCategory_GOOGLEPARTNERPORTALLASTADMINDIALOG :: LogUserEventRequest_EventCategory
pattern LogUserEventRequest_EventCategory_GOOGLEPARTNERPORTALLASTADMINDIALOG = LogUserEventRequest_EventCategory "GOOGLE_PARTNER_PORTAL_LAST_ADMIN_DIALOG"

-- | Google Partner client category.
pattern LogUserEventRequest_EventCategory_GOOGLEPARTNERCLIENT :: LogUserEventRequest_EventCategory
pattern LogUserEventRequest_EventCategory_GOOGLEPARTNERCLIENT = LogUserEventRequest_EventCategory "GOOGLE_PARTNER_CLIENT"

-- | Google Partner portal company profile category.
pattern LogUserEventRequest_EventCategory_GOOGLEPARTNERPORTALCOMPANYPROFILE :: LogUserEventRequest_EventCategory
pattern LogUserEventRequest_EventCategory_GOOGLEPARTNERPORTALCOMPANYPROFILE = LogUserEventRequest_EventCategory "GOOGLE_PARTNER_PORTAL_COMPANY_PROFILE"

-- | External links category.
pattern LogUserEventRequest_EventCategory_EXTERNALLINKS :: LogUserEventRequest_EventCategory
pattern LogUserEventRequest_EventCategory_EXTERNALLINKS = LogUserEventRequest_EventCategory "EXTERNAL_LINKS"

-- | Google Partner landing category.
pattern LogUserEventRequest_EventCategory_GOOGLEPARTNERLANDING :: LogUserEventRequest_EventCategory
pattern LogUserEventRequest_EventCategory_GOOGLEPARTNERLANDING = LogUserEventRequest_EventCategory "GOOGLE_PARTNER_LANDING"

{-# COMPLETE
  LogUserEventRequest_EventCategory_EVENTCATEGORYUNSPECIFIED,
  LogUserEventRequest_EventCategory_GOOGLEPARTNERSEARCH,
  LogUserEventRequest_EventCategory_GOOGLEPARTNERSIGNUPFLOW,
  LogUserEventRequest_EventCategory_GOOGLEPARTNERPORTAL,
  LogUserEventRequest_EventCategory_GOOGLEPARTNERPORTALMYPROFILE,
  LogUserEventRequest_EventCategory_GOOGLEPARTNERPORTALCERTIFICATIONS,
  LogUserEventRequest_EventCategory_GOOGLEPARTNERPORTALCOMMUNITY,
  LogUserEventRequest_EventCategory_GOOGLEPARTNERPORTALINSIGHTS,
  LogUserEventRequest_EventCategory_GOOGLEPARTNERPORTALCLIENTS,
  LogUserEventRequest_EventCategory_GOOGLEPARTNERPUBLICUSERPROFILE,
  LogUserEventRequest_EventCategory_GOOGLEPARTNERPANEL,
  LogUserEventRequest_EventCategory_GOOGLEPARTNERPORTALLASTADMINDIALOG,
  LogUserEventRequest_EventCategory_GOOGLEPARTNERCLIENT,
  LogUserEventRequest_EventCategory_GOOGLEPARTNERPORTALCOMPANYPROFILE,
  LogUserEventRequest_EventCategory_EXTERNALLINKS,
  LogUserEventRequest_EventCategory_GOOGLEPARTNERLANDING,
  LogUserEventRequest_EventCategory #-}

-- | The scope of the event.
newtype LogUserEventRequest_EventScope = LogUserEventRequest_EventScope { fromLogUserEventRequest_EventScope :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unchosen.
pattern LogUserEventRequest_EventScope_EVENTSCOPEUNSPECIFIED :: LogUserEventRequest_EventScope
pattern LogUserEventRequest_EventScope_EVENTSCOPEUNSPECIFIED = LogUserEventRequest_EventScope "EVENT_SCOPE_UNSPECIFIED"

-- | Based on visitor.
pattern LogUserEventRequest_EventScope_Visitor :: LogUserEventRequest_EventScope
pattern LogUserEventRequest_EventScope_Visitor = LogUserEventRequest_EventScope "VISITOR"

-- | Based on session.
pattern LogUserEventRequest_EventScope_Session :: LogUserEventRequest_EventScope
pattern LogUserEventRequest_EventScope_Session = LogUserEventRequest_EventScope "SESSION"

-- | Based on page visit.
pattern LogUserEventRequest_EventScope_Page :: LogUserEventRequest_EventScope
pattern LogUserEventRequest_EventScope_Page = LogUserEventRequest_EventScope "PAGE"

{-# COMPLETE
  LogUserEventRequest_EventScope_EVENTSCOPEUNSPECIFIED,
  LogUserEventRequest_EventScope_Visitor,
  LogUserEventRequest_EventScope_Session,
  LogUserEventRequest_EventScope_Page,
  LogUserEventRequest_EventScope #-}

-- | Type of the offer
newtype OfferCustomer_OfferType = OfferCustomer_OfferType { fromOfferCustomer_OfferType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unset.
pattern OfferCustomer_OfferType_OFFERTYPEUNSPECIFIED :: OfferCustomer_OfferType
pattern OfferCustomer_OfferType_OFFERTYPEUNSPECIFIED = OfferCustomer_OfferType "OFFER_TYPE_UNSPECIFIED"

-- | AdWords spend X get Y.
pattern OfferCustomer_OfferType_OFFERTYPESPENDXGETY :: OfferCustomer_OfferType
pattern OfferCustomer_OfferType_OFFERTYPESPENDXGETY = OfferCustomer_OfferType "OFFER_TYPE_SPEND_X_GET_Y"

-- | Youtube video.
pattern OfferCustomer_OfferType_OFFERTYPEVIDEO :: OfferCustomer_OfferType
pattern OfferCustomer_OfferType_OFFERTYPEVIDEO = OfferCustomer_OfferType "OFFER_TYPE_VIDEO"

-- | Spend Match up to Y.
pattern OfferCustomer_OfferType_OFFERTYPESPENDMATCH :: OfferCustomer_OfferType
pattern OfferCustomer_OfferType_OFFERTYPESPENDMATCH = OfferCustomer_OfferType "OFFER_TYPE_SPEND_MATCH"

{-# COMPLETE
  OfferCustomer_OfferType_OFFERTYPEUNSPECIFIED,
  OfferCustomer_OfferType_OFFERTYPESPENDXGETY,
  OfferCustomer_OfferType_OFFERTYPEVIDEO,
  OfferCustomer_OfferType_OFFERTYPESPENDMATCH,
  OfferCustomer_OfferType #-}

-- | The type of rank.
newtype Rank_Type = Rank_Type { fromRank_Type :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unchosen.
pattern Rank_Type_RANKTYPEUNSPECIFIED :: Rank_Type
pattern Rank_Type_RANKTYPEUNSPECIFIED = Rank_Type "RANK_TYPE_UNSPECIFIED"

-- | Total final score.
pattern Rank_Type_RTFINALSCORE :: Rank_Type
pattern Rank_Type_RTFINALSCORE = Rank_Type "RT_FINAL_SCORE"

{-# COMPLETE
  Rank_Type_RANKTYPEUNSPECIFIED,
  Rank_Type_RTFINALSCORE,
  Rank_Type #-}

-- | The specialization this status is for.
newtype SpecializationStatus_BadgeSpecialization = SpecializationStatus_BadgeSpecialization { fromSpecializationStatus_BadgeSpecialization :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unknown specialization
pattern SpecializationStatus_BadgeSpecialization_BADGESPECIALIZATIONUNKNOWN :: SpecializationStatus_BadgeSpecialization
pattern SpecializationStatus_BadgeSpecialization_BADGESPECIALIZATIONUNKNOWN = SpecializationStatus_BadgeSpecialization "BADGE_SPECIALIZATION_UNKNOWN"

-- | AdWords Search specialization
pattern SpecializationStatus_BadgeSpecialization_BADGESPECIALIZATIONADWORDSSEARCH :: SpecializationStatus_BadgeSpecialization
pattern SpecializationStatus_BadgeSpecialization_BADGESPECIALIZATIONADWORDSSEARCH = SpecializationStatus_BadgeSpecialization "BADGE_SPECIALIZATION_ADWORDS_SEARCH"

-- | AdWords Display specialization
pattern SpecializationStatus_BadgeSpecialization_BADGESPECIALIZATIONADWORDSDISPLAY :: SpecializationStatus_BadgeSpecialization
pattern SpecializationStatus_BadgeSpecialization_BADGESPECIALIZATIONADWORDSDISPLAY = SpecializationStatus_BadgeSpecialization "BADGE_SPECIALIZATION_ADWORDS_DISPLAY"

-- | AdWords Mobile specialization
pattern SpecializationStatus_BadgeSpecialization_BADGESPECIALIZATIONADWORDSMOBILE :: SpecializationStatus_BadgeSpecialization
pattern SpecializationStatus_BadgeSpecialization_BADGESPECIALIZATIONADWORDSMOBILE = SpecializationStatus_BadgeSpecialization "BADGE_SPECIALIZATION_ADWORDS_MOBILE"

-- | AdWords Video specialization
pattern SpecializationStatus_BadgeSpecialization_BADGESPECIALIZATIONADWORDSVIDEO :: SpecializationStatus_BadgeSpecialization
pattern SpecializationStatus_BadgeSpecialization_BADGESPECIALIZATIONADWORDSVIDEO = SpecializationStatus_BadgeSpecialization "BADGE_SPECIALIZATION_ADWORDS_VIDEO"

-- | AdWords Shopping specialization
pattern SpecializationStatus_BadgeSpecialization_BADGESPECIALIZATIONADWORDSSHOPPING :: SpecializationStatus_BadgeSpecialization
pattern SpecializationStatus_BadgeSpecialization_BADGESPECIALIZATIONADWORDSSHOPPING = SpecializationStatus_BadgeSpecialization "BADGE_SPECIALIZATION_ADWORDS_SHOPPING"

{-# COMPLETE
  SpecializationStatus_BadgeSpecialization_BADGESPECIALIZATIONUNKNOWN,
  SpecializationStatus_BadgeSpecialization_BADGESPECIALIZATIONADWORDSSEARCH,
  SpecializationStatus_BadgeSpecialization_BADGESPECIALIZATIONADWORDSDISPLAY,
  SpecializationStatus_BadgeSpecialization_BADGESPECIALIZATIONADWORDSMOBILE,
  SpecializationStatus_BadgeSpecialization_BADGESPECIALIZATIONADWORDSVIDEO,
  SpecializationStatus_BadgeSpecialization_BADGESPECIALIZATIONADWORDSSHOPPING,
  SpecializationStatus_BadgeSpecialization #-}

-- | State of agency specialization.
newtype SpecializationStatus_BadgeSpecializationState = SpecializationStatus_BadgeSpecializationState { fromSpecializationStatus_BadgeSpecializationState :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unknown state
pattern SpecializationStatus_BadgeSpecializationState_BADGESPECIALIZATIONSTATEUNKNOWN :: SpecializationStatus_BadgeSpecializationState
pattern SpecializationStatus_BadgeSpecializationState_BADGESPECIALIZATIONSTATEUNKNOWN = SpecializationStatus_BadgeSpecializationState "BADGE_SPECIALIZATION_STATE_UNKNOWN"

-- | Specialization passed
pattern SpecializationStatus_BadgeSpecializationState_BADGESPECIALIZATIONSTATEPASSED :: SpecializationStatus_BadgeSpecializationState
pattern SpecializationStatus_BadgeSpecializationState_BADGESPECIALIZATIONSTATEPASSED = SpecializationStatus_BadgeSpecializationState "BADGE_SPECIALIZATION_STATE_PASSED"

-- | Specialization not passed
pattern SpecializationStatus_BadgeSpecializationState_BADGESPECIALIZATIONSTATENOTPASSED :: SpecializationStatus_BadgeSpecializationState
pattern SpecializationStatus_BadgeSpecializationState_BADGESPECIALIZATIONSTATENOTPASSED = SpecializationStatus_BadgeSpecializationState "BADGE_SPECIALIZATION_STATE_NOT_PASSED"

-- | Specialization in grace
pattern SpecializationStatus_BadgeSpecializationState_BADGESPECIALIZATIONSTATEINGRACE :: SpecializationStatus_BadgeSpecializationState
pattern SpecializationStatus_BadgeSpecializationState_BADGESPECIALIZATIONSTATEINGRACE = SpecializationStatus_BadgeSpecializationState "BADGE_SPECIALIZATION_STATE_IN_GRACE"

{-# COMPLETE
  SpecializationStatus_BadgeSpecializationState_BADGESPECIALIZATIONSTATEUNKNOWN,
  SpecializationStatus_BadgeSpecializationState_BADGESPECIALIZATIONSTATEPASSED,
  SpecializationStatus_BadgeSpecializationState_BADGESPECIALIZATIONSTATENOTPASSED,
  SpecializationStatus_BadgeSpecializationState_BADGESPECIALIZATIONSTATEINGRACE,
  SpecializationStatus_BadgeSpecializationState #-}
