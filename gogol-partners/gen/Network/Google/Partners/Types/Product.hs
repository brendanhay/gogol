{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

-- |
-- Module      : Network.Google.Partners.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Partners.Types.Product where

import           Network.Google.Partners.Types.Sum
import           Network.Google.Prelude

-- | Status for a Google Partners certification exam.
--
-- /See:/ 'certificationExamStatus' smart constructor.
data CertificationExamStatus = CertificationExamStatus
    { _cesNumberUsersPass :: !(Maybe Int32)
    , _cesType            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CertificationExamStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cesNumberUsersPass'
--
-- * 'cesType'
certificationExamStatus
    :: CertificationExamStatus
certificationExamStatus =
    CertificationExamStatus
    { _cesNumberUsersPass = Nothing
    , _cesType = Nothing
    }

-- | The number of people who have passed the certification exam.
cesNumberUsersPass :: Lens' CertificationExamStatus (Maybe Int32)
cesNumberUsersPass
  = lens _cesNumberUsersPass
      (\ s a -> s{_cesNumberUsersPass = a})

-- | The type of certification exam.
cesType :: Lens' CertificationExamStatus (Maybe Text)
cesType = lens _cesType (\ s a -> s{_cesType = a})

-- | Google Partners certification status.
--
-- /See:/ 'certificationStatus' smart constructor.
data CertificationStatus = CertificationStatus
    { _csIsCertified  :: !(Maybe Bool)
    , _csType         :: !(Maybe Text)
    , _csExamStatuses :: !(Maybe [Maybe CertificationExamStatus])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CertificationStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csIsCertified'
--
-- * 'csType'
--
-- * 'csExamStatuses'
certificationStatus
    :: CertificationStatus
certificationStatus =
    CertificationStatus
    { _csIsCertified = Nothing
    , _csType = Nothing
    , _csExamStatuses = Nothing
    }

-- | Whether certification is passing.
csIsCertified :: Lens' CertificationStatus (Maybe Bool)
csIsCertified
  = lens _csIsCertified
      (\ s a -> s{_csIsCertified = a})

-- | The type of the certification.
csType :: Lens' CertificationStatus (Maybe Text)
csType = lens _csType (\ s a -> s{_csType = a})

-- | List of certification exam statuses.
csExamStatuses :: Lens' CertificationStatus [Maybe CertificationExamStatus]
csExamStatuses
  = lens _csExamStatuses
      (\ s a -> s{_csExamStatuses = a})
      . _Default
      . _Coerce

-- | A company resource in the Google Partners API. Once certified, it
-- qualifies for being searched by advertisers.
--
-- /See:/ 'company' smart constructor.
data Company = Company
    { _cPublicProfile             :: !(Maybe (Maybe PublicProfile))
    , _cOriginalMinMonthlyBudget  :: !(Maybe (Maybe Money))
    , _cIndustries                :: !(Maybe [Text])
    , _cConvertedMinMonthlyBudget :: !(Maybe (Maybe Money))
    , _cName                      :: !(Maybe Text)
    , _cLocalizedInfos            :: !(Maybe [Maybe LocalizedCompanyInfo])
    , _cCertificationStatuses     :: !(Maybe [Maybe CertificationStatus])
    , _cRanks                     :: !(Maybe [Maybe Rank])
    , _cId                        :: !(Maybe Text)
    , _cWebsiteUrl                :: !(Maybe Text)
    , _cLocations                 :: !(Maybe [Maybe Location])
    , _cServices                  :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Company' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cPublicProfile'
--
-- * 'cOriginalMinMonthlyBudget'
--
-- * 'cIndustries'
--
-- * 'cConvertedMinMonthlyBudget'
--
-- * 'cName'
--
-- * 'cLocalizedInfos'
--
-- * 'cCertificationStatuses'
--
-- * 'cRanks'
--
-- * 'cId'
--
-- * 'cWebsiteUrl'
--
-- * 'cLocations'
--
-- * 'cServices'
company
    :: Company
company =
    Company
    { _cPublicProfile = Nothing
    , _cOriginalMinMonthlyBudget = Nothing
    , _cIndustries = Nothing
    , _cConvertedMinMonthlyBudget = Nothing
    , _cName = Nothing
    , _cLocalizedInfos = Nothing
    , _cCertificationStatuses = Nothing
    , _cRanks = Nothing
    , _cId = Nothing
    , _cWebsiteUrl = Nothing
    , _cLocations = Nothing
    , _cServices = Nothing
    }

-- | Basic information from the company\'s public profile.
cPublicProfile :: Lens' Company (Maybe (Maybe PublicProfile))
cPublicProfile
  = lens _cPublicProfile
      (\ s a -> s{_cPublicProfile = a})

-- | The unconverted minimum monthly budget that the company accepts for
-- partner business.
cOriginalMinMonthlyBudget :: Lens' Company (Maybe (Maybe Money))
cOriginalMinMonthlyBudget
  = lens _cOriginalMinMonthlyBudget
      (\ s a -> s{_cOriginalMinMonthlyBudget = a})

-- | Industries the company can help with.
cIndustries :: Lens' Company [Text]
cIndustries
  = lens _cIndustries (\ s a -> s{_cIndustries = a}) .
      _Default
      . _Coerce

-- | The minimum monthly budget that the company accepts for partner
-- business, converted to the requested currency code.
cConvertedMinMonthlyBudget :: Lens' Company (Maybe (Maybe Money))
cConvertedMinMonthlyBudget
  = lens _cConvertedMinMonthlyBudget
      (\ s a -> s{_cConvertedMinMonthlyBudget = a})

-- | The name of the company.
cName :: Lens' Company (Maybe Text)
cName = lens _cName (\ s a -> s{_cName = a})

-- | The list of localized info for the company.
cLocalizedInfos :: Lens' Company [Maybe LocalizedCompanyInfo]
cLocalizedInfos
  = lens _cLocalizedInfos
      (\ s a -> s{_cLocalizedInfos = a})
      . _Default
      . _Coerce

-- | The list of Google Partners certification statuses for the company.
cCertificationStatuses :: Lens' Company [Maybe CertificationStatus]
cCertificationStatuses
  = lens _cCertificationStatuses
      (\ s a -> s{_cCertificationStatuses = a})
      . _Default
      . _Coerce

-- | Information related to the ranking of the company within the list of
-- companies.
cRanks :: Lens' Company [Maybe Rank]
cRanks
  = lens _cRanks (\ s a -> s{_cRanks = a}) . _Default .
      _Coerce

-- | The ID of the company.
cId :: Lens' Company (Maybe Text)
cId = lens _cId (\ s a -> s{_cId = a})

-- | URL of the company\'s website.
cWebsiteUrl :: Lens' Company (Maybe Text)
cWebsiteUrl
  = lens _cWebsiteUrl (\ s a -> s{_cWebsiteUrl = a})

-- | The list of company locations.
cLocations :: Lens' Company [Maybe Location]
cLocations
  = lens _cLocations (\ s a -> s{_cLocations = a}) .
      _Default
      . _Coerce

-- | Services the company can help with.
cServices :: Lens' Company [Text]
cServices
  = lens _cServices (\ s a -> s{_cServices = a}) .
      _Default
      . _Coerce

-- | Request message for CreateLead.
--
-- /See:/ 'createLeadRequest' smart constructor.
data CreateLeadRequest = CreateLeadRequest
    { _clrRequestMetadata    :: !(Maybe (Maybe RequestMetadata))
    , _clrRecaptchaChallenge :: !(Maybe (Maybe RecaptchaChallenge))
    , _clrLead               :: !(Maybe (Maybe Lead))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreateLeadRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clrRequestMetadata'
--
-- * 'clrRecaptchaChallenge'
--
-- * 'clrLead'
createLeadRequest
    :: CreateLeadRequest
createLeadRequest =
    CreateLeadRequest
    { _clrRequestMetadata = Nothing
    , _clrRecaptchaChallenge = Nothing
    , _clrLead = Nothing
    }

-- | Current request metadata.
clrRequestMetadata :: Lens' CreateLeadRequest (Maybe (Maybe RequestMetadata))
clrRequestMetadata
  = lens _clrRequestMetadata
      (\ s a -> s{_clrRequestMetadata = a})

-- | reCaptcha challenge info.
clrRecaptchaChallenge :: Lens' CreateLeadRequest (Maybe (Maybe RecaptchaChallenge))
clrRecaptchaChallenge
  = lens _clrRecaptchaChallenge
      (\ s a -> s{_clrRecaptchaChallenge = a})

-- | The lead resource. The \`LeadType\` must not be
-- \`LEAD_TYPE_UNSPECIFIED\` and either \`email\` or \`phone_number\` must
-- be provided.
clrLead :: Lens' CreateLeadRequest (Maybe (Maybe Lead))
clrLead = lens _clrLead (\ s a -> s{_clrLead = a})

-- | Response message for CreateLead. Debug information about this request.
--
-- /See:/ 'createLeadResponse' smart constructor.
data CreateLeadResponse = CreateLeadResponse
    { _cRecaptchaStatus  :: !(Maybe Text)
    , _cResponseMetadata :: !(Maybe (Maybe ResponseMetadata))
    , _cLead             :: !(Maybe (Maybe Lead))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreateLeadResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cRecaptchaStatus'
--
-- * 'cResponseMetadata'
--
-- * 'cLead'
createLeadResponse
    :: CreateLeadResponse
createLeadResponse =
    CreateLeadResponse
    { _cRecaptchaStatus = Nothing
    , _cResponseMetadata = Nothing
    , _cLead = Nothing
    }

-- | The outcome of reCaptcha validation.
cRecaptchaStatus :: Lens' CreateLeadResponse (Maybe Text)
cRecaptchaStatus
  = lens _cRecaptchaStatus
      (\ s a -> s{_cRecaptchaStatus = a})

-- | Current response metadata.
cResponseMetadata :: Lens' CreateLeadResponse (Maybe (Maybe ResponseMetadata))
cResponseMetadata
  = lens _cResponseMetadata
      (\ s a -> s{_cResponseMetadata = a})

-- | Lead that was created depending on the outcome of reCaptcha validation.
cLead :: Lens' CreateLeadResponse (Maybe (Maybe Lead))
cLead = lens _cLead (\ s a -> s{_cLead = a})

-- | Debug information about this request.
--
-- /See:/ 'debugInfo' smart constructor.
data DebugInfo = DebugInfo
    { _diServiceUrl      :: !(Maybe Text)
    , _diServerTraceInfo :: !(Maybe Text)
    , _diServerInfo      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DebugInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diServiceUrl'
--
-- * 'diServerTraceInfo'
--
-- * 'diServerInfo'
debugInfo
    :: DebugInfo
debugInfo =
    DebugInfo
    { _diServiceUrl = Nothing
    , _diServerTraceInfo = Nothing
    , _diServerInfo = Nothing
    }

-- | URL of the service that handled this request.
diServiceUrl :: Lens' DebugInfo (Maybe Text)
diServiceUrl
  = lens _diServiceUrl (\ s a -> s{_diServiceUrl = a})

-- | Server-side debug stack trace.
diServerTraceInfo :: Lens' DebugInfo (Maybe Text)
diServerTraceInfo
  = lens _diServerTraceInfo
      (\ s a -> s{_diServerTraceInfo = a})

-- | Info about the server that serviced this request.
diServerInfo :: Lens' DebugInfo (Maybe Text)
diServerInfo
  = lens _diServerInfo (\ s a -> s{_diServerInfo = a})

-- | Key value data pair for an event.
--
-- /See:/ 'eventData' smart constructor.
data EventData = EventData
    { _edValues :: !(Maybe [Text])
    , _edKey    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edValues'
--
-- * 'edKey'
eventData
    :: EventData
eventData =
    EventData
    { _edValues = Nothing
    , _edKey = Nothing
    }

-- | Data values.
edValues :: Lens' EventData [Text]
edValues
  = lens _edValues (\ s a -> s{_edValues = a}) .
      _Default
      . _Coerce

-- | Data type.
edKey :: Lens' EventData (Maybe Text)
edKey = lens _edKey (\ s a -> s{_edKey = a})

-- | Response message for GetCompany.
--
-- /See:/ 'getCompanyResponse' smart constructor.
data GetCompanyResponse = GetCompanyResponse
    { _gcrResponseMetadata :: !(Maybe (Maybe ResponseMetadata))
    , _gcrCompany          :: !(Maybe (Maybe Company))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetCompanyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcrResponseMetadata'
--
-- * 'gcrCompany'
getCompanyResponse
    :: GetCompanyResponse
getCompanyResponse =
    GetCompanyResponse
    { _gcrResponseMetadata = Nothing
    , _gcrCompany = Nothing
    }

-- | Current response metadata.
gcrResponseMetadata :: Lens' GetCompanyResponse (Maybe (Maybe ResponseMetadata))
gcrResponseMetadata
  = lens _gcrResponseMetadata
      (\ s a -> s{_gcrResponseMetadata = a})

-- | The company.
gcrCompany :: Lens' GetCompanyResponse (Maybe (Maybe Company))
gcrCompany
  = lens _gcrCompany (\ s a -> s{_gcrCompany = a})

-- | An object representing a latitude\/longitude pair. This is expressed as
-- a pair of doubles representing degrees latitude and degrees longitude.
-- Unless specified otherwise, this must conform to the WGS84 standard.
-- Values must be within normalized ranges. Example of normalization code
-- in Python: def NormalizeLongitude(longitude): \"\"\"Wrapsdecimal degrees
-- longitude to [-180.0, 180.0].\"\"\" q, r = divmod(longitude, 360.0) if r
-- > 180.0 or (r == 180.0 and q \<= -1.0): return r - 360.0 return r def
-- NormalizeLatLng(latitude, longitude): \"\"\"Wraps decimal degrees
-- latitude and longitude to [-180.0, 180.0] and [-90.0, 90.0],
-- respectively.\"\"\" r = latitude % 360.0 if r = 270.0: return r - 360,
-- NormalizeLongitude(longitude) else: return 180 - r,
-- NormalizeLongitude(longitude + 180.0) assert 180.0 ==
-- NormalizeLongitude(180.0) assert -180.0 == NormalizeLongitude(-180.0)
-- assert -179.0 == NormalizeLongitude(181.0) assert (0.0, 0.0) ==
-- NormalizeLatLng(360.0, 0.0) assert (0.0, 0.0) == NormalizeLatLng(-360.0,
-- 0.0) assert (85.0, 180.0) == NormalizeLatLng(95.0, 0.0) assert (-85.0,
-- -170.0) == NormalizeLatLng(-95.0, 10.0) assert (90.0, 10.0) ==
-- NormalizeLatLng(90.0, 10.0) assert (-90.0, -10.0) ==
-- NormalizeLatLng(-90.0, -10.0) assert (0.0, -170.0) ==
-- NormalizeLatLng(-180.0, 10.0) assert (0.0, -170.0) ==
-- NormalizeLatLng(180.0, 10.0) assert (-90.0, 10.0) ==
-- NormalizeLatLng(270.0, 10.0) assert (90.0, 10.0) ==
-- NormalizeLatLng(-270.0, 10.0)
--
-- /See:/ 'latLng' smart constructor.
data LatLng = LatLng
    { _llLatitude  :: !(Maybe Double)
    , _llLongitude :: !(Maybe Double)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LatLng' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llLatitude'
--
-- * 'llLongitude'
latLng
    :: LatLng
latLng =
    LatLng
    { _llLatitude = Nothing
    , _llLongitude = Nothing
    }

-- | The latitude in degrees. It must be in the range [-90.0, +90.0].
llLatitude :: Lens' LatLng (Maybe Double)
llLatitude
  = lens _llLatitude (\ s a -> s{_llLatitude = a})

-- | The longitude in degrees. It must be in the range [-180.0, +180.0].
llLongitude :: Lens' LatLng (Maybe Double)
llLongitude
  = lens _llLongitude (\ s a -> s{_llLongitude = a})

-- | A lead resource that represents an advertiser contact for a \`Company\`.
-- These are usually generated via Google Partner Search (the advertiser
-- portal).
--
-- /See:/ 'lead' smart constructor.
data Lead = Lead
    { _lGivenName        :: !(Maybe Text)
    , _lEmail            :: !(Maybe Text)
    , _lFamilyName       :: !(Maybe Text)
    , _lPhoneNumber      :: !(Maybe Text)
    , _lMinMonthlyBudget :: !(Maybe (Maybe Money))
    , _lId               :: !(Maybe Text)
    , _lComments         :: !(Maybe Text)
    , _lWebsiteUrl       :: !(Maybe Text)
    , _lType             :: !(Maybe Text)
    , _lGpsMotivations   :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Lead' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lGivenName'
--
-- * 'lEmail'
--
-- * 'lFamilyName'
--
-- * 'lPhoneNumber'
--
-- * 'lMinMonthlyBudget'
--
-- * 'lId'
--
-- * 'lComments'
--
-- * 'lWebsiteUrl'
--
-- * 'lType'
--
-- * 'lGpsMotivations'
lead
    :: Lead
lead =
    Lead
    { _lGivenName = Nothing
    , _lEmail = Nothing
    , _lFamilyName = Nothing
    , _lPhoneNumber = Nothing
    , _lMinMonthlyBudget = Nothing
    , _lId = Nothing
    , _lComments = Nothing
    , _lWebsiteUrl = Nothing
    , _lType = Nothing
    , _lGpsMotivations = Nothing
    }

-- | First name of lead source.
lGivenName :: Lens' Lead (Maybe Text)
lGivenName
  = lens _lGivenName (\ s a -> s{_lGivenName = a})

-- | Email address of lead source.
lEmail :: Lens' Lead (Maybe Text)
lEmail = lens _lEmail (\ s a -> s{_lEmail = a})

-- | Last name of lead source.
lFamilyName :: Lens' Lead (Maybe Text)
lFamilyName
  = lens _lFamilyName (\ s a -> s{_lFamilyName = a})

-- | Phone number of lead source.
lPhoneNumber :: Lens' Lead (Maybe Text)
lPhoneNumber
  = lens _lPhoneNumber (\ s a -> s{_lPhoneNumber = a})

-- | The minimum monthly budget lead source is willing to spend.
lMinMonthlyBudget :: Lens' Lead (Maybe (Maybe Money))
lMinMonthlyBudget
  = lens _lMinMonthlyBudget
      (\ s a -> s{_lMinMonthlyBudget = a})

-- | ID of the lead.
lId :: Lens' Lead (Maybe Text)
lId = lens _lId (\ s a -> s{_lId = a})

-- | Comments lead source gave.
lComments :: Lens' Lead (Maybe Text)
lComments
  = lens _lComments (\ s a -> s{_lComments = a})

-- | Website URL of lead source.
lWebsiteUrl :: Lens' Lead (Maybe Text)
lWebsiteUrl
  = lens _lWebsiteUrl (\ s a -> s{_lWebsiteUrl = a})

-- | Type of lead.
lType :: Lens' Lead (Maybe Text)
lType = lens _lType (\ s a -> s{_lType = a})

-- | List of reasons for using Google Partner Search and creating a lead.
lGpsMotivations :: Lens' Lead [Text]
lGpsMotivations
  = lens _lGpsMotivations
      (\ s a -> s{_lGpsMotivations = a})
      . _Default
      . _Coerce

-- | Response message for ListCompanies.
--
-- /See:/ 'listCompaniesResponse' smart constructor.
data ListCompaniesResponse = ListCompaniesResponse
    { _lcrNextPageToken    :: !(Maybe Text)
    , _lcrResponseMetadata :: !(Maybe (Maybe ResponseMetadata))
    , _lcrCompanies        :: !(Maybe [Maybe Company])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListCompaniesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcrNextPageToken'
--
-- * 'lcrResponseMetadata'
--
-- * 'lcrCompanies'
listCompaniesResponse
    :: ListCompaniesResponse
listCompaniesResponse =
    ListCompaniesResponse
    { _lcrNextPageToken = Nothing
    , _lcrResponseMetadata = Nothing
    , _lcrCompanies = Nothing
    }

-- | A token to retrieve next page of results. Pass this value in the
-- \`ListCompaniesRequest.page_token\` field in the subsequent call to
-- ListCompanies to retrieve the next page of results.
lcrNextPageToken :: Lens' ListCompaniesResponse (Maybe Text)
lcrNextPageToken
  = lens _lcrNextPageToken
      (\ s a -> s{_lcrNextPageToken = a})

-- | Current response metadata.
lcrResponseMetadata :: Lens' ListCompaniesResponse (Maybe (Maybe ResponseMetadata))
lcrResponseMetadata
  = lens _lcrResponseMetadata
      (\ s a -> s{_lcrResponseMetadata = a})

-- | The list of companies.
lcrCompanies :: Lens' ListCompaniesResponse [Maybe Company]
lcrCompanies
  = lens _lcrCompanies (\ s a -> s{_lcrCompanies = a})
      . _Default
      . _Coerce

-- | Response message for ListUserStates.
--
-- /See:/ 'listUserStatesResponse' smart constructor.
data ListUserStatesResponse = ListUserStatesResponse
    { _lusrUserStates       :: !(Maybe [Text])
    , _lusrResponseMetadata :: !(Maybe (Maybe ResponseMetadata))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListUserStatesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lusrUserStates'
--
-- * 'lusrResponseMetadata'
listUserStatesResponse
    :: ListUserStatesResponse
listUserStatesResponse =
    ListUserStatesResponse
    { _lusrUserStates = Nothing
    , _lusrResponseMetadata = Nothing
    }

-- | User\'s states.
lusrUserStates :: Lens' ListUserStatesResponse [Text]
lusrUserStates
  = lens _lusrUserStates
      (\ s a -> s{_lusrUserStates = a})
      . _Default
      . _Coerce

-- | Current response metadata.
lusrResponseMetadata :: Lens' ListUserStatesResponse (Maybe (Maybe ResponseMetadata))
lusrResponseMetadata
  = lens _lusrResponseMetadata
      (\ s a -> s{_lusrResponseMetadata = a})

-- | The localized company information.
--
-- /See:/ 'localizedCompanyInfo' smart constructor.
data LocalizedCompanyInfo = LocalizedCompanyInfo
    { _lciLanguageCode :: !(Maybe Text)
    , _lciOverview     :: !(Maybe Text)
    , _lciCountryCodes :: !(Maybe [Text])
    , _lciDisplayName  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LocalizedCompanyInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lciLanguageCode'
--
-- * 'lciOverview'
--
-- * 'lciCountryCodes'
--
-- * 'lciDisplayName'
localizedCompanyInfo
    :: LocalizedCompanyInfo
localizedCompanyInfo =
    LocalizedCompanyInfo
    { _lciLanguageCode = Nothing
    , _lciOverview = Nothing
    , _lciCountryCodes = Nothing
    , _lciDisplayName = Nothing
    }

-- | Language code of the localized company info, as defined by BCP 47 (IETF
-- BCP 47, \"Tags for Identifying Languages\").
lciLanguageCode :: Lens' LocalizedCompanyInfo (Maybe Text)
lciLanguageCode
  = lens _lciLanguageCode
      (\ s a -> s{_lciLanguageCode = a})

-- | Localized brief description that the company uses to advertise
-- themselves.
lciOverview :: Lens' LocalizedCompanyInfo (Maybe Text)
lciOverview
  = lens _lciOverview (\ s a -> s{_lciOverview = a})

-- | List of country codes for the localized company info.
lciCountryCodes :: Lens' LocalizedCompanyInfo [Text]
lciCountryCodes
  = lens _lciCountryCodes
      (\ s a -> s{_lciCountryCodes = a})
      . _Default
      . _Coerce

-- | Localized display name.
lciDisplayName :: Lens' LocalizedCompanyInfo (Maybe Text)
lciDisplayName
  = lens _lciDisplayName
      (\ s a -> s{_lciDisplayName = a})

-- | A location with address and geographic coordinates.
--
-- /See:/ 'location' smart constructor.
data Location = Location
    { _lLatLng  :: !(Maybe (Maybe LatLng))
    , _lAddress :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Location' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lLatLng'
--
-- * 'lAddress'
location
    :: Location
location =
    Location
    { _lLatLng = Nothing
    , _lAddress = Nothing
    }

-- | The latitude and longitude of the location, in degrees.
lLatLng :: Lens' Location (Maybe (Maybe LatLng))
lLatLng = lens _lLatLng (\ s a -> s{_lLatLng = a})

-- | The complete address of the location.
lAddress :: Lens' Location (Maybe Text)
lAddress = lens _lAddress (\ s a -> s{_lAddress = a})

-- | Request message for LogClientMessage.
--
-- /See:/ 'logMessageRequest' smart constructor.
data LogMessageRequest = LogMessageRequest
    { _lmrRequestMetadata :: !(Maybe (Maybe RequestMetadata))
    , _lmrClientInfo      :: !(Maybe LogMessageRequestClientInfo)
    , _lmrDetails         :: !(Maybe Text)
    , _lmrLevel           :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LogMessageRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmrRequestMetadata'
--
-- * 'lmrClientInfo'
--
-- * 'lmrDetails'
--
-- * 'lmrLevel'
logMessageRequest
    :: LogMessageRequest
logMessageRequest =
    LogMessageRequest
    { _lmrRequestMetadata = Nothing
    , _lmrClientInfo = Nothing
    , _lmrDetails = Nothing
    , _lmrLevel = Nothing
    }

-- | Current request metadata.
lmrRequestMetadata :: Lens' LogMessageRequest (Maybe (Maybe RequestMetadata))
lmrRequestMetadata
  = lens _lmrRequestMetadata
      (\ s a -> s{_lmrRequestMetadata = a})

-- | Map of client info, such as URL, browser navigator, browser platform,
-- etc.
lmrClientInfo :: Lens' LogMessageRequest (Maybe LogMessageRequestClientInfo)
lmrClientInfo
  = lens _lmrClientInfo
      (\ s a -> s{_lmrClientInfo = a})

-- | Details about the client message.
lmrDetails :: Lens' LogMessageRequest (Maybe Text)
lmrDetails
  = lens _lmrDetails (\ s a -> s{_lmrDetails = a})

-- | Message level of client message.
lmrLevel :: Lens' LogMessageRequest (Maybe Text)
lmrLevel = lens _lmrLevel (\ s a -> s{_lmrLevel = a})

-- | Map of client info, such as URL, browser navigator, browser platform,
-- etc.
--
-- /See:/ 'logMessageRequestClientInfo' smart constructor.
data LogMessageRequestClientInfo =
    LogMessageRequestClientInfo
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LogMessageRequestClientInfo' with the minimum fields required to make a request.
--
logMessageRequestClientInfo
    :: LogMessageRequestClientInfo
logMessageRequestClientInfo = LogMessageRequestClientInfo

-- | Response message for LogClientMessage.
--
-- /See:/ 'logMessageResponse' smart constructor.
newtype LogMessageResponse = LogMessageResponse
    { _lmrResponseMetadata :: Maybe (Maybe ResponseMetadata)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LogMessageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmrResponseMetadata'
logMessageResponse
    :: LogMessageResponse
logMessageResponse =
    LogMessageResponse
    { _lmrResponseMetadata = Nothing
    }

-- | Current response metadata.
lmrResponseMetadata :: Lens' LogMessageResponse (Maybe (Maybe ResponseMetadata))
lmrResponseMetadata
  = lens _lmrResponseMetadata
      (\ s a -> s{_lmrResponseMetadata = a})

-- | Request message for LogUserEvent.
--
-- /See:/ 'logUserEventRequest' smart constructor.
data LogUserEventRequest = LogUserEventRequest
    { _luerEventCategory   :: !(Maybe Text)
    , _luerRequestMetadata :: !(Maybe (Maybe RequestMetadata))
    , _luerUrl             :: !(Maybe Text)
    , _luerEventScope      :: !(Maybe Text)
    , _luerLead            :: !(Maybe (Maybe Lead))
    , _luerEventDatas      :: !(Maybe [Maybe EventData])
    , _luerEventAction     :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LogUserEventRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'luerEventCategory'
--
-- * 'luerRequestMetadata'
--
-- * 'luerUrl'
--
-- * 'luerEventScope'
--
-- * 'luerLead'
--
-- * 'luerEventDatas'
--
-- * 'luerEventAction'
logUserEventRequest
    :: LogUserEventRequest
logUserEventRequest =
    LogUserEventRequest
    { _luerEventCategory = Nothing
    , _luerRequestMetadata = Nothing
    , _luerUrl = Nothing
    , _luerEventScope = Nothing
    , _luerLead = Nothing
    , _luerEventDatas = Nothing
    , _luerEventAction = Nothing
    }

-- | The category the action belongs to.
luerEventCategory :: Lens' LogUserEventRequest (Maybe Text)
luerEventCategory
  = lens _luerEventCategory
      (\ s a -> s{_luerEventCategory = a})

-- | Current request metadata.
luerRequestMetadata :: Lens' LogUserEventRequest (Maybe (Maybe RequestMetadata))
luerRequestMetadata
  = lens _luerRequestMetadata
      (\ s a -> s{_luerRequestMetadata = a})

-- | The URL where the event occurred.
luerUrl :: Lens' LogUserEventRequest (Maybe Text)
luerUrl = lens _luerUrl (\ s a -> s{_luerUrl = a})

-- | The scope of the event.
luerEventScope :: Lens' LogUserEventRequest (Maybe Text)
luerEventScope
  = lens _luerEventScope
      (\ s a -> s{_luerEventScope = a})

-- | Advertiser lead information.
luerLead :: Lens' LogUserEventRequest (Maybe (Maybe Lead))
luerLead = lens _luerLead (\ s a -> s{_luerLead = a})

-- | List of event data for the event.
luerEventDatas :: Lens' LogUserEventRequest [Maybe EventData]
luerEventDatas
  = lens _luerEventDatas
      (\ s a -> s{_luerEventDatas = a})
      . _Default
      . _Coerce

-- | The action that occurred.
luerEventAction :: Lens' LogUserEventRequest (Maybe Text)
luerEventAction
  = lens _luerEventAction
      (\ s a -> s{_luerEventAction = a})

-- | Response message for LogUserEvent.
--
-- /See:/ 'logUserEventResponse' smart constructor.
newtype LogUserEventResponse = LogUserEventResponse
    { _luerResponseMetadata :: Maybe (Maybe ResponseMetadata)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LogUserEventResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'luerResponseMetadata'
logUserEventResponse
    :: LogUserEventResponse
logUserEventResponse =
    LogUserEventResponse
    { _luerResponseMetadata = Nothing
    }

-- | Current response metadata.
luerResponseMetadata :: Lens' LogUserEventResponse (Maybe (Maybe ResponseMetadata))
luerResponseMetadata
  = lens _luerResponseMetadata
      (\ s a -> s{_luerResponseMetadata = a})

-- | Represents an amount of money with its currency type.
--
-- /See:/ 'money' smart constructor.
data Money = Money
    { _mCurrencyCode :: !(Maybe Text)
    , _mNanos        :: !(Maybe Int32)
    , _mUnits        :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Money' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mCurrencyCode'
--
-- * 'mNanos'
--
-- * 'mUnits'
money
    :: Money
money =
    Money
    { _mCurrencyCode = Nothing
    , _mNanos = Nothing
    , _mUnits = Nothing
    }

-- | The 3-letter currency code defined in ISO 4217.
mCurrencyCode :: Lens' Money (Maybe Text)
mCurrencyCode
  = lens _mCurrencyCode
      (\ s a -> s{_mCurrencyCode = a})

-- | Number of nano (10^-9) units of the amount. The value must be between
-- -999,999,999 and +999,999,999 inclusive. If \`units\` is positive,
-- \`nanos\` must be positive or zero. If \`units\` is zero, \`nanos\` can
-- be positive, zero, or negative. If \`units\` is negative, \`nanos\` must
-- be negative or zero. For example $-1.75 is represented as \`units\`=-1
-- and \`nanos\`=-750,000,000.
mNanos :: Lens' Money (Maybe Int32)
mNanos = lens _mNanos (\ s a -> s{_mNanos = a})

-- | The whole units of the amount. For example if \`currencyCode\` is
-- \`\"USD\"\`, then 1 unit is one US dollar.
mUnits :: Lens' Money (Maybe Int64)
mUnits = lens _mUnits (\ s a -> s{_mUnits = a})

-- | Basic information from a public profile.
--
-- /See:/ 'publicProfile' smart constructor.
data PublicProfile = PublicProfile
    { _ppUrl             :: !(Maybe Text)
    , _ppDisplayImageUrl :: !(Maybe Text)
    , _ppDisplayName     :: !(Maybe Text)
    , _ppId              :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PublicProfile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppUrl'
--
-- * 'ppDisplayImageUrl'
--
-- * 'ppDisplayName'
--
-- * 'ppId'
publicProfile
    :: PublicProfile
publicProfile =
    PublicProfile
    { _ppUrl = Nothing
    , _ppDisplayImageUrl = Nothing
    , _ppDisplayName = Nothing
    , _ppId = Nothing
    }

-- | The URL of the public profile.
ppUrl :: Lens' PublicProfile (Maybe Text)
ppUrl = lens _ppUrl (\ s a -> s{_ppUrl = a})

-- | The URL to the main display image of the public profile.
ppDisplayImageUrl :: Lens' PublicProfile (Maybe Text)
ppDisplayImageUrl
  = lens _ppDisplayImageUrl
      (\ s a -> s{_ppDisplayImageUrl = a})

-- | The display name of the public profile.
ppDisplayName :: Lens' PublicProfile (Maybe Text)
ppDisplayName
  = lens _ppDisplayName
      (\ s a -> s{_ppDisplayName = a})

-- | The ID which can be used to retrieve more details about the public
-- profile.
ppId :: Lens' PublicProfile (Maybe Text)
ppId = lens _ppId (\ s a -> s{_ppId = a})

-- | Information related to ranking of results.
--
-- /See:/ 'rank' smart constructor.
data Rank = Rank
    { _rValue :: !(Maybe Double)
    , _rType  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Rank' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rValue'
--
-- * 'rType'
rank
    :: Rank
rank =
    Rank
    { _rValue = Nothing
    , _rType = Nothing
    }

-- | The numerical value of the rank.
rValue :: Lens' Rank (Maybe Double)
rValue = lens _rValue (\ s a -> s{_rValue = a})

-- | The type of rank.
rType :: Lens' Rank (Maybe Text)
rType = lens _rType (\ s a -> s{_rType = a})

-- | reCaptcha challenge info.
--
-- /See:/ 'recaptchaChallenge' smart constructor.
data RecaptchaChallenge = RecaptchaChallenge
    { _rcResponse :: !(Maybe Text)
    , _rcId       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RecaptchaChallenge' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcResponse'
--
-- * 'rcId'
recaptchaChallenge
    :: RecaptchaChallenge
recaptchaChallenge =
    RecaptchaChallenge
    { _rcResponse = Nothing
    , _rcId = Nothing
    }

-- | The response to the reCaptcha challenge.
rcResponse :: Lens' RecaptchaChallenge (Maybe Text)
rcResponse
  = lens _rcResponse (\ s a -> s{_rcResponse = a})

-- | The ID of the reCaptcha challenge.
rcId :: Lens' RecaptchaChallenge (Maybe Text)
rcId = lens _rcId (\ s a -> s{_rcId = a})

-- | Common data that is in each API request.
--
-- /See:/ 'requestMetadata' smart constructor.
data RequestMetadata = RequestMetadata
    { _rmExperimentIds     :: !(Maybe [Text])
    , _rmTrafficSource     :: !(Maybe (Maybe TrafficSource))
    , _rmLocale            :: !(Maybe Text)
    , _rmUserOverrides     :: !(Maybe (Maybe UserOverrides))
    , _rmPartnersSessionId :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RequestMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmExperimentIds'
--
-- * 'rmTrafficSource'
--
-- * 'rmLocale'
--
-- * 'rmUserOverrides'
--
-- * 'rmPartnersSessionId'
requestMetadata
    :: RequestMetadata
requestMetadata =
    RequestMetadata
    { _rmExperimentIds = Nothing
    , _rmTrafficSource = Nothing
    , _rmLocale = Nothing
    , _rmUserOverrides = Nothing
    , _rmPartnersSessionId = Nothing
    }

-- | Experiment IDs the current request belongs to.
rmExperimentIds :: Lens' RequestMetadata [Text]
rmExperimentIds
  = lens _rmExperimentIds
      (\ s a -> s{_rmExperimentIds = a})
      . _Default
      . _Coerce

-- | Source of traffic for the current request.
rmTrafficSource :: Lens' RequestMetadata (Maybe (Maybe TrafficSource))
rmTrafficSource
  = lens _rmTrafficSource
      (\ s a -> s{_rmTrafficSource = a})

-- | Locale to use for the current request.
rmLocale :: Lens' RequestMetadata (Maybe Text)
rmLocale = lens _rmLocale (\ s a -> s{_rmLocale = a})

-- | Values to use instead of the user\'s respective defaults for the current
-- request. These are only honored by whitelisted products.
rmUserOverrides :: Lens' RequestMetadata (Maybe (Maybe UserOverrides))
rmUserOverrides
  = lens _rmUserOverrides
      (\ s a -> s{_rmUserOverrides = a})

-- | Google Partners session ID.
rmPartnersSessionId :: Lens' RequestMetadata (Maybe Text)
rmPartnersSessionId
  = lens _rmPartnersSessionId
      (\ s a -> s{_rmPartnersSessionId = a})

-- | Common data that is in each API response.
--
-- /See:/ 'responseMetadata' smart constructor.
newtype ResponseMetadata = ResponseMetadata
    { _rmDebugInfo :: Maybe (Maybe DebugInfo)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResponseMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmDebugInfo'
responseMetadata
    :: ResponseMetadata
responseMetadata =
    ResponseMetadata
    { _rmDebugInfo = Nothing
    }

-- | Debug information about this request.
rmDebugInfo :: Lens' ResponseMetadata (Maybe (Maybe DebugInfo))
rmDebugInfo
  = lens _rmDebugInfo (\ s a -> s{_rmDebugInfo = a})

-- | Source of traffic for the current request.
--
-- /See:/ 'trafficSource' smart constructor.
data TrafficSource = TrafficSource
    { _tsTrafficSubId    :: !(Maybe Text)
    , _tsTrafficSourceId :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TrafficSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsTrafficSubId'
--
-- * 'tsTrafficSourceId'
trafficSource
    :: TrafficSource
trafficSource =
    TrafficSource
    { _tsTrafficSubId = Nothing
    , _tsTrafficSourceId = Nothing
    }

-- | Second level identifier to indicate where the traffic comes from. An
-- identifier has multiple letters created by a team which redirected the
-- traffic to us.
tsTrafficSubId :: Lens' TrafficSource (Maybe Text)
tsTrafficSubId
  = lens _tsTrafficSubId
      (\ s a -> s{_tsTrafficSubId = a})

-- | Identifier to indicate where the traffic comes from. An identifier has
-- multiple letters created by a team which redirected the traffic to us.
tsTrafficSourceId :: Lens' TrafficSource (Maybe Text)
tsTrafficSourceId
  = lens _tsTrafficSourceId
      (\ s a -> s{_tsTrafficSourceId = a})

-- | Values to use instead of the user\'s respective defaults. These are only
-- honored by whitelisted products.
--
-- /See:/ 'userOverrides' smart constructor.
data UserOverrides = UserOverrides
    { _uoIpAddress :: !(Maybe Text)
    , _uoUserId    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserOverrides' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uoIpAddress'
--
-- * 'uoUserId'
userOverrides
    :: UserOverrides
userOverrides =
    UserOverrides
    { _uoIpAddress = Nothing
    , _uoUserId = Nothing
    }

-- | IP address to use instead of the user\'s geo-located IP address.
uoIpAddress :: Lens' UserOverrides (Maybe Text)
uoIpAddress
  = lens _uoIpAddress (\ s a -> s{_uoIpAddress = a})

-- | Logged-in user ID to impersonate instead of the user\'s ID.
uoUserId :: Lens' UserOverrides (Maybe Text)
uoUserId = lens _uoUserId (\ s a -> s{_uoUserId = a})
