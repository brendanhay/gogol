{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AdExchangeSeller.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AdExchangeSeller.Types.Product where

import           Network.Google.AdExchangeSeller.Types.Sum
import           Network.Google.Prelude

--
-- /See:/ 'adClients' smart constructor.
data AdClients = AdClients
    { _acEtag          :: !(Maybe Text)
    , _acNextPageToken :: !(Maybe Text)
    , _acKind          :: !Text
    , _acItems         :: !(Maybe [AdClient])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdClients' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acEtag'
--
-- * 'acNextPageToken'
--
-- * 'acKind'
--
-- * 'acItems'
adClients
    :: AdClients
adClients =
    AdClients
    { _acEtag = Nothing
    , _acNextPageToken = Nothing
    , _acKind = "adexchangeseller#adClients"
    , _acItems = Nothing
    }

-- | ETag of this response for caching purposes.
acEtag :: Lens' AdClients (Maybe Text)
acEtag = lens _acEtag (\ s a -> s{_acEtag = a})

-- | Continuation token used to page through ad clients. To retrieve the next
-- page of results, set the next request\'s \"pageToken\" value to this.
acNextPageToken :: Lens' AdClients (Maybe Text)
acNextPageToken
  = lens _acNextPageToken
      (\ s a -> s{_acNextPageToken = a})

-- | Kind of list this is, in this case adexchangeseller#adClients.
acKind :: Lens' AdClients Text
acKind = lens _acKind (\ s a -> s{_acKind = a})

-- | The ad clients returned in this list response.
acItems :: Lens' AdClients [AdClient]
acItems
  = lens _acItems (\ s a -> s{_acItems = a}) . _Default
      . _Coerce

instance FromJSON AdClients where
        parseJSON
          = withObject "AdClients"
              (\ o ->
                 AdClients <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "adexchangeseller#adClients")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON AdClients where
        toJSON AdClients{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _acEtag,
                  ("nextPageToken" .=) <$> _acNextPageToken,
                  Just ("kind" .= _acKind), ("items" .=) <$> _acItems])

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
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON ReportingMetadataEntry where
        parseJSON
          = withObject "ReportingMetadataEntry"
              (\ o ->
                 ReportingMetadataEntry <$>
                   (o .:? "kind" .!=
                      "adexchangeseller#reportingMetadataEntry")
                     <*> (o .:? "requiredMetrics" .!= mempty)
                     <*> (o .:? "compatibleMetrics" .!= mempty)
                     <*> (o .:? "requiredDimensions" .!= mempty)
                     <*> (o .:? "id")
                     <*> (o .:? "compatibleDimensions" .!= mempty)
                     <*> (o .:? "supportedProducts" .!= mempty))

instance ToJSON ReportingMetadataEntry where
        toJSON ReportingMetadataEntry{..}
          = object
              (catMaybes
                 [Just ("kind" .= _rmeKind),
                  ("requiredMetrics" .=) <$> _rmeRequiredMetrics,
                  ("compatibleMetrics" .=) <$> _rmeCompatibleMetrics,
                  ("requiredDimensions" .=) <$> _rmeRequiredDimensions,
                  ("id" .=) <$> _rmeId,
                  ("compatibleDimensions" .=) <$>
                    _rmeCompatibleDimensions,
                  ("supportedProducts" .=) <$> _rmeSupportedProducts])

--
-- /See:/ 'accounts' smart constructor.
data Accounts = Accounts
    { _aEtag          :: !(Maybe Text)
    , _aNextPageToken :: !(Maybe Text)
    , _aKind          :: !Text
    , _aItems         :: !(Maybe [Account])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
aItems :: Lens' Accounts [Account]
aItems
  = lens _aItems (\ s a -> s{_aItems = a}) . _Default .
      _Coerce

instance FromJSON Accounts where
        parseJSON
          = withObject "Accounts"
              (\ o ->
                 Accounts <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "adexchangeseller#accounts")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON Accounts where
        toJSON Accounts{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _aEtag,
                  ("nextPageToken" .=) <$> _aNextPageToken,
                  Just ("kind" .= _aKind), ("items" .=) <$> _aItems])

--
-- /See:/ 'alerts' smart constructor.
data Alerts = Alerts
    { _aleKind  :: !Text
    , _aleItems :: !(Maybe [Alert])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Alerts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aleKind'
--
-- * 'aleItems'
alerts
    :: Alerts
alerts =
    Alerts
    { _aleKind = "adexchangeseller#alerts"
    , _aleItems = Nothing
    }

-- | Kind of list this is, in this case adexchangeseller#alerts.
aleKind :: Lens' Alerts Text
aleKind = lens _aleKind (\ s a -> s{_aleKind = a})

-- | The alerts returned in this list response.
aleItems :: Lens' Alerts [Alert]
aleItems
  = lens _aleItems (\ s a -> s{_aleItems = a}) .
      _Default
      . _Coerce

instance FromJSON Alerts where
        parseJSON
          = withObject "Alerts"
              (\ o ->
                 Alerts <$>
                   (o .:? "kind" .!= "adexchangeseller#alerts") <*>
                     (o .:? "items" .!= mempty))

instance ToJSON Alerts where
        toJSON Alerts{..}
          = object
              (catMaybes
                 [Just ("kind" .= _aleKind),
                  ("items" .=) <$> _aleItems])

--
-- /See:/ 'savedReports' smart constructor.
data SavedReports = SavedReports
    { _srEtag          :: !(Maybe Text)
    , _srNextPageToken :: !(Maybe Text)
    , _srKind          :: !Text
    , _srItems         :: !(Maybe [SavedReport])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
srItems :: Lens' SavedReports [SavedReport]
srItems
  = lens _srItems (\ s a -> s{_srItems = a}) . _Default
      . _Coerce

instance FromJSON SavedReports where
        parseJSON
          = withObject "SavedReports"
              (\ o ->
                 SavedReports <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "adexchangeseller#savedReports")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON SavedReports where
        toJSON SavedReports{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _srEtag,
                  ("nextPageToken" .=) <$> _srNextPageToken,
                  Just ("kind" .= _srKind), ("items" .=) <$> _srItems])

--
-- /See:/ 'savedReport' smart constructor.
data SavedReport = SavedReport
    { _sKind :: !Text
    , _sName :: !(Maybe Text)
    , _sId   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON SavedReport where
        parseJSON
          = withObject "SavedReport"
              (\ o ->
                 SavedReport <$>
                   (o .:? "kind" .!= "adexchangeseller#savedReport") <*>
                     (o .:? "name")
                     <*> (o .:? "id"))

instance ToJSON SavedReport where
        toJSON SavedReport{..}
          = object
              (catMaybes
                 [Just ("kind" .= _sKind), ("name" .=) <$> _sName,
                  ("id" .=) <$> _sId])

--
-- /See:/ 'urlChannels' smart constructor.
data URLChannels = URLChannels
    { _ucEtag          :: !(Maybe Text)
    , _ucNextPageToken :: !(Maybe Text)
    , _ucKind          :: !Text
    , _ucItems         :: !(Maybe [URLChannel])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLChannels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucEtag'
--
-- * 'ucNextPageToken'
--
-- * 'ucKind'
--
-- * 'ucItems'
urlChannels
    :: URLChannels
urlChannels =
    URLChannels
    { _ucEtag = Nothing
    , _ucNextPageToken = Nothing
    , _ucKind = "adexchangeseller#urlChannels"
    , _ucItems = Nothing
    }

-- | ETag of this response for caching purposes.
ucEtag :: Lens' URLChannels (Maybe Text)
ucEtag = lens _ucEtag (\ s a -> s{_ucEtag = a})

-- | Continuation token used to page through URL channels. To retrieve the
-- next page of results, set the next request\'s \"pageToken\" value to
-- this.
ucNextPageToken :: Lens' URLChannels (Maybe Text)
ucNextPageToken
  = lens _ucNextPageToken
      (\ s a -> s{_ucNextPageToken = a})

-- | Kind of list this is, in this case adexchangeseller#urlChannels.
ucKind :: Lens' URLChannels Text
ucKind = lens _ucKind (\ s a -> s{_ucKind = a})

-- | The URL channels returned in this list response.
ucItems :: Lens' URLChannels [URLChannel]
ucItems
  = lens _ucItems (\ s a -> s{_ucItems = a}) . _Default
      . _Coerce

instance FromJSON URLChannels where
        parseJSON
          = withObject "URLChannels"
              (\ o ->
                 URLChannels <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "adexchangeseller#urlChannels")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON URLChannels where
        toJSON URLChannels{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _ucEtag,
                  ("nextPageToken" .=) <$> _ucNextPageToken,
                  Just ("kind" .= _ucKind), ("items" .=) <$> _ucItems])

--
-- /See:/ 'customChannels' smart constructor.
data CustomChannels = CustomChannels
    { _ccEtag          :: !(Maybe Text)
    , _ccNextPageToken :: !(Maybe Text)
    , _ccKind          :: !Text
    , _ccItems         :: !(Maybe [CustomChannel])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomChannels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccEtag'
--
-- * 'ccNextPageToken'
--
-- * 'ccKind'
--
-- * 'ccItems'
customChannels
    :: CustomChannels
customChannels =
    CustomChannels
    { _ccEtag = Nothing
    , _ccNextPageToken = Nothing
    , _ccKind = "adexchangeseller#customChannels"
    , _ccItems = Nothing
    }

-- | ETag of this response for caching purposes.
ccEtag :: Lens' CustomChannels (Maybe Text)
ccEtag = lens _ccEtag (\ s a -> s{_ccEtag = a})

-- | Continuation token used to page through custom channels. To retrieve the
-- next page of results, set the next request\'s \"pageToken\" value to
-- this.
ccNextPageToken :: Lens' CustomChannels (Maybe Text)
ccNextPageToken
  = lens _ccNextPageToken
      (\ s a -> s{_ccNextPageToken = a})

-- | Kind of list this is, in this case adexchangeseller#customChannels.
ccKind :: Lens' CustomChannels Text
ccKind = lens _ccKind (\ s a -> s{_ccKind = a})

-- | The custom channels returned in this list response.
ccItems :: Lens' CustomChannels [CustomChannel]
ccItems
  = lens _ccItems (\ s a -> s{_ccItems = a}) . _Default
      . _Coerce

instance FromJSON CustomChannels where
        parseJSON
          = withObject "CustomChannels"
              (\ o ->
                 CustomChannels <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "adexchangeseller#customChannels")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON CustomChannels where
        toJSON CustomChannels{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _ccEtag,
                  ("nextPageToken" .=) <$> _ccNextPageToken,
                  Just ("kind" .= _ccKind), ("items" .=) <$> _ccItems])

--
-- /See:/ 'report' smart constructor.
data Report = Report
    { _rKind             :: !Text
    , _rAverages         :: !(Maybe [Text])
    , _rWarnings         :: !(Maybe [Text])
    , _rRows             :: !(Maybe [[Text]])
    , _rTotals           :: !(Maybe [Text])
    , _rHeaders          :: !(Maybe [ReportHeadersItem])
    , _rTotalMatchedRows :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
rHeaders :: Lens' Report [ReportHeadersItem]
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

instance FromJSON Report where
        parseJSON
          = withObject "Report"
              (\ o ->
                 Report <$>
                   (o .:? "kind" .!= "adexchangeseller#report") <*>
                     (o .:? "averages" .!= mempty)
                     <*> (o .:? "warnings" .!= mempty)
                     <*> (o .:? "rows" .!= mempty)
                     <*> (o .:? "totals" .!= mempty)
                     <*> (o .:? "headers" .!= mempty)
                     <*> (o .:? "totalMatchedRows"))

instance ToJSON Report where
        toJSON Report{..}
          = object
              (catMaybes
                 [Just ("kind" .= _rKind),
                  ("averages" .=) <$> _rAverages,
                  ("warnings" .=) <$> _rWarnings,
                  ("rows" .=) <$> _rRows, ("totals" .=) <$> _rTotals,
                  ("headers" .=) <$> _rHeaders,
                  ("totalMatchedRows" .=) <$> _rTotalMatchedRows])

--
-- /See:/ 'alert' smart constructor.
data Alert = Alert
    { _aaKind     :: !Text
    , _aaSeverity :: !(Maybe Text)
    , _aaId       :: !(Maybe Text)
    , _aaType     :: !(Maybe Text)
    , _aaMessage  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Alert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaKind'
--
-- * 'aaSeverity'
--
-- * 'aaId'
--
-- * 'aaType'
--
-- * 'aaMessage'
alert
    :: Alert
alert =
    Alert
    { _aaKind = "adexchangeseller#alert"
    , _aaSeverity = Nothing
    , _aaId = Nothing
    , _aaType = Nothing
    , _aaMessage = Nothing
    }

-- | Kind of resource this is, in this case adexchangeseller#alert.
aaKind :: Lens' Alert Text
aaKind = lens _aaKind (\ s a -> s{_aaKind = a})

-- | Severity of this alert. Possible values: INFO, WARNING, SEVERE.
aaSeverity :: Lens' Alert (Maybe Text)
aaSeverity
  = lens _aaSeverity (\ s a -> s{_aaSeverity = a})

-- | Unique identifier of this alert. This should be considered an opaque
-- identifier; it is not safe to rely on it being in any particular format.
aaId :: Lens' Alert (Maybe Text)
aaId = lens _aaId (\ s a -> s{_aaId = a})

-- | Type of this alert. Possible values: SELF_HOLD, MIGRATED_TO_BILLING3,
-- ADDRESS_PIN_VERIFICATION, PHONE_PIN_VERIFICATION, CORPORATE_ENTITY,
-- GRAYLISTED_PUBLISHER, API_HOLD.
aaType :: Lens' Alert (Maybe Text)
aaType = lens _aaType (\ s a -> s{_aaType = a})

-- | The localized alert message.
aaMessage :: Lens' Alert (Maybe Text)
aaMessage
  = lens _aaMessage (\ s a -> s{_aaMessage = a})

instance FromJSON Alert where
        parseJSON
          = withObject "Alert"
              (\ o ->
                 Alert <$>
                   (o .:? "kind" .!= "adexchangeseller#alert") <*>
                     (o .:? "severity")
                     <*> (o .:? "id")
                     <*> (o .:? "type")
                     <*> (o .:? "message"))

instance ToJSON Alert where
        toJSON Alert{..}
          = object
              (catMaybes
                 [Just ("kind" .= _aaKind),
                  ("severity" .=) <$> _aaSeverity, ("id" .=) <$> _aaId,
                  ("type" .=) <$> _aaType,
                  ("message" .=) <$> _aaMessage])

--
-- /See:/ 'account' smart constructor.
data Account = Account
    { _accKind :: !Text
    , _accName :: !(Maybe Text)
    , _accId   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON Account where
        parseJSON
          = withObject "Account"
              (\ o ->
                 Account <$>
                   (o .:? "kind" .!= "adexchangeseller#account") <*>
                     (o .:? "name")
                     <*> (o .:? "id"))

instance ToJSON Account where
        toJSON Account{..}
          = object
              (catMaybes
                 [Just ("kind" .= _accKind), ("name" .=) <$> _accName,
                  ("id" .=) <$> _accId])

--
-- /See:/ 'adClient' smart constructor.
data AdClient = AdClient
    { _adKind              :: !Text
    , _adArcOptIn          :: !(Maybe Bool)
    , _adSupportsReporting :: !(Maybe Bool)
    , _adId                :: !(Maybe Text)
    , _adProductCode       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdClient' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adKind'
--
-- * 'adArcOptIn'
--
-- * 'adSupportsReporting'
--
-- * 'adId'
--
-- * 'adProductCode'
adClient
    :: AdClient
adClient =
    AdClient
    { _adKind = "adexchangeseller#adClient"
    , _adArcOptIn = Nothing
    , _adSupportsReporting = Nothing
    , _adId = Nothing
    , _adProductCode = Nothing
    }

-- | Kind of resource this is, in this case adexchangeseller#adClient.
adKind :: Lens' AdClient Text
adKind = lens _adKind (\ s a -> s{_adKind = a})

-- | Whether this ad client is opted in to ARC.
adArcOptIn :: Lens' AdClient (Maybe Bool)
adArcOptIn
  = lens _adArcOptIn (\ s a -> s{_adArcOptIn = a})

-- | Whether this ad client supports being reported on.
adSupportsReporting :: Lens' AdClient (Maybe Bool)
adSupportsReporting
  = lens _adSupportsReporting
      (\ s a -> s{_adSupportsReporting = a})

-- | Unique identifier of this ad client.
adId :: Lens' AdClient (Maybe Text)
adId = lens _adId (\ s a -> s{_adId = a})

-- | This ad client\'s product code, which corresponds to the PRODUCT_CODE
-- report dimension.
adProductCode :: Lens' AdClient (Maybe Text)
adProductCode
  = lens _adProductCode
      (\ s a -> s{_adProductCode = a})

instance FromJSON AdClient where
        parseJSON
          = withObject "AdClient"
              (\ o ->
                 AdClient <$>
                   (o .:? "kind" .!= "adexchangeseller#adClient") <*>
                     (o .:? "arcOptIn")
                     <*> (o .:? "supportsReporting")
                     <*> (o .:? "id")
                     <*> (o .:? "productCode"))

instance ToJSON AdClient where
        toJSON AdClient{..}
          = object
              (catMaybes
                 [Just ("kind" .= _adKind),
                  ("arcOptIn" .=) <$> _adArcOptIn,
                  ("supportsReporting" .=) <$> _adSupportsReporting,
                  ("id" .=) <$> _adId,
                  ("productCode" .=) <$> _adProductCode])

--
-- /See:/ 'reportHeadersItem' smart constructor.
data ReportHeadersItem = ReportHeadersItem
    { _rhiName     :: !(Maybe Text)
    , _rhiCurrency :: !(Maybe Text)
    , _rhiType     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportHeadersItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rhiName'
--
-- * 'rhiCurrency'
--
-- * 'rhiType'
reportHeadersItem
    :: ReportHeadersItem
reportHeadersItem =
    ReportHeadersItem
    { _rhiName = Nothing
    , _rhiCurrency = Nothing
    , _rhiType = Nothing
    }

-- | The name of the header.
rhiName :: Lens' ReportHeadersItem (Maybe Text)
rhiName = lens _rhiName (\ s a -> s{_rhiName = a})

-- | The currency of this column. Only present if the header type is
-- METRIC_CURRENCY.
rhiCurrency :: Lens' ReportHeadersItem (Maybe Text)
rhiCurrency
  = lens _rhiCurrency (\ s a -> s{_rhiCurrency = a})

-- | The type of the header; one of DIMENSION, METRIC_TALLY, METRIC_RATIO, or
-- METRIC_CURRENCY.
rhiType :: Lens' ReportHeadersItem (Maybe Text)
rhiType = lens _rhiType (\ s a -> s{_rhiType = a})

instance FromJSON ReportHeadersItem where
        parseJSON
          = withObject "ReportHeadersItem"
              (\ o ->
                 ReportHeadersItem <$>
                   (o .:? "name") <*> (o .:? "currency") <*>
                     (o .:? "type"))

instance ToJSON ReportHeadersItem where
        toJSON ReportHeadersItem{..}
          = object
              (catMaybes
                 [("name" .=) <$> _rhiName,
                  ("currency" .=) <$> _rhiCurrency,
                  ("type" .=) <$> _rhiType])

-- | The targeting information of this custom channel, if activated.
--
-- /See:/ 'customChannelTargetingInfo' smart constructor.
data CustomChannelTargetingInfo = CustomChannelTargetingInfo
    { _cctiLocation     :: !(Maybe Text)
    , _cctiSiteLanguage :: !(Maybe Text)
    , _cctiAdsAppearOn  :: !(Maybe Text)
    , _cctiDescription  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON CustomChannelTargetingInfo where
        parseJSON
          = withObject "CustomChannelTargetingInfo"
              (\ o ->
                 CustomChannelTargetingInfo <$>
                   (o .:? "location") <*> (o .:? "siteLanguage") <*>
                     (o .:? "adsAppearOn")
                     <*> (o .:? "description"))

instance ToJSON CustomChannelTargetingInfo where
        toJSON CustomChannelTargetingInfo{..}
          = object
              (catMaybes
                 [("location" .=) <$> _cctiLocation,
                  ("siteLanguage" .=) <$> _cctiSiteLanguage,
                  ("adsAppearOn" .=) <$> _cctiAdsAppearOn,
                  ("description" .=) <$> _cctiDescription])

--
-- /See:/ 'preferredDeals' smart constructor.
data PreferredDeals = PreferredDeals
    { _pdKind  :: !Text
    , _pdItems :: !(Maybe [PreferredDeal])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PreferredDeals' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdKind'
--
-- * 'pdItems'
preferredDeals
    :: PreferredDeals
preferredDeals =
    PreferredDeals
    { _pdKind = "adexchangeseller#preferredDeals"
    , _pdItems = Nothing
    }

-- | Kind of list this is, in this case adexchangeseller#preferredDeals.
pdKind :: Lens' PreferredDeals Text
pdKind = lens _pdKind (\ s a -> s{_pdKind = a})

-- | The preferred deals returned in this list response.
pdItems :: Lens' PreferredDeals [PreferredDeal]
pdItems
  = lens _pdItems (\ s a -> s{_pdItems = a}) . _Default
      . _Coerce

instance FromJSON PreferredDeals where
        parseJSON
          = withObject "PreferredDeals"
              (\ o ->
                 PreferredDeals <$>
                   (o .:? "kind" .!= "adexchangeseller#preferredDeals")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON PreferredDeals where
        toJSON PreferredDeals{..}
          = object
              (catMaybes
                 [Just ("kind" .= _pdKind),
                  ("items" .=) <$> _pdItems])

--
-- /See:/ 'metadata' smart constructor.
data Metadata = Metadata
    { _mKind  :: !Text
    , _mItems :: !(Maybe [ReportingMetadataEntry])
    } deriving (Eq,Show,Data,Typeable,Generic)

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

mItems :: Lens' Metadata [ReportingMetadataEntry]
mItems
  = lens _mItems (\ s a -> s{_mItems = a}) . _Default .
      _Coerce

instance FromJSON Metadata where
        parseJSON
          = withObject "Metadata"
              (\ o ->
                 Metadata <$>
                   (o .:? "kind" .!= "adexchangeseller#metadata") <*>
                     (o .:? "items" .!= mempty))

instance ToJSON Metadata where
        toJSON Metadata{..}
          = object
              (catMaybes
                 [Just ("kind" .= _mKind), ("items" .=) <$> _mItems])

--
-- /See:/ 'customChannel' smart constructor.
data CustomChannel = CustomChannel
    { _cTargetingInfo :: !(Maybe CustomChannelTargetingInfo)
    , _cKind          :: !Text
    , _cName          :: !(Maybe Text)
    , _cCode          :: !(Maybe Text)
    , _cId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomChannel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cTargetingInfo'
--
-- * 'cKind'
--
-- * 'cName'
--
-- * 'cCode'
--
-- * 'cId'
customChannel
    :: CustomChannel
customChannel =
    CustomChannel
    { _cTargetingInfo = Nothing
    , _cKind = "adexchangeseller#customChannel"
    , _cName = Nothing
    , _cCode = Nothing
    , _cId = Nothing
    }

-- | The targeting information of this custom channel, if activated.
cTargetingInfo :: Lens' CustomChannel (Maybe CustomChannelTargetingInfo)
cTargetingInfo
  = lens _cTargetingInfo
      (\ s a -> s{_cTargetingInfo = a})

-- | Kind of resource this is, in this case adexchangeseller#customChannel.
cKind :: Lens' CustomChannel Text
cKind = lens _cKind (\ s a -> s{_cKind = a})

-- | Name of this custom channel.
cName :: Lens' CustomChannel (Maybe Text)
cName = lens _cName (\ s a -> s{_cName = a})

-- | Code of this custom channel, not necessarily unique across ad clients.
cCode :: Lens' CustomChannel (Maybe Text)
cCode = lens _cCode (\ s a -> s{_cCode = a})

-- | Unique identifier of this custom channel. This should be considered an
-- opaque identifier; it is not safe to rely on it being in any particular
-- format.
cId :: Lens' CustomChannel (Maybe Text)
cId = lens _cId (\ s a -> s{_cId = a})

instance FromJSON CustomChannel where
        parseJSON
          = withObject "CustomChannel"
              (\ o ->
                 CustomChannel <$>
                   (o .:? "targetingInfo") <*>
                     (o .:? "kind" .!= "adexchangeseller#customChannel")
                     <*> (o .:? "name")
                     <*> (o .:? "code")
                     <*> (o .:? "id"))

instance ToJSON CustomChannel where
        toJSON CustomChannel{..}
          = object
              (catMaybes
                 [("targetingInfo" .=) <$> _cTargetingInfo,
                  Just ("kind" .= _cKind), ("name" .=) <$> _cName,
                  ("code" .=) <$> _cCode, ("id" .=) <$> _cId])

--
-- /See:/ 'urlChannel' smart constructor.
data URLChannel = URLChannel
    { _urlcKind       :: !Text
    , _urlcId         :: !(Maybe Text)
    , _urlcURLPattern :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLChannel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urlcKind'
--
-- * 'urlcId'
--
-- * 'urlcURLPattern'
urlChannel
    :: URLChannel
urlChannel =
    URLChannel
    { _urlcKind = "adexchangeseller#urlChannel"
    , _urlcId = Nothing
    , _urlcURLPattern = Nothing
    }

-- | Kind of resource this is, in this case adexchangeseller#urlChannel.
urlcKind :: Lens' URLChannel Text
urlcKind = lens _urlcKind (\ s a -> s{_urlcKind = a})

-- | Unique identifier of this URL channel. This should be considered an
-- opaque identifier; it is not safe to rely on it being in any particular
-- format.
urlcId :: Lens' URLChannel (Maybe Text)
urlcId = lens _urlcId (\ s a -> s{_urlcId = a})

-- | URL Pattern of this URL channel. Does not include \"http:\/\/\" or
-- \"https:\/\/\". Example: www.example.com\/home
urlcURLPattern :: Lens' URLChannel (Maybe Text)
urlcURLPattern
  = lens _urlcURLPattern
      (\ s a -> s{_urlcURLPattern = a})

instance FromJSON URLChannel where
        parseJSON
          = withObject "URLChannel"
              (\ o ->
                 URLChannel <$>
                   (o .:? "kind" .!= "adexchangeseller#urlChannel") <*>
                     (o .:? "id")
                     <*> (o .:? "urlPattern"))

instance ToJSON URLChannel where
        toJSON URLChannel{..}
          = object
              (catMaybes
                 [Just ("kind" .= _urlcKind), ("id" .=) <$> _urlcId,
                  ("urlPattern" .=) <$> _urlcURLPattern])

--
-- /See:/ 'preferredDeal' smart constructor.
data PreferredDeal = PreferredDeal
    { _pAdvertiserName   :: !(Maybe Text)
    , _pCurrencyCode     :: !(Maybe Text)
    , _pStartTime        :: !(Maybe Word64)
    , _pKind             :: !Text
    , _pBuyerNetworkName :: !(Maybe Text)
    , _pEndTime          :: !(Maybe Word64)
    , _pId               :: !(Maybe Int64)
    , _pFixedCpm         :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PreferredDeal' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pAdvertiserName'
--
-- * 'pCurrencyCode'
--
-- * 'pStartTime'
--
-- * 'pKind'
--
-- * 'pBuyerNetworkName'
--
-- * 'pEndTime'
--
-- * 'pId'
--
-- * 'pFixedCpm'
preferredDeal
    :: PreferredDeal
preferredDeal =
    PreferredDeal
    { _pAdvertiserName = Nothing
    , _pCurrencyCode = Nothing
    , _pStartTime = Nothing
    , _pKind = "adexchangeseller#preferredDeal"
    , _pBuyerNetworkName = Nothing
    , _pEndTime = Nothing
    , _pId = Nothing
    , _pFixedCpm = Nothing
    }

-- | The name of the advertiser this deal is for.
pAdvertiserName :: Lens' PreferredDeal (Maybe Text)
pAdvertiserName
  = lens _pAdvertiserName
      (\ s a -> s{_pAdvertiserName = a})

-- | The currency code that applies to the fixed_cpm value. If not set then
-- assumed to be USD.
pCurrencyCode :: Lens' PreferredDeal (Maybe Text)
pCurrencyCode
  = lens _pCurrencyCode
      (\ s a -> s{_pCurrencyCode = a})

-- | Time when this deal becomes active in seconds since the epoch (GMT). If
-- not set then this deal is active immediately upon creation.
pStartTime :: Lens' PreferredDeal (Maybe Word64)
pStartTime
  = lens _pStartTime (\ s a -> s{_pStartTime = a})

-- | Kind of resource this is, in this case adexchangeseller#preferredDeal.
pKind :: Lens' PreferredDeal Text
pKind = lens _pKind (\ s a -> s{_pKind = a})

-- | The name of the buyer network this deal is for.
pBuyerNetworkName :: Lens' PreferredDeal (Maybe Text)
pBuyerNetworkName
  = lens _pBuyerNetworkName
      (\ s a -> s{_pBuyerNetworkName = a})

-- | Time when this deal stops being active in seconds since the epoch (GMT).
-- If not set then this deal is valid until manually disabled by the
-- publisher.
pEndTime :: Lens' PreferredDeal (Maybe Word64)
pEndTime = lens _pEndTime (\ s a -> s{_pEndTime = a})

-- | Unique identifier of this preferred deal.
pId :: Lens' PreferredDeal (Maybe Int64)
pId = lens _pId (\ s a -> s{_pId = a})

-- | The fixed price for this preferred deal. In cpm micros of currency
-- according to currencyCode. If set, then this preferred deal is eligible
-- for the fixed price tier of buying (highest priority, pay exactly the
-- configured fixed price).
pFixedCpm :: Lens' PreferredDeal (Maybe Int64)
pFixedCpm
  = lens _pFixedCpm (\ s a -> s{_pFixedCpm = a})

instance FromJSON PreferredDeal where
        parseJSON
          = withObject "PreferredDeal"
              (\ o ->
                 PreferredDeal <$>
                   (o .:? "advertiserName") <*> (o .:? "currencyCode")
                     <*> (o .:? "startTime")
                     <*>
                     (o .:? "kind" .!= "adexchangeseller#preferredDeal")
                     <*> (o .:? "buyerNetworkName")
                     <*> (o .:? "endTime")
                     <*> (o .:? "id")
                     <*> (o .:? "fixedCpm"))

instance ToJSON PreferredDeal where
        toJSON PreferredDeal{..}
          = object
              (catMaybes
                 [("advertiserName" .=) <$> _pAdvertiserName,
                  ("currencyCode" .=) <$> _pCurrencyCode,
                  ("startTime" .=) <$> _pStartTime,
                  Just ("kind" .= _pKind),
                  ("buyerNetworkName" .=) <$> _pBuyerNetworkName,
                  ("endTime" .=) <$> _pEndTime, ("id" .=) <$> _pId,
                  ("fixedCpm" .=) <$> _pFixedCpm])
