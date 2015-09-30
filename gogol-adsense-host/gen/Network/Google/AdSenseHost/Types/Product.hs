{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AdSenseHost.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AdSenseHost.Types.Product where

import           Network.Google.AdSenseHost.Types.Sum
import           Network.Google.Prelude

--
-- /See:/ 'associationSession' smart constructor.
data AssociationSession = AssociationSession
    { _asStatus        :: !(Maybe Text)
    , _asKind          :: !Text
    , _asWebsiteLocale :: !(Maybe Text)
    , _asUserLocale    :: !(Maybe Text)
    , _asAccountId     :: !(Maybe Text)
    , _asProductCodes  :: !(Maybe [Text])
    , _asId            :: !(Maybe Text)
    , _asWebsiteUrl    :: !(Maybe Text)
    , _asRedirectUrl   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AssociationSession' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asStatus'
--
-- * 'asKind'
--
-- * 'asWebsiteLocale'
--
-- * 'asUserLocale'
--
-- * 'asAccountId'
--
-- * 'asProductCodes'
--
-- * 'asId'
--
-- * 'asWebsiteUrl'
--
-- * 'asRedirectUrl'
associationSession
    :: AssociationSession
associationSession =
    AssociationSession
    { _asStatus = Nothing
    , _asKind = "adsensehost#associationSession"
    , _asWebsiteLocale = Nothing
    , _asUserLocale = Nothing
    , _asAccountId = Nothing
    , _asProductCodes = Nothing
    , _asId = Nothing
    , _asWebsiteUrl = Nothing
    , _asRedirectUrl = Nothing
    }

-- | Status of the completed association, available once the association
-- callback token has been verified. One of ACCEPTED, REJECTED, or ERROR.
asStatus :: Lens' AssociationSession (Maybe Text)
asStatus = lens _asStatus (\ s a -> s{_asStatus = a})

-- | Kind of resource this is, in this case adsensehost#associationSession.
asKind :: Lens' AssociationSession Text
asKind = lens _asKind (\ s a -> s{_asKind = a})

-- | The locale of the user\'s hosted website.
asWebsiteLocale :: Lens' AssociationSession (Maybe Text)
asWebsiteLocale
  = lens _asWebsiteLocale
      (\ s a -> s{_asWebsiteLocale = a})

-- | The preferred locale of the user themselves when going through the
-- AdSense association flow.
asUserLocale :: Lens' AssociationSession (Maybe Text)
asUserLocale
  = lens _asUserLocale (\ s a -> s{_asUserLocale = a})

-- | Hosted account id of the associated publisher after association. Present
-- if status is ACCEPTED.
asAccountId :: Lens' AssociationSession (Maybe Text)
asAccountId
  = lens _asAccountId (\ s a -> s{_asAccountId = a})

-- | The products to associate with the user. Options: AFC, AFF, AFS, AFMC
asProductCodes :: Lens' AssociationSession [Text]
asProductCodes
  = lens _asProductCodes
      (\ s a -> s{_asProductCodes = a})
      . _Default
      . _Coerce

-- | Unique identifier of this association session.
asId :: Lens' AssociationSession (Maybe Text)
asId = lens _asId (\ s a -> s{_asId = a})

-- | The URL of the user\'s hosted website.
asWebsiteUrl :: Lens' AssociationSession (Maybe Text)
asWebsiteUrl
  = lens _asWebsiteUrl (\ s a -> s{_asWebsiteUrl = a})

-- | Redirect URL of this association session. Used to redirect users into
-- the AdSense association flow.
asRedirectUrl :: Lens' AssociationSession (Maybe Text)
asRedirectUrl
  = lens _asRedirectUrl
      (\ s a -> s{_asRedirectUrl = a})

instance FromJSON AssociationSession where
        parseJSON
          = withObject "AssociationSession"
              (\ o ->
                 AssociationSession <$>
                   (o .:? "status") <*>
                     (o .:? "kind" .!= "adsensehost#associationSession")
                     <*> (o .:? "websiteLocale")
                     <*> (o .:? "userLocale")
                     <*> (o .:? "accountId")
                     <*> (o .:? "productCodes" .!= mempty)
                     <*> (o .:? "id")
                     <*> (o .:? "websiteUrl")
                     <*> (o .:? "redirectUrl"))

instance ToJSON AssociationSession where
        toJSON AssociationSession{..}
          = object
              (catMaybes
                 [("status" .=) <$> _asStatus,
                  Just ("kind" .= _asKind),
                  ("websiteLocale" .=) <$> _asWebsiteLocale,
                  ("userLocale" .=) <$> _asUserLocale,
                  ("accountId" .=) <$> _asAccountId,
                  ("productCodes" .=) <$> _asProductCodes,
                  ("id" .=) <$> _asId,
                  ("websiteUrl" .=) <$> _asWebsiteUrl,
                  ("redirectUrl" .=) <$> _asRedirectUrl])

--
-- /See:/ 'adClients' smart constructor.
data AdClients = AdClients
    { _acEtag          :: !(Maybe Text)
    , _acNextPageToken :: !(Maybe Text)
    , _acKind          :: !Text
    , _acItems         :: !(Maybe [Maybe AdClient])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    , _acKind = "adsensehost#adClients"
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

-- | Kind of list this is, in this case adsensehost#adClients.
acKind :: Lens' AdClients Text
acKind = lens _acKind (\ s a -> s{_acKind = a})

-- | The ad clients returned in this list response.
acItems :: Lens' AdClients [Maybe AdClient]
acItems
  = lens _acItems (\ s a -> s{_acItems = a}) . _Default
      . _Coerce

instance FromJSON AdClients where
        parseJSON
          = withObject "AdClients"
              (\ o ->
                 AdClients <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "adsensehost#adClients")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON AdClients where
        toJSON AdClients{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _acEtag,
                  ("nextPageToken" .=) <$> _acNextPageToken,
                  Just ("kind" .= _acKind), ("items" .=) <$> _acItems])

--
-- /See:/ 'accounts' smart constructor.
data Accounts = Accounts
    { _aEtag  :: !(Maybe Text)
    , _aKind  :: !Text
    , _aItems :: !(Maybe [Maybe Account])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Accounts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aEtag'
--
-- * 'aKind'
--
-- * 'aItems'
accounts
    :: Accounts
accounts =
    Accounts
    { _aEtag = Nothing
    , _aKind = "adsensehost#accounts"
    , _aItems = Nothing
    }

-- | ETag of this response for caching purposes.
aEtag :: Lens' Accounts (Maybe Text)
aEtag = lens _aEtag (\ s a -> s{_aEtag = a})

-- | Kind of list this is, in this case adsensehost#accounts.
aKind :: Lens' Accounts Text
aKind = lens _aKind (\ s a -> s{_aKind = a})

-- | The accounts returned in this list response.
aItems :: Lens' Accounts [Maybe Account]
aItems
  = lens _aItems (\ s a -> s{_aItems = a}) . _Default .
      _Coerce

instance FromJSON Accounts where
        parseJSON
          = withObject "Accounts"
              (\ o ->
                 Accounts <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "adsensehost#accounts")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON Accounts where
        toJSON Accounts{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _aEtag, Just ("kind" .= _aKind),
                  ("items" .=) <$> _aItems])

--
-- /See:/ 'adUnits' smart constructor.
data AdUnits = AdUnits
    { _auEtag          :: !(Maybe Text)
    , _auNextPageToken :: !(Maybe Text)
    , _auKind          :: !Text
    , _auItems         :: !(Maybe [Maybe AdUnit])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdUnits' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auEtag'
--
-- * 'auNextPageToken'
--
-- * 'auKind'
--
-- * 'auItems'
adUnits
    :: AdUnits
adUnits =
    AdUnits
    { _auEtag = Nothing
    , _auNextPageToken = Nothing
    , _auKind = "adsensehost#adUnits"
    , _auItems = Nothing
    }

-- | ETag of this response for caching purposes.
auEtag :: Lens' AdUnits (Maybe Text)
auEtag = lens _auEtag (\ s a -> s{_auEtag = a})

-- | Continuation token used to page through ad units. To retrieve the next
-- page of results, set the next request\'s \"pageToken\" value to this.
auNextPageToken :: Lens' AdUnits (Maybe Text)
auNextPageToken
  = lens _auNextPageToken
      (\ s a -> s{_auNextPageToken = a})

-- | Kind of list this is, in this case adsensehost#adUnits.
auKind :: Lens' AdUnits Text
auKind = lens _auKind (\ s a -> s{_auKind = a})

-- | The ad units returned in this list response.
auItems :: Lens' AdUnits [Maybe AdUnit]
auItems
  = lens _auItems (\ s a -> s{_auItems = a}) . _Default
      . _Coerce

instance FromJSON AdUnits where
        parseJSON
          = withObject "AdUnits"
              (\ o ->
                 AdUnits <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "adsensehost#adUnits")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON AdUnits where
        toJSON AdUnits{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _auEtag,
                  ("nextPageToken" .=) <$> _auNextPageToken,
                  Just ("kind" .= _auKind), ("items" .=) <$> _auItems])

--
-- /See:/ 'adUnit' smart constructor.
data AdUnit = AdUnit
    { _adStatus                   :: !(Maybe Text)
    , _adMobileContentAdsSettings :: !(Maybe AdUnitMobileContentAdsSettings)
    , _adKind                     :: !Text
    , _adCustomStyle              :: !(Maybe (Maybe AdStyle))
    , _adName                     :: !(Maybe Text)
    , _adContentAdsSettings       :: !(Maybe AdUnitContentAdsSettings)
    , _adCode                     :: !(Maybe Text)
    , _adId                       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdUnit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adStatus'
--
-- * 'adMobileContentAdsSettings'
--
-- * 'adKind'
--
-- * 'adCustomStyle'
--
-- * 'adName'
--
-- * 'adContentAdsSettings'
--
-- * 'adCode'
--
-- * 'adId'
adUnit
    :: AdUnit
adUnit =
    AdUnit
    { _adStatus = Nothing
    , _adMobileContentAdsSettings = Nothing
    , _adKind = "adsensehost#adUnit"
    , _adCustomStyle = Nothing
    , _adName = Nothing
    , _adContentAdsSettings = Nothing
    , _adCode = Nothing
    , _adId = Nothing
    }

-- | Status of this ad unit. Possible values are: NEW: Indicates that the ad
-- unit was created within the last seven days and does not yet have any
-- activity associated with it. ACTIVE: Indicates that there has been
-- activity on this ad unit in the last seven days. INACTIVE: Indicates
-- that there has been no activity on this ad unit in the last seven days.
adStatus :: Lens' AdUnit (Maybe Text)
adStatus = lens _adStatus (\ s a -> s{_adStatus = a})

-- | Settings specific to WAP mobile content ads (AFMC).
adMobileContentAdsSettings :: Lens' AdUnit (Maybe AdUnitMobileContentAdsSettings)
adMobileContentAdsSettings
  = lens _adMobileContentAdsSettings
      (\ s a -> s{_adMobileContentAdsSettings = a})

-- | Kind of resource this is, in this case adsensehost#adUnit.
adKind :: Lens' AdUnit Text
adKind = lens _adKind (\ s a -> s{_adKind = a})

-- | Custom style information specific to this ad unit.
adCustomStyle :: Lens' AdUnit (Maybe (Maybe AdStyle))
adCustomStyle
  = lens _adCustomStyle
      (\ s a -> s{_adCustomStyle = a})

-- | Name of this ad unit.
adName :: Lens' AdUnit (Maybe Text)
adName = lens _adName (\ s a -> s{_adName = a})

-- | Settings specific to content ads (AFC) and highend mobile content ads
-- (AFMC).
adContentAdsSettings :: Lens' AdUnit (Maybe AdUnitContentAdsSettings)
adContentAdsSettings
  = lens _adContentAdsSettings
      (\ s a -> s{_adContentAdsSettings = a})

-- | Identity code of this ad unit, not necessarily unique across ad clients.
adCode :: Lens' AdUnit (Maybe Text)
adCode = lens _adCode (\ s a -> s{_adCode = a})

-- | Unique identifier of this ad unit. This should be considered an opaque
-- identifier; it is not safe to rely on it being in any particular format.
adId :: Lens' AdUnit (Maybe Text)
adId = lens _adId (\ s a -> s{_adId = a})

instance FromJSON AdUnit where
        parseJSON
          = withObject "AdUnit"
              (\ o ->
                 AdUnit <$>
                   (o .:? "status") <*>
                     (o .:? "mobileContentAdsSettings")
                     <*> (o .:? "kind" .!= "adsensehost#adUnit")
                     <*> (o .:? "customStyle")
                     <*> (o .:? "name")
                     <*> (o .:? "contentAdsSettings")
                     <*> (o .:? "code")
                     <*> (o .:? "id"))

instance ToJSON AdUnit where
        toJSON AdUnit{..}
          = object
              (catMaybes
                 [("status" .=) <$> _adStatus,
                  ("mobileContentAdsSettings" .=) <$>
                    _adMobileContentAdsSettings,
                  Just ("kind" .= _adKind),
                  ("customStyle" .=) <$> _adCustomStyle,
                  ("name" .=) <$> _adName,
                  ("contentAdsSettings" .=) <$> _adContentAdsSettings,
                  ("code" .=) <$> _adCode, ("id" .=) <$> _adId])

--
-- /See:/ 'uRLChannels' smart constructor.
data URLChannels = URLChannels
    { _ucEtag          :: !(Maybe Text)
    , _ucNextPageToken :: !(Maybe Text)
    , _ucKind          :: !Text
    , _ucItems         :: !(Maybe [Maybe URLChannel])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
uRLChannels
    :: URLChannels
uRLChannels =
    URLChannels
    { _ucEtag = Nothing
    , _ucNextPageToken = Nothing
    , _ucKind = "adsensehost#urlChannels"
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

-- | Kind of list this is, in this case adsensehost#urlChannels.
ucKind :: Lens' URLChannels Text
ucKind = lens _ucKind (\ s a -> s{_ucKind = a})

-- | The URL channels returned in this list response.
ucItems :: Lens' URLChannels [Maybe URLChannel]
ucItems
  = lens _ucItems (\ s a -> s{_ucItems = a}) . _Default
      . _Coerce

instance FromJSON URLChannels where
        parseJSON
          = withObject "URLChannels"
              (\ o ->
                 URLChannels <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "adsensehost#urlChannels")
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
    , _ccItems         :: !(Maybe [Maybe CustomChannel])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    , _ccKind = "adsensehost#customChannels"
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

-- | Kind of list this is, in this case adsensehost#customChannels.
ccKind :: Lens' CustomChannels Text
ccKind = lens _ccKind (\ s a -> s{_ccKind = a})

-- | The custom channels returned in this list response.
ccItems :: Lens' CustomChannels [Maybe CustomChannel]
ccItems
  = lens _ccItems (\ s a -> s{_ccItems = a}) . _Default
      . _Coerce

instance FromJSON CustomChannels where
        parseJSON
          = withObject "CustomChannels"
              (\ o ->
                 CustomChannels <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "adsensehost#customChannels")
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
    { _rKind = "adsensehost#report"
    , _rAverages = Nothing
    , _rWarnings = Nothing
    , _rRows = Nothing
    , _rTotals = Nothing
    , _rHeaders = Nothing
    , _rTotalMatchedRows = Nothing
    }

-- | Kind this is, in this case adsensehost#report.
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
                   (o .:? "kind" .!= "adsensehost#report") <*>
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
-- /See:/ 'account' smart constructor.
data Account = Account
    { _accStatus :: !(Maybe Text)
    , _accKind   :: !Text
    , _accName   :: !(Maybe Text)
    , _accId     :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Account' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'accStatus'
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
    { _accStatus = Nothing
    , _accKind = "adsensehost#account"
    , _accName = Nothing
    , _accId = Nothing
    }

-- | Approval status of this account. One of: PENDING, APPROVED, DISABLED.
accStatus :: Lens' Account (Maybe Text)
accStatus
  = lens _accStatus (\ s a -> s{_accStatus = a})

-- | Kind of resource this is, in this case adsensehost#account.
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
                   (o .:? "status") <*>
                     (o .:? "kind" .!= "adsensehost#account")
                     <*> (o .:? "name")
                     <*> (o .:? "id"))

instance ToJSON Account where
        toJSON Account{..}
          = object
              (catMaybes
                 [("status" .=) <$> _accStatus,
                  Just ("kind" .= _accKind), ("name" .=) <$> _accName,
                  ("id" .=) <$> _accId])

--
-- /See:/ 'adClient' smart constructor.
data AdClient = AdClient
    { _aaKind              :: !Text
    , _aaArcOptIn          :: !(Maybe Bool)
    , _aaSupportsReporting :: !(Maybe Bool)
    , _aaId                :: !(Maybe Text)
    , _aaProductCode       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdClient' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaKind'
--
-- * 'aaArcOptIn'
--
-- * 'aaSupportsReporting'
--
-- * 'aaId'
--
-- * 'aaProductCode'
adClient
    :: AdClient
adClient =
    AdClient
    { _aaKind = "adsensehost#adClient"
    , _aaArcOptIn = Nothing
    , _aaSupportsReporting = Nothing
    , _aaId = Nothing
    , _aaProductCode = Nothing
    }

-- | Kind of resource this is, in this case adsensehost#adClient.
aaKind :: Lens' AdClient Text
aaKind = lens _aaKind (\ s a -> s{_aaKind = a})

-- | Whether this ad client is opted in to ARC.
aaArcOptIn :: Lens' AdClient (Maybe Bool)
aaArcOptIn
  = lens _aaArcOptIn (\ s a -> s{_aaArcOptIn = a})

-- | Whether this ad client supports being reported on.
aaSupportsReporting :: Lens' AdClient (Maybe Bool)
aaSupportsReporting
  = lens _aaSupportsReporting
      (\ s a -> s{_aaSupportsReporting = a})

-- | Unique identifier of this ad client.
aaId :: Lens' AdClient (Maybe Text)
aaId = lens _aaId (\ s a -> s{_aaId = a})

-- | This ad client\'s product code, which corresponds to the PRODUCT_CODE
-- report dimension.
aaProductCode :: Lens' AdClient (Maybe Text)
aaProductCode
  = lens _aaProductCode
      (\ s a -> s{_aaProductCode = a})

instance FromJSON AdClient where
        parseJSON
          = withObject "AdClient"
              (\ o ->
                 AdClient <$>
                   (o .:? "kind" .!= "adsensehost#adClient") <*>
                     (o .:? "arcOptIn")
                     <*> (o .:? "supportsReporting")
                     <*> (o .:? "id")
                     <*> (o .:? "productCode"))

instance ToJSON AdClient where
        toJSON AdClient{..}
          = object
              (catMaybes
                 [Just ("kind" .= _aaKind),
                  ("arcOptIn" .=) <$> _aaArcOptIn,
                  ("supportsReporting" .=) <$> _aaSupportsReporting,
                  ("id" .=) <$> _aaId,
                  ("productCode" .=) <$> _aaProductCode])

--
-- /See:/ 'adStyle' smart constructor.
data AdStyle = AdStyle
    { _assCorners :: !(Maybe Text)
    , _assKind    :: !Text
    , _assFont    :: !(Maybe AdStyleFont)
    , _assColors  :: !(Maybe AdStyleColors)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdStyle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'assCorners'
--
-- * 'assKind'
--
-- * 'assFont'
--
-- * 'assColors'
adStyle
    :: AdStyle
adStyle =
    AdStyle
    { _assCorners = Nothing
    , _assKind = "adsensehost#adStyle"
    , _assFont = Nothing
    , _assColors = Nothing
    }

-- | The style of the corners in the ad. Possible values are SQUARE,
-- SLIGHTLY_ROUNDED and VERY_ROUNDED.
assCorners :: Lens' AdStyle (Maybe Text)
assCorners
  = lens _assCorners (\ s a -> s{_assCorners = a})

-- | Kind this is, in this case adsensehost#adStyle.
assKind :: Lens' AdStyle Text
assKind = lens _assKind (\ s a -> s{_assKind = a})

-- | The font which is included in the style.
assFont :: Lens' AdStyle (Maybe AdStyleFont)
assFont = lens _assFont (\ s a -> s{_assFont = a})

-- | The colors included in the style. These are represented as six
-- hexadecimal characters, similar to HTML color codes, but without the
-- leading hash.
assColors :: Lens' AdStyle (Maybe AdStyleColors)
assColors
  = lens _assColors (\ s a -> s{_assColors = a})

instance FromJSON AdStyle where
        parseJSON
          = withObject "AdStyle"
              (\ o ->
                 AdStyle <$>
                   (o .:? "corners") <*>
                     (o .:? "kind" .!= "adsensehost#adStyle")
                     <*> (o .:? "font")
                     <*> (o .:? "colors"))

instance ToJSON AdStyle where
        toJSON AdStyle{..}
          = object
              (catMaybes
                 [("corners" .=) <$> _assCorners,
                  Just ("kind" .= _assKind), ("font" .=) <$> _assFont,
                  ("colors" .=) <$> _assColors])

--
-- /See:/ 'customChannel' smart constructor.
data CustomChannel = CustomChannel
    { _cKind :: !Text
    , _cName :: !(Maybe Text)
    , _cCode :: !(Maybe Text)
    , _cId   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomChannel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
    { _cKind = "adsensehost#customChannel"
    , _cName = Nothing
    , _cCode = Nothing
    , _cId = Nothing
    }

-- | Kind of resource this is, in this case adsensehost#customChannel.
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
                   (o .:? "kind" .!= "adsensehost#customChannel") <*>
                     (o .:? "name")
                     <*> (o .:? "code")
                     <*> (o .:? "id"))

instance ToJSON CustomChannel where
        toJSON CustomChannel{..}
          = object
              (catMaybes
                 [Just ("kind" .= _cKind), ("name" .=) <$> _cName,
                  ("code" .=) <$> _cCode, ("id" .=) <$> _cId])

--
-- /See:/ 'uRLChannel' smart constructor.
data URLChannel = URLChannel
    { _urlcKind       :: !Text
    , _urlcId         :: !(Maybe Text)
    , _urlcUrlPattern :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLChannel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urlcKind'
--
-- * 'urlcId'
--
-- * 'urlcUrlPattern'
uRLChannel
    :: URLChannel
uRLChannel =
    URLChannel
    { _urlcKind = "adsensehost#urlChannel"
    , _urlcId = Nothing
    , _urlcUrlPattern = Nothing
    }

-- | Kind of resource this is, in this case adsensehost#urlChannel.
urlcKind :: Lens' URLChannel Text
urlcKind = lens _urlcKind (\ s a -> s{_urlcKind = a})

-- | Unique identifier of this URL channel. This should be considered an
-- opaque identifier; it is not safe to rely on it being in any particular
-- format.
urlcId :: Lens' URLChannel (Maybe Text)
urlcId = lens _urlcId (\ s a -> s{_urlcId = a})

-- | URL Pattern of this URL channel. Does not include \"http:\/\/\" or
-- \"https:\/\/\". Example: www.example.com\/home
urlcUrlPattern :: Lens' URLChannel (Maybe Text)
urlcUrlPattern
  = lens _urlcUrlPattern
      (\ s a -> s{_urlcUrlPattern = a})

instance FromJSON URLChannel where
        parseJSON
          = withObject "URLChannel"
              (\ o ->
                 URLChannel <$>
                   (o .:? "kind" .!= "adsensehost#urlChannel") <*>
                     (o .:? "id")
                     <*> (o .:? "urlPattern"))

instance ToJSON URLChannel where
        toJSON URLChannel{..}
          = object
              (catMaybes
                 [Just ("kind" .= _urlcKind), ("id" .=) <$> _urlcId,
                  ("urlPattern" .=) <$> _urlcUrlPattern])

--
-- /See:/ 'adCode' smart constructor.
data AdCode = AdCode
    { _addKind   :: !Text
    , _addAdCode :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdCode' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'addKind'
--
-- * 'addAdCode'
adCode
    :: AdCode
adCode =
    AdCode
    { _addKind = "adsensehost#adCode"
    , _addAdCode = Nothing
    }

-- | Kind this is, in this case adsensehost#adCode.
addKind :: Lens' AdCode Text
addKind = lens _addKind (\ s a -> s{_addKind = a})

-- | The ad code snippet.
addAdCode :: Lens' AdCode (Maybe Text)
addAdCode
  = lens _addAdCode (\ s a -> s{_addAdCode = a})

instance FromJSON AdCode where
        parseJSON
          = withObject "AdCode"
              (\ o ->
                 AdCode <$>
                   (o .:? "kind" .!= "adsensehost#adCode") <*>
                     (o .:? "adCode"))

instance ToJSON AdCode where
        toJSON AdCode{..}
          = object
              (catMaybes
                 [Just ("kind" .= _addKind),
                  ("adCode" .=) <$> _addAdCode])
