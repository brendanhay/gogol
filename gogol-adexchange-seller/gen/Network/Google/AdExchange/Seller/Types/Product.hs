{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AdExchange.Seller.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AdExchange.Seller.Types.Product where

import           Network.Google.AdExchange.Seller.Types.Sum
import           Network.Google.Prelude

--
-- /See:/ 'account' smart constructor.
data Account = Account
    { _accKind :: !Text
    , _accName :: !(Maybe Text)
    , _accId   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Account' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'accKind'
--
-- * 'accName'
--
-- * 'accId'
account
    :: Account
account =
    Account
    { _accKind = "adexchangeseller#account"
    , _accName = Nothing
    , _accId = Nothing
    }

-- | Kind of resource this is, in this case adexchangeseller#account.
accKind :: Lens' Account Text
accKind = lens _accKind (\ s a -> s{_accKind = a})

-- | Name of this account.
accName :: Lens' Account (Maybe Text)
accName = lens _accName (\ s a -> s{_accName = a})

-- | Unique identifier of this account.
accId :: Lens' Account (Maybe Text)
accId = lens _accId (\ s a -> s{_accId = a})

--
-- /See:/ 'accounts' smart constructor.
data Accounts = Accounts
    { _aEtag          :: !(Maybe Text)
    , _aNextPageToken :: !(Maybe Text)
    , _aKind          :: !Text
    , _aItems         :: !(Maybe [Maybe Account])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Accounts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aEtag'
--
-- * 'aNextPageToken'
--
-- * 'aKind'
--
-- * 'aItems'
accounts
    :: Accounts
accounts =
    Accounts
    { _aEtag = Nothing
    , _aNextPageToken = Nothing
    , _aKind = "adexchangeseller#accounts"
    , _aItems = Nothing
    }

-- | ETag of this response for caching purposes.
aEtag :: Lens' Accounts (Maybe Text)
aEtag = lens _aEtag (\ s a -> s{_aEtag = a})

-- | Continuation token used to page through accounts. To retrieve the next
-- page of results, set the next request\'s \"pageToken\" value to this.
aNextPageToken :: Lens' Accounts (Maybe Text)
aNextPageToken
  = lens _aNextPageToken
      (\ s a -> s{_aNextPageToken = a})

-- | Kind of list this is, in this case adexchangeseller#accounts.
aKind :: Lens' Accounts Text
aKind = lens _aKind (\ s a -> s{_aKind = a})

-- | The accounts returned in this list response.
aItems :: Lens' Accounts [Maybe Account]
aItems
  = lens _aItems (\ s a -> s{_aItems = a}) . _Default .
      _Coerce

--
-- /See:/ 'adClient' smart constructor.
data AdClient = AdClient
    { _acKind              :: !Text
    , _acArcOptIn          :: !(Maybe Bool)
    , _acSupportsReporting :: !(Maybe Bool)
    , _acId                :: !(Maybe Text)
    , _acProductCode       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdClient' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acKind'
--
-- * 'acArcOptIn'
--
-- * 'acSupportsReporting'
--
-- * 'acId'
--
-- * 'acProductCode'
adClient
    :: AdClient
adClient =
    AdClient
    { _acKind = "adexchangeseller#adClient"
    , _acArcOptIn = Nothing
    , _acSupportsReporting = Nothing
    , _acId = Nothing
    , _acProductCode = Nothing
    }

-- | Kind of resource this is, in this case adexchangeseller#adClient.
acKind :: Lens' AdClient Text
acKind = lens _acKind (\ s a -> s{_acKind = a})

-- | Whether this ad client is opted in to ARC.
acArcOptIn :: Lens' AdClient (Maybe Bool)
acArcOptIn
  = lens _acArcOptIn (\ s a -> s{_acArcOptIn = a})

-- | Whether this ad client supports being reported on.
acSupportsReporting :: Lens' AdClient (Maybe Bool)
acSupportsReporting
  = lens _acSupportsReporting
      (\ s a -> s{_acSupportsReporting = a})

-- | Unique identifier of this ad client.
acId :: Lens' AdClient (Maybe Text)
acId = lens _acId (\ s a -> s{_acId = a})

-- | This ad client\'s product code, which corresponds to the PRODUCT_CODE
-- report dimension.
acProductCode :: Lens' AdClient (Maybe Text)
acProductCode
  = lens _acProductCode
      (\ s a -> s{_acProductCode = a})

--
-- /See:/ 'adClients' smart constructor.
data AdClients = AdClients
    { _acsEtag          :: !(Maybe Text)
    , _acsNextPageToken :: !(Maybe Text)
    , _acsKind          :: !Text
    , _acsItems         :: !(Maybe [Maybe AdClient])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdClients' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acsEtag'
--
-- * 'acsNextPageToken'
--
-- * 'acsKind'
--
-- * 'acsItems'
adClients
    :: AdClients
adClients =
    AdClients
    { _acsEtag = Nothing
    , _acsNextPageToken = Nothing
    , _acsKind = "adexchangeseller#adClients"
    , _acsItems = Nothing
    }

-- | ETag of this response for caching purposes.
acsEtag :: Lens' AdClients (Maybe Text)
acsEtag = lens _acsEtag (\ s a -> s{_acsEtag = a})

-- | Continuation token used to page through ad clients. To retrieve the next
-- page of results, set the next request\'s \"pageToken\" value to this.
acsNextPageToken :: Lens' AdClients (Maybe Text)
acsNextPageToken
  = lens _acsNextPageToken
      (\ s a -> s{_acsNextPageToken = a})

-- | Kind of list this is, in this case adexchangeseller#adClients.
acsKind :: Lens' AdClients Text
acsKind = lens _acsKind (\ s a -> s{_acsKind = a})

-- | The ad clients returned in this list response.
acsItems :: Lens' AdClients [Maybe AdClient]
acsItems
  = lens _acsItems (\ s a -> s{_acsItems = a}) .
      _Default
      . _Coerce

--
-- /See:/ 'alert' smart constructor.
data Alert = Alert
    { _aleKind     :: !Text
    , _aleSeverity :: !(Maybe Text)
    , _aleId       :: !(Maybe Text)
    , _aleType     :: !(Maybe Text)
    , _aleMessage  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Alert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aleKind'
--
-- * 'aleSeverity'
--
-- * 'aleId'
--
-- * 'aleType'
--
-- * 'aleMessage'
alert
    :: Alert
alert =
    Alert
    { _aleKind = "adexchangeseller#alert"
    , _aleSeverity = Nothing
    , _aleId = Nothing
    , _aleType = Nothing
    , _aleMessage = Nothing
    }

-- | Kind of resource this is, in this case adexchangeseller#alert.
aleKind :: Lens' Alert Text
aleKind = lens _aleKind (\ s a -> s{_aleKind = a})

-- | Severity of this alert. Possible values: INFO, WARNING, SEVERE.
aleSeverity :: Lens' Alert (Maybe Text)
aleSeverity
  = lens _aleSeverity (\ s a -> s{_aleSeverity = a})

-- | Unique identifier of this alert. This should be considered an opaque
-- identifier; it is not safe to rely on it being in any particular format.
aleId :: Lens' Alert (Maybe Text)
aleId = lens _aleId (\ s a -> s{_aleId = a})

-- | Type of this alert. Possible values: SELF_HOLD, MIGRATED_TO_BILLING3,
-- ADDRESS_PIN_VERIFICATION, PHONE_PIN_VERIFICATION, CORPORATE_ENTITY,
-- GRAYLISTED_PUBLISHER, API_HOLD.
aleType :: Lens' Alert (Maybe Text)
aleType = lens _aleType (\ s a -> s{_aleType = a})

-- | The localized alert message.
aleMessage :: Lens' Alert (Maybe Text)
aleMessage
  = lens _aleMessage (\ s a -> s{_aleMessage = a})

--
-- /See:/ 'alerts' smart constructor.
data Alerts = Alerts
    { _aaKind  :: !Text
    , _aaItems :: !(Maybe [Maybe Alert])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Alerts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaKind'
--
-- * 'aaItems'
alerts
    :: Alerts
alerts =
    Alerts
    { _aaKind = "adexchangeseller#alerts"
    , _aaItems = Nothing
    }

-- | Kind of list this is, in this case adexchangeseller#alerts.
aaKind :: Lens' Alerts Text
aaKind = lens _aaKind (\ s a -> s{_aaKind = a})

-- | The alerts returned in this list response.
aaItems :: Lens' Alerts [Maybe Alert]
aaItems
  = lens _aaItems (\ s a -> s{_aaItems = a}) . _Default
      . _Coerce

--
-- /See:/ 'customChannel' smart constructor.
data CustomChannel = CustomChannel
    { _ccTargetingInfo :: !(Maybe CustomChannelTargetingInfo)
    , _ccKind          :: !Text
    , _ccName          :: !(Maybe Text)
    , _ccCode          :: !(Maybe Text)
    , _ccId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomChannel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccTargetingInfo'
--
-- * 'ccKind'
--
-- * 'ccName'
--
-- * 'ccCode'
--
-- * 'ccId'
customChannel
    :: CustomChannel
customChannel =
    CustomChannel
    { _ccTargetingInfo = Nothing
    , _ccKind = "adexchangeseller#customChannel"
    , _ccName = Nothing
    , _ccCode = Nothing
    , _ccId = Nothing
    }

-- | The targeting information of this custom channel, if activated.
ccTargetingInfo :: Lens' CustomChannel (Maybe CustomChannelTargetingInfo)
ccTargetingInfo
  = lens _ccTargetingInfo
      (\ s a -> s{_ccTargetingInfo = a})

-- | Kind of resource this is, in this case adexchangeseller#customChannel.
ccKind :: Lens' CustomChannel Text
ccKind = lens _ccKind (\ s a -> s{_ccKind = a})

-- | Name of this custom channel.
ccName :: Lens' CustomChannel (Maybe Text)
ccName = lens _ccName (\ s a -> s{_ccName = a})

-- | Code of this custom channel, not necessarily unique across ad clients.
ccCode :: Lens' CustomChannel (Maybe Text)
ccCode = lens _ccCode (\ s a -> s{_ccCode = a})

-- | Unique identifier of this custom channel. This should be considered an
-- opaque identifier; it is not safe to rely on it being in any particular
-- format.
ccId :: Lens' CustomChannel (Maybe Text)
ccId = lens _ccId (\ s a -> s{_ccId = a})

-- | The targeting information of this custom channel, if activated.
--
-- /See:/ 'customChannelTargetingInfo' smart constructor.
data CustomChannelTargetingInfo = CustomChannelTargetingInfo
    { _cctiLocation     :: !(Maybe Text)
    , _cctiSiteLanguage :: !(Maybe Text)
    , _cctiAdsAppearOn  :: !(Maybe Text)
    , _cctiDescription  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomChannelTargetingInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cctiLocation'
--
-- * 'cctiSiteLanguage'
--
-- * 'cctiAdsAppearOn'
--
-- * 'cctiDescription'
customChannelTargetingInfo
    :: CustomChannelTargetingInfo
customChannelTargetingInfo =
    CustomChannelTargetingInfo
    { _cctiLocation = Nothing
    , _cctiSiteLanguage = Nothing
    , _cctiAdsAppearOn = Nothing
    , _cctiDescription = Nothing
    }

-- | The locations in which ads appear. (Only valid for content and mobile
-- content ads). Acceptable values for content ads are: TOP_LEFT,
-- TOP_CENTER, TOP_RIGHT, MIDDLE_LEFT, MIDDLE_CENTER, MIDDLE_RIGHT,
-- BOTTOM_LEFT, BOTTOM_CENTER, BOTTOM_RIGHT, MULTIPLE_LOCATIONS. Acceptable
-- values for mobile content ads are: TOP, MIDDLE, BOTTOM,
-- MULTIPLE_LOCATIONS.
cctiLocation :: Lens' CustomChannelTargetingInfo (Maybe Text)
cctiLocation
  = lens _cctiLocation (\ s a -> s{_cctiLocation = a})

-- | The language of the sites ads will be displayed on.
cctiSiteLanguage :: Lens' CustomChannelTargetingInfo (Maybe Text)
cctiSiteLanguage
  = lens _cctiSiteLanguage
      (\ s a -> s{_cctiSiteLanguage = a})

-- | The name used to describe this channel externally.
cctiAdsAppearOn :: Lens' CustomChannelTargetingInfo (Maybe Text)
cctiAdsAppearOn
  = lens _cctiAdsAppearOn
      (\ s a -> s{_cctiAdsAppearOn = a})

-- | The external description of the channel.
cctiDescription :: Lens' CustomChannelTargetingInfo (Maybe Text)
cctiDescription
  = lens _cctiDescription
      (\ s a -> s{_cctiDescription = a})

--
-- /See:/ 'customChannels' smart constructor.
data CustomChannels = CustomChannels
    { _cEtag          :: !(Maybe Text)
    , _cNextPageToken :: !(Maybe Text)
    , _cKind          :: !Text
    , _cItems         :: !(Maybe [Maybe CustomChannel])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomChannels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cEtag'
--
-- * 'cNextPageToken'
--
-- * 'cKind'
--
-- * 'cItems'
customChannels
    :: CustomChannels
customChannels =
    CustomChannels
    { _cEtag = Nothing
    , _cNextPageToken = Nothing
    , _cKind = "adexchangeseller#customChannels"
    , _cItems = Nothing
    }

-- | ETag of this response for caching purposes.
cEtag :: Lens' CustomChannels (Maybe Text)
cEtag = lens _cEtag (\ s a -> s{_cEtag = a})

-- | Continuation token used to page through custom channels. To retrieve the
-- next page of results, set the next request\'s \"pageToken\" value to
-- this.
cNextPageToken :: Lens' CustomChannels (Maybe Text)
cNextPageToken
  = lens _cNextPageToken
      (\ s a -> s{_cNextPageToken = a})

-- | Kind of list this is, in this case adexchangeseller#customChannels.
cKind :: Lens' CustomChannels Text
cKind = lens _cKind (\ s a -> s{_cKind = a})

-- | The custom channels returned in this list response.
cItems :: Lens' CustomChannels [Maybe CustomChannel]
cItems
  = lens _cItems (\ s a -> s{_cItems = a}) . _Default .
      _Coerce

--
-- /See:/ 'metadata' smart constructor.
data Metadata = Metadata
    { _mKind  :: !Text
    , _mItems :: !(Maybe [Maybe ReportingMetadataEntry])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Metadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mKind'
--
-- * 'mItems'
metadata
    :: Metadata
metadata =
    Metadata
    { _mKind = "adexchangeseller#metadata"
    , _mItems = Nothing
    }

-- | Kind of list this is, in this case adexchangeseller#metadata.
mKind :: Lens' Metadata Text
mKind = lens _mKind (\ s a -> s{_mKind = a})

mItems :: Lens' Metadata [Maybe ReportingMetadataEntry]
mItems
  = lens _mItems (\ s a -> s{_mItems = a}) . _Default .
      _Coerce

--
-- /See:/ 'preferredDeal' smart constructor.
data PreferredDeal = PreferredDeal
    { _pdAdvertiserName   :: !(Maybe Text)
    , _pdCurrencyCode     :: !(Maybe Text)
    , _pdStartTime        :: !(Maybe Word64)
    , _pdKind             :: !Text
    , _pdBuyerNetworkName :: !(Maybe Text)
    , _pdEndTime          :: !(Maybe Word64)
    , _pdId               :: !(Maybe Int64)
    , _pdFixedCpm         :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PreferredDeal' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdAdvertiserName'
--
-- * 'pdCurrencyCode'
--
-- * 'pdStartTime'
--
-- * 'pdKind'
--
-- * 'pdBuyerNetworkName'
--
-- * 'pdEndTime'
--
-- * 'pdId'
--
-- * 'pdFixedCpm'
preferredDeal
    :: PreferredDeal
preferredDeal =
    PreferredDeal
    { _pdAdvertiserName = Nothing
    , _pdCurrencyCode = Nothing
    , _pdStartTime = Nothing
    , _pdKind = "adexchangeseller#preferredDeal"
    , _pdBuyerNetworkName = Nothing
    , _pdEndTime = Nothing
    , _pdId = Nothing
    , _pdFixedCpm = Nothing
    }

-- | The name of the advertiser this deal is for.
pdAdvertiserName :: Lens' PreferredDeal (Maybe Text)
pdAdvertiserName
  = lens _pdAdvertiserName
      (\ s a -> s{_pdAdvertiserName = a})

-- | The currency code that applies to the fixed_cpm value. If not set then
-- assumed to be USD.
pdCurrencyCode :: Lens' PreferredDeal (Maybe Text)
pdCurrencyCode
  = lens _pdCurrencyCode
      (\ s a -> s{_pdCurrencyCode = a})

-- | Time when this deal becomes active in seconds since the epoch (GMT). If
-- not set then this deal is active immediately upon creation.
pdStartTime :: Lens' PreferredDeal (Maybe Word64)
pdStartTime
  = lens _pdStartTime (\ s a -> s{_pdStartTime = a})

-- | Kind of resource this is, in this case adexchangeseller#preferredDeal.
pdKind :: Lens' PreferredDeal Text
pdKind = lens _pdKind (\ s a -> s{_pdKind = a})

-- | The name of the buyer network this deal is for.
pdBuyerNetworkName :: Lens' PreferredDeal (Maybe Text)
pdBuyerNetworkName
  = lens _pdBuyerNetworkName
      (\ s a -> s{_pdBuyerNetworkName = a})

-- | Time when this deal stops being active in seconds since the epoch (GMT).
-- If not set then this deal is valid until manually disabled by the
-- publisher.
pdEndTime :: Lens' PreferredDeal (Maybe Word64)
pdEndTime
  = lens _pdEndTime (\ s a -> s{_pdEndTime = a})

-- | Unique identifier of this preferred deal.
pdId :: Lens' PreferredDeal (Maybe Int64)
pdId = lens _pdId (\ s a -> s{_pdId = a})

-- | The fixed price for this preferred deal. In cpm micros of currency
-- according to currencyCode. If set, then this preferred deal is eligible
-- for the fixed price tier of buying (highest priority, pay exactly the
-- configured fixed price).
pdFixedCpm :: Lens' PreferredDeal (Maybe Int64)
pdFixedCpm
  = lens _pdFixedCpm (\ s a -> s{_pdFixedCpm = a})

--
-- /See:/ 'preferredDeals' smart constructor.
data PreferredDeals = PreferredDeals
    { _pKind  :: !Text
    , _pItems :: !(Maybe [Maybe PreferredDeal])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PreferredDeals' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pKind'
--
-- * 'pItems'
preferredDeals
    :: PreferredDeals
preferredDeals =
    PreferredDeals
    { _pKind = "adexchangeseller#preferredDeals"
    , _pItems = Nothing
    }

-- | Kind of list this is, in this case adexchangeseller#preferredDeals.
pKind :: Lens' PreferredDeals Text
pKind = lens _pKind (\ s a -> s{_pKind = a})

-- | The preferred deals returned in this list response.
pItems :: Lens' PreferredDeals [Maybe PreferredDeal]
pItems
  = lens _pItems (\ s a -> s{_pItems = a}) . _Default .
      _Coerce

--
-- /See:/ 'report' smart constructor.
data Report = Report
    { _rKind             :: !Text
    , _rAverages         :: !(Maybe [Text])
    , _rWarnings         :: !(Maybe [Text])
    , _rRows             :: !(Maybe [[Text]])
    , _rTotals           :: !(Maybe [Text])
    , _rHeaders          :: !(Maybe [ReportItemHeaders])
    , _rTotalMatchedRows :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Report' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rKind'
--
-- * 'rAverages'
--
-- * 'rWarnings'
--
-- * 'rRows'
--
-- * 'rTotals'
--
-- * 'rHeaders'
--
-- * 'rTotalMatchedRows'
report
    :: Report
report =
    Report
    { _rKind = "adexchangeseller#report"
    , _rAverages = Nothing
    , _rWarnings = Nothing
    , _rRows = Nothing
    , _rTotals = Nothing
    , _rHeaders = Nothing
    , _rTotalMatchedRows = Nothing
    }

-- | Kind this is, in this case adexchangeseller#report.
rKind :: Lens' Report Text
rKind = lens _rKind (\ s a -> s{_rKind = a})

-- | The averages of the report. This is the same length as any other row in
-- the report; cells corresponding to dimension columns are empty.
rAverages :: Lens' Report [Text]
rAverages
  = lens _rAverages (\ s a -> s{_rAverages = a}) .
      _Default
      . _Coerce

-- | Any warnings associated with generation of the report.
rWarnings :: Lens' Report [Text]
rWarnings
  = lens _rWarnings (\ s a -> s{_rWarnings = a}) .
      _Default
      . _Coerce

-- | The output rows of the report. Each row is a list of cells; one for each
-- dimension in the request, followed by one for each metric in the
-- request. The dimension cells contain strings, and the metric cells
-- contain numbers.
rRows :: Lens' Report [[Text]]
rRows
  = lens _rRows (\ s a -> s{_rRows = a}) . _Default .
      _Coerce

-- | The totals of the report. This is the same length as any other row in
-- the report; cells corresponding to dimension columns are empty.
rTotals :: Lens' Report [Text]
rTotals
  = lens _rTotals (\ s a -> s{_rTotals = a}) . _Default
      . _Coerce

-- | The header information of the columns requested in the report. This is a
-- list of headers; one for each dimension in the request, followed by one
-- for each metric in the request.
rHeaders :: Lens' Report [ReportItemHeaders]
rHeaders
  = lens _rHeaders (\ s a -> s{_rHeaders = a}) .
      _Default
      . _Coerce

-- | The total number of rows matched by the report request. Fewer rows may
-- be returned in the response due to being limited by the row count
-- requested or the report row limit.
rTotalMatchedRows :: Lens' Report (Maybe Int64)
rTotalMatchedRows
  = lens _rTotalMatchedRows
      (\ s a -> s{_rTotalMatchedRows = a})

--
-- /See:/ 'reportItemHeaders' smart constructor.
data ReportItemHeaders = ReportItemHeaders
    { _rihName     :: !(Maybe Text)
    , _rihCurrency :: !(Maybe Text)
    , _rihType     :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportItemHeaders' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rihName'
--
-- * 'rihCurrency'
--
-- * 'rihType'
reportItemHeaders
    :: ReportItemHeaders
reportItemHeaders =
    ReportItemHeaders
    { _rihName = Nothing
    , _rihCurrency = Nothing
    , _rihType = Nothing
    }

-- | The name of the header.
rihName :: Lens' ReportItemHeaders (Maybe Text)
rihName = lens _rihName (\ s a -> s{_rihName = a})

-- | The currency of this column. Only present if the header type is
-- METRIC_CURRENCY.
rihCurrency :: Lens' ReportItemHeaders (Maybe Text)
rihCurrency
  = lens _rihCurrency (\ s a -> s{_rihCurrency = a})

-- | The type of the header; one of DIMENSION, METRIC_TALLY, METRIC_RATIO, or
-- METRIC_CURRENCY.
rihType :: Lens' ReportItemHeaders (Maybe Text)
rihType = lens _rihType (\ s a -> s{_rihType = a})

--
-- /See:/ 'reportingMetadataEntry' smart constructor.
data ReportingMetadataEntry = ReportingMetadataEntry
    { _rmeKind                 :: !Text
    , _rmeRequiredMetrics      :: !(Maybe [Text])
    , _rmeCompatibleMetrics    :: !(Maybe [Text])
    , _rmeRequiredDimensions   :: !(Maybe [Text])
    , _rmeId                   :: !(Maybe Text)
    , _rmeCompatibleDimensions :: !(Maybe [Text])
    , _rmeSupportedProducts    :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportingMetadataEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmeKind'
--
-- * 'rmeRequiredMetrics'
--
-- * 'rmeCompatibleMetrics'
--
-- * 'rmeRequiredDimensions'
--
-- * 'rmeId'
--
-- * 'rmeCompatibleDimensions'
--
-- * 'rmeSupportedProducts'
reportingMetadataEntry
    :: ReportingMetadataEntry
reportingMetadataEntry =
    ReportingMetadataEntry
    { _rmeKind = "adexchangeseller#reportingMetadataEntry"
    , _rmeRequiredMetrics = Nothing
    , _rmeCompatibleMetrics = Nothing
    , _rmeRequiredDimensions = Nothing
    , _rmeId = Nothing
    , _rmeCompatibleDimensions = Nothing
    , _rmeSupportedProducts = Nothing
    }

-- | Kind of resource this is, in this case
-- adexchangeseller#reportingMetadataEntry.
rmeKind :: Lens' ReportingMetadataEntry Text
rmeKind = lens _rmeKind (\ s a -> s{_rmeKind = a})

-- | The names of the metrics which the dimension or metric this reporting
-- metadata entry describes requires to also be present in order for the
-- report to be valid. Omitting these will not cause an error or warning,
-- but may result in data which cannot be correctly interpreted.
rmeRequiredMetrics :: Lens' ReportingMetadataEntry [Text]
rmeRequiredMetrics
  = lens _rmeRequiredMetrics
      (\ s a -> s{_rmeRequiredMetrics = a})
      . _Default
      . _Coerce

-- | The names of the metrics the dimension or metric this reporting metadata
-- entry describes is compatible with.
rmeCompatibleMetrics :: Lens' ReportingMetadataEntry [Text]
rmeCompatibleMetrics
  = lens _rmeCompatibleMetrics
      (\ s a -> s{_rmeCompatibleMetrics = a})
      . _Default
      . _Coerce

-- | The names of the dimensions which the dimension or metric this reporting
-- metadata entry describes requires to also be present in order for the
-- report to be valid. Omitting these will not cause an error or warning,
-- but may result in data which cannot be correctly interpreted.
rmeRequiredDimensions :: Lens' ReportingMetadataEntry [Text]
rmeRequiredDimensions
  = lens _rmeRequiredDimensions
      (\ s a -> s{_rmeRequiredDimensions = a})
      . _Default
      . _Coerce

-- | Unique identifier of this reporting metadata entry, corresponding to the
-- name of the appropriate dimension or metric.
rmeId :: Lens' ReportingMetadataEntry (Maybe Text)
rmeId = lens _rmeId (\ s a -> s{_rmeId = a})

-- | For metrics this is a list of dimension IDs which the metric is
-- compatible with, for dimensions it is a list of compatibility groups the
-- dimension belongs to.
rmeCompatibleDimensions :: Lens' ReportingMetadataEntry [Text]
rmeCompatibleDimensions
  = lens _rmeCompatibleDimensions
      (\ s a -> s{_rmeCompatibleDimensions = a})
      . _Default
      . _Coerce

-- | The codes of the projects supported by the dimension or metric this
-- reporting metadata entry describes.
rmeSupportedProducts :: Lens' ReportingMetadataEntry [Text]
rmeSupportedProducts
  = lens _rmeSupportedProducts
      (\ s a -> s{_rmeSupportedProducts = a})
      . _Default
      . _Coerce

--
-- /See:/ 'savedReport' smart constructor.
data SavedReport = SavedReport
    { _sKind :: !Text
    , _sName :: !(Maybe Text)
    , _sId   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SavedReport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sKind'
--
-- * 'sName'
--
-- * 'sId'
savedReport
    :: SavedReport
savedReport =
    SavedReport
    { _sKind = "adexchangeseller#savedReport"
    , _sName = Nothing
    , _sId = Nothing
    }

-- | Kind of resource this is, in this case adexchangeseller#savedReport.
sKind :: Lens' SavedReport Text
sKind = lens _sKind (\ s a -> s{_sKind = a})

-- | This saved report\'s name.
sName :: Lens' SavedReport (Maybe Text)
sName = lens _sName (\ s a -> s{_sName = a})

-- | Unique identifier of this saved report.
sId :: Lens' SavedReport (Maybe Text)
sId = lens _sId (\ s a -> s{_sId = a})

--
-- /See:/ 'savedReports' smart constructor.
data SavedReports = SavedReports
    { _srEtag          :: !(Maybe Text)
    , _srNextPageToken :: !(Maybe Text)
    , _srKind          :: !Text
    , _srItems         :: !(Maybe [Maybe SavedReport])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SavedReports' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srEtag'
--
-- * 'srNextPageToken'
--
-- * 'srKind'
--
-- * 'srItems'
savedReports
    :: SavedReports
savedReports =
    SavedReports
    { _srEtag = Nothing
    , _srNextPageToken = Nothing
    , _srKind = "adexchangeseller#savedReports"
    , _srItems = Nothing
    }

-- | ETag of this response for caching purposes.
srEtag :: Lens' SavedReports (Maybe Text)
srEtag = lens _srEtag (\ s a -> s{_srEtag = a})

-- | Continuation token used to page through saved reports. To retrieve the
-- next page of results, set the next request\'s \"pageToken\" value to
-- this.
srNextPageToken :: Lens' SavedReports (Maybe Text)
srNextPageToken
  = lens _srNextPageToken
      (\ s a -> s{_srNextPageToken = a})

-- | Kind of list this is, in this case adexchangeseller#savedReports.
srKind :: Lens' SavedReports Text
srKind = lens _srKind (\ s a -> s{_srKind = a})

-- | The saved reports returned in this list response.
srItems :: Lens' SavedReports [Maybe SavedReport]
srItems
  = lens _srItems (\ s a -> s{_srItems = a}) . _Default
      . _Coerce

--
-- /See:/ 'urlChannel' smart constructor.
data UrlChannel = UrlChannel
    { _ucKind       :: !Text
    , _ucId         :: !(Maybe Text)
    , _ucUrlPattern :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UrlChannel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucKind'
--
-- * 'ucId'
--
-- * 'ucUrlPattern'
urlChannel
    :: UrlChannel
urlChannel =
    UrlChannel
    { _ucKind = "adexchangeseller#urlChannel"
    , _ucId = Nothing
    , _ucUrlPattern = Nothing
    }

-- | Kind of resource this is, in this case adexchangeseller#urlChannel.
ucKind :: Lens' UrlChannel Text
ucKind = lens _ucKind (\ s a -> s{_ucKind = a})

-- | Unique identifier of this URL channel. This should be considered an
-- opaque identifier; it is not safe to rely on it being in any particular
-- format.
ucId :: Lens' UrlChannel (Maybe Text)
ucId = lens _ucId (\ s a -> s{_ucId = a})

-- | URL Pattern of this URL channel. Does not include \"http:\/\/\" or
-- \"https:\/\/\". Example: www.example.com\/home
ucUrlPattern :: Lens' UrlChannel (Maybe Text)
ucUrlPattern
  = lens _ucUrlPattern (\ s a -> s{_ucUrlPattern = a})

--
-- /See:/ 'urlChannels' smart constructor.
data UrlChannels = UrlChannels
    { _urlcEtag          :: !(Maybe Text)
    , _urlcNextPageToken :: !(Maybe Text)
    , _urlcKind          :: !Text
    , _urlcItems         :: !(Maybe [Maybe UrlChannel])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UrlChannels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urlcEtag'
--
-- * 'urlcNextPageToken'
--
-- * 'urlcKind'
--
-- * 'urlcItems'
urlChannels
    :: UrlChannels
urlChannels =
    UrlChannels
    { _urlcEtag = Nothing
    , _urlcNextPageToken = Nothing
    , _urlcKind = "adexchangeseller#urlChannels"
    , _urlcItems = Nothing
    }

-- | ETag of this response for caching purposes.
urlcEtag :: Lens' UrlChannels (Maybe Text)
urlcEtag = lens _urlcEtag (\ s a -> s{_urlcEtag = a})

-- | Continuation token used to page through URL channels. To retrieve the
-- next page of results, set the next request\'s \"pageToken\" value to
-- this.
urlcNextPageToken :: Lens' UrlChannels (Maybe Text)
urlcNextPageToken
  = lens _urlcNextPageToken
      (\ s a -> s{_urlcNextPageToken = a})

-- | Kind of list this is, in this case adexchangeseller#urlChannels.
urlcKind :: Lens' UrlChannels Text
urlcKind = lens _urlcKind (\ s a -> s{_urlcKind = a})

-- | The URL channels returned in this list response.
urlcItems :: Lens' UrlChannels [Maybe UrlChannel]
urlcItems
  = lens _urlcItems (\ s a -> s{_urlcItems = a}) .
      _Default
      . _Coerce
