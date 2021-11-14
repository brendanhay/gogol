{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Partners.Types.Product
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Partners.Types.Product where

import Network.Google.Partners.Types.Sum
import Network.Google.Prelude

-- | An object representing a latitude\/longitude pair. This is expressed as
-- a pair of doubles representing degrees latitude and degrees longitude.
-- Unless specified otherwise, this must conform to the
-- <http://www.unoosa.org/pdf/icg/2012/template/WGS_84.pdf WGS84 standard>.
-- Values must be within normalized ranges.
--
-- /See:/ 'latLng' smart constructor.
data LatLng =
  LatLng'
    { _llLatitude :: !(Maybe (Textual Double))
    , _llLongitude :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LatLng' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llLatitude'
--
-- * 'llLongitude'
latLng
    :: LatLng
latLng = LatLng' {_llLatitude = Nothing, _llLongitude = Nothing}


-- | The latitude in degrees. It must be in the range [-90.0, +90.0].
llLatitude :: Lens' LatLng (Maybe Double)
llLatitude
  = lens _llLatitude (\ s a -> s{_llLatitude = a}) .
      mapping _Coerce

-- | The longitude in degrees. It must be in the range [-180.0, +180.0].
llLongitude :: Lens' LatLng (Maybe Double)
llLongitude
  = lens _llLongitude (\ s a -> s{_llLongitude = a}) .
      mapping _Coerce

instance FromJSON LatLng where
        parseJSON
          = withObject "LatLng"
              (\ o ->
                 LatLng' <$>
                   (o .:? "latitude") <*> (o .:? "longitude"))

instance ToJSON LatLng where
        toJSON LatLng'{..}
          = object
              (catMaybes
                 [("latitude" .=) <$> _llLatitude,
                  ("longitude" .=) <$> _llLongitude])

-- | Response message for ListUserStates.
--
-- /See:/ 'listUserStatesResponse' smart constructor.
data ListUserStatesResponse =
  ListUserStatesResponse'
    { _lusrUserStates :: !(Maybe [Text])
    , _lusrResponseMetadata :: !(Maybe ResponseMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  ListUserStatesResponse'
    {_lusrUserStates = Nothing, _lusrResponseMetadata = Nothing}


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
                 ListUserStatesResponse' <$>
                   (o .:? "userStates" .!= mempty) <*>
                     (o .:? "responseMetadata"))

instance ToJSON ListUserStatesResponse where
        toJSON ListUserStatesResponse'{..}
          = object
              (catMaybes
                 [("userStates" .=) <$> _lusrUserStates,
                  ("responseMetadata" .=) <$> _lusrResponseMetadata])

-- | Key value data pair for an event.
--
-- /See:/ 'eventData' smart constructor.
data EventData =
  EventData'
    { _edValues :: !(Maybe [Text])
    , _edKey :: !(Maybe EventDataKey)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EventData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edValues'
--
-- * 'edKey'
eventData
    :: EventData
eventData = EventData' {_edValues = Nothing, _edKey = Nothing}


-- | Data values.
edValues :: Lens' EventData [Text]
edValues
  = lens _edValues (\ s a -> s{_edValues = a}) .
      _Default
      . _Coerce

-- | Data type.
edKey :: Lens' EventData (Maybe EventDataKey)
edKey = lens _edKey (\ s a -> s{_edKey = a})

instance FromJSON EventData where
        parseJSON
          = withObject "EventData"
              (\ o ->
                 EventData' <$>
                   (o .:? "values" .!= mempty) <*> (o .:? "key"))

instance ToJSON EventData where
        toJSON EventData'{..}
          = object
              (catMaybes
                 [("values" .=) <$> _edValues, ("key" .=) <$> _edKey])

-- | Historical information about a Google Partners Offer.
--
-- /See:/ 'historicalOffer' smart constructor.
data HistoricalOffer =
  HistoricalOffer'
    { _hoCreationTime :: !(Maybe DateTime')
    , _hoClientId :: !(Maybe (Textual Int64))
    , _hoStatus :: !(Maybe HistoricalOfferStatus)
    , _hoClientEmail :: !(Maybe Text)
    , _hoAdwordsURL :: !(Maybe Text)
    , _hoLastModifiedTime :: !(Maybe DateTime')
    , _hoSenderName :: !(Maybe Text)
    , _hoOfferCode :: !(Maybe Text)
    , _hoOfferCountryCode :: !(Maybe Text)
    , _hoOfferType :: !(Maybe HistoricalOfferOfferType)
    , _hoClientName :: !(Maybe Text)
    , _hoExpirationTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HistoricalOffer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hoCreationTime'
--
-- * 'hoClientId'
--
-- * 'hoStatus'
--
-- * 'hoClientEmail'
--
-- * 'hoAdwordsURL'
--
-- * 'hoLastModifiedTime'
--
-- * 'hoSenderName'
--
-- * 'hoOfferCode'
--
-- * 'hoOfferCountryCode'
--
-- * 'hoOfferType'
--
-- * 'hoClientName'
--
-- * 'hoExpirationTime'
historicalOffer
    :: HistoricalOffer
historicalOffer =
  HistoricalOffer'
    { _hoCreationTime = Nothing
    , _hoClientId = Nothing
    , _hoStatus = Nothing
    , _hoClientEmail = Nothing
    , _hoAdwordsURL = Nothing
    , _hoLastModifiedTime = Nothing
    , _hoSenderName = Nothing
    , _hoOfferCode = Nothing
    , _hoOfferCountryCode = Nothing
    , _hoOfferType = Nothing
    , _hoClientName = Nothing
    , _hoExpirationTime = Nothing
    }


-- | Time offer was first created.
hoCreationTime :: Lens' HistoricalOffer (Maybe UTCTime)
hoCreationTime
  = lens _hoCreationTime
      (\ s a -> s{_hoCreationTime = a})
      . mapping _DateTime

-- | ID of client.
hoClientId :: Lens' HistoricalOffer (Maybe Int64)
hoClientId
  = lens _hoClientId (\ s a -> s{_hoClientId = a}) .
      mapping _Coerce

-- | Status of the offer.
hoStatus :: Lens' HistoricalOffer (Maybe HistoricalOfferStatus)
hoStatus = lens _hoStatus (\ s a -> s{_hoStatus = a})

-- | Email address for client.
hoClientEmail :: Lens' HistoricalOffer (Maybe Text)
hoClientEmail
  = lens _hoClientEmail
      (\ s a -> s{_hoClientEmail = a})

-- | Client\'s AdWords page URL.
hoAdwordsURL :: Lens' HistoricalOffer (Maybe Text)
hoAdwordsURL
  = lens _hoAdwordsURL (\ s a -> s{_hoAdwordsURL = a})

-- | Time last action was taken.
hoLastModifiedTime :: Lens' HistoricalOffer (Maybe UTCTime)
hoLastModifiedTime
  = lens _hoLastModifiedTime
      (\ s a -> s{_hoLastModifiedTime = a})
      . mapping _DateTime

-- | Name (First + Last) of the partners user to whom the incentive is
-- allocated.
hoSenderName :: Lens' HistoricalOffer (Maybe Text)
hoSenderName
  = lens _hoSenderName (\ s a -> s{_hoSenderName = a})

-- | Offer code.
hoOfferCode :: Lens' HistoricalOffer (Maybe Text)
hoOfferCode
  = lens _hoOfferCode (\ s a -> s{_hoOfferCode = a})

-- | Country Code for the offer country.
hoOfferCountryCode :: Lens' HistoricalOffer (Maybe Text)
hoOfferCountryCode
  = lens _hoOfferCountryCode
      (\ s a -> s{_hoOfferCountryCode = a})

-- | Type of offer.
hoOfferType :: Lens' HistoricalOffer (Maybe HistoricalOfferOfferType)
hoOfferType
  = lens _hoOfferType (\ s a -> s{_hoOfferType = a})

-- | Name of the client.
hoClientName :: Lens' HistoricalOffer (Maybe Text)
hoClientName
  = lens _hoClientName (\ s a -> s{_hoClientName = a})

-- | Time this offer expires.
hoExpirationTime :: Lens' HistoricalOffer (Maybe UTCTime)
hoExpirationTime
  = lens _hoExpirationTime
      (\ s a -> s{_hoExpirationTime = a})
      . mapping _DateTime

instance FromJSON HistoricalOffer where
        parseJSON
          = withObject "HistoricalOffer"
              (\ o ->
                 HistoricalOffer' <$>
                   (o .:? "creationTime") <*> (o .:? "clientId") <*>
                     (o .:? "status")
                     <*> (o .:? "clientEmail")
                     <*> (o .:? "adwordsUrl")
                     <*> (o .:? "lastModifiedTime")
                     <*> (o .:? "senderName")
                     <*> (o .:? "offerCode")
                     <*> (o .:? "offerCountryCode")
                     <*> (o .:? "offerType")
                     <*> (o .:? "clientName")
                     <*> (o .:? "expirationTime"))

instance ToJSON HistoricalOffer where
        toJSON HistoricalOffer'{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _hoCreationTime,
                  ("clientId" .=) <$> _hoClientId,
                  ("status" .=) <$> _hoStatus,
                  ("clientEmail" .=) <$> _hoClientEmail,
                  ("adwordsUrl" .=) <$> _hoAdwordsURL,
                  ("lastModifiedTime" .=) <$> _hoLastModifiedTime,
                  ("senderName" .=) <$> _hoSenderName,
                  ("offerCode" .=) <$> _hoOfferCode,
                  ("offerCountryCode" .=) <$> _hoOfferCountryCode,
                  ("offerType" .=) <$> _hoOfferType,
                  ("clientName" .=) <$> _hoClientName,
                  ("expirationTime" .=) <$> _hoExpirationTime])

-- | Common data that is in each API request.
--
-- /See:/ 'requestMetadata' smart constructor.
data RequestMetadata =
  RequestMetadata'
    { _rmExperimentIds :: !(Maybe [Text])
    , _rmTrafficSource :: !(Maybe TrafficSource)
    , _rmLocale :: !(Maybe Text)
    , _rmUserOverrides :: !(Maybe UserOverrides)
    , _rmPartnersSessionId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  RequestMetadata'
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
                 RequestMetadata' <$>
                   (o .:? "experimentIds" .!= mempty) <*>
                     (o .:? "trafficSource")
                     <*> (o .:? "locale")
                     <*> (o .:? "userOverrides")
                     <*> (o .:? "partnersSessionId"))

instance ToJSON RequestMetadata where
        toJSON RequestMetadata'{..}
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
data CertificationStatus =
  CertificationStatus'
    { _csUserCount :: !(Maybe (Textual Int32))
    , _csIsCertified :: !(Maybe Bool)
    , _csType :: !(Maybe CertificationStatusType)
    , _csExamStatuses :: !(Maybe [CertificationExamStatus])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CertificationStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csUserCount'
--
-- * 'csIsCertified'
--
-- * 'csType'
--
-- * 'csExamStatuses'
certificationStatus
    :: CertificationStatus
certificationStatus =
  CertificationStatus'
    { _csUserCount = Nothing
    , _csIsCertified = Nothing
    , _csType = Nothing
    , _csExamStatuses = Nothing
    }


-- | Number of people who are certified,
csUserCount :: Lens' CertificationStatus (Maybe Int32)
csUserCount
  = lens _csUserCount (\ s a -> s{_csUserCount = a}) .
      mapping _Coerce

-- | Whether certification is passing.
csIsCertified :: Lens' CertificationStatus (Maybe Bool)
csIsCertified
  = lens _csIsCertified
      (\ s a -> s{_csIsCertified = a})

-- | The type of the certification.
csType :: Lens' CertificationStatus (Maybe CertificationStatusType)
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
                 CertificationStatus' <$>
                   (o .:? "userCount") <*> (o .:? "isCertified") <*>
                     (o .:? "type")
                     <*> (o .:? "examStatuses" .!= mempty))

instance ToJSON CertificationStatus where
        toJSON CertificationStatus'{..}
          = object
              (catMaybes
                 [("userCount" .=) <$> _csUserCount,
                  ("isCertified" .=) <$> _csIsCertified,
                  ("type" .=) <$> _csType,
                  ("examStatuses" .=) <$> _csExamStatuses])

-- | Debug information about this request.
--
-- /See:/ 'debugInfo' smart constructor.
data DebugInfo =
  DebugInfo'
    { _diServiceURL :: !(Maybe Text)
    , _diServerTraceInfo :: !(Maybe Text)
    , _diServerInfo :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  DebugInfo'
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
                 DebugInfo' <$>
                   (o .:? "serviceUrl") <*> (o .:? "serverTraceInfo")
                     <*> (o .:? "serverInfo"))

instance ToJSON DebugInfo where
        toJSON DebugInfo'{..}
          = object
              (catMaybes
                 [("serviceUrl" .=) <$> _diServiceURL,
                  ("serverTraceInfo" .=) <$> _diServerTraceInfo,
                  ("serverInfo" .=) <$> _diServerInfo])

-- | A set of opt-ins for a user.
--
-- /See:/ 'optIns' smart constructor.
data OptIns =
  OptIns'
    { _oiPhoneContact :: !(Maybe Bool)
    , _oiPhysicalMail :: !(Maybe Bool)
    , _oiPerformanceSuggestions :: !(Maybe Bool)
    , _oiSpecialOffers :: !(Maybe Bool)
    , _oiMarketComm :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OptIns' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oiPhoneContact'
--
-- * 'oiPhysicalMail'
--
-- * 'oiPerformanceSuggestions'
--
-- * 'oiSpecialOffers'
--
-- * 'oiMarketComm'
optIns
    :: OptIns
optIns =
  OptIns'
    { _oiPhoneContact = Nothing
    , _oiPhysicalMail = Nothing
    , _oiPerformanceSuggestions = Nothing
    , _oiSpecialOffers = Nothing
    , _oiMarketComm = Nothing
    }


-- | An opt-in to allow recieivng phone calls about their Partners account.
oiPhoneContact :: Lens' OptIns (Maybe Bool)
oiPhoneContact
  = lens _oiPhoneContact
      (\ s a -> s{_oiPhoneContact = a})

-- | An opt-in to receive special promotional gifts and material in the mail.
oiPhysicalMail :: Lens' OptIns (Maybe Bool)
oiPhysicalMail
  = lens _oiPhysicalMail
      (\ s a -> s{_oiPhysicalMail = a})

-- | An opt-in about receiving email with customized AdWords campaign
-- management tips.
oiPerformanceSuggestions :: Lens' OptIns (Maybe Bool)
oiPerformanceSuggestions
  = lens _oiPerformanceSuggestions
      (\ s a -> s{_oiPerformanceSuggestions = a})

-- | An opt-in about receiving email regarding new features and products.
oiSpecialOffers :: Lens' OptIns (Maybe Bool)
oiSpecialOffers
  = lens _oiSpecialOffers
      (\ s a -> s{_oiSpecialOffers = a})

-- | An opt-in about receiving email from Partners marketing teams. Includes
-- member-only events and special promotional offers for Google products.
oiMarketComm :: Lens' OptIns (Maybe Bool)
oiMarketComm
  = lens _oiMarketComm (\ s a -> s{_oiMarketComm = a})

instance FromJSON OptIns where
        parseJSON
          = withObject "OptIns"
              (\ o ->
                 OptIns' <$>
                   (o .:? "phoneContact") <*> (o .:? "physicalMail") <*>
                     (o .:? "performanceSuggestions")
                     <*> (o .:? "specialOffers")
                     <*> (o .:? "marketComm"))

instance ToJSON OptIns where
        toJSON OptIns'{..}
          = object
              (catMaybes
                 [("phoneContact" .=) <$> _oiPhoneContact,
                  ("physicalMail" .=) <$> _oiPhysicalMail,
                  ("performanceSuggestions" .=) <$>
                    _oiPerformanceSuggestions,
                  ("specialOffers" .=) <$> _oiSpecialOffers,
                  ("marketComm" .=) <$> _oiMarketComm])

-- | Details of the analytics events for a \`Company\` within a single day.
--
-- /See:/ 'analyticsDataPoint' smart constructor.
data AnalyticsDataPoint =
  AnalyticsDataPoint'
    { _adpEventCount :: !(Maybe (Textual Int32))
    , _adpEventLocations :: !(Maybe [LatLng])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AnalyticsDataPoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adpEventCount'
--
-- * 'adpEventLocations'
analyticsDataPoint
    :: AnalyticsDataPoint
analyticsDataPoint =
  AnalyticsDataPoint' {_adpEventCount = Nothing, _adpEventLocations = Nothing}


-- | Number of times the type of event occurred. Meaning depends on context
-- (e.g. profile views, contacts, etc.).
adpEventCount :: Lens' AnalyticsDataPoint (Maybe Int32)
adpEventCount
  = lens _adpEventCount
      (\ s a -> s{_adpEventCount = a})
      . mapping _Coerce

-- | Location information of where these events occurred.
adpEventLocations :: Lens' AnalyticsDataPoint [LatLng]
adpEventLocations
  = lens _adpEventLocations
      (\ s a -> s{_adpEventLocations = a})
      . _Default
      . _Coerce

instance FromJSON AnalyticsDataPoint where
        parseJSON
          = withObject "AnalyticsDataPoint"
              (\ o ->
                 AnalyticsDataPoint' <$>
                   (o .:? "eventCount") <*>
                     (o .:? "eventLocations" .!= mempty))

instance ToJSON AnalyticsDataPoint where
        toJSON AnalyticsDataPoint'{..}
          = object
              (catMaybes
                 [("eventCount" .=) <$> _adpEventCount,
                  ("eventLocations" .=) <$> _adpEventLocations])

-- | Response message for GetCompany.
--
-- /See:/ 'getCompanyResponse' smart constructor.
data GetCompanyResponse =
  GetCompanyResponse'
    { _gcrResponseMetadata :: !(Maybe ResponseMetadata)
    , _gcrCompany :: !(Maybe Company)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  GetCompanyResponse' {_gcrResponseMetadata = Nothing, _gcrCompany = Nothing}


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
                 GetCompanyResponse' <$>
                   (o .:? "responseMetadata") <*> (o .:? "company"))

instance ToJSON GetCompanyResponse where
        toJSON GetCompanyResponse'{..}
          = object
              (catMaybes
                 [("responseMetadata" .=) <$> _gcrResponseMetadata,
                  ("company" .=) <$> _gcrCompany])

-- | Basic information from a public profile.
--
-- /See:/ 'publicProFile' smart constructor.
data PublicProFile =
  PublicProFile'
    { _ppfURL :: !(Maybe Text)
    , _ppfDisplayImageURL :: !(Maybe Text)
    , _ppfProFileImage :: !(Maybe Text)
    , _ppfDisplayName :: !(Maybe Text)
    , _ppfId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PublicProFile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppfURL'
--
-- * 'ppfDisplayImageURL'
--
-- * 'ppfProFileImage'
--
-- * 'ppfDisplayName'
--
-- * 'ppfId'
publicProFile
    :: PublicProFile
publicProFile =
  PublicProFile'
    { _ppfURL = Nothing
    , _ppfDisplayImageURL = Nothing
    , _ppfProFileImage = Nothing
    , _ppfDisplayName = Nothing
    , _ppfId = Nothing
    }


-- | The URL of the public profile.
ppfURL :: Lens' PublicProFile (Maybe Text)
ppfURL = lens _ppfURL (\ s a -> s{_ppfURL = a})

-- | The URL to the main display image of the public profile. Being
-- deprecated.
ppfDisplayImageURL :: Lens' PublicProFile (Maybe Text)
ppfDisplayImageURL
  = lens _ppfDisplayImageURL
      (\ s a -> s{_ppfDisplayImageURL = a})

-- | The URL to the main profile image of the public profile.
ppfProFileImage :: Lens' PublicProFile (Maybe Text)
ppfProFileImage
  = lens _ppfProFileImage
      (\ s a -> s{_ppfProFileImage = a})

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
                 PublicProFile' <$>
                   (o .:? "url") <*> (o .:? "displayImageUrl") <*>
                     (o .:? "profileImage")
                     <*> (o .:? "displayName")
                     <*> (o .:? "id"))

instance ToJSON PublicProFile where
        toJSON PublicProFile'{..}
          = object
              (catMaybes
                 [("url" .=) <$> _ppfURL,
                  ("displayImageUrl" .=) <$> _ppfDisplayImageURL,
                  ("profileImage" .=) <$> _ppfProFileImage,
                  ("displayName" .=) <$> _ppfDisplayName,
                  ("id" .=) <$> _ppfId])

-- | A user\'s information on a specific exam.
--
-- /See:/ 'examStatus' smart constructor.
data ExamStatus =
  ExamStatus'
    { _esPassed :: !(Maybe Bool)
    , _esExpiration :: !(Maybe DateTime')
    , _esWarning :: !(Maybe Bool)
    , _esLastPassed :: !(Maybe DateTime')
    , _esTaken :: !(Maybe DateTime')
    , _esExamType :: !(Maybe ExamStatusExamType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExamStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'esPassed'
--
-- * 'esExpiration'
--
-- * 'esWarning'
--
-- * 'esLastPassed'
--
-- * 'esTaken'
--
-- * 'esExamType'
examStatus
    :: ExamStatus
examStatus =
  ExamStatus'
    { _esPassed = Nothing
    , _esExpiration = Nothing
    , _esWarning = Nothing
    , _esLastPassed = Nothing
    , _esTaken = Nothing
    , _esExamType = Nothing
    }


-- | Whether this exam has been passed and not expired.
esPassed :: Lens' ExamStatus (Maybe Bool)
esPassed = lens _esPassed (\ s a -> s{_esPassed = a})

-- | Date this exam is due to expire.
esExpiration :: Lens' ExamStatus (Maybe UTCTime)
esExpiration
  = lens _esExpiration (\ s a -> s{_esExpiration = a})
      . mapping _DateTime

-- | Whether this exam is in the state of warning.
esWarning :: Lens' ExamStatus (Maybe Bool)
esWarning
  = lens _esWarning (\ s a -> s{_esWarning = a})

-- | The date the user last passed this exam.
esLastPassed :: Lens' ExamStatus (Maybe UTCTime)
esLastPassed
  = lens _esLastPassed (\ s a -> s{_esLastPassed = a})
      . mapping _DateTime

-- | The date the user last taken this exam.
esTaken :: Lens' ExamStatus (Maybe UTCTime)
esTaken
  = lens _esTaken (\ s a -> s{_esTaken = a}) .
      mapping _DateTime

-- | The type of the exam.
esExamType :: Lens' ExamStatus (Maybe ExamStatusExamType)
esExamType
  = lens _esExamType (\ s a -> s{_esExamType = a})

instance FromJSON ExamStatus where
        parseJSON
          = withObject "ExamStatus"
              (\ o ->
                 ExamStatus' <$>
                   (o .:? "passed") <*> (o .:? "expiration") <*>
                     (o .:? "warning")
                     <*> (o .:? "lastPassed")
                     <*> (o .:? "taken")
                     <*> (o .:? "examType"))

instance ToJSON ExamStatus where
        toJSON ExamStatus'{..}
          = object
              (catMaybes
                 [("passed" .=) <$> _esPassed,
                  ("expiration" .=) <$> _esExpiration,
                  ("warning" .=) <$> _esWarning,
                  ("lastPassed" .=) <$> _esLastPassed,
                  ("taken" .=) <$> _esTaken,
                  ("examType" .=) <$> _esExamType])

-- | Status for a Google Partners certification exam.
--
-- /See:/ 'certificationExamStatus' smart constructor.
data CertificationExamStatus =
  CertificationExamStatus'
    { _cesNumberUsersPass :: !(Maybe (Textual Int32))
    , _cesType :: !(Maybe CertificationExamStatusType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  CertificationExamStatus' {_cesNumberUsersPass = Nothing, _cesType = Nothing}


-- | The number of people who have passed the certification exam.
cesNumberUsersPass :: Lens' CertificationExamStatus (Maybe Int32)
cesNumberUsersPass
  = lens _cesNumberUsersPass
      (\ s a -> s{_cesNumberUsersPass = a})
      . mapping _Coerce

-- | The type of certification exam.
cesType :: Lens' CertificationExamStatus (Maybe CertificationExamStatusType)
cesType = lens _cesType (\ s a -> s{_cesType = a})

instance FromJSON CertificationExamStatus where
        parseJSON
          = withObject "CertificationExamStatus"
              (\ o ->
                 CertificationExamStatus' <$>
                   (o .:? "numberUsersPass") <*> (o .:? "type"))

instance ToJSON CertificationExamStatus where
        toJSON CertificationExamStatus'{..}
          = object
              (catMaybes
                 [("numberUsersPass" .=) <$> _cesNumberUsersPass,
                  ("type" .=) <$> _cesType])

-- | A location with address and geographic coordinates. May optionally
-- contain a detailed (multi-field) version of the address.
--
-- /See:/ 'location' smart constructor.
data Location =
  Location'
    { _lLatLng :: !(Maybe LatLng)
    , _lLanguageCode :: !(Maybe Text)
    , _lSortingCode :: !(Maybe Text)
    , _lRegionCode :: !(Maybe Text)
    , _lAddressLine :: !(Maybe [Text])
    , _lDependentLocality :: !(Maybe Text)
    , _lPostalCode :: !(Maybe Text)
    , _lAddress :: !(Maybe Text)
    , _lLocality :: !(Maybe Text)
    , _lAdministrativeArea :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Location' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lLatLng'
--
-- * 'lLanguageCode'
--
-- * 'lSortingCode'
--
-- * 'lRegionCode'
--
-- * 'lAddressLine'
--
-- * 'lDependentLocality'
--
-- * 'lPostalCode'
--
-- * 'lAddress'
--
-- * 'lLocality'
--
-- * 'lAdministrativeArea'
location
    :: Location
location =
  Location'
    { _lLatLng = Nothing
    , _lLanguageCode = Nothing
    , _lSortingCode = Nothing
    , _lRegionCode = Nothing
    , _lAddressLine = Nothing
    , _lDependentLocality = Nothing
    , _lPostalCode = Nothing
    , _lAddress = Nothing
    , _lLocality = Nothing
    , _lAdministrativeArea = Nothing
    }


-- | The latitude and longitude of the location, in degrees.
lLatLng :: Lens' Location (Maybe LatLng)
lLatLng = lens _lLatLng (\ s a -> s{_lLatLng = a})

-- | Language code of the address. Should be in BCP 47 format.
lLanguageCode :: Lens' Location (Maybe Text)
lLanguageCode
  = lens _lLanguageCode
      (\ s a -> s{_lLanguageCode = a})

-- | Use of this code is very country-specific, but will refer to a secondary
-- classification code for sorting mail.
lSortingCode :: Lens' Location (Maybe Text)
lSortingCode
  = lens _lSortingCode (\ s a -> s{_lSortingCode = a})

-- | CLDR (Common Locale Data Repository) region code .
lRegionCode :: Lens' Location (Maybe Text)
lRegionCode
  = lens _lRegionCode (\ s a -> s{_lRegionCode = a})

-- | The following address lines represent the most specific part of any
-- address.
lAddressLine :: Lens' Location [Text]
lAddressLine
  = lens _lAddressLine (\ s a -> s{_lAddressLine = a})
      . _Default
      . _Coerce

-- | Dependent locality or sublocality. Used for UK dependent localities, or
-- neighborhoods or boroughs in other locations.
lDependentLocality :: Lens' Location (Maybe Text)
lDependentLocality
  = lens _lDependentLocality
      (\ s a -> s{_lDependentLocality = a})

-- | Values are frequently alphanumeric.
lPostalCode :: Lens' Location (Maybe Text)
lPostalCode
  = lens _lPostalCode (\ s a -> s{_lPostalCode = a})

-- | The single string version of the address.
lAddress :: Lens' Location (Maybe Text)
lAddress = lens _lAddress (\ s a -> s{_lAddress = a})

-- | Generally refers to the city\/town portion of an address.
lLocality :: Lens' Location (Maybe Text)
lLocality
  = lens _lLocality (\ s a -> s{_lLocality = a})

-- | Top-level administrative subdivision of this country.
lAdministrativeArea :: Lens' Location (Maybe Text)
lAdministrativeArea
  = lens _lAdministrativeArea
      (\ s a -> s{_lAdministrativeArea = a})

instance FromJSON Location where
        parseJSON
          = withObject "Location"
              (\ o ->
                 Location' <$>
                   (o .:? "latLng") <*> (o .:? "languageCode") <*>
                     (o .:? "sortingCode")
                     <*> (o .:? "regionCode")
                     <*> (o .:? "addressLine" .!= mempty)
                     <*> (o .:? "dependentLocality")
                     <*> (o .:? "postalCode")
                     <*> (o .:? "address")
                     <*> (o .:? "locality")
                     <*> (o .:? "administrativeArea"))

instance ToJSON Location where
        toJSON Location'{..}
          = object
              (catMaybes
                 [("latLng" .=) <$> _lLatLng,
                  ("languageCode" .=) <$> _lLanguageCode,
                  ("sortingCode" .=) <$> _lSortingCode,
                  ("regionCode" .=) <$> _lRegionCode,
                  ("addressLine" .=) <$> _lAddressLine,
                  ("dependentLocality" .=) <$> _lDependentLocality,
                  ("postalCode" .=) <$> _lPostalCode,
                  ("address" .=) <$> _lAddress,
                  ("locality" .=) <$> _lLocality,
                  ("administrativeArea" .=) <$> _lAdministrativeArea])

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'empty' smart constructor.
data Empty =
  Empty'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty'


instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty')

instance ToJSON Empty where
        toJSON = const emptyObject

-- | Source of traffic for the current request.
--
-- /See:/ 'trafficSource' smart constructor.
data TrafficSource =
  TrafficSource'
    { _tsTrafficSubId :: !(Maybe Text)
    , _tsTrafficSourceId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  TrafficSource' {_tsTrafficSubId = Nothing, _tsTrafficSourceId = Nothing}


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
                 TrafficSource' <$>
                   (o .:? "trafficSubId") <*> (o .:? "trafficSourceId"))

instance ToJSON TrafficSource where
        toJSON TrafficSource'{..}
          = object
              (catMaybes
                 [("trafficSubId" .=) <$> _tsTrafficSubId,
                  ("trafficSourceId" .=) <$> _tsTrafficSourceId])

-- | Response for ListOfferHistory.
--
-- /See:/ 'listOffersHistoryResponse' smart constructor.
data ListOffersHistoryResponse =
  ListOffersHistoryResponse'
    { _lohrNextPageToken :: !(Maybe Text)
    , _lohrShowingEntireCompany :: !(Maybe Bool)
    , _lohrResponseMetadata :: !(Maybe ResponseMetadata)
    , _lohrCanShowEntireCompany :: !(Maybe Bool)
    , _lohrTotalResults :: !(Maybe (Textual Int32))
    , _lohrOffers :: !(Maybe [HistoricalOffer])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListOffersHistoryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lohrNextPageToken'
--
-- * 'lohrShowingEntireCompany'
--
-- * 'lohrResponseMetadata'
--
-- * 'lohrCanShowEntireCompany'
--
-- * 'lohrTotalResults'
--
-- * 'lohrOffers'
listOffersHistoryResponse
    :: ListOffersHistoryResponse
listOffersHistoryResponse =
  ListOffersHistoryResponse'
    { _lohrNextPageToken = Nothing
    , _lohrShowingEntireCompany = Nothing
    , _lohrResponseMetadata = Nothing
    , _lohrCanShowEntireCompany = Nothing
    , _lohrTotalResults = Nothing
    , _lohrOffers = Nothing
    }


-- | Supply this token in a ListOffersHistoryRequest to retrieve the next
-- page.
lohrNextPageToken :: Lens' ListOffersHistoryResponse (Maybe Text)
lohrNextPageToken
  = lens _lohrNextPageToken
      (\ s a -> s{_lohrNextPageToken = a})

-- | True if this response is showing entire company history.
lohrShowingEntireCompany :: Lens' ListOffersHistoryResponse (Maybe Bool)
lohrShowingEntireCompany
  = lens _lohrShowingEntireCompany
      (\ s a -> s{_lohrShowingEntireCompany = a})

-- | Current response metadata.
lohrResponseMetadata :: Lens' ListOffersHistoryResponse (Maybe ResponseMetadata)
lohrResponseMetadata
  = lens _lohrResponseMetadata
      (\ s a -> s{_lohrResponseMetadata = a})

-- | True if the user has the option to show entire company history.
lohrCanShowEntireCompany :: Lens' ListOffersHistoryResponse (Maybe Bool)
lohrCanShowEntireCompany
  = lens _lohrCanShowEntireCompany
      (\ s a -> s{_lohrCanShowEntireCompany = a})

-- | Number of results across all pages.
lohrTotalResults :: Lens' ListOffersHistoryResponse (Maybe Int32)
lohrTotalResults
  = lens _lohrTotalResults
      (\ s a -> s{_lohrTotalResults = a})
      . mapping _Coerce

-- | Historical offers meeting request.
lohrOffers :: Lens' ListOffersHistoryResponse [HistoricalOffer]
lohrOffers
  = lens _lohrOffers (\ s a -> s{_lohrOffers = a}) .
      _Default
      . _Coerce

instance FromJSON ListOffersHistoryResponse where
        parseJSON
          = withObject "ListOffersHistoryResponse"
              (\ o ->
                 ListOffersHistoryResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "showingEntireCompany")
                     <*> (o .:? "responseMetadata")
                     <*> (o .:? "canShowEntireCompany")
                     <*> (o .:? "totalResults")
                     <*> (o .:? "offers" .!= mempty))

instance ToJSON ListOffersHistoryResponse where
        toJSON ListOffersHistoryResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lohrNextPageToken,
                  ("showingEntireCompany" .=) <$>
                    _lohrShowingEntireCompany,
                  ("responseMetadata" .=) <$> _lohrResponseMetadata,
                  ("canShowEntireCompany" .=) <$>
                    _lohrCanShowEntireCompany,
                  ("totalResults" .=) <$> _lohrTotalResults,
                  ("offers" .=) <$> _lohrOffers])

-- | Represents an amount of money with its currency type.
--
-- /See:/ 'money' smart constructor.
data Money =
  Money'
    { _mCurrencyCode :: !(Maybe Text)
    , _mNanos :: !(Maybe (Textual Int32))
    , _mUnits :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
money = Money' {_mCurrencyCode = Nothing, _mNanos = Nothing, _mUnits = Nothing}


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
mNanos
  = lens _mNanos (\ s a -> s{_mNanos = a}) .
      mapping _Coerce

-- | The whole units of the amount. For example if \`currencyCode\` is
-- \`\"USD\"\`, then 1 unit is one US dollar.
mUnits :: Lens' Money (Maybe Int64)
mUnits
  = lens _mUnits (\ s a -> s{_mUnits = a}) .
      mapping _Coerce

instance FromJSON Money where
        parseJSON
          = withObject "Money"
              (\ o ->
                 Money' <$>
                   (o .:? "currencyCode") <*> (o .:? "nanos") <*>
                     (o .:? "units"))

instance ToJSON Money where
        toJSON Money'{..}
          = object
              (catMaybes
                 [("currencyCode" .=) <$> _mCurrencyCode,
                  ("nanos" .=) <$> _mNanos, ("units" .=) <$> _mUnits])

-- | Response message for ListCompanies.
--
-- /See:/ 'listCompaniesResponse' smart constructor.
data ListCompaniesResponse =
  ListCompaniesResponse'
    { _lcrNextPageToken :: !(Maybe Text)
    , _lcrResponseMetadata :: !(Maybe ResponseMetadata)
    , _lcrCompanies :: !(Maybe [Company])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  ListCompaniesResponse'
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
                 ListCompaniesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "responseMetadata")
                     <*> (o .:? "companies" .!= mempty))

instance ToJSON ListCompaniesResponse where
        toJSON ListCompaniesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lcrNextPageToken,
                  ("responseMetadata" .=) <$> _lcrResponseMetadata,
                  ("companies" .=) <$> _lcrCompanies])

-- | A user\'s information on a specific certification.
--
-- /See:/ 'certification' smart constructor.
data Certification =
  Certification'
    { _cLastAchieved :: !(Maybe DateTime')
    , _cExpiration :: !(Maybe DateTime')
    , _cWarning :: !(Maybe Bool)
    , _cCertificationType :: !(Maybe CertificationCertificationType)
    , _cAchieved :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Certification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cLastAchieved'
--
-- * 'cExpiration'
--
-- * 'cWarning'
--
-- * 'cCertificationType'
--
-- * 'cAchieved'
certification
    :: Certification
certification =
  Certification'
    { _cLastAchieved = Nothing
    , _cExpiration = Nothing
    , _cWarning = Nothing
    , _cCertificationType = Nothing
    , _cAchieved = Nothing
    }


-- | The date the user last achieved certification.
cLastAchieved :: Lens' Certification (Maybe UTCTime)
cLastAchieved
  = lens _cLastAchieved
      (\ s a -> s{_cLastAchieved = a})
      . mapping _DateTime

-- | Date this certification is due to expire.
cExpiration :: Lens' Certification (Maybe UTCTime)
cExpiration
  = lens _cExpiration (\ s a -> s{_cExpiration = a}) .
      mapping _DateTime

-- | Whether this certification is in the state of warning.
cWarning :: Lens' Certification (Maybe Bool)
cWarning = lens _cWarning (\ s a -> s{_cWarning = a})

-- | The type of certification, the area of expertise.
cCertificationType :: Lens' Certification (Maybe CertificationCertificationType)
cCertificationType
  = lens _cCertificationType
      (\ s a -> s{_cCertificationType = a})

-- | Whether this certification has been achieved.
cAchieved :: Lens' Certification (Maybe Bool)
cAchieved
  = lens _cAchieved (\ s a -> s{_cAchieved = a})

instance FromJSON Certification where
        parseJSON
          = withObject "Certification"
              (\ o ->
                 Certification' <$>
                   (o .:? "lastAchieved") <*> (o .:? "expiration") <*>
                     (o .:? "warning")
                     <*> (o .:? "certificationType")
                     <*> (o .:? "achieved"))

instance ToJSON Certification where
        toJSON Certification'{..}
          = object
              (catMaybes
                 [("lastAchieved" .=) <$> _cLastAchieved,
                  ("expiration" .=) <$> _cExpiration,
                  ("warning" .=) <$> _cWarning,
                  ("certificationType" .=) <$> _cCertificationType,
                  ("achieved" .=) <$> _cAchieved])

-- | <https://www.google.com/recaptcha/ reCaptcha> challenge info.
--
-- /See:/ 'recaptchaChallenge' smart constructor.
data RecaptchaChallenge =
  RecaptchaChallenge'
    { _rcResponse :: !(Maybe Text)
    , _rcId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  RecaptchaChallenge' {_rcResponse = Nothing, _rcId = Nothing}


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
                 RecaptchaChallenge' <$>
                   (o .:? "response") <*> (o .:? "id"))

instance ToJSON RecaptchaChallenge where
        toJSON RecaptchaChallenge'{..}
          = object
              (catMaybes
                 [("response" .=) <$> _rcResponse,
                  ("id" .=) <$> _rcId])

-- | Response message for CreateLead.
--
-- /See:/ 'createLeadResponse' smart constructor.
data CreateLeadResponse =
  CreateLeadResponse'
    { _clrRecaptchaStatus :: !(Maybe CreateLeadResponseRecaptchaStatus)
    , _clrResponseMetadata :: !(Maybe ResponseMetadata)
    , _clrLead :: !(Maybe Lead)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  CreateLeadResponse'
    { _clrRecaptchaStatus = Nothing
    , _clrResponseMetadata = Nothing
    , _clrLead = Nothing
    }


-- | The outcome of <https://www.google.com/recaptcha/ reCaptcha> validation.
clrRecaptchaStatus :: Lens' CreateLeadResponse (Maybe CreateLeadResponseRecaptchaStatus)
clrRecaptchaStatus
  = lens _clrRecaptchaStatus
      (\ s a -> s{_clrRecaptchaStatus = a})

-- | Current response metadata.
clrResponseMetadata :: Lens' CreateLeadResponse (Maybe ResponseMetadata)
clrResponseMetadata
  = lens _clrResponseMetadata
      (\ s a -> s{_clrResponseMetadata = a})

-- | Lead that was created depending on the outcome of
-- <https://www.google.com/recaptcha/ reCaptcha> validation.
clrLead :: Lens' CreateLeadResponse (Maybe Lead)
clrLead = lens _clrLead (\ s a -> s{_clrLead = a})

instance FromJSON CreateLeadResponse where
        parseJSON
          = withObject "CreateLeadResponse"
              (\ o ->
                 CreateLeadResponse' <$>
                   (o .:? "recaptchaStatus") <*>
                     (o .:? "responseMetadata")
                     <*> (o .:? "lead"))

instance ToJSON CreateLeadResponse where
        toJSON CreateLeadResponse'{..}
          = object
              (catMaybes
                 [("recaptchaStatus" .=) <$> _clrRecaptchaStatus,
                  ("responseMetadata" .=) <$> _clrResponseMetadata,
                  ("lead" .=) <$> _clrLead])

-- | Values to use instead of the user\'s respective defaults. These are only
-- honored by whitelisted products.
--
-- /See:/ 'userOverrides' smart constructor.
data UserOverrides =
  UserOverrides'
    { _uoIPAddress :: !(Maybe Text)
    , _uoUserId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserOverrides' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uoIPAddress'
--
-- * 'uoUserId'
userOverrides
    :: UserOverrides
userOverrides = UserOverrides' {_uoIPAddress = Nothing, _uoUserId = Nothing}


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
                 UserOverrides' <$>
                   (o .:? "ipAddress") <*> (o .:? "userId"))

instance ToJSON UserOverrides where
        toJSON UserOverrides'{..}
          = object
              (catMaybes
                 [("ipAddress" .=) <$> _uoIPAddress,
                  ("userId" .=) <$> _uoUserId])

-- | Analytics data for a \`Company\` within a single day.
--
-- /See:/ 'analytics' smart constructor.
data Analytics =
  Analytics'
    { _aProFileViews :: !(Maybe AnalyticsDataPoint)
    , _aEventDate :: !(Maybe Date)
    , _aSearchViews :: !(Maybe AnalyticsDataPoint)
    , _aContacts :: !(Maybe AnalyticsDataPoint)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Analytics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aProFileViews'
--
-- * 'aEventDate'
--
-- * 'aSearchViews'
--
-- * 'aContacts'
analytics
    :: Analytics
analytics =
  Analytics'
    { _aProFileViews = Nothing
    , _aEventDate = Nothing
    , _aSearchViews = Nothing
    , _aContacts = Nothing
    }


-- | Instances of users viewing the \`Company\` profile on the specified
-- date.
aProFileViews :: Lens' Analytics (Maybe AnalyticsDataPoint)
aProFileViews
  = lens _aProFileViews
      (\ s a -> s{_aProFileViews = a})

-- | Date on which these events occurred.
aEventDate :: Lens' Analytics (Maybe Date)
aEventDate
  = lens _aEventDate (\ s a -> s{_aEventDate = a})

-- | Instances of users seeing the \`Company\` in Google Partners Search
-- results on the specified date.
aSearchViews :: Lens' Analytics (Maybe AnalyticsDataPoint)
aSearchViews
  = lens _aSearchViews (\ s a -> s{_aSearchViews = a})

-- | Instances of users contacting the \`Company\` on the specified date.
aContacts :: Lens' Analytics (Maybe AnalyticsDataPoint)
aContacts
  = lens _aContacts (\ s a -> s{_aContacts = a})

instance FromJSON Analytics where
        parseJSON
          = withObject "Analytics"
              (\ o ->
                 Analytics' <$>
                   (o .:? "profileViews") <*> (o .:? "eventDate") <*>
                     (o .:? "searchViews")
                     <*> (o .:? "contacts"))

instance ToJSON Analytics where
        toJSON Analytics'{..}
          = object
              (catMaybes
                 [("profileViews" .=) <$> _aProFileViews,
                  ("eventDate" .=) <$> _aEventDate,
                  ("searchViews" .=) <$> _aSearchViews,
                  ("contacts" .=) <$> _aContacts])

-- | Common data that is in each API response.
--
-- /See:/ 'responseMetadata' smart constructor.
newtype ResponseMetadata =
  ResponseMetadata'
    { _rmDebugInfo :: Maybe DebugInfo
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResponseMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmDebugInfo'
responseMetadata
    :: ResponseMetadata
responseMetadata = ResponseMetadata' {_rmDebugInfo = Nothing}


-- | Debug information about this request.
rmDebugInfo :: Lens' ResponseMetadata (Maybe DebugInfo)
rmDebugInfo
  = lens _rmDebugInfo (\ s a -> s{_rmDebugInfo = a})

instance FromJSON ResponseMetadata where
        parseJSON
          = withObject "ResponseMetadata"
              (\ o -> ResponseMetadata' <$> (o .:? "debugInfo"))

instance ToJSON ResponseMetadata where
        toJSON ResponseMetadata'{..}
          = object
              (catMaybes [("debugInfo" .=) <$> _rmDebugInfo])

-- | Request message for LogClientMessage.
--
-- /See:/ 'logMessageRequest' smart constructor.
data LogMessageRequest =
  LogMessageRequest'
    { _lmrRequestMetadata :: !(Maybe RequestMetadata)
    , _lmrClientInfo :: !(Maybe LogMessageRequestClientInfo)
    , _lmrDetails :: !(Maybe Text)
    , _lmrLevel :: !(Maybe LogMessageRequestLevel)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  LogMessageRequest'
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
lmrLevel :: Lens' LogMessageRequest (Maybe LogMessageRequestLevel)
lmrLevel = lens _lmrLevel (\ s a -> s{_lmrLevel = a})

instance FromJSON LogMessageRequest where
        parseJSON
          = withObject "LogMessageRequest"
              (\ o ->
                 LogMessageRequest' <$>
                   (o .:? "requestMetadata") <*> (o .:? "clientInfo")
                     <*> (o .:? "details")
                     <*> (o .:? "level"))

instance ToJSON LogMessageRequest where
        toJSON LogMessageRequest'{..}
          = object
              (catMaybes
                 [("requestMetadata" .=) <$> _lmrRequestMetadata,
                  ("clientInfo" .=) <$> _lmrClientInfo,
                  ("details" .=) <$> _lmrDetails,
                  ("level" .=) <$> _lmrLevel])

-- | The localized company information.
--
-- /See:/ 'localizedCompanyInfo' smart constructor.
data LocalizedCompanyInfo =
  LocalizedCompanyInfo'
    { _lciLanguageCode :: !(Maybe Text)
    , _lciOverview :: !(Maybe Text)
    , _lciCountryCodes :: !(Maybe [Text])
    , _lciDisplayName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  LocalizedCompanyInfo'
    { _lciLanguageCode = Nothing
    , _lciOverview = Nothing
    , _lciCountryCodes = Nothing
    , _lciDisplayName = Nothing
    }


-- | Language code of the localized company info, as defined by
-- <https://tools.ietf.org/html/bcp47 BCP 47> (IETF BCP 47, \"Tags for
-- Identifying Languages\").
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
                 LocalizedCompanyInfo' <$>
                   (o .:? "languageCode") <*> (o .:? "overview") <*>
                     (o .:? "countryCodes" .!= mempty)
                     <*> (o .:? "displayName"))

instance ToJSON LocalizedCompanyInfo where
        toJSON LocalizedCompanyInfo'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _lciLanguageCode,
                  ("overview" .=) <$> _lciOverview,
                  ("countryCodes" .=) <$> _lciCountryCodes,
                  ("displayName" .=) <$> _lciDisplayName])

-- | Available Offers to be distributed.
--
-- /See:/ 'availableOffer' smart constructor.
data AvailableOffer =
  AvailableOffer'
    { _aoShowSpecialOfferCopy :: !(Maybe Bool)
    , _aoQualifiedCustomer :: !(Maybe [OfferCustomer])
    , _aoTerms :: !(Maybe Text)
    , _aoQualifiedCustomersComplete :: !(Maybe Bool)
    , _aoMaxAccountAge :: !(Maybe (Textual Int32))
    , _aoName :: !(Maybe Text)
    , _aoCountryOfferInfos :: !(Maybe [CountryOfferInfo])
    , _aoId :: !(Maybe (Textual Int64))
    , _aoOfferType :: !(Maybe AvailableOfferOfferType)
    , _aoOfferLevel :: !(Maybe AvailableOfferOfferLevel)
    , _aoDescription :: !(Maybe Text)
    , _aoAvailable :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AvailableOffer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aoShowSpecialOfferCopy'
--
-- * 'aoQualifiedCustomer'
--
-- * 'aoTerms'
--
-- * 'aoQualifiedCustomersComplete'
--
-- * 'aoMaxAccountAge'
--
-- * 'aoName'
--
-- * 'aoCountryOfferInfos'
--
-- * 'aoId'
--
-- * 'aoOfferType'
--
-- * 'aoOfferLevel'
--
-- * 'aoDescription'
--
-- * 'aoAvailable'
availableOffer
    :: AvailableOffer
availableOffer =
  AvailableOffer'
    { _aoShowSpecialOfferCopy = Nothing
    , _aoQualifiedCustomer = Nothing
    , _aoTerms = Nothing
    , _aoQualifiedCustomersComplete = Nothing
    , _aoMaxAccountAge = Nothing
    , _aoName = Nothing
    , _aoCountryOfferInfos = Nothing
    , _aoId = Nothing
    , _aoOfferType = Nothing
    , _aoOfferLevel = Nothing
    , _aoDescription = Nothing
    , _aoAvailable = Nothing
    }


-- | Should special text be shown on the offers page.
aoShowSpecialOfferCopy :: Lens' AvailableOffer (Maybe Bool)
aoShowSpecialOfferCopy
  = lens _aoShowSpecialOfferCopy
      (\ s a -> s{_aoShowSpecialOfferCopy = a})

-- | Customers who qualify for this offer.
aoQualifiedCustomer :: Lens' AvailableOffer [OfferCustomer]
aoQualifiedCustomer
  = lens _aoQualifiedCustomer
      (\ s a -> s{_aoQualifiedCustomer = a})
      . _Default
      . _Coerce

-- | Terms of the offer.
aoTerms :: Lens' AvailableOffer (Maybe Text)
aoTerms = lens _aoTerms (\ s a -> s{_aoTerms = a})

-- | Whether or not the list of qualified customers is definitely complete.
aoQualifiedCustomersComplete :: Lens' AvailableOffer (Maybe Bool)
aoQualifiedCustomersComplete
  = lens _aoQualifiedCustomersComplete
      (\ s a -> s{_aoQualifiedCustomersComplete = a})

-- | The maximum age of an account [in days] to be eligible.
aoMaxAccountAge :: Lens' AvailableOffer (Maybe Int32)
aoMaxAccountAge
  = lens _aoMaxAccountAge
      (\ s a -> s{_aoMaxAccountAge = a})
      . mapping _Coerce

-- | Name of the offer.
aoName :: Lens' AvailableOffer (Maybe Text)
aoName = lens _aoName (\ s a -> s{_aoName = a})

-- | Offer info by country.
aoCountryOfferInfos :: Lens' AvailableOffer [CountryOfferInfo]
aoCountryOfferInfos
  = lens _aoCountryOfferInfos
      (\ s a -> s{_aoCountryOfferInfos = a})
      . _Default
      . _Coerce

-- | ID of this offer.
aoId :: Lens' AvailableOffer (Maybe Int64)
aoId
  = lens _aoId (\ s a -> s{_aoId = a}) .
      mapping _Coerce

-- | Type of offer.
aoOfferType :: Lens' AvailableOffer (Maybe AvailableOfferOfferType)
aoOfferType
  = lens _aoOfferType (\ s a -> s{_aoOfferType = a})

-- | Level of this offer.
aoOfferLevel :: Lens' AvailableOffer (Maybe AvailableOfferOfferLevel)
aoOfferLevel
  = lens _aoOfferLevel (\ s a -> s{_aoOfferLevel = a})

-- | Description of the offer.
aoDescription :: Lens' AvailableOffer (Maybe Text)
aoDescription
  = lens _aoDescription
      (\ s a -> s{_aoDescription = a})

-- | The number of codes for this offer that are available for distribution.
aoAvailable :: Lens' AvailableOffer (Maybe Int32)
aoAvailable
  = lens _aoAvailable (\ s a -> s{_aoAvailable = a}) .
      mapping _Coerce

instance FromJSON AvailableOffer where
        parseJSON
          = withObject "AvailableOffer"
              (\ o ->
                 AvailableOffer' <$>
                   (o .:? "showSpecialOfferCopy") <*>
                     (o .:? "qualifiedCustomer" .!= mempty)
                     <*> (o .:? "terms")
                     <*> (o .:? "qualifiedCustomersComplete")
                     <*> (o .:? "maxAccountAge")
                     <*> (o .:? "name")
                     <*> (o .:? "countryOfferInfos" .!= mempty)
                     <*> (o .:? "id")
                     <*> (o .:? "offerType")
                     <*> (o .:? "offerLevel")
                     <*> (o .:? "description")
                     <*> (o .:? "available"))

instance ToJSON AvailableOffer where
        toJSON AvailableOffer'{..}
          = object
              (catMaybes
                 [("showSpecialOfferCopy" .=) <$>
                    _aoShowSpecialOfferCopy,
                  ("qualifiedCustomer" .=) <$> _aoQualifiedCustomer,
                  ("terms" .=) <$> _aoTerms,
                  ("qualifiedCustomersComplete" .=) <$>
                    _aoQualifiedCustomersComplete,
                  ("maxAccountAge" .=) <$> _aoMaxAccountAge,
                  ("name" .=) <$> _aoName,
                  ("countryOfferInfos" .=) <$> _aoCountryOfferInfos,
                  ("id" .=) <$> _aoId,
                  ("offerType" .=) <$> _aoOfferType,
                  ("offerLevel" .=) <$> _aoOfferLevel,
                  ("description" .=) <$> _aoDescription,
                  ("available" .=) <$> _aoAvailable])

-- | Map of client info, such as URL, browser navigator, browser platform,
-- etc.
--
-- /See:/ 'logMessageRequestClientInfo' smart constructor.
newtype LogMessageRequestClientInfo =
  LogMessageRequestClientInfo'
    { _lmrciAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LogMessageRequestClientInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmrciAddtional'
logMessageRequestClientInfo
    :: HashMap Text Text -- ^ 'lmrciAddtional'
    -> LogMessageRequestClientInfo
logMessageRequestClientInfo pLmrciAddtional_ =
  LogMessageRequestClientInfo' {_lmrciAddtional = _Coerce # pLmrciAddtional_}


lmrciAddtional :: Lens' LogMessageRequestClientInfo (HashMap Text Text)
lmrciAddtional
  = lens _lmrciAddtional
      (\ s a -> s{_lmrciAddtional = a})
      . _Coerce

instance FromJSON LogMessageRequestClientInfo where
        parseJSON
          = withObject "LogMessageRequestClientInfo"
              (\ o ->
                 LogMessageRequestClientInfo' <$> (parseJSONObject o))

instance ToJSON LogMessageRequestClientInfo where
        toJSON = toJSON . _lmrciAddtional

-- | A CompanyRelation resource representing information about a user\'s
-- affiliation and standing with a company in Partners.
--
-- /See:/ 'companyRelation' smart constructor.
data CompanyRelation =
  CompanyRelation'
    { _crCreationTime :: !(Maybe DateTime')
    , _crState :: !(Maybe CompanyRelationState)
    , _crBadgeTier :: !(Maybe CompanyRelationBadgeTier)
    , _crCompanyId :: !(Maybe Text)
    , _crPrimaryAddress :: !(Maybe Location)
    , _crLogoURL :: !(Maybe Text)
    , _crCompanyAdmin :: !(Maybe Bool)
    , _crWebsite :: !(Maybe Text)
    , _crAddress :: !(Maybe Text)
    , _crPrimaryCountryCode :: !(Maybe Text)
    , _crName :: !(Maybe Text)
    , _crPhoneNumber :: !(Maybe Text)
    , _crManagerAccount :: !(Maybe (Textual Int64))
    , _crIsPending :: !(Maybe Bool)
    , _crInternalCompanyId :: !(Maybe Text)
    , _crSpecializationStatus :: !(Maybe [SpecializationStatus])
    , _crSegment :: !(Maybe [Text])
    , _crPrimaryLanguageCode :: !(Maybe Text)
    , _crResolvedTimestamp :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CompanyRelation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crCreationTime'
--
-- * 'crState'
--
-- * 'crBadgeTier'
--
-- * 'crCompanyId'
--
-- * 'crPrimaryAddress'
--
-- * 'crLogoURL'
--
-- * 'crCompanyAdmin'
--
-- * 'crWebsite'
--
-- * 'crAddress'
--
-- * 'crPrimaryCountryCode'
--
-- * 'crName'
--
-- * 'crPhoneNumber'
--
-- * 'crManagerAccount'
--
-- * 'crIsPending'
--
-- * 'crInternalCompanyId'
--
-- * 'crSpecializationStatus'
--
-- * 'crSegment'
--
-- * 'crPrimaryLanguageCode'
--
-- * 'crResolvedTimestamp'
companyRelation
    :: CompanyRelation
companyRelation =
  CompanyRelation'
    { _crCreationTime = Nothing
    , _crState = Nothing
    , _crBadgeTier = Nothing
    , _crCompanyId = Nothing
    , _crPrimaryAddress = Nothing
    , _crLogoURL = Nothing
    , _crCompanyAdmin = Nothing
    , _crWebsite = Nothing
    , _crAddress = Nothing
    , _crPrimaryCountryCode = Nothing
    , _crName = Nothing
    , _crPhoneNumber = Nothing
    , _crManagerAccount = Nothing
    , _crIsPending = Nothing
    , _crInternalCompanyId = Nothing
    , _crSpecializationStatus = Nothing
    , _crSegment = Nothing
    , _crPrimaryLanguageCode = Nothing
    , _crResolvedTimestamp = Nothing
    }


-- | The timestamp of when affiliation was requested. \'OutputOnly
crCreationTime :: Lens' CompanyRelation (Maybe UTCTime)
crCreationTime
  = lens _crCreationTime
      (\ s a -> s{_crCreationTime = a})
      . mapping _DateTime

-- | The state of relationship, in terms of approvals.
crState :: Lens' CompanyRelation (Maybe CompanyRelationState)
crState = lens _crState (\ s a -> s{_crState = a})

-- | Whether the company is a Partner.
crBadgeTier :: Lens' CompanyRelation (Maybe CompanyRelationBadgeTier)
crBadgeTier
  = lens _crBadgeTier (\ s a -> s{_crBadgeTier = a})

-- | The ID of the company. There may be no id if this is a pending company.5
crCompanyId :: Lens' CompanyRelation (Maybe Text)
crCompanyId
  = lens _crCompanyId (\ s a -> s{_crCompanyId = a})

-- | The primary location of the company.
crPrimaryAddress :: Lens' CompanyRelation (Maybe Location)
crPrimaryAddress
  = lens _crPrimaryAddress
      (\ s a -> s{_crPrimaryAddress = a})

-- | A URL to a profile photo, e.g. a G+ profile photo.
crLogoURL :: Lens' CompanyRelation (Maybe Text)
crLogoURL
  = lens _crLogoURL (\ s a -> s{_crLogoURL = a})

-- | Indicates if the user is an admin for this company.
crCompanyAdmin :: Lens' CompanyRelation (Maybe Bool)
crCompanyAdmin
  = lens _crCompanyAdmin
      (\ s a -> s{_crCompanyAdmin = a})

-- | The website URL for this company.
crWebsite :: Lens' CompanyRelation (Maybe Text)
crWebsite
  = lens _crWebsite (\ s a -> s{_crWebsite = a})

-- | The primary address for this company.
crAddress :: Lens' CompanyRelation (Maybe Text)
crAddress
  = lens _crAddress (\ s a -> s{_crAddress = a})

-- | The primary country code of the company.
crPrimaryCountryCode :: Lens' CompanyRelation (Maybe Text)
crPrimaryCountryCode
  = lens _crPrimaryCountryCode
      (\ s a -> s{_crPrimaryCountryCode = a})

-- | The name (in the company\'s primary language) for the company.
crName :: Lens' CompanyRelation (Maybe Text)
crName = lens _crName (\ s a -> s{_crName = a})

-- | The phone number for the company\'s primary address.
crPhoneNumber :: Lens' CompanyRelation (Maybe Text)
crPhoneNumber
  = lens _crPhoneNumber
      (\ s a -> s{_crPhoneNumber = a})

-- | The AdWords manager account # associated this company.
crManagerAccount :: Lens' CompanyRelation (Maybe Int64)
crManagerAccount
  = lens _crManagerAccount
      (\ s a -> s{_crManagerAccount = a})
      . mapping _Coerce

-- | The flag that indicates if the company is pending verification.
crIsPending :: Lens' CompanyRelation (Maybe Bool)
crIsPending
  = lens _crIsPending (\ s a -> s{_crIsPending = a})

-- | The internal company ID. Only available for a whitelisted set of api
-- clients.
crInternalCompanyId :: Lens' CompanyRelation (Maybe Text)
crInternalCompanyId
  = lens _crInternalCompanyId
      (\ s a -> s{_crInternalCompanyId = a})

-- | The list of Google Partners specialization statuses for the company.
crSpecializationStatus :: Lens' CompanyRelation [SpecializationStatus]
crSpecializationStatus
  = lens _crSpecializationStatus
      (\ s a -> s{_crSpecializationStatus = a})
      . _Default
      . _Coerce

-- | The segment the company is classified as.
crSegment :: Lens' CompanyRelation [Text]
crSegment
  = lens _crSegment (\ s a -> s{_crSegment = a}) .
      _Default
      . _Coerce

-- | The primary language code of the company.
crPrimaryLanguageCode :: Lens' CompanyRelation (Maybe Text)
crPrimaryLanguageCode
  = lens _crPrimaryLanguageCode
      (\ s a -> s{_crPrimaryLanguageCode = a})

-- | The timestamp when the user was approved. \'OutputOnly
crResolvedTimestamp :: Lens' CompanyRelation (Maybe UTCTime)
crResolvedTimestamp
  = lens _crResolvedTimestamp
      (\ s a -> s{_crResolvedTimestamp = a})
      . mapping _DateTime

instance FromJSON CompanyRelation where
        parseJSON
          = withObject "CompanyRelation"
              (\ o ->
                 CompanyRelation' <$>
                   (o .:? "creationTime") <*> (o .:? "state") <*>
                     (o .:? "badgeTier")
                     <*> (o .:? "companyId")
                     <*> (o .:? "primaryAddress")
                     <*> (o .:? "logoUrl")
                     <*> (o .:? "companyAdmin")
                     <*> (o .:? "website")
                     <*> (o .:? "address")
                     <*> (o .:? "primaryCountryCode")
                     <*> (o .:? "name")
                     <*> (o .:? "phoneNumber")
                     <*> (o .:? "managerAccount")
                     <*> (o .:? "isPending")
                     <*> (o .:? "internalCompanyId")
                     <*> (o .:? "specializationStatus" .!= mempty)
                     <*> (o .:? "segment" .!= mempty)
                     <*> (o .:? "primaryLanguageCode")
                     <*> (o .:? "resolvedTimestamp"))

instance ToJSON CompanyRelation where
        toJSON CompanyRelation'{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _crCreationTime,
                  ("state" .=) <$> _crState,
                  ("badgeTier" .=) <$> _crBadgeTier,
                  ("companyId" .=) <$> _crCompanyId,
                  ("primaryAddress" .=) <$> _crPrimaryAddress,
                  ("logoUrl" .=) <$> _crLogoURL,
                  ("companyAdmin" .=) <$> _crCompanyAdmin,
                  ("website" .=) <$> _crWebsite,
                  ("address" .=) <$> _crAddress,
                  ("primaryCountryCode" .=) <$> _crPrimaryCountryCode,
                  ("name" .=) <$> _crName,
                  ("phoneNumber" .=) <$> _crPhoneNumber,
                  ("managerAccount" .=) <$> _crManagerAccount,
                  ("isPending" .=) <$> _crIsPending,
                  ("internalCompanyId" .=) <$> _crInternalCompanyId,
                  ("specializationStatus" .=) <$>
                    _crSpecializationStatus,
                  ("segment" .=) <$> _crSegment,
                  ("primaryLanguageCode" .=) <$>
                    _crPrimaryLanguageCode,
                  ("resolvedTimestamp" .=) <$> _crResolvedTimestamp])

-- | A resource representing a user of the Partners platform.
--
-- /See:/ 'user' smart constructor.
data User =
  User'
    { _uCertificationStatus :: !(Maybe [Certification])
    , _uPublicProFile :: !(Maybe PublicProFile)
    , _uCompanyVerificationEmail :: !(Maybe Text)
    , _uExamStatus :: !(Maybe [ExamStatus])
    , _uPrimaryEmails :: !(Maybe [Text])
    , _uProFile :: !(Maybe UserProFile)
    , _uAfaInfoShared :: !(Maybe Bool)
    , _uCompany :: !(Maybe CompanyRelation)
    , _uInternalId :: !(Maybe Text)
    , _uId :: !(Maybe Text)
    , _uAvailableAdwordsManagerAccounts :: !(Maybe [AdWordsManagerAccountInfo])
    , _uLastAccessTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'User' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uCertificationStatus'
--
-- * 'uPublicProFile'
--
-- * 'uCompanyVerificationEmail'
--
-- * 'uExamStatus'
--
-- * 'uPrimaryEmails'
--
-- * 'uProFile'
--
-- * 'uAfaInfoShared'
--
-- * 'uCompany'
--
-- * 'uInternalId'
--
-- * 'uId'
--
-- * 'uAvailableAdwordsManagerAccounts'
--
-- * 'uLastAccessTime'
user
    :: User
user =
  User'
    { _uCertificationStatus = Nothing
    , _uPublicProFile = Nothing
    , _uCompanyVerificationEmail = Nothing
    , _uExamStatus = Nothing
    , _uPrimaryEmails = Nothing
    , _uProFile = Nothing
    , _uAfaInfoShared = Nothing
    , _uCompany = Nothing
    , _uInternalId = Nothing
    , _uId = Nothing
    , _uAvailableAdwordsManagerAccounts = Nothing
    , _uLastAccessTime = Nothing
    }


-- | The list of achieved certifications. These are calculated based on exam
-- results and other requirements. \'OutputOnly
uCertificationStatus :: Lens' User [Certification]
uCertificationStatus
  = lens _uCertificationStatus
      (\ s a -> s{_uCertificationStatus = a})
      . _Default
      . _Coerce

-- | Information about a user\'s external public profile outside Google
-- Partners.
uPublicProFile :: Lens' User (Maybe PublicProFile)
uPublicProFile
  = lens _uPublicProFile
      (\ s a -> s{_uPublicProFile = a})

-- | The email address used by the user used for company verification.
-- \'OutputOnly
uCompanyVerificationEmail :: Lens' User (Maybe Text)
uCompanyVerificationEmail
  = lens _uCompanyVerificationEmail
      (\ s a -> s{_uCompanyVerificationEmail = a})

-- | The list of exams the user ever taken. For each type of exam, only one
-- entry is listed.
uExamStatus :: Lens' User [ExamStatus]
uExamStatus
  = lens _uExamStatus (\ s a -> s{_uExamStatus = a}) .
      _Default
      . _Coerce

-- | The list of emails the user has access to\/can select as primary.
-- \'OutputOnly
uPrimaryEmails :: Lens' User [Text]
uPrimaryEmails
  = lens _uPrimaryEmails
      (\ s a -> s{_uPrimaryEmails = a})
      . _Default
      . _Coerce

-- | The profile information of a Partners user, contains all the directly
-- editable user information.
uProFile :: Lens' User (Maybe UserProFile)
uProFile = lens _uProFile (\ s a -> s{_uProFile = a})

-- | Whether or not the user has opted to share their Academy for Ads info
-- with Google Partners.
uAfaInfoShared :: Lens' User (Maybe Bool)
uAfaInfoShared
  = lens _uAfaInfoShared
      (\ s a -> s{_uAfaInfoShared = a})

-- | The company that the user is associated with. If not present, the user
-- is not associated with any company.
uCompany :: Lens' User (Maybe CompanyRelation)
uCompany = lens _uCompany (\ s a -> s{_uCompany = a})

-- | The internal user ID. Only available for a whitelisted set of api
-- clients.
uInternalId :: Lens' User (Maybe Text)
uInternalId
  = lens _uInternalId (\ s a -> s{_uInternalId = a})

-- | The ID of the user.
uId :: Lens' User (Maybe Text)
uId = lens _uId (\ s a -> s{_uId = a})

-- | This is the list of AdWords Manager Accounts the user has edit access
-- to. If the user has edit access to multiple accounts, the user can
-- choose the preferred account and we use this when a personal account is
-- needed. Can be empty meaning the user has access to no accounts.
-- \'OutputOnly
uAvailableAdwordsManagerAccounts :: Lens' User [AdWordsManagerAccountInfo]
uAvailableAdwordsManagerAccounts
  = lens _uAvailableAdwordsManagerAccounts
      (\ s a -> s{_uAvailableAdwordsManagerAccounts = a})
      . _Default
      . _Coerce

-- | The most recent time the user interacted with the Partners site.
-- \'OutputOnly
uLastAccessTime :: Lens' User (Maybe UTCTime)
uLastAccessTime
  = lens _uLastAccessTime
      (\ s a -> s{_uLastAccessTime = a})
      . mapping _DateTime

instance FromJSON User where
        parseJSON
          = withObject "User"
              (\ o ->
                 User' <$>
                   (o .:? "certificationStatus" .!= mempty) <*>
                     (o .:? "publicProfile")
                     <*> (o .:? "companyVerificationEmail")
                     <*> (o .:? "examStatus" .!= mempty)
                     <*> (o .:? "primaryEmails" .!= mempty)
                     <*> (o .:? "profile")
                     <*> (o .:? "afaInfoShared")
                     <*> (o .:? "company")
                     <*> (o .:? "internalId")
                     <*> (o .:? "id")
                     <*>
                     (o .:? "availableAdwordsManagerAccounts" .!= mempty)
                     <*> (o .:? "lastAccessTime"))

instance ToJSON User where
        toJSON User'{..}
          = object
              (catMaybes
                 [("certificationStatus" .=) <$>
                    _uCertificationStatus,
                  ("publicProfile" .=) <$> _uPublicProFile,
                  ("companyVerificationEmail" .=) <$>
                    _uCompanyVerificationEmail,
                  ("examStatus" .=) <$> _uExamStatus,
                  ("primaryEmails" .=) <$> _uPrimaryEmails,
                  ("profile" .=) <$> _uProFile,
                  ("afaInfoShared" .=) <$> _uAfaInfoShared,
                  ("company" .=) <$> _uCompany,
                  ("internalId" .=) <$> _uInternalId,
                  ("id" .=) <$> _uId,
                  ("availableAdwordsManagerAccounts" .=) <$>
                    _uAvailableAdwordsManagerAccounts,
                  ("lastAccessTime" .=) <$> _uLastAccessTime])

-- | Represents a whole or partial calendar date, e.g. a birthday. The time
-- of day and time zone are either specified elsewhere or are not
-- significant. The date is relative to the Proleptic Gregorian Calendar.
-- This can represent: * A full date, with non-zero year, month and day
-- values * A month and day value, with a zero year, e.g. an anniversary *
-- A year on its own, with zero month and day values * A year and month
-- value, with a zero day, e.g. a credit card expiration date Related types
-- are google.type.TimeOfDay and \`google.protobuf.Timestamp\`.
--
-- /See:/ 'date' smart constructor.
data Date =
  Date'
    { _dDay :: !(Maybe (Textual Int32))
    , _dYear :: !(Maybe (Textual Int32))
    , _dMonth :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Date' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dDay'
--
-- * 'dYear'
--
-- * 'dMonth'
date
    :: Date
date = Date' {_dDay = Nothing, _dYear = Nothing, _dMonth = Nothing}


-- | Day of month. Must be from 1 to 31 and valid for the year and month, or
-- 0 if specifying a year by itself or a year and month where the day is
-- not significant.
dDay :: Lens' Date (Maybe Int32)
dDay
  = lens _dDay (\ s a -> s{_dDay = a}) .
      mapping _Coerce

-- | Year of date. Must be from 1 to 9999, or 0 if specifying a date without
-- a year.
dYear :: Lens' Date (Maybe Int32)
dYear
  = lens _dYear (\ s a -> s{_dYear = a}) .
      mapping _Coerce

-- | Month of year. Must be from 1 to 12, or 0 if specifying a year without a
-- month and day.
dMonth :: Lens' Date (Maybe Int32)
dMonth
  = lens _dMonth (\ s a -> s{_dMonth = a}) .
      mapping _Coerce

instance FromJSON Date where
        parseJSON
          = withObject "Date"
              (\ o ->
                 Date' <$>
                   (o .:? "day") <*> (o .:? "year") <*> (o .:? "month"))

instance ToJSON Date where
        toJSON Date'{..}
          = object
              (catMaybes
                 [("day" .=) <$> _dDay, ("year" .=) <$> _dYear,
                  ("month" .=) <$> _dMonth])

-- | A lead resource that represents an advertiser contact for a \`Company\`.
-- These are usually generated via Google Partner Search (the advertiser
-- portal).
--
-- /See:/ 'lead' smart constructor.
data Lead =
  Lead'
    { _leaGivenName :: !(Maybe Text)
    , _leaEmail :: !(Maybe Text)
    , _leaLanguageCode :: !(Maybe Text)
    , _leaState :: !(Maybe LeadState)
    , _leaMarketingOptIn :: !(Maybe Bool)
    , _leaAdwordsCustomerId :: !(Maybe (Textual Int64))
    , _leaFamilyName :: !(Maybe Text)
    , _leaPhoneNumber :: !(Maybe Text)
    , _leaMinMonthlyBudget :: !(Maybe Money)
    , _leaId :: !(Maybe Text)
    , _leaComments :: !(Maybe Text)
    , _leaWebsiteURL :: !(Maybe Text)
    , _leaType :: !(Maybe LeadType)
    , _leaGpsMotivations :: !(Maybe [Text])
    , _leaCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Lead' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'leaGivenName'
--
-- * 'leaEmail'
--
-- * 'leaLanguageCode'
--
-- * 'leaState'
--
-- * 'leaMarketingOptIn'
--
-- * 'leaAdwordsCustomerId'
--
-- * 'leaFamilyName'
--
-- * 'leaPhoneNumber'
--
-- * 'leaMinMonthlyBudget'
--
-- * 'leaId'
--
-- * 'leaComments'
--
-- * 'leaWebsiteURL'
--
-- * 'leaType'
--
-- * 'leaGpsMotivations'
--
-- * 'leaCreateTime'
lead
    :: Lead
lead =
  Lead'
    { _leaGivenName = Nothing
    , _leaEmail = Nothing
    , _leaLanguageCode = Nothing
    , _leaState = Nothing
    , _leaMarketingOptIn = Nothing
    , _leaAdwordsCustomerId = Nothing
    , _leaFamilyName = Nothing
    , _leaPhoneNumber = Nothing
    , _leaMinMonthlyBudget = Nothing
    , _leaId = Nothing
    , _leaComments = Nothing
    , _leaWebsiteURL = Nothing
    , _leaType = Nothing
    , _leaGpsMotivations = Nothing
    , _leaCreateTime = Nothing
    }


-- | First name of lead source.
leaGivenName :: Lens' Lead (Maybe Text)
leaGivenName
  = lens _leaGivenName (\ s a -> s{_leaGivenName = a})

-- | Email address of lead source.
leaEmail :: Lens' Lead (Maybe Text)
leaEmail = lens _leaEmail (\ s a -> s{_leaEmail = a})

-- | Language code of the lead\'s language preference, as defined by
-- <https://tools.ietf.org/html/bcp47 BCP 47> (IETF BCP 47, \"Tags for
-- Identifying Languages\").
leaLanguageCode :: Lens' Lead (Maybe Text)
leaLanguageCode
  = lens _leaLanguageCode
      (\ s a -> s{_leaLanguageCode = a})

-- | The lead\'s state in relation to the company.
leaState :: Lens' Lead (Maybe LeadState)
leaState = lens _leaState (\ s a -> s{_leaState = a})

-- | Whether or not the lead signed up for marketing emails
leaMarketingOptIn :: Lens' Lead (Maybe Bool)
leaMarketingOptIn
  = lens _leaMarketingOptIn
      (\ s a -> s{_leaMarketingOptIn = a})

-- | The AdWords Customer ID of the lead.
leaAdwordsCustomerId :: Lens' Lead (Maybe Int64)
leaAdwordsCustomerId
  = lens _leaAdwordsCustomerId
      (\ s a -> s{_leaAdwordsCustomerId = a})
      . mapping _Coerce

-- | Last name of lead source.
leaFamilyName :: Lens' Lead (Maybe Text)
leaFamilyName
  = lens _leaFamilyName
      (\ s a -> s{_leaFamilyName = a})

-- | Phone number of lead source.
leaPhoneNumber :: Lens' Lead (Maybe Text)
leaPhoneNumber
  = lens _leaPhoneNumber
      (\ s a -> s{_leaPhoneNumber = a})

-- | The minimum monthly budget lead source is willing to spend.
leaMinMonthlyBudget :: Lens' Lead (Maybe Money)
leaMinMonthlyBudget
  = lens _leaMinMonthlyBudget
      (\ s a -> s{_leaMinMonthlyBudget = a})

-- | ID of the lead.
leaId :: Lens' Lead (Maybe Text)
leaId = lens _leaId (\ s a -> s{_leaId = a})

-- | Comments lead source gave.
leaComments :: Lens' Lead (Maybe Text)
leaComments
  = lens _leaComments (\ s a -> s{_leaComments = a})

-- | Website URL of lead source.
leaWebsiteURL :: Lens' Lead (Maybe Text)
leaWebsiteURL
  = lens _leaWebsiteURL
      (\ s a -> s{_leaWebsiteURL = a})

-- | Type of lead.
leaType :: Lens' Lead (Maybe LeadType)
leaType = lens _leaType (\ s a -> s{_leaType = a})

-- | List of reasons for using Google Partner Search and creating a lead.
leaGpsMotivations :: Lens' Lead [Text]
leaGpsMotivations
  = lens _leaGpsMotivations
      (\ s a -> s{_leaGpsMotivations = a})
      . _Default
      . _Coerce

-- | Timestamp of when this lead was created.
leaCreateTime :: Lens' Lead (Maybe UTCTime)
leaCreateTime
  = lens _leaCreateTime
      (\ s a -> s{_leaCreateTime = a})
      . mapping _DateTime

instance FromJSON Lead where
        parseJSON
          = withObject "Lead"
              (\ o ->
                 Lead' <$>
                   (o .:? "givenName") <*> (o .:? "email") <*>
                     (o .:? "languageCode")
                     <*> (o .:? "state")
                     <*> (o .:? "marketingOptIn")
                     <*> (o .:? "adwordsCustomerId")
                     <*> (o .:? "familyName")
                     <*> (o .:? "phoneNumber")
                     <*> (o .:? "minMonthlyBudget")
                     <*> (o .:? "id")
                     <*> (o .:? "comments")
                     <*> (o .:? "websiteUrl")
                     <*> (o .:? "type")
                     <*> (o .:? "gpsMotivations" .!= mempty)
                     <*> (o .:? "createTime"))

instance ToJSON Lead where
        toJSON Lead'{..}
          = object
              (catMaybes
                 [("givenName" .=) <$> _leaGivenName,
                  ("email" .=) <$> _leaEmail,
                  ("languageCode" .=) <$> _leaLanguageCode,
                  ("state" .=) <$> _leaState,
                  ("marketingOptIn" .=) <$> _leaMarketingOptIn,
                  ("adwordsCustomerId" .=) <$> _leaAdwordsCustomerId,
                  ("familyName" .=) <$> _leaFamilyName,
                  ("phoneNumber" .=) <$> _leaPhoneNumber,
                  ("minMonthlyBudget" .=) <$> _leaMinMonthlyBudget,
                  ("id" .=) <$> _leaId,
                  ("comments" .=) <$> _leaComments,
                  ("websiteUrl" .=) <$> _leaWebsiteURL,
                  ("type" .=) <$> _leaType,
                  ("gpsMotivations" .=) <$> _leaGpsMotivations,
                  ("createTime" .=) <$> _leaCreateTime])

-- | Information about a particular AdWords Manager Account. Read more at
-- https:\/\/support.google.com\/adwords\/answer\/6139186
--
-- /See:/ 'adWordsManagerAccountInfo' smart constructor.
data AdWordsManagerAccountInfo =
  AdWordsManagerAccountInfo'
    { _awmaiCustomerName :: !(Maybe Text)
    , _awmaiId :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AdWordsManagerAccountInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'awmaiCustomerName'
--
-- * 'awmaiId'
adWordsManagerAccountInfo
    :: AdWordsManagerAccountInfo
adWordsManagerAccountInfo =
  AdWordsManagerAccountInfo' {_awmaiCustomerName = Nothing, _awmaiId = Nothing}


-- | Name of the customer this account represents.
awmaiCustomerName :: Lens' AdWordsManagerAccountInfo (Maybe Text)
awmaiCustomerName
  = lens _awmaiCustomerName
      (\ s a -> s{_awmaiCustomerName = a})

-- | The AdWords Manager Account id.
awmaiId :: Lens' AdWordsManagerAccountInfo (Maybe Int64)
awmaiId
  = lens _awmaiId (\ s a -> s{_awmaiId = a}) .
      mapping _Coerce

instance FromJSON AdWordsManagerAccountInfo where
        parseJSON
          = withObject "AdWordsManagerAccountInfo"
              (\ o ->
                 AdWordsManagerAccountInfo' <$>
                   (o .:? "customerName") <*> (o .:? "id"))

instance ToJSON AdWordsManagerAccountInfo where
        toJSON AdWordsManagerAccountInfo'{..}
          = object
              (catMaybes
                 [("customerName" .=) <$> _awmaiCustomerName,
                  ("id" .=) <$> _awmaiId])

-- | Response message for LogClientMessage.
--
-- /See:/ 'logMessageResponse' smart constructor.
newtype LogMessageResponse =
  LogMessageResponse'
    { _lmrResponseMetadata :: Maybe ResponseMetadata
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LogMessageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmrResponseMetadata'
logMessageResponse
    :: LogMessageResponse
logMessageResponse = LogMessageResponse' {_lmrResponseMetadata = Nothing}


-- | Current response metadata.
lmrResponseMetadata :: Lens' LogMessageResponse (Maybe ResponseMetadata)
lmrResponseMetadata
  = lens _lmrResponseMetadata
      (\ s a -> s{_lmrResponseMetadata = a})

instance FromJSON LogMessageResponse where
        parseJSON
          = withObject "LogMessageResponse"
              (\ o ->
                 LogMessageResponse' <$> (o .:? "responseMetadata"))

instance ToJSON LogMessageResponse where
        toJSON LogMessageResponse'{..}
          = object
              (catMaybes
                 [("responseMetadata" .=) <$> _lmrResponseMetadata])

-- | Customers qualified for an offer.
--
-- /See:/ 'offerCustomer' smart constructor.
data OfferCustomer =
  OfferCustomer'
    { _ocCreationTime :: !(Maybe DateTime')
    , _ocAdwordsURL :: !(Maybe Text)
    , _ocGetYAmount :: !(Maybe Text)
    , _ocName :: !(Maybe Text)
    , _ocCountryCode :: !(Maybe Text)
    , _ocOfferType :: !(Maybe OfferCustomerOfferType)
    , _ocSpendXAmount :: !(Maybe Text)
    , _ocExternalCid :: !(Maybe (Textual Int64))
    , _ocEligibilityDaysLeft :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OfferCustomer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocCreationTime'
--
-- * 'ocAdwordsURL'
--
-- * 'ocGetYAmount'
--
-- * 'ocName'
--
-- * 'ocCountryCode'
--
-- * 'ocOfferType'
--
-- * 'ocSpendXAmount'
--
-- * 'ocExternalCid'
--
-- * 'ocEligibilityDaysLeft'
offerCustomer
    :: OfferCustomer
offerCustomer =
  OfferCustomer'
    { _ocCreationTime = Nothing
    , _ocAdwordsURL = Nothing
    , _ocGetYAmount = Nothing
    , _ocName = Nothing
    , _ocCountryCode = Nothing
    , _ocOfferType = Nothing
    , _ocSpendXAmount = Nothing
    , _ocExternalCid = Nothing
    , _ocEligibilityDaysLeft = Nothing
    }


-- | Time the customer was created.
ocCreationTime :: Lens' OfferCustomer (Maybe UTCTime)
ocCreationTime
  = lens _ocCreationTime
      (\ s a -> s{_ocCreationTime = a})
      . mapping _DateTime

-- | URL to the customer\'s AdWords page.
ocAdwordsURL :: Lens' OfferCustomer (Maybe Text)
ocAdwordsURL
  = lens _ocAdwordsURL (\ s a -> s{_ocAdwordsURL = a})

-- | Formatted Get Y amount with currency code.
ocGetYAmount :: Lens' OfferCustomer (Maybe Text)
ocGetYAmount
  = lens _ocGetYAmount (\ s a -> s{_ocGetYAmount = a})

-- | Name of the customer.
ocName :: Lens' OfferCustomer (Maybe Text)
ocName = lens _ocName (\ s a -> s{_ocName = a})

-- | Country code of the customer.
ocCountryCode :: Lens' OfferCustomer (Maybe Text)
ocCountryCode
  = lens _ocCountryCode
      (\ s a -> s{_ocCountryCode = a})

-- | Type of the offer
ocOfferType :: Lens' OfferCustomer (Maybe OfferCustomerOfferType)
ocOfferType
  = lens _ocOfferType (\ s a -> s{_ocOfferType = a})

-- | Formatted Spend X amount with currency code.
ocSpendXAmount :: Lens' OfferCustomer (Maybe Text)
ocSpendXAmount
  = lens _ocSpendXAmount
      (\ s a -> s{_ocSpendXAmount = a})

-- | External CID for the customer.
ocExternalCid :: Lens' OfferCustomer (Maybe Int64)
ocExternalCid
  = lens _ocExternalCid
      (\ s a -> s{_ocExternalCid = a})
      . mapping _Coerce

-- | Days the customer is still eligible.
ocEligibilityDaysLeft :: Lens' OfferCustomer (Maybe Int32)
ocEligibilityDaysLeft
  = lens _ocEligibilityDaysLeft
      (\ s a -> s{_ocEligibilityDaysLeft = a})
      . mapping _Coerce

instance FromJSON OfferCustomer where
        parseJSON
          = withObject "OfferCustomer"
              (\ o ->
                 OfferCustomer' <$>
                   (o .:? "creationTime") <*> (o .:? "adwordsUrl") <*>
                     (o .:? "getYAmount")
                     <*> (o .:? "name")
                     <*> (o .:? "countryCode")
                     <*> (o .:? "offerType")
                     <*> (o .:? "spendXAmount")
                     <*> (o .:? "externalCid")
                     <*> (o .:? "eligibilityDaysLeft"))

instance ToJSON OfferCustomer where
        toJSON OfferCustomer'{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _ocCreationTime,
                  ("adwordsUrl" .=) <$> _ocAdwordsURL,
                  ("getYAmount" .=) <$> _ocGetYAmount,
                  ("name" .=) <$> _ocName,
                  ("countryCode" .=) <$> _ocCountryCode,
                  ("offerType" .=) <$> _ocOfferType,
                  ("spendXAmount" .=) <$> _ocSpendXAmount,
                  ("externalCid" .=) <$> _ocExternalCid,
                  ("eligibilityDaysLeft" .=) <$>
                    _ocEligibilityDaysLeft])

-- | Response message for GetPartnersStatus.
--
-- /See:/ 'getPartnersStatusResponse' smart constructor.
newtype GetPartnersStatusResponse =
  GetPartnersStatusResponse'
    { _gpsrResponseMetadata :: Maybe ResponseMetadata
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetPartnersStatusResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpsrResponseMetadata'
getPartnersStatusResponse
    :: GetPartnersStatusResponse
getPartnersStatusResponse =
  GetPartnersStatusResponse' {_gpsrResponseMetadata = Nothing}


-- | Current response metadata.
gpsrResponseMetadata :: Lens' GetPartnersStatusResponse (Maybe ResponseMetadata)
gpsrResponseMetadata
  = lens _gpsrResponseMetadata
      (\ s a -> s{_gpsrResponseMetadata = a})

instance FromJSON GetPartnersStatusResponse where
        parseJSON
          = withObject "GetPartnersStatusResponse"
              (\ o ->
                 GetPartnersStatusResponse' <$>
                   (o .:? "responseMetadata"))

instance ToJSON GetPartnersStatusResponse where
        toJSON GetPartnersStatusResponse'{..}
          = object
              (catMaybes
                 [("responseMetadata" .=) <$> _gpsrResponseMetadata])

-- | Response message for ListAnalytics.
--
-- /See:/ 'listAnalyticsResponse' smart constructor.
data ListAnalyticsResponse =
  ListAnalyticsResponse'
    { _larNextPageToken :: !(Maybe Text)
    , _larAnalytics :: !(Maybe [Analytics])
    , _larResponseMetadata :: !(Maybe ResponseMetadata)
    , _larAnalyticsSummary :: !(Maybe AnalyticsSummary)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListAnalyticsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'larNextPageToken'
--
-- * 'larAnalytics'
--
-- * 'larResponseMetadata'
--
-- * 'larAnalyticsSummary'
listAnalyticsResponse
    :: ListAnalyticsResponse
listAnalyticsResponse =
  ListAnalyticsResponse'
    { _larNextPageToken = Nothing
    , _larAnalytics = Nothing
    , _larResponseMetadata = Nothing
    , _larAnalyticsSummary = Nothing
    }


-- | A token to retrieve next page of results. Pass this value in the
-- \`ListAnalyticsRequest.page_token\` field in the subsequent call to
-- ListAnalytics to retrieve the next page of results.
larNextPageToken :: Lens' ListAnalyticsResponse (Maybe Text)
larNextPageToken
  = lens _larNextPageToken
      (\ s a -> s{_larNextPageToken = a})

-- | The list of analytics. Sorted in ascending order of
-- Analytics.event_date.
larAnalytics :: Lens' ListAnalyticsResponse [Analytics]
larAnalytics
  = lens _larAnalytics (\ s a -> s{_larAnalytics = a})
      . _Default
      . _Coerce

-- | Current response metadata.
larResponseMetadata :: Lens' ListAnalyticsResponse (Maybe ResponseMetadata)
larResponseMetadata
  = lens _larResponseMetadata
      (\ s a -> s{_larResponseMetadata = a})

-- | Aggregated information across the response\'s analytics.
larAnalyticsSummary :: Lens' ListAnalyticsResponse (Maybe AnalyticsSummary)
larAnalyticsSummary
  = lens _larAnalyticsSummary
      (\ s a -> s{_larAnalyticsSummary = a})

instance FromJSON ListAnalyticsResponse where
        parseJSON
          = withObject "ListAnalyticsResponse"
              (\ o ->
                 ListAnalyticsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "analytics" .!= mempty)
                     <*> (o .:? "responseMetadata")
                     <*> (o .:? "analyticsSummary"))

instance ToJSON ListAnalyticsResponse where
        toJSON ListAnalyticsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _larNextPageToken,
                  ("analytics" .=) <$> _larAnalytics,
                  ("responseMetadata" .=) <$> _larResponseMetadata,
                  ("analyticsSummary" .=) <$> _larAnalyticsSummary])

-- | A company resource in the Google Partners API. Once certified, it
-- qualifies for being searched by advertisers.
--
-- /See:/ 'company' smart constructor.
data Company =
  Company'
    { _cCompanyTypes :: !(Maybe [Text])
    , _cAutoApprovalEmailDomains :: !(Maybe [Text])
    , _cProFileStatus :: !(Maybe CompanyProFileStatus)
    , _cBadgeTier :: !(Maybe CompanyBadgeTier)
    , _cPublicProFile :: !(Maybe PublicProFile)
    , _cOriginalMinMonthlyBudget :: !(Maybe Money)
    , _cAdditionalWebsites :: !(Maybe [Text])
    , _cIndustries :: !(Maybe [Text])
    , _cConvertedMinMonthlyBudget :: !(Maybe Money)
    , _cName :: !(Maybe Text)
    , _cLocalizedInfos :: !(Maybe [LocalizedCompanyInfo])
    , _cCertificationStatuses :: !(Maybe [CertificationStatus])
    , _cRanks :: !(Maybe [Rank])
    , _cId :: !(Maybe Text)
    , _cWebsiteURL :: !(Maybe Text)
    , _cSpecializationStatus :: !(Maybe [SpecializationStatus])
    , _cPrimaryAdwordsManagerAccountId :: !(Maybe (Textual Int64))
    , _cBadgeAuthorityInAwn :: !(Maybe Bool)
    , _cPrimaryLanguageCode :: !(Maybe Text)
    , _cLocations :: !(Maybe [Location])
    , _cServices :: !(Maybe [Text])
    , _cPrimaryLocation :: !(Maybe Location)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Company' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cCompanyTypes'
--
-- * 'cAutoApprovalEmailDomains'
--
-- * 'cProFileStatus'
--
-- * 'cBadgeTier'
--
-- * 'cPublicProFile'
--
-- * 'cOriginalMinMonthlyBudget'
--
-- * 'cAdditionalWebsites'
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
-- * 'cSpecializationStatus'
--
-- * 'cPrimaryAdwordsManagerAccountId'
--
-- * 'cBadgeAuthorityInAwn'
--
-- * 'cPrimaryLanguageCode'
--
-- * 'cLocations'
--
-- * 'cServices'
--
-- * 'cPrimaryLocation'
company
    :: Company
company =
  Company'
    { _cCompanyTypes = Nothing
    , _cAutoApprovalEmailDomains = Nothing
    , _cProFileStatus = Nothing
    , _cBadgeTier = Nothing
    , _cPublicProFile = Nothing
    , _cOriginalMinMonthlyBudget = Nothing
    , _cAdditionalWebsites = Nothing
    , _cIndustries = Nothing
    , _cConvertedMinMonthlyBudget = Nothing
    , _cName = Nothing
    , _cLocalizedInfos = Nothing
    , _cCertificationStatuses = Nothing
    , _cRanks = Nothing
    , _cId = Nothing
    , _cWebsiteURL = Nothing
    , _cSpecializationStatus = Nothing
    , _cPrimaryAdwordsManagerAccountId = Nothing
    , _cBadgeAuthorityInAwn = Nothing
    , _cPrimaryLanguageCode = Nothing
    , _cLocations = Nothing
    , _cServices = Nothing
    , _cPrimaryLocation = Nothing
    }


-- | Company type labels listed on the company\'s profile.
cCompanyTypes :: Lens' Company [Text]
cCompanyTypes
  = lens _cCompanyTypes
      (\ s a -> s{_cCompanyTypes = a})
      . _Default
      . _Coerce

-- | Email domains that allow users with a matching email address to get
-- auto-approved for associating with this company.
cAutoApprovalEmailDomains :: Lens' Company [Text]
cAutoApprovalEmailDomains
  = lens _cAutoApprovalEmailDomains
      (\ s a -> s{_cAutoApprovalEmailDomains = a})
      . _Default
      . _Coerce

-- | The public viewability status of the company\'s profile.
cProFileStatus :: Lens' Company (Maybe CompanyProFileStatus)
cProFileStatus
  = lens _cProFileStatus
      (\ s a -> s{_cProFileStatus = a})

-- | Partner badge tier
cBadgeTier :: Lens' Company (Maybe CompanyBadgeTier)
cBadgeTier
  = lens _cBadgeTier (\ s a -> s{_cBadgeTier = a})

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

-- | URL of the company\'s additional websites used to verify the dynamic
-- badges. These are stored as full URLs as entered by the user, but only
-- the TLD will be used for the actual verification.
cAdditionalWebsites :: Lens' Company [Text]
cAdditionalWebsites
  = lens _cAdditionalWebsites
      (\ s a -> s{_cAdditionalWebsites = a})
      . _Default
      . _Coerce

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

-- | The list of Google Partners specialization statuses for the company.
cSpecializationStatus :: Lens' Company [SpecializationStatus]
cSpecializationStatus
  = lens _cSpecializationStatus
      (\ s a -> s{_cSpecializationStatus = a})
      . _Default
      . _Coerce

-- | The Primary AdWords Manager Account id.
cPrimaryAdwordsManagerAccountId :: Lens' Company (Maybe Int64)
cPrimaryAdwordsManagerAccountId
  = lens _cPrimaryAdwordsManagerAccountId
      (\ s a -> s{_cPrimaryAdwordsManagerAccountId = a})
      . mapping _Coerce

-- | Whether the company\'s badge authority is in AWN
cBadgeAuthorityInAwn :: Lens' Company (Maybe Bool)
cBadgeAuthorityInAwn
  = lens _cBadgeAuthorityInAwn
      (\ s a -> s{_cBadgeAuthorityInAwn = a})

-- | The primary language code of the company, as defined by
-- <https://tools.ietf.org/html/bcp47 BCP 47> (IETF BCP 47, \"Tags for
-- Identifying Languages\").
cPrimaryLanguageCode :: Lens' Company (Maybe Text)
cPrimaryLanguageCode
  = lens _cPrimaryLanguageCode
      (\ s a -> s{_cPrimaryLanguageCode = a})

-- | The list of all company locations. If set, must include the
-- primary_location in the list.
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

-- | The primary location of the company.
cPrimaryLocation :: Lens' Company (Maybe Location)
cPrimaryLocation
  = lens _cPrimaryLocation
      (\ s a -> s{_cPrimaryLocation = a})

instance FromJSON Company where
        parseJSON
          = withObject "Company"
              (\ o ->
                 Company' <$>
                   (o .:? "companyTypes" .!= mempty) <*>
                     (o .:? "autoApprovalEmailDomains" .!= mempty)
                     <*> (o .:? "profileStatus")
                     <*> (o .:? "badgeTier")
                     <*> (o .:? "publicProfile")
                     <*> (o .:? "originalMinMonthlyBudget")
                     <*> (o .:? "additionalWebsites" .!= mempty)
                     <*> (o .:? "industries" .!= mempty)
                     <*> (o .:? "convertedMinMonthlyBudget")
                     <*> (o .:? "name")
                     <*> (o .:? "localizedInfos" .!= mempty)
                     <*> (o .:? "certificationStatuses" .!= mempty)
                     <*> (o .:? "ranks" .!= mempty)
                     <*> (o .:? "id")
                     <*> (o .:? "websiteUrl")
                     <*> (o .:? "specializationStatus" .!= mempty)
                     <*> (o .:? "primaryAdwordsManagerAccountId")
                     <*> (o .:? "badgeAuthorityInAwn")
                     <*> (o .:? "primaryLanguageCode")
                     <*> (o .:? "locations" .!= mempty)
                     <*> (o .:? "services" .!= mempty)
                     <*> (o .:? "primaryLocation"))

instance ToJSON Company where
        toJSON Company'{..}
          = object
              (catMaybes
                 [("companyTypes" .=) <$> _cCompanyTypes,
                  ("autoApprovalEmailDomains" .=) <$>
                    _cAutoApprovalEmailDomains,
                  ("profileStatus" .=) <$> _cProFileStatus,
                  ("badgeTier" .=) <$> _cBadgeTier,
                  ("publicProfile" .=) <$> _cPublicProFile,
                  ("originalMinMonthlyBudget" .=) <$>
                    _cOriginalMinMonthlyBudget,
                  ("additionalWebsites" .=) <$> _cAdditionalWebsites,
                  ("industries" .=) <$> _cIndustries,
                  ("convertedMinMonthlyBudget" .=) <$>
                    _cConvertedMinMonthlyBudget,
                  ("name" .=) <$> _cName,
                  ("localizedInfos" .=) <$> _cLocalizedInfos,
                  ("certificationStatuses" .=) <$>
                    _cCertificationStatuses,
                  ("ranks" .=) <$> _cRanks, ("id" .=) <$> _cId,
                  ("websiteUrl" .=) <$> _cWebsiteURL,
                  ("specializationStatus" .=) <$>
                    _cSpecializationStatus,
                  ("primaryAdwordsManagerAccountId" .=) <$>
                    _cPrimaryAdwordsManagerAccountId,
                  ("badgeAuthorityInAwn" .=) <$> _cBadgeAuthorityInAwn,
                  ("primaryLanguageCode" .=) <$> _cPrimaryLanguageCode,
                  ("locations" .=) <$> _cLocations,
                  ("services" .=) <$> _cServices,
                  ("primaryLocation" .=) <$> _cPrimaryLocation])

-- | Response message for LogUserEvent.
--
-- /See:/ 'logUserEventResponse' smart constructor.
newtype LogUserEventResponse =
  LogUserEventResponse'
    { _luerResponseMetadata :: Maybe ResponseMetadata
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LogUserEventResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'luerResponseMetadata'
logUserEventResponse
    :: LogUserEventResponse
logUserEventResponse = LogUserEventResponse' {_luerResponseMetadata = Nothing}


-- | Current response metadata.
luerResponseMetadata :: Lens' LogUserEventResponse (Maybe ResponseMetadata)
luerResponseMetadata
  = lens _luerResponseMetadata
      (\ s a -> s{_luerResponseMetadata = a})

instance FromJSON LogUserEventResponse where
        parseJSON
          = withObject "LogUserEventResponse"
              (\ o ->
                 LogUserEventResponse' <$> (o .:? "responseMetadata"))

instance ToJSON LogUserEventResponse where
        toJSON LogUserEventResponse'{..}
          = object
              (catMaybes
                 [("responseMetadata" .=) <$> _luerResponseMetadata])

-- | Response for ListOffer.
--
-- /See:/ 'listOffersResponse' smart constructor.
data ListOffersResponse =
  ListOffersResponse'
    { _lorAvailableOffers :: !(Maybe [AvailableOffer])
    , _lorNoOfferReason :: !(Maybe ListOffersResponseNoOfferReason)
    , _lorResponseMetadata :: !(Maybe ResponseMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListOffersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lorAvailableOffers'
--
-- * 'lorNoOfferReason'
--
-- * 'lorResponseMetadata'
listOffersResponse
    :: ListOffersResponse
listOffersResponse =
  ListOffersResponse'
    { _lorAvailableOffers = Nothing
    , _lorNoOfferReason = Nothing
    , _lorResponseMetadata = Nothing
    }


-- | Available Offers to be distributed.
lorAvailableOffers :: Lens' ListOffersResponse [AvailableOffer]
lorAvailableOffers
  = lens _lorAvailableOffers
      (\ s a -> s{_lorAvailableOffers = a})
      . _Default
      . _Coerce

-- | Reason why no Offers are available.
lorNoOfferReason :: Lens' ListOffersResponse (Maybe ListOffersResponseNoOfferReason)
lorNoOfferReason
  = lens _lorNoOfferReason
      (\ s a -> s{_lorNoOfferReason = a})

-- | Current response metadata.
lorResponseMetadata :: Lens' ListOffersResponse (Maybe ResponseMetadata)
lorResponseMetadata
  = lens _lorResponseMetadata
      (\ s a -> s{_lorResponseMetadata = a})

instance FromJSON ListOffersResponse where
        parseJSON
          = withObject "ListOffersResponse"
              (\ o ->
                 ListOffersResponse' <$>
                   (o .:? "availableOffers" .!= mempty) <*>
                     (o .:? "noOfferReason")
                     <*> (o .:? "responseMetadata"))

instance ToJSON ListOffersResponse where
        toJSON ListOffersResponse'{..}
          = object
              (catMaybes
                 [("availableOffers" .=) <$> _lorAvailableOffers,
                  ("noOfferReason" .=) <$> _lorNoOfferReason,
                  ("responseMetadata" .=) <$> _lorResponseMetadata])

-- | The profile information of a Partners user.
--
-- /See:/ 'userProFile' smart constructor.
data UserProFile =
  UserProFile'
    { _upfGivenName :: !(Maybe Text)
    , _upfMarkets :: !(Maybe [Text])
    , _upfChannels :: !(Maybe [Text])
    , _upfEmailOptIns :: !(Maybe OptIns)
    , _upfJobFunctions :: !(Maybe [Text])
    , _upfAddress :: !(Maybe Location)
    , _upfPrimaryCountryCode :: !(Maybe Text)
    , _upfFamilyName :: !(Maybe Text)
    , _upfLanguages :: !(Maybe [Text])
    , _upfIndustries :: !(Maybe [Text])
    , _upfMigrateToAfa :: !(Maybe Bool)
    , _upfPhoneNumber :: !(Maybe Text)
    , _upfEmailAddress :: !(Maybe Text)
    , _upfAdwordsManagerAccount :: !(Maybe (Textual Int64))
    , _upfProFilePublic :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserProFile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upfGivenName'
--
-- * 'upfMarkets'
--
-- * 'upfChannels'
--
-- * 'upfEmailOptIns'
--
-- * 'upfJobFunctions'
--
-- * 'upfAddress'
--
-- * 'upfPrimaryCountryCode'
--
-- * 'upfFamilyName'
--
-- * 'upfLanguages'
--
-- * 'upfIndustries'
--
-- * 'upfMigrateToAfa'
--
-- * 'upfPhoneNumber'
--
-- * 'upfEmailAddress'
--
-- * 'upfAdwordsManagerAccount'
--
-- * 'upfProFilePublic'
userProFile
    :: UserProFile
userProFile =
  UserProFile'
    { _upfGivenName = Nothing
    , _upfMarkets = Nothing
    , _upfChannels = Nothing
    , _upfEmailOptIns = Nothing
    , _upfJobFunctions = Nothing
    , _upfAddress = Nothing
    , _upfPrimaryCountryCode = Nothing
    , _upfFamilyName = Nothing
    , _upfLanguages = Nothing
    , _upfIndustries = Nothing
    , _upfMigrateToAfa = Nothing
    , _upfPhoneNumber = Nothing
    , _upfEmailAddress = Nothing
    , _upfAdwordsManagerAccount = Nothing
    , _upfProFilePublic = Nothing
    }


-- | The user\'s given name.
upfGivenName :: Lens' UserProFile (Maybe Text)
upfGivenName
  = lens _upfGivenName (\ s a -> s{_upfGivenName = a})

-- | A list of ids representing which markets the user was interested in.
upfMarkets :: Lens' UserProFile [Text]
upfMarkets
  = lens _upfMarkets (\ s a -> s{_upfMarkets = a}) .
      _Default
      . _Coerce

-- | A list of ids representing which channels the user selected they were
-- in.
upfChannels :: Lens' UserProFile [Text]
upfChannels
  = lens _upfChannels (\ s a -> s{_upfChannels = a}) .
      _Default
      . _Coerce

-- | The list of opt-ins for the user, related to communication preferences.
upfEmailOptIns :: Lens' UserProFile (Maybe OptIns)
upfEmailOptIns
  = lens _upfEmailOptIns
      (\ s a -> s{_upfEmailOptIns = a})

-- | A list of ids represnting which job categories the user selected.
upfJobFunctions :: Lens' UserProFile [Text]
upfJobFunctions
  = lens _upfJobFunctions
      (\ s a -> s{_upfJobFunctions = a})
      . _Default
      . _Coerce

-- | The user\'s mailing address, contains multiple fields.
upfAddress :: Lens' UserProFile (Maybe Location)
upfAddress
  = lens _upfAddress (\ s a -> s{_upfAddress = a})

-- | The user\'s primary country, an ISO 2-character code.
upfPrimaryCountryCode :: Lens' UserProFile (Maybe Text)
upfPrimaryCountryCode
  = lens _upfPrimaryCountryCode
      (\ s a -> s{_upfPrimaryCountryCode = a})

-- | The user\'s family name.
upfFamilyName :: Lens' UserProFile (Maybe Text)
upfFamilyName
  = lens _upfFamilyName
      (\ s a -> s{_upfFamilyName = a})

-- | The list of languages this user understands.
upfLanguages :: Lens' UserProFile [Text]
upfLanguages
  = lens _upfLanguages (\ s a -> s{_upfLanguages = a})
      . _Default
      . _Coerce

-- | A list of ids representing which industries the user selected.
upfIndustries :: Lens' UserProFile [Text]
upfIndustries
  = lens _upfIndustries
      (\ s a -> s{_upfIndustries = a})
      . _Default
      . _Coerce

-- | Whether or not to migrate the user\'s exam data to Academy for Ads.
upfMigrateToAfa :: Lens' UserProFile (Maybe Bool)
upfMigrateToAfa
  = lens _upfMigrateToAfa
      (\ s a -> s{_upfMigrateToAfa = a})

-- | The user\'s phone number.
upfPhoneNumber :: Lens' UserProFile (Maybe Text)
upfPhoneNumber
  = lens _upfPhoneNumber
      (\ s a -> s{_upfPhoneNumber = a})

-- | The email address the user has selected on the Partners site as primary.
upfEmailAddress :: Lens' UserProFile (Maybe Text)
upfEmailAddress
  = lens _upfEmailAddress
      (\ s a -> s{_upfEmailAddress = a})

-- | If the user has edit access to multiple accounts, the user can choose
-- the preferred account and it is used when a personal account is needed.
-- Can be empty.
upfAdwordsManagerAccount :: Lens' UserProFile (Maybe Int64)
upfAdwordsManagerAccount
  = lens _upfAdwordsManagerAccount
      (\ s a -> s{_upfAdwordsManagerAccount = a})
      . mapping _Coerce

-- | Whether the user\'s public profile is visible to anyone with the URL.
upfProFilePublic :: Lens' UserProFile (Maybe Bool)
upfProFilePublic
  = lens _upfProFilePublic
      (\ s a -> s{_upfProFilePublic = a})

instance FromJSON UserProFile where
        parseJSON
          = withObject "UserProFile"
              (\ o ->
                 UserProFile' <$>
                   (o .:? "givenName") <*> (o .:? "markets" .!= mempty)
                     <*> (o .:? "channels" .!= mempty)
                     <*> (o .:? "emailOptIns")
                     <*> (o .:? "jobFunctions" .!= mempty)
                     <*> (o .:? "address")
                     <*> (o .:? "primaryCountryCode")
                     <*> (o .:? "familyName")
                     <*> (o .:? "languages" .!= mempty)
                     <*> (o .:? "industries" .!= mempty)
                     <*> (o .:? "migrateToAfa")
                     <*> (o .:? "phoneNumber")
                     <*> (o .:? "emailAddress")
                     <*> (o .:? "adwordsManagerAccount")
                     <*> (o .:? "profilePublic"))

instance ToJSON UserProFile where
        toJSON UserProFile'{..}
          = object
              (catMaybes
                 [("givenName" .=) <$> _upfGivenName,
                  ("markets" .=) <$> _upfMarkets,
                  ("channels" .=) <$> _upfChannels,
                  ("emailOptIns" .=) <$> _upfEmailOptIns,
                  ("jobFunctions" .=) <$> _upfJobFunctions,
                  ("address" .=) <$> _upfAddress,
                  ("primaryCountryCode" .=) <$> _upfPrimaryCountryCode,
                  ("familyName" .=) <$> _upfFamilyName,
                  ("languages" .=) <$> _upfLanguages,
                  ("industries" .=) <$> _upfIndustries,
                  ("migrateToAfa" .=) <$> _upfMigrateToAfa,
                  ("phoneNumber" .=) <$> _upfPhoneNumber,
                  ("emailAddress" .=) <$> _upfEmailAddress,
                  ("adwordsManagerAccount" .=) <$>
                    _upfAdwordsManagerAccount,
                  ("profilePublic" .=) <$> _upfProFilePublic])

-- | Analytics aggregated data for a \`Company\` for a given date range.
--
-- /See:/ 'analyticsSummary' smart constructor.
data AnalyticsSummary =
  AnalyticsSummary'
    { _asContactsCount :: !(Maybe (Textual Int32))
    , _asProFileViewsCount :: !(Maybe (Textual Int32))
    , _asSearchViewsCount :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AnalyticsSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asContactsCount'
--
-- * 'asProFileViewsCount'
--
-- * 'asSearchViewsCount'
analyticsSummary
    :: AnalyticsSummary
analyticsSummary =
  AnalyticsSummary'
    { _asContactsCount = Nothing
    , _asProFileViewsCount = Nothing
    , _asSearchViewsCount = Nothing
    }


-- | Aggregated number of times users contacted the \`Company\` for given
-- date range.
asContactsCount :: Lens' AnalyticsSummary (Maybe Int32)
asContactsCount
  = lens _asContactsCount
      (\ s a -> s{_asContactsCount = a})
      . mapping _Coerce

-- | Aggregated number of profile views for the \`Company\` for given date
-- range.
asProFileViewsCount :: Lens' AnalyticsSummary (Maybe Int32)
asProFileViewsCount
  = lens _asProFileViewsCount
      (\ s a -> s{_asProFileViewsCount = a})
      . mapping _Coerce

-- | Aggregated number of times users saw the \`Company\` in Google Partners
-- Search results for given date range.
asSearchViewsCount :: Lens' AnalyticsSummary (Maybe Int32)
asSearchViewsCount
  = lens _asSearchViewsCount
      (\ s a -> s{_asSearchViewsCount = a})
      . mapping _Coerce

instance FromJSON AnalyticsSummary where
        parseJSON
          = withObject "AnalyticsSummary"
              (\ o ->
                 AnalyticsSummary' <$>
                   (o .:? "contactsCount") <*>
                     (o .:? "profileViewsCount")
                     <*> (o .:? "searchViewsCount"))

instance ToJSON AnalyticsSummary where
        toJSON AnalyticsSummary'{..}
          = object
              (catMaybes
                 [("contactsCount" .=) <$> _asContactsCount,
                  ("profileViewsCount" .=) <$> _asProFileViewsCount,
                  ("searchViewsCount" .=) <$> _asSearchViewsCount])

-- | Request message for LogUserEvent.
--
-- /See:/ 'logUserEventRequest' smart constructor.
data LogUserEventRequest =
  LogUserEventRequest'
    { _luerEventCategory :: !(Maybe LogUserEventRequestEventCategory)
    , _luerRequestMetadata :: !(Maybe RequestMetadata)
    , _luerURL :: !(Maybe Text)
    , _luerEventScope :: !(Maybe LogUserEventRequestEventScope)
    , _luerLead :: !(Maybe Lead)
    , _luerEventDatas :: !(Maybe [EventData])
    , _luerEventAction :: !(Maybe LogUserEventRequestEventAction)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  LogUserEventRequest'
    { _luerEventCategory = Nothing
    , _luerRequestMetadata = Nothing
    , _luerURL = Nothing
    , _luerEventScope = Nothing
    , _luerLead = Nothing
    , _luerEventDatas = Nothing
    , _luerEventAction = Nothing
    }


-- | The category the action belongs to.
luerEventCategory :: Lens' LogUserEventRequest (Maybe LogUserEventRequestEventCategory)
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
luerEventScope :: Lens' LogUserEventRequest (Maybe LogUserEventRequestEventScope)
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
luerEventAction :: Lens' LogUserEventRequest (Maybe LogUserEventRequestEventAction)
luerEventAction
  = lens _luerEventAction
      (\ s a -> s{_luerEventAction = a})

instance FromJSON LogUserEventRequest where
        parseJSON
          = withObject "LogUserEventRequest"
              (\ o ->
                 LogUserEventRequest' <$>
                   (o .:? "eventCategory") <*> (o .:? "requestMetadata")
                     <*> (o .:? "url")
                     <*> (o .:? "eventScope")
                     <*> (o .:? "lead")
                     <*> (o .:? "eventDatas" .!= mempty)
                     <*> (o .:? "eventAction"))

instance ToJSON LogUserEventRequest where
        toJSON LogUserEventRequest'{..}
          = object
              (catMaybes
                 [("eventCategory" .=) <$> _luerEventCategory,
                  ("requestMetadata" .=) <$> _luerRequestMetadata,
                  ("url" .=) <$> _luerURL,
                  ("eventScope" .=) <$> _luerEventScope,
                  ("lead" .=) <$> _luerLead,
                  ("eventDatas" .=) <$> _luerEventDatas,
                  ("eventAction" .=) <$> _luerEventAction])

-- | Agency specialization status
--
-- /See:/ 'specializationStatus' smart constructor.
data SpecializationStatus =
  SpecializationStatus'
    { _ssBadgeSpecialization :: !(Maybe SpecializationStatusBadgeSpecialization)
    , _ssBadgeSpecializationState :: !(Maybe SpecializationStatusBadgeSpecializationState)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SpecializationStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssBadgeSpecialization'
--
-- * 'ssBadgeSpecializationState'
specializationStatus
    :: SpecializationStatus
specializationStatus =
  SpecializationStatus'
    {_ssBadgeSpecialization = Nothing, _ssBadgeSpecializationState = Nothing}


-- | The specialization this status is for.
ssBadgeSpecialization :: Lens' SpecializationStatus (Maybe SpecializationStatusBadgeSpecialization)
ssBadgeSpecialization
  = lens _ssBadgeSpecialization
      (\ s a -> s{_ssBadgeSpecialization = a})

-- | State of agency specialization.
ssBadgeSpecializationState :: Lens' SpecializationStatus (Maybe SpecializationStatusBadgeSpecializationState)
ssBadgeSpecializationState
  = lens _ssBadgeSpecializationState
      (\ s a -> s{_ssBadgeSpecializationState = a})

instance FromJSON SpecializationStatus where
        parseJSON
          = withObject "SpecializationStatus"
              (\ o ->
                 SpecializationStatus' <$>
                   (o .:? "badgeSpecialization") <*>
                     (o .:? "badgeSpecializationState"))

instance ToJSON SpecializationStatus where
        toJSON SpecializationStatus'{..}
          = object
              (catMaybes
                 [("badgeSpecialization" .=) <$>
                    _ssBadgeSpecialization,
                  ("badgeSpecializationState" .=) <$>
                    _ssBadgeSpecializationState])

-- | Information related to ranking of results.
--
-- /See:/ 'rank' smart constructor.
data Rank =
  Rank'
    { _rValue :: !(Maybe (Textual Double))
    , _rType :: !(Maybe RankType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Rank' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rValue'
--
-- * 'rType'
rank
    :: Rank
rank = Rank' {_rValue = Nothing, _rType = Nothing}


-- | The numerical value of the rank.
rValue :: Lens' Rank (Maybe Double)
rValue
  = lens _rValue (\ s a -> s{_rValue = a}) .
      mapping _Coerce

-- | The type of rank.
rType :: Lens' Rank (Maybe RankType)
rType = lens _rType (\ s a -> s{_rType = a})

instance FromJSON Rank where
        parseJSON
          = withObject "Rank"
              (\ o -> Rank' <$> (o .:? "value") <*> (o .:? "type"))

instance ToJSON Rank where
        toJSON Rank'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _rValue, ("type" .=) <$> _rType])

-- | Response message for ListLeads.
--
-- /See:/ 'listLeadsResponse' smart constructor.
data ListLeadsResponse =
  ListLeadsResponse'
    { _llrLeads :: !(Maybe [Lead])
    , _llrNextPageToken :: !(Maybe Text)
    , _llrResponseMetadata :: !(Maybe ResponseMetadata)
    , _llrTotalSize :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListLeadsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llrLeads'
--
-- * 'llrNextPageToken'
--
-- * 'llrResponseMetadata'
--
-- * 'llrTotalSize'
listLeadsResponse
    :: ListLeadsResponse
listLeadsResponse =
  ListLeadsResponse'
    { _llrLeads = Nothing
    , _llrNextPageToken = Nothing
    , _llrResponseMetadata = Nothing
    , _llrTotalSize = Nothing
    }


-- | The list of leads.
llrLeads :: Lens' ListLeadsResponse [Lead]
llrLeads
  = lens _llrLeads (\ s a -> s{_llrLeads = a}) .
      _Default
      . _Coerce

-- | A token to retrieve next page of results. Pass this value in the
-- \`ListLeadsRequest.page_token\` field in the subsequent call to
-- ListLeads to retrieve the next page of results.
llrNextPageToken :: Lens' ListLeadsResponse (Maybe Text)
llrNextPageToken
  = lens _llrNextPageToken
      (\ s a -> s{_llrNextPageToken = a})

-- | Current response metadata.
llrResponseMetadata :: Lens' ListLeadsResponse (Maybe ResponseMetadata)
llrResponseMetadata
  = lens _llrResponseMetadata
      (\ s a -> s{_llrResponseMetadata = a})

-- | The total count of leads for the given company.
llrTotalSize :: Lens' ListLeadsResponse (Maybe Int32)
llrTotalSize
  = lens _llrTotalSize (\ s a -> s{_llrTotalSize = a})
      . mapping _Coerce

instance FromJSON ListLeadsResponse where
        parseJSON
          = withObject "ListLeadsResponse"
              (\ o ->
                 ListLeadsResponse' <$>
                   (o .:? "leads" .!= mempty) <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "responseMetadata")
                     <*> (o .:? "totalSize"))

instance ToJSON ListLeadsResponse where
        toJSON ListLeadsResponse'{..}
          = object
              (catMaybes
                 [("leads" .=) <$> _llrLeads,
                  ("nextPageToken" .=) <$> _llrNextPageToken,
                  ("responseMetadata" .=) <$> _llrResponseMetadata,
                  ("totalSize" .=) <$> _llrTotalSize])

-- | Offer info by country.
--
-- /See:/ 'countryOfferInfo' smart constructor.
data CountryOfferInfo =
  CountryOfferInfo'
    { _coiGetYAmount :: !(Maybe Text)
    , _coiOfferCountryCode :: !(Maybe Text)
    , _coiOfferType :: !(Maybe CountryOfferInfoOfferType)
    , _coiSpendXAmount :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CountryOfferInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'coiGetYAmount'
--
-- * 'coiOfferCountryCode'
--
-- * 'coiOfferType'
--
-- * 'coiSpendXAmount'
countryOfferInfo
    :: CountryOfferInfo
countryOfferInfo =
  CountryOfferInfo'
    { _coiGetYAmount = Nothing
    , _coiOfferCountryCode = Nothing
    , _coiOfferType = Nothing
    , _coiSpendXAmount = Nothing
    }


-- | (localized) Get Y amount for that country\'s offer.
coiGetYAmount :: Lens' CountryOfferInfo (Maybe Text)
coiGetYAmount
  = lens _coiGetYAmount
      (\ s a -> s{_coiGetYAmount = a})

-- | Country code for which offer codes may be requested.
coiOfferCountryCode :: Lens' CountryOfferInfo (Maybe Text)
coiOfferCountryCode
  = lens _coiOfferCountryCode
      (\ s a -> s{_coiOfferCountryCode = a})

-- | Type of offer country is eligible for.
coiOfferType :: Lens' CountryOfferInfo (Maybe CountryOfferInfoOfferType)
coiOfferType
  = lens _coiOfferType (\ s a -> s{_coiOfferType = a})

-- | (localized) Spend X amount for that country\'s offer.
coiSpendXAmount :: Lens' CountryOfferInfo (Maybe Text)
coiSpendXAmount
  = lens _coiSpendXAmount
      (\ s a -> s{_coiSpendXAmount = a})

instance FromJSON CountryOfferInfo where
        parseJSON
          = withObject "CountryOfferInfo"
              (\ o ->
                 CountryOfferInfo' <$>
                   (o .:? "getYAmount") <*> (o .:? "offerCountryCode")
                     <*> (o .:? "offerType")
                     <*> (o .:? "spendXAmount"))

instance ToJSON CountryOfferInfo where
        toJSON CountryOfferInfo'{..}
          = object
              (catMaybes
                 [("getYAmount" .=) <$> _coiGetYAmount,
                  ("offerCountryCode" .=) <$> _coiOfferCountryCode,
                  ("offerType" .=) <$> _coiOfferType,
                  ("spendXAmount" .=) <$> _coiSpendXAmount])

-- | Request message for CreateLead.
--
-- /See:/ 'createLeadRequest' smart constructor.
data CreateLeadRequest =
  CreateLeadRequest'
    { _cRequestMetadata :: !(Maybe RequestMetadata)
    , _cRecaptchaChallenge :: !(Maybe RecaptchaChallenge)
    , _cLead :: !(Maybe Lead)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  CreateLeadRequest'
    { _cRequestMetadata = Nothing
    , _cRecaptchaChallenge = Nothing
    , _cLead = Nothing
    }


-- | Current request metadata.
cRequestMetadata :: Lens' CreateLeadRequest (Maybe RequestMetadata)
cRequestMetadata
  = lens _cRequestMetadata
      (\ s a -> s{_cRequestMetadata = a})

-- | <https://www.google.com/recaptcha/ reCaptcha> challenge info.
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
                 CreateLeadRequest' <$>
                   (o .:? "requestMetadata") <*>
                     (o .:? "recaptchaChallenge")
                     <*> (o .:? "lead"))

instance ToJSON CreateLeadRequest where
        toJSON CreateLeadRequest'{..}
          = object
              (catMaybes
                 [("requestMetadata" .=) <$> _cRequestMetadata,
                  ("recaptchaChallenge" .=) <$> _cRecaptchaChallenge,
                  ("lead" .=) <$> _cLead])
