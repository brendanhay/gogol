{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

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
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON LatLng where
        parseJSON
          = withObject "LatLng"
              (\ o ->
                 LatLng <$>
                   (o .:? "latitude") <*> (o .:? "longitude"))

instance ToJSON LatLng where
        toJSON LatLng{..}
          = object
              (catMaybes
                 [("latitude" .=) <$> _llLatitude,
                  ("longitude" .=) <$> _llLongitude])

-- | Response message for ListUserStates.
--
-- /See:/ 'listUserStatesResponse' smart constructor.
data ListUserStatesResponse = ListUserStatesResponse
    { _lusrUserStates       :: !(Maybe [Text])
    , _lusrResponseMetadata :: !(Maybe ResponseMetadata)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
lusrResponseMetadata :: Lens' ListUserStatesResponse (Maybe ResponseMetadata)
lusrResponseMetadata
  = lens _lusrResponseMetadata
      (\ s a -> s{_lusrResponseMetadata = a})

instance FromJSON ListUserStatesResponse where
        parseJSON
          = withObject "ListUserStatesResponse"
              (\ o ->
                 ListUserStatesResponse <$>
                   (o .:? "userStates" .!= mempty) <*>
                     (o .:? "responseMetadata"))

instance ToJSON ListUserStatesResponse where
        toJSON ListUserStatesResponse{..}
          = object
              (catMaybes
                 [("userStates" .=) <$> _lusrUserStates,
                  ("responseMetadata" .=) <$> _lusrResponseMetadata])

-- | Key value data pair for an event.
--
-- /See:/ 'eventData' smart constructor.
data EventData = EventData
    { _edValues :: !(Maybe [Text])
    , _edKey    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON EventData where
        parseJSON
          = withObject "EventData"
              (\ o ->
                 EventData <$>
                   (o .:? "values" .!= mempty) <*> (o .:? "key"))

instance ToJSON EventData where
        toJSON EventData{..}
          = object
              (catMaybes
                 [("values" .=) <$> _edValues, ("key" .=) <$> _edKey])

-- | Common data that is in each API request.
--
-- /See:/ 'requestMetadata' smart constructor.
data RequestMetadata = RequestMetadata
    { _rmExperimentIds     :: !(Maybe [Text])
    , _rmTrafficSource     :: !(Maybe TrafficSource)
    , _rmLocale            :: !(Maybe Text)
    , _rmUserOverrides     :: !(Maybe UserOverrides)
    , _rmPartnersSessionId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
rmTrafficSource :: Lens' RequestMetadata (Maybe TrafficSource)
rmTrafficSource
  = lens _rmTrafficSource
      (\ s a -> s{_rmTrafficSource = a})

-- | Locale to use for the current request.
rmLocale :: Lens' RequestMetadata (Maybe Text)
rmLocale = lens _rmLocale (\ s a -> s{_rmLocale = a})

-- | Values to use instead of the user\'s respective defaults for the current
-- request. These are only honored by whitelisted products.
rmUserOverrides :: Lens' RequestMetadata (Maybe UserOverrides)
rmUserOverrides
  = lens _rmUserOverrides
      (\ s a -> s{_rmUserOverrides = a})

-- | Google Partners session ID.
rmPartnersSessionId :: Lens' RequestMetadata (Maybe Text)
rmPartnersSessionId
  = lens _rmPartnersSessionId
      (\ s a -> s{_rmPartnersSessionId = a})

instance FromJSON RequestMetadata where
        parseJSON
          = withObject "RequestMetadata"
              (\ o ->
                 RequestMetadata <$>
                   (o .:? "experimentIds" .!= mempty) <*>
                     (o .:? "trafficSource")
                     <*> (o .:? "locale")
                     <*> (o .:? "userOverrides")
                     <*> (o .:? "partnersSessionId"))

instance ToJSON RequestMetadata where
        toJSON RequestMetadata{..}
          = object
              (catMaybes
                 [("experimentIds" .=) <$> _rmExperimentIds,
                  ("trafficSource" .=) <$> _rmTrafficSource,
                  ("locale" .=) <$> _rmLocale,
                  ("userOverrides" .=) <$> _rmUserOverrides,
                  ("partnersSessionId" .=) <$> _rmPartnersSessionId])

-- | Google Partners certification status.
--
-- /See:/ 'certificationStatus' smart constructor.
data CertificationStatus = CertificationStatus
    { _csIsCertified  :: !(Maybe Bool)
    , _csType         :: !(Maybe Text)
    , _csExamStatuses :: !(Maybe [CertificationExamStatus])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
csExamStatuses :: Lens' CertificationStatus [CertificationExamStatus]
csExamStatuses
  = lens _csExamStatuses
      (\ s a -> s{_csExamStatuses = a})
      . _Default
      . _Coerce

instance FromJSON CertificationStatus where
        parseJSON
          = withObject "CertificationStatus"
              (\ o ->
                 CertificationStatus <$>
                   (o .:? "isCertified") <*> (o .:? "type") <*>
                     (o .:? "examStatuses" .!= mempty))

instance ToJSON CertificationStatus where
        toJSON CertificationStatus{..}
          = object
              (catMaybes
                 [("isCertified" .=) <$> _csIsCertified,
                  ("type" .=) <$> _csType,
                  ("examStatuses" .=) <$> _csExamStatuses])

-- | Debug information about this request.
--
-- /See:/ 'debugInfo' smart constructor.
data DebugInfo = DebugInfo
    { _diServiceURL      :: !(Maybe Text)
    , _diServerTraceInfo :: !(Maybe Text)
    , _diServerInfo      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DebugInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diServiceURL'
--
-- * 'diServerTraceInfo'
--
-- * 'diServerInfo'
debugInfo
    :: DebugInfo
debugInfo =
    DebugInfo
    { _diServiceURL = Nothing
    , _diServerTraceInfo = Nothing
    , _diServerInfo = Nothing
    }

-- | URL of the service that handled this request.
diServiceURL :: Lens' DebugInfo (Maybe Text)
diServiceURL
  = lens _diServiceURL (\ s a -> s{_diServiceURL = a})

-- | Server-side debug stack trace.
diServerTraceInfo :: Lens' DebugInfo (Maybe Text)
diServerTraceInfo
  = lens _diServerTraceInfo
      (\ s a -> s{_diServerTraceInfo = a})

-- | Info about the server that serviced this request.
diServerInfo :: Lens' DebugInfo (Maybe Text)
diServerInfo
  = lens _diServerInfo (\ s a -> s{_diServerInfo = a})

instance FromJSON DebugInfo where
        parseJSON
          = withObject "DebugInfo"
              (\ o ->
                 DebugInfo <$>
                   (o .:? "serviceUrl") <*> (o .:? "serverTraceInfo")
                     <*> (o .:? "serverInfo"))

instance ToJSON DebugInfo where
        toJSON DebugInfo{..}
          = object
              (catMaybes
                 [("serviceUrl" .=) <$> _diServiceURL,
                  ("serverTraceInfo" .=) <$> _diServerTraceInfo,
                  ("serverInfo" .=) <$> _diServerInfo])

-- | Response message for GetCompany.
--
-- /See:/ 'getCompanyResponse' smart constructor.
data GetCompanyResponse = GetCompanyResponse
    { _gcrResponseMetadata :: !(Maybe ResponseMetadata)
    , _gcrCompany          :: !(Maybe Company)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
gcrResponseMetadata :: Lens' GetCompanyResponse (Maybe ResponseMetadata)
gcrResponseMetadata
  = lens _gcrResponseMetadata
      (\ s a -> s{_gcrResponseMetadata = a})

-- | The company.
gcrCompany :: Lens' GetCompanyResponse (Maybe Company)
gcrCompany
  = lens _gcrCompany (\ s a -> s{_gcrCompany = a})

instance FromJSON GetCompanyResponse where
        parseJSON
          = withObject "GetCompanyResponse"
              (\ o ->
                 GetCompanyResponse <$>
                   (o .:? "responseMetadata") <*> (o .:? "company"))

instance ToJSON GetCompanyResponse where
        toJSON GetCompanyResponse{..}
          = object
              (catMaybes
                 [("responseMetadata" .=) <$> _gcrResponseMetadata,
                  ("company" .=) <$> _gcrCompany])

-- | Basic information from a public profile.
--
-- /See:/ 'publicProFile' smart constructor.
data PublicProFile = PublicProFile
    { _ppfURL             :: !(Maybe Text)
    , _ppfDisplayImageURL :: !(Maybe Text)
    , _ppfDisplayName     :: !(Maybe Text)
    , _ppfId              :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PublicProFile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppfURL'
--
-- * 'ppfDisplayImageURL'
--
-- * 'ppfDisplayName'
--
-- * 'ppfId'
publicProFile
    :: PublicProFile
publicProFile =
    PublicProFile
    { _ppfURL = Nothing
    , _ppfDisplayImageURL = Nothing
    , _ppfDisplayName = Nothing
    , _ppfId = Nothing
    }

-- | The URL of the public profile.
ppfURL :: Lens' PublicProFile (Maybe Text)
ppfURL = lens _ppfURL (\ s a -> s{_ppfURL = a})

-- | The URL to the main display image of the public profile.
ppfDisplayImageURL :: Lens' PublicProFile (Maybe Text)
ppfDisplayImageURL
  = lens _ppfDisplayImageURL
      (\ s a -> s{_ppfDisplayImageURL = a})

-- | The display name of the public profile.
ppfDisplayName :: Lens' PublicProFile (Maybe Text)
ppfDisplayName
  = lens _ppfDisplayName
      (\ s a -> s{_ppfDisplayName = a})

-- | The ID which can be used to retrieve more details about the public
-- profile.
ppfId :: Lens' PublicProFile (Maybe Text)
ppfId = lens _ppfId (\ s a -> s{_ppfId = a})

instance FromJSON PublicProFile where
        parseJSON
          = withObject "PublicProFile"
              (\ o ->
                 PublicProFile <$>
                   (o .:? "url") <*> (o .:? "displayImageUrl") <*>
                     (o .:? "displayName")
                     <*> (o .:? "id"))

instance ToJSON PublicProFile where
        toJSON PublicProFile{..}
          = object
              (catMaybes
                 [("url" .=) <$> _ppfURL,
                  ("displayImageUrl" .=) <$> _ppfDisplayImageURL,
                  ("displayName" .=) <$> _ppfDisplayName,
                  ("id" .=) <$> _ppfId])

-- | Status for a Google Partners certification exam.
--
-- /See:/ 'certificationExamStatus' smart constructor.
data CertificationExamStatus = CertificationExamStatus
    { _cesNumberUsersPass :: !(Maybe Int32)
    , _cesType            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON CertificationExamStatus where
        parseJSON
          = withObject "CertificationExamStatus"
              (\ o ->
                 CertificationExamStatus <$>
                   (o .:? "numberUsersPass") <*> (o .:? "type"))

instance ToJSON CertificationExamStatus where
        toJSON CertificationExamStatus{..}
          = object
              (catMaybes
                 [("numberUsersPass" .=) <$> _cesNumberUsersPass,
                  ("type" .=) <$> _cesType])

-- | A location with address and geographic coordinates.
--
-- /See:/ 'location' smart constructor.
data Location = Location
    { _lLatLng  :: !(Maybe LatLng)
    , _lAddress :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
lLatLng :: Lens' Location (Maybe LatLng)
lLatLng = lens _lLatLng (\ s a -> s{_lLatLng = a})

-- | The complete address of the location.
lAddress :: Lens' Location (Maybe Text)
lAddress = lens _lAddress (\ s a -> s{_lAddress = a})

instance FromJSON Location where
        parseJSON
          = withObject "Location"
              (\ o ->
                 Location <$> (o .:? "latLng") <*> (o .:? "address"))

instance ToJSON Location where
        toJSON Location{..}
          = object
              (catMaybes
                 [("latLng" .=) <$> _lLatLng,
                  ("address" .=) <$> _lAddress])

-- | Source of traffic for the current request.
--
-- /See:/ 'trafficSource' smart constructor.
data TrafficSource = TrafficSource
    { _tsTrafficSubId    :: !(Maybe Text)
    , _tsTrafficSourceId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON TrafficSource where
        parseJSON
          = withObject "TrafficSource"
              (\ o ->
                 TrafficSource <$>
                   (o .:? "trafficSubId") <*> (o .:? "trafficSourceId"))

instance ToJSON TrafficSource where
        toJSON TrafficSource{..}
          = object
              (catMaybes
                 [("trafficSubId" .=) <$> _tsTrafficSubId,
                  ("trafficSourceId" .=) <$> _tsTrafficSourceId])

-- | Represents an amount of money with its currency type.
--
-- /See:/ 'money' smart constructor.
data Money = Money
    { _mCurrencyCode :: !(Maybe Text)
    , _mNanos        :: !(Maybe Int32)
    , _mUnits        :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON Money where
        parseJSON
          = withObject "Money"
              (\ o ->
                 Money <$>
                   (o .:? "currencyCode") <*> (o .:? "nanos") <*>
                     (o .:? "units"))

instance ToJSON Money where
        toJSON Money{..}
          = object
              (catMaybes
                 [("currencyCode" .=) <$> _mCurrencyCode,
                  ("nanos" .=) <$> _mNanos, ("units" .=) <$> _mUnits])

-- | Response message for ListCompanies.
--
-- /See:/ 'listCompaniesResponse' smart constructor.
data ListCompaniesResponse = ListCompaniesResponse
    { _lcrNextPageToken    :: !(Maybe Text)
    , _lcrResponseMetadata :: !(Maybe ResponseMetadata)
    , _lcrCompanies        :: !(Maybe [Company])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
lcrResponseMetadata :: Lens' ListCompaniesResponse (Maybe ResponseMetadata)
lcrResponseMetadata
  = lens _lcrResponseMetadata
      (\ s a -> s{_lcrResponseMetadata = a})

-- | The list of companies.
lcrCompanies :: Lens' ListCompaniesResponse [Company]
lcrCompanies
  = lens _lcrCompanies (\ s a -> s{_lcrCompanies = a})
      . _Default
      . _Coerce

instance FromJSON ListCompaniesResponse where
        parseJSON
          = withObject "ListCompaniesResponse"
              (\ o ->
                 ListCompaniesResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "responseMetadata")
                     <*> (o .:? "companies" .!= mempty))

instance ToJSON ListCompaniesResponse where
        toJSON ListCompaniesResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lcrNextPageToken,
                  ("responseMetadata" .=) <$> _lcrResponseMetadata,
                  ("companies" .=) <$> _lcrCompanies])

-- | reCaptcha challenge info.
--
-- /See:/ 'recaptchaChallenge' smart constructor.
data RecaptchaChallenge = RecaptchaChallenge
    { _rcResponse :: !(Maybe Text)
    , _rcId       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON RecaptchaChallenge where
        parseJSON
          = withObject "RecaptchaChallenge"
              (\ o ->
                 RecaptchaChallenge <$>
                   (o .:? "response") <*> (o .:? "id"))

instance ToJSON RecaptchaChallenge where
        toJSON RecaptchaChallenge{..}
          = object
              (catMaybes
                 [("response" .=) <$> _rcResponse,
                  ("id" .=) <$> _rcId])

-- | Response message for CreateLead. Debug information about this request.
--
-- /See:/ 'createLeadResponse' smart constructor.
data CreateLeadResponse = CreateLeadResponse
    { _clrRecaptchaStatus  :: !(Maybe Text)
    , _clrResponseMetadata :: !(Maybe ResponseMetadata)
    , _clrLead             :: !(Maybe Lead)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreateLeadResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clrRecaptchaStatus'
--
-- * 'clrResponseMetadata'
--
-- * 'clrLead'
createLeadResponse
    :: CreateLeadResponse
createLeadResponse =
    CreateLeadResponse
    { _clrRecaptchaStatus = Nothing
    , _clrResponseMetadata = Nothing
    , _clrLead = Nothing
    }

-- | The outcome of reCaptcha validation.
clrRecaptchaStatus :: Lens' CreateLeadResponse (Maybe Text)
clrRecaptchaStatus
  = lens _clrRecaptchaStatus
      (\ s a -> s{_clrRecaptchaStatus = a})

-- | Current response metadata.
clrResponseMetadata :: Lens' CreateLeadResponse (Maybe ResponseMetadata)
clrResponseMetadata
  = lens _clrResponseMetadata
      (\ s a -> s{_clrResponseMetadata = a})

-- | Lead that was created depending on the outcome of reCaptcha validation.
clrLead :: Lens' CreateLeadResponse (Maybe Lead)
clrLead = lens _clrLead (\ s a -> s{_clrLead = a})

instance FromJSON CreateLeadResponse where
        parseJSON
          = withObject "CreateLeadResponse"
              (\ o ->
                 CreateLeadResponse <$>
                   (o .:? "recaptchaStatus") <*>
                     (o .:? "responseMetadata")
                     <*> (o .:? "lead"))

instance ToJSON CreateLeadResponse where
        toJSON CreateLeadResponse{..}
          = object
              (catMaybes
                 [("recaptchaStatus" .=) <$> _clrRecaptchaStatus,
                  ("responseMetadata" .=) <$> _clrResponseMetadata,
                  ("lead" .=) <$> _clrLead])

-- | Values to use instead of the user\'s respective defaults. These are only
-- honored by whitelisted products.
--
-- /See:/ 'userOverrides' smart constructor.
data UserOverrides = UserOverrides
    { _uoIPAddress :: !(Maybe Text)
    , _uoUserId    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserOverrides' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uoIPAddress'
--
-- * 'uoUserId'
userOverrides
    :: UserOverrides
userOverrides =
    UserOverrides
    { _uoIPAddress = Nothing
    , _uoUserId = Nothing
    }

-- | IP address to use instead of the user\'s geo-located IP address.
uoIPAddress :: Lens' UserOverrides (Maybe Text)
uoIPAddress
  = lens _uoIPAddress (\ s a -> s{_uoIPAddress = a})

-- | Logged-in user ID to impersonate instead of the user\'s ID.
uoUserId :: Lens' UserOverrides (Maybe Text)
uoUserId = lens _uoUserId (\ s a -> s{_uoUserId = a})

instance FromJSON UserOverrides where
        parseJSON
          = withObject "UserOverrides"
              (\ o ->
                 UserOverrides <$>
                   (o .:? "ipAddress") <*> (o .:? "userId"))

instance ToJSON UserOverrides where
        toJSON UserOverrides{..}
          = object
              (catMaybes
                 [("ipAddress" .=) <$> _uoIPAddress,
                  ("userId" .=) <$> _uoUserId])

-- | Common data that is in each API response.
--
-- /See:/ 'responseMetadata' smart constructor.
newtype ResponseMetadata = ResponseMetadata
    { _rmDebugInfo :: Maybe DebugInfo
    } deriving (Eq,Show,Data,Typeable,Generic)

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
rmDebugInfo :: Lens' ResponseMetadata (Maybe DebugInfo)
rmDebugInfo
  = lens _rmDebugInfo (\ s a -> s{_rmDebugInfo = a})

instance FromJSON ResponseMetadata where
        parseJSON
          = withObject "ResponseMetadata"
              (\ o -> ResponseMetadata <$> (o .:? "debugInfo"))

instance ToJSON ResponseMetadata where
        toJSON ResponseMetadata{..}
          = object
              (catMaybes [("debugInfo" .=) <$> _rmDebugInfo])

-- | Request message for LogClientMessage.
--
-- /See:/ 'logMessageRequest' smart constructor.
data LogMessageRequest = LogMessageRequest
    { _lmrRequestMetadata :: !(Maybe RequestMetadata)
    , _lmrClientInfo      :: !(Maybe LogMessageRequestClientInfo)
    , _lmrDetails         :: !(Maybe Text)
    , _lmrLevel           :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
lmrRequestMetadata :: Lens' LogMessageRequest (Maybe RequestMetadata)
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

instance FromJSON LogMessageRequest where
        parseJSON
          = withObject "LogMessageRequest"
              (\ o ->
                 LogMessageRequest <$>
                   (o .:? "requestMetadata") <*> (o .:? "clientInfo")
                     <*> (o .:? "details")
                     <*> (o .:? "level"))

instance ToJSON LogMessageRequest where
        toJSON LogMessageRequest{..}
          = object
              (catMaybes
                 [("requestMetadata" .=) <$> _lmrRequestMetadata,
                  ("clientInfo" .=) <$> _lmrClientInfo,
                  ("details" .=) <$> _lmrDetails,
                  ("level" .=) <$> _lmrLevel])

-- | The localized company information.
--
-- /See:/ 'localizedCompanyInfo' smart constructor.
data LocalizedCompanyInfo = LocalizedCompanyInfo
    { _lciLanguageCode :: !(Maybe Text)
    , _lciOverview     :: !(Maybe Text)
    , _lciCountryCodes :: !(Maybe [Text])
    , _lciDisplayName  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON LocalizedCompanyInfo where
        parseJSON
          = withObject "LocalizedCompanyInfo"
              (\ o ->
                 LocalizedCompanyInfo <$>
                   (o .:? "languageCode") <*> (o .:? "overview") <*>
                     (o .:? "countryCodes" .!= mempty)
                     <*> (o .:? "displayName"))

instance ToJSON LocalizedCompanyInfo where
        toJSON LocalizedCompanyInfo{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _lciLanguageCode,
                  ("overview" .=) <$> _lciOverview,
                  ("countryCodes" .=) <$> _lciCountryCodes,
                  ("displayName" .=) <$> _lciDisplayName])

-- | Map of client info, such as URL, browser navigator, browser platform,
-- etc.
--
-- /See:/ 'logMessageRequestClientInfo' smart constructor.
newtype LogMessageRequestClientInfo = LogMessageRequestClientInfo
    { _lmrciAddtional :: HashMap Text Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LogMessageRequestClientInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmrciAddtional'
logMessageRequestClientInfo
    :: HashMap Text Text -- ^ 'addtional'
    -> LogMessageRequestClientInfo
logMessageRequestClientInfo pLmrciAddtional_ =
    LogMessageRequestClientInfo
    { _lmrciAddtional = pLmrciAddtional_
    }

lmrciAddtional :: Lens' LogMessageRequestClientInfo (HashMap Text Text)
lmrciAddtional
  = lens _lmrciAddtional
      (\ s a -> s{_lmrciAddtional = a})

instance FromJSON LogMessageRequestClientInfo where
        parseJSON
          = withObject "LogMessageRequestClientInfo"
              (\ o ->
                 LogMessageRequestClientInfo <$> (parseJSONObject o))

instance ToJSON LogMessageRequestClientInfo where
        toJSON = toJSON . _lmrciAddtional

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
    , _lMinMonthlyBudget :: !(Maybe Money)
    , _lId               :: !(Maybe Text)
    , _lComments         :: !(Maybe Text)
    , _lWebsiteURL       :: !(Maybe Text)
    , _lType             :: !(Maybe Text)
    , _lGpsMotivations   :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'lWebsiteURL'
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
    , _lWebsiteURL = Nothing
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
lMinMonthlyBudget :: Lens' Lead (Maybe Money)
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
lWebsiteURL :: Lens' Lead (Maybe Text)
lWebsiteURL
  = lens _lWebsiteURL (\ s a -> s{_lWebsiteURL = a})

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

instance FromJSON Lead where
        parseJSON
          = withObject "Lead"
              (\ o ->
                 Lead <$>
                   (o .:? "givenName") <*> (o .:? "email") <*>
                     (o .:? "familyName")
                     <*> (o .:? "phoneNumber")
                     <*> (o .:? "minMonthlyBudget")
                     <*> (o .:? "id")
                     <*> (o .:? "comments")
                     <*> (o .:? "websiteUrl")
                     <*> (o .:? "type")
                     <*> (o .:? "gpsMotivations" .!= mempty))

instance ToJSON Lead where
        toJSON Lead{..}
          = object
              (catMaybes
                 [("givenName" .=) <$> _lGivenName,
                  ("email" .=) <$> _lEmail,
                  ("familyName" .=) <$> _lFamilyName,
                  ("phoneNumber" .=) <$> _lPhoneNumber,
                  ("minMonthlyBudget" .=) <$> _lMinMonthlyBudget,
                  ("id" .=) <$> _lId, ("comments" .=) <$> _lComments,
                  ("websiteUrl" .=) <$> _lWebsiteURL,
                  ("type" .=) <$> _lType,
                  ("gpsMotivations" .=) <$> _lGpsMotivations])

-- | Response message for LogClientMessage.
--
-- /See:/ 'logMessageResponse' smart constructor.
newtype LogMessageResponse = LogMessageResponse
    { _lmrResponseMetadata :: Maybe ResponseMetadata
    } deriving (Eq,Show,Data,Typeable,Generic)

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
lmrResponseMetadata :: Lens' LogMessageResponse (Maybe ResponseMetadata)
lmrResponseMetadata
  = lens _lmrResponseMetadata
      (\ s a -> s{_lmrResponseMetadata = a})

instance FromJSON LogMessageResponse where
        parseJSON
          = withObject "LogMessageResponse"
              (\ o ->
                 LogMessageResponse <$> (o .:? "responseMetadata"))

instance ToJSON LogMessageResponse where
        toJSON LogMessageResponse{..}
          = object
              (catMaybes
                 [("responseMetadata" .=) <$> _lmrResponseMetadata])

-- | A company resource in the Google Partners API. Once certified, it
-- qualifies for being searched by advertisers.
--
-- /See:/ 'company' smart constructor.
data Company = Company
    { _cPublicProFile             :: !(Maybe PublicProFile)
    , _cOriginalMinMonthlyBudget  :: !(Maybe Money)
    , _cIndustries                :: !(Maybe [Text])
    , _cConvertedMinMonthlyBudget :: !(Maybe Money)
    , _cName                      :: !(Maybe Text)
    , _cLocalizedInfos            :: !(Maybe [LocalizedCompanyInfo])
    , _cCertificationStatuses     :: !(Maybe [CertificationStatus])
    , _cRanks                     :: !(Maybe [Rank])
    , _cId                        :: !(Maybe Text)
    , _cWebsiteURL                :: !(Maybe Text)
    , _cLocations                 :: !(Maybe [Location])
    , _cServices                  :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Company' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cPublicProFile'
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
-- * 'cWebsiteURL'
--
-- * 'cLocations'
--
-- * 'cServices'
company
    :: Company
company =
    Company
    { _cPublicProFile = Nothing
    , _cOriginalMinMonthlyBudget = Nothing
    , _cIndustries = Nothing
    , _cConvertedMinMonthlyBudget = Nothing
    , _cName = Nothing
    , _cLocalizedInfos = Nothing
    , _cCertificationStatuses = Nothing
    , _cRanks = Nothing
    , _cId = Nothing
    , _cWebsiteURL = Nothing
    , _cLocations = Nothing
    , _cServices = Nothing
    }

-- | Basic information from the company\'s public profile.
cPublicProFile :: Lens' Company (Maybe PublicProFile)
cPublicProFile
  = lens _cPublicProFile
      (\ s a -> s{_cPublicProFile = a})

-- | The unconverted minimum monthly budget that the company accepts for
-- partner business.
cOriginalMinMonthlyBudget :: Lens' Company (Maybe Money)
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
cConvertedMinMonthlyBudget :: Lens' Company (Maybe Money)
cConvertedMinMonthlyBudget
  = lens _cConvertedMinMonthlyBudget
      (\ s a -> s{_cConvertedMinMonthlyBudget = a})

-- | The name of the company.
cName :: Lens' Company (Maybe Text)
cName = lens _cName (\ s a -> s{_cName = a})

-- | The list of localized info for the company.
cLocalizedInfos :: Lens' Company [LocalizedCompanyInfo]
cLocalizedInfos
  = lens _cLocalizedInfos
      (\ s a -> s{_cLocalizedInfos = a})
      . _Default
      . _Coerce

-- | The list of Google Partners certification statuses for the company.
cCertificationStatuses :: Lens' Company [CertificationStatus]
cCertificationStatuses
  = lens _cCertificationStatuses
      (\ s a -> s{_cCertificationStatuses = a})
      . _Default
      . _Coerce

-- | Information related to the ranking of the company within the list of
-- companies.
cRanks :: Lens' Company [Rank]
cRanks
  = lens _cRanks (\ s a -> s{_cRanks = a}) . _Default .
      _Coerce

-- | The ID of the company.
cId :: Lens' Company (Maybe Text)
cId = lens _cId (\ s a -> s{_cId = a})

-- | URL of the company\'s website.
cWebsiteURL :: Lens' Company (Maybe Text)
cWebsiteURL
  = lens _cWebsiteURL (\ s a -> s{_cWebsiteURL = a})

-- | The list of company locations.
cLocations :: Lens' Company [Location]
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

instance FromJSON Company where
        parseJSON
          = withObject "Company"
              (\ o ->
                 Company <$>
                   (o .:? "publicProfile") <*>
                     (o .:? "originalMinMonthlyBudget")
                     <*> (o .:? "industries" .!= mempty)
                     <*> (o .:? "convertedMinMonthlyBudget")
                     <*> (o .:? "name")
                     <*> (o .:? "localizedInfos" .!= mempty)
                     <*> (o .:? "certificationStatuses" .!= mempty)
                     <*> (o .:? "ranks" .!= mempty)
                     <*> (o .:? "id")
                     <*> (o .:? "websiteUrl")
                     <*> (o .:? "locations" .!= mempty)
                     <*> (o .:? "services" .!= mempty))

instance ToJSON Company where
        toJSON Company{..}
          = object
              (catMaybes
                 [("publicProfile" .=) <$> _cPublicProFile,
                  ("originalMinMonthlyBudget" .=) <$>
                    _cOriginalMinMonthlyBudget,
                  ("industries" .=) <$> _cIndustries,
                  ("convertedMinMonthlyBudget" .=) <$>
                    _cConvertedMinMonthlyBudget,
                  ("name" .=) <$> _cName,
                  ("localizedInfos" .=) <$> _cLocalizedInfos,
                  ("certificationStatuses" .=) <$>
                    _cCertificationStatuses,
                  ("ranks" .=) <$> _cRanks, ("id" .=) <$> _cId,
                  ("websiteUrl" .=) <$> _cWebsiteURL,
                  ("locations" .=) <$> _cLocations,
                  ("services" .=) <$> _cServices])

-- | Response message for LogUserEvent.
--
-- /See:/ 'logUserEventResponse' smart constructor.
newtype LogUserEventResponse = LogUserEventResponse
    { _luerResponseMetadata :: Maybe ResponseMetadata
    } deriving (Eq,Show,Data,Typeable,Generic)

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
luerResponseMetadata :: Lens' LogUserEventResponse (Maybe ResponseMetadata)
luerResponseMetadata
  = lens _luerResponseMetadata
      (\ s a -> s{_luerResponseMetadata = a})

instance FromJSON LogUserEventResponse where
        parseJSON
          = withObject "LogUserEventResponse"
              (\ o ->
                 LogUserEventResponse <$> (o .:? "responseMetadata"))

instance ToJSON LogUserEventResponse where
        toJSON LogUserEventResponse{..}
          = object
              (catMaybes
                 [("responseMetadata" .=) <$> _luerResponseMetadata])

-- | Request message for LogUserEvent.
--
-- /See:/ 'logUserEventRequest' smart constructor.
data LogUserEventRequest = LogUserEventRequest
    { _luerEventCategory   :: !(Maybe Text)
    , _luerRequestMetadata :: !(Maybe RequestMetadata)
    , _luerURL             :: !(Maybe Text)
    , _luerEventScope      :: !(Maybe Text)
    , _luerLead            :: !(Maybe Lead)
    , _luerEventDatas      :: !(Maybe [EventData])
    , _luerEventAction     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LogUserEventRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'luerEventCategory'
--
-- * 'luerRequestMetadata'
--
-- * 'luerURL'
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
    , _luerURL = Nothing
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
luerRequestMetadata :: Lens' LogUserEventRequest (Maybe RequestMetadata)
luerRequestMetadata
  = lens _luerRequestMetadata
      (\ s a -> s{_luerRequestMetadata = a})

-- | The URL where the event occurred.
luerURL :: Lens' LogUserEventRequest (Maybe Text)
luerURL = lens _luerURL (\ s a -> s{_luerURL = a})

-- | The scope of the event.
luerEventScope :: Lens' LogUserEventRequest (Maybe Text)
luerEventScope
  = lens _luerEventScope
      (\ s a -> s{_luerEventScope = a})

-- | Advertiser lead information.
luerLead :: Lens' LogUserEventRequest (Maybe Lead)
luerLead = lens _luerLead (\ s a -> s{_luerLead = a})

-- | List of event data for the event.
luerEventDatas :: Lens' LogUserEventRequest [EventData]
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

instance FromJSON LogUserEventRequest where
        parseJSON
          = withObject "LogUserEventRequest"
              (\ o ->
                 LogUserEventRequest <$>
                   (o .:? "eventCategory") <*> (o .:? "requestMetadata")
                     <*> (o .:? "url")
                     <*> (o .:? "eventScope")
                     <*> (o .:? "lead")
                     <*> (o .:? "eventDatas" .!= mempty)
                     <*> (o .:? "eventAction"))

instance ToJSON LogUserEventRequest where
        toJSON LogUserEventRequest{..}
          = object
              (catMaybes
                 [("eventCategory" .=) <$> _luerEventCategory,
                  ("requestMetadata" .=) <$> _luerRequestMetadata,
                  ("url" .=) <$> _luerURL,
                  ("eventScope" .=) <$> _luerEventScope,
                  ("lead" .=) <$> _luerLead,
                  ("eventDatas" .=) <$> _luerEventDatas,
                  ("eventAction" .=) <$> _luerEventAction])

-- | Information related to ranking of results.
--
-- /See:/ 'rank' smart constructor.
data Rank = Rank
    { _rValue :: !(Maybe Double)
    , _rType  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON Rank where
        parseJSON
          = withObject "Rank"
              (\ o -> Rank <$> (o .:? "value") <*> (o .:? "type"))

instance ToJSON Rank where
        toJSON Rank{..}
          = object
              (catMaybes
                 [("value" .=) <$> _rValue, ("type" .=) <$> _rType])

-- | Request message for CreateLead.
--
-- /See:/ 'createLeadRequest' smart constructor.
data CreateLeadRequest = CreateLeadRequest
    { _cRequestMetadata    :: !(Maybe RequestMetadata)
    , _cRecaptchaChallenge :: !(Maybe RecaptchaChallenge)
    , _cLead               :: !(Maybe Lead)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreateLeadRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cRequestMetadata'
--
-- * 'cRecaptchaChallenge'
--
-- * 'cLead'
createLeadRequest
    :: CreateLeadRequest
createLeadRequest =
    CreateLeadRequest
    { _cRequestMetadata = Nothing
    , _cRecaptchaChallenge = Nothing
    , _cLead = Nothing
    }

-- | Current request metadata.
cRequestMetadata :: Lens' CreateLeadRequest (Maybe RequestMetadata)
cRequestMetadata
  = lens _cRequestMetadata
      (\ s a -> s{_cRequestMetadata = a})

-- | reCaptcha challenge info.
cRecaptchaChallenge :: Lens' CreateLeadRequest (Maybe RecaptchaChallenge)
cRecaptchaChallenge
  = lens _cRecaptchaChallenge
      (\ s a -> s{_cRecaptchaChallenge = a})

-- | The lead resource. The \`LeadType\` must not be
-- \`LEAD_TYPE_UNSPECIFIED\` and either \`email\` or \`phone_number\` must
-- be provided.
cLead :: Lens' CreateLeadRequest (Maybe Lead)
cLead = lens _cLead (\ s a -> s{_cLead = a})

instance FromJSON CreateLeadRequest where
        parseJSON
          = withObject "CreateLeadRequest"
              (\ o ->
                 CreateLeadRequest <$>
                   (o .:? "requestMetadata") <*>
                     (o .:? "recaptchaChallenge")
                     <*> (o .:? "lead"))

instance ToJSON CreateLeadRequest where
        toJSON CreateLeadRequest{..}
          = object
              (catMaybes
                 [("requestMetadata" .=) <$> _cRequestMetadata,
                  ("recaptchaChallenge" .=) <$> _cRecaptchaChallenge,
                  ("lead" .=) <$> _cLead])
