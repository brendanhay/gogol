{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AdSenseHost.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AdSenseHost.Types.Product where

import           Network.Google.AdSenseHost.Types.Sum
import           Network.Google.Prelude

--
-- /See:/ 'adClients' smart constructor.
data AdClients = AdClients'
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
    AdClients'
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
acItems :: Lens' AdClients [AdClient]
acItems
  = lens _acItems (\ s a -> s{_acItems = a}) . _Default
      . _Coerce

instance FromJSON AdClients where
        parseJSON
          = withObject "AdClients"
              (\ o ->
                 AdClients' <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "adsensehost#adClients")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON AdClients where
        toJSON AdClients'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _acEtag,
                  ("nextPageToken" .=) <$> _acNextPageToken,
                  Just ("kind" .= _acKind), ("items" .=) <$> _acItems])

--
-- /See:/ 'associationSession' smart constructor.
data AssociationSession = AssociationSession'
    { _asStatus        :: !(Maybe Text)
    , _asKind          :: !Text
    , _asWebsiteLocale :: !(Maybe Text)
    , _asUserLocale    :: !(Maybe Text)
    , _asAccountId     :: !(Maybe Text)
    , _asProductCodes  :: !(Maybe [Text])
    , _asId            :: !(Maybe Text)
    , _asWebsiteURL    :: !(Maybe Text)
    , _asRedirectURL   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'asWebsiteURL'
--
-- * 'asRedirectURL'
associationSession
    :: AssociationSession
associationSession =
    AssociationSession'
    { _asStatus = Nothing
    , _asKind = "adsensehost#associationSession"
    , _asWebsiteLocale = Nothing
    , _asUserLocale = Nothing
    , _asAccountId = Nothing
    , _asProductCodes = Nothing
    , _asId = Nothing
    , _asWebsiteURL = Nothing
    , _asRedirectURL = Nothing
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

-- | The products to associate with the user. Options: AFC, AFG, AFV, AFS
-- (deprecated), AFMC (deprecated)
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
asWebsiteURL :: Lens' AssociationSession (Maybe Text)
asWebsiteURL
  = lens _asWebsiteURL (\ s a -> s{_asWebsiteURL = a})

-- | Redirect URL of this association session. Used to redirect users into
-- the AdSense association flow.
asRedirectURL :: Lens' AssociationSession (Maybe Text)
asRedirectURL
  = lens _asRedirectURL
      (\ s a -> s{_asRedirectURL = a})

instance FromJSON AssociationSession where
        parseJSON
          = withObject "AssociationSession"
              (\ o ->
                 AssociationSession' <$>
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
        toJSON AssociationSession'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _asStatus,
                  Just ("kind" .= _asKind),
                  ("websiteLocale" .=) <$> _asWebsiteLocale,
                  ("userLocale" .=) <$> _asUserLocale,
                  ("accountId" .=) <$> _asAccountId,
                  ("productCodes" .=) <$> _asProductCodes,
                  ("id" .=) <$> _asId,
                  ("websiteUrl" .=) <$> _asWebsiteURL,
                  ("redirectUrl" .=) <$> _asRedirectURL])

--
-- /See:/ 'accounts' smart constructor.
data Accounts = Accounts'
    { _aEtag  :: !(Maybe Text)
    , _aKind  :: !Text
    , _aItems :: !(Maybe [Account])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    Accounts'
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
aItems :: Lens' Accounts [Account]
aItems
  = lens _aItems (\ s a -> s{_aItems = a}) . _Default .
      _Coerce

instance FromJSON Accounts where
        parseJSON
          = withObject "Accounts"
              (\ o ->
                 Accounts' <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "adsensehost#accounts")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON Accounts where
        toJSON Accounts'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _aEtag, Just ("kind" .= _aKind),
                  ("items" .=) <$> _aItems])

--
-- /See:/ 'adUnits' smart constructor.
data AdUnits = AdUnits'
    { _auEtag          :: !(Maybe Text)
    , _auNextPageToken :: !(Maybe Text)
    , _auKind          :: !Text
    , _auItems         :: !(Maybe [AdUnit])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    AdUnits'
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
auItems :: Lens' AdUnits [AdUnit]
auItems
  = lens _auItems (\ s a -> s{_auItems = a}) . _Default
      . _Coerce

instance FromJSON AdUnits where
        parseJSON
          = withObject "AdUnits"
              (\ o ->
                 AdUnits' <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "adsensehost#adUnits")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON AdUnits where
        toJSON AdUnits'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _auEtag,
                  ("nextPageToken" .=) <$> _auNextPageToken,
                  Just ("kind" .= _auKind), ("items" .=) <$> _auItems])

--
-- /See:/ 'urlChannels' smart constructor.
data URLChannels = URLChannels'
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
    URLChannels'
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
ucItems :: Lens' URLChannels [URLChannel]
ucItems
  = lens _ucItems (\ s a -> s{_ucItems = a}) . _Default
      . _Coerce

instance FromJSON URLChannels where
        parseJSON
          = withObject "URLChannels"
              (\ o ->
                 URLChannels' <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "adsensehost#urlChannels")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON URLChannels where
        toJSON URLChannels'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _ucEtag,
                  ("nextPageToken" .=) <$> _ucNextPageToken,
                  Just ("kind" .= _ucKind), ("items" .=) <$> _ucItems])

--
-- /See:/ 'customChannels' smart constructor.
data CustomChannels = CustomChannels'
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
    CustomChannels'
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
ccItems :: Lens' CustomChannels [CustomChannel]
ccItems
  = lens _ccItems (\ s a -> s{_ccItems = a}) . _Default
      . _Coerce

instance FromJSON CustomChannels where
        parseJSON
          = withObject "CustomChannels"
              (\ o ->
                 CustomChannels' <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "adsensehost#customChannels")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON CustomChannels where
        toJSON CustomChannels'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _ccEtag,
                  ("nextPageToken" .=) <$> _ccNextPageToken,
                  Just ("kind" .= _ccKind), ("items" .=) <$> _ccItems])

--
-- /See:/ 'adUnit' smart constructor.
data AdUnit = AdUnit'
    { _auuStatus                   :: !(Maybe Text)
    , _auuMobileContentAdsSettings :: !(Maybe AdUnitMobileContentAdsSettings)
    , _auuKind                     :: !Text
    , _auuCustomStyle              :: !(Maybe AdStyle)
    , _auuName                     :: !(Maybe Text)
    , _auuContentAdsSettings       :: !(Maybe AdUnitContentAdsSettings)
    , _auuCode                     :: !(Maybe Text)
    , _auuId                       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdUnit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auuStatus'
--
-- * 'auuMobileContentAdsSettings'
--
-- * 'auuKind'
--
-- * 'auuCustomStyle'
--
-- * 'auuName'
--
-- * 'auuContentAdsSettings'
--
-- * 'auuCode'
--
-- * 'auuId'
adUnit
    :: AdUnit
adUnit =
    AdUnit'
    { _auuStatus = Nothing
    , _auuMobileContentAdsSettings = Nothing
    , _auuKind = "adsensehost#adUnit"
    , _auuCustomStyle = Nothing
    , _auuName = Nothing
    , _auuContentAdsSettings = Nothing
    , _auuCode = Nothing
    , _auuId = Nothing
    }

-- | Status of this ad unit. Possible values are: NEW: Indicates that the ad
-- unit was created within the last seven days and does not yet have any
-- activity associated with it. ACTIVE: Indicates that there has been
-- activity on this ad unit in the last seven days. INACTIVE: Indicates
-- that there has been no activity on this ad unit in the last seven days.
auuStatus :: Lens' AdUnit (Maybe Text)
auuStatus
  = lens _auuStatus (\ s a -> s{_auuStatus = a})

-- | Settings specific to WAP mobile content ads (AFMC - deprecated).
auuMobileContentAdsSettings :: Lens' AdUnit (Maybe AdUnitMobileContentAdsSettings)
auuMobileContentAdsSettings
  = lens _auuMobileContentAdsSettings
      (\ s a -> s{_auuMobileContentAdsSettings = a})

-- | Kind of resource this is, in this case adsensehost#adUnit.
auuKind :: Lens' AdUnit Text
auuKind = lens _auuKind (\ s a -> s{_auuKind = a})

-- | Custom style information specific to this ad unit.
auuCustomStyle :: Lens' AdUnit (Maybe AdStyle)
auuCustomStyle
  = lens _auuCustomStyle
      (\ s a -> s{_auuCustomStyle = a})

-- | Name of this ad unit.
auuName :: Lens' AdUnit (Maybe Text)
auuName = lens _auuName (\ s a -> s{_auuName = a})

-- | Settings specific to content ads (AFC) and highend mobile content ads
-- (AFMC - deprecated).
auuContentAdsSettings :: Lens' AdUnit (Maybe AdUnitContentAdsSettings)
auuContentAdsSettings
  = lens _auuContentAdsSettings
      (\ s a -> s{_auuContentAdsSettings = a})

-- | Identity code of this ad unit, not necessarily unique across ad clients.
auuCode :: Lens' AdUnit (Maybe Text)
auuCode = lens _auuCode (\ s a -> s{_auuCode = a})

-- | Unique identifier of this ad unit. This should be considered an opaque
-- identifier; it is not safe to rely on it being in any particular format.
auuId :: Lens' AdUnit (Maybe Text)
auuId = lens _auuId (\ s a -> s{_auuId = a})

instance FromJSON AdUnit where
        parseJSON
          = withObject "AdUnit"
              (\ o ->
                 AdUnit' <$>
                   (o .:? "status") <*>
                     (o .:? "mobileContentAdsSettings")
                     <*> (o .:? "kind" .!= "adsensehost#adUnit")
                     <*> (o .:? "customStyle")
                     <*> (o .:? "name")
                     <*> (o .:? "contentAdsSettings")
                     <*> (o .:? "code")
                     <*> (o .:? "id"))

instance ToJSON AdUnit where
        toJSON AdUnit'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _auuStatus,
                  ("mobileContentAdsSettings" .=) <$>
                    _auuMobileContentAdsSettings,
                  Just ("kind" .= _auuKind),
                  ("customStyle" .=) <$> _auuCustomStyle,
                  ("name" .=) <$> _auuName,
                  ("contentAdsSettings" .=) <$> _auuContentAdsSettings,
                  ("code" .=) <$> _auuCode, ("id" .=) <$> _auuId])

--
-- /See:/ 'report' smart constructor.
data Report = Report'
    { _rKind             :: !Text
    , _rAverages         :: !(Maybe [Text])
    , _rWarnings         :: !(Maybe [Text])
    , _rRows             :: !(Maybe [[Text]])
    , _rTotals           :: !(Maybe [Text])
    , _rHeaders          :: !(Maybe [ReportHeadersItem])
    , _rTotalMatchedRows :: !(Maybe (Textual Int64))
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
    Report'
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
      . mapping _Coerce

instance FromJSON Report where
        parseJSON
          = withObject "Report"
              (\ o ->
                 Report' <$>
                   (o .:? "kind" .!= "adsensehost#report") <*>
                     (o .:? "averages" .!= mempty)
                     <*> (o .:? "warnings" .!= mempty)
                     <*> (o .:? "rows" .!= mempty)
                     <*> (o .:? "totals" .!= mempty)
                     <*> (o .:? "headers" .!= mempty)
                     <*> (o .:? "totalMatchedRows"))

instance ToJSON Report where
        toJSON Report'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _rKind),
                  ("averages" .=) <$> _rAverages,
                  ("warnings" .=) <$> _rWarnings,
                  ("rows" .=) <$> _rRows, ("totals" .=) <$> _rTotals,
                  ("headers" .=) <$> _rHeaders,
                  ("totalMatchedRows" .=) <$> _rTotalMatchedRows])

-- | The font which is included in the style.
--
-- /See:/ 'adStyleFont' smart constructor.
data AdStyleFont = AdStyleFont'
    { _asfSize   :: !(Maybe Text)
    , _asfFamily :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdStyleFont' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asfSize'
--
-- * 'asfFamily'
adStyleFont
    :: AdStyleFont
adStyleFont =
    AdStyleFont'
    { _asfSize = Nothing
    , _asfFamily = Nothing
    }

-- | The size of the font. Possible values are: ACCOUNT_DEFAULT_SIZE,
-- ADSENSE_DEFAULT_SIZE, SMALL, MEDIUM and LARGE.
asfSize :: Lens' AdStyleFont (Maybe Text)
asfSize = lens _asfSize (\ s a -> s{_asfSize = a})

-- | The family of the font. Possible values are: ACCOUNT_DEFAULT_FAMILY,
-- ADSENSE_DEFAULT_FAMILY, ARIAL, TIMES and VERDANA.
asfFamily :: Lens' AdStyleFont (Maybe Text)
asfFamily
  = lens _asfFamily (\ s a -> s{_asfFamily = a})

instance FromJSON AdStyleFont where
        parseJSON
          = withObject "AdStyleFont"
              (\ o ->
                 AdStyleFont' <$> (o .:? "size") <*> (o .:? "family"))

instance ToJSON AdStyleFont where
        toJSON AdStyleFont'{..}
          = object
              (catMaybes
                 [("size" .=) <$> _asfSize,
                  ("family" .=) <$> _asfFamily])

--
-- /See:/ 'account' smart constructor.
data Account = Account'
    { _accStatus :: !(Maybe Text)
    , _accKind   :: !Text
    , _accName   :: !(Maybe Text)
    , _accId     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    Account'
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
                 Account' <$>
                   (o .:? "status") <*>
                     (o .:? "kind" .!= "adsensehost#account")
                     <*> (o .:? "name")
                     <*> (o .:? "id"))

instance ToJSON Account where
        toJSON Account'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _accStatus,
                  Just ("kind" .= _accKind), ("name" .=) <$> _accName,
                  ("id" .=) <$> _accId])

-- | Settings specific to WAP mobile content ads (AFMC - deprecated).
--
-- /See:/ 'adUnitMobileContentAdsSettings' smart constructor.
data AdUnitMobileContentAdsSettings = AdUnitMobileContentAdsSettings'
    { _aumcasSize              :: !(Maybe Text)
    , _aumcasScriptingLanguage :: !(Maybe Text)
    , _aumcasMarkupLanguage    :: !(Maybe Text)
    , _aumcasType              :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdUnitMobileContentAdsSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aumcasSize'
--
-- * 'aumcasScriptingLanguage'
--
-- * 'aumcasMarkupLanguage'
--
-- * 'aumcasType'
adUnitMobileContentAdsSettings
    :: AdUnitMobileContentAdsSettings
adUnitMobileContentAdsSettings =
    AdUnitMobileContentAdsSettings'
    { _aumcasSize = Nothing
    , _aumcasScriptingLanguage = Nothing
    , _aumcasMarkupLanguage = Nothing
    , _aumcasType = Nothing
    }

-- | Size of this ad unit.
aumcasSize :: Lens' AdUnitMobileContentAdsSettings (Maybe Text)
aumcasSize
  = lens _aumcasSize (\ s a -> s{_aumcasSize = a})

-- | The scripting language to use for this ad unit.
aumcasScriptingLanguage :: Lens' AdUnitMobileContentAdsSettings (Maybe Text)
aumcasScriptingLanguage
  = lens _aumcasScriptingLanguage
      (\ s a -> s{_aumcasScriptingLanguage = a})

-- | The markup language to use for this ad unit.
aumcasMarkupLanguage :: Lens' AdUnitMobileContentAdsSettings (Maybe Text)
aumcasMarkupLanguage
  = lens _aumcasMarkupLanguage
      (\ s a -> s{_aumcasMarkupLanguage = a})

-- | Type of this ad unit.
aumcasType :: Lens' AdUnitMobileContentAdsSettings (Maybe Text)
aumcasType
  = lens _aumcasType (\ s a -> s{_aumcasType = a})

instance FromJSON AdUnitMobileContentAdsSettings
         where
        parseJSON
          = withObject "AdUnitMobileContentAdsSettings"
              (\ o ->
                 AdUnitMobileContentAdsSettings' <$>
                   (o .:? "size") <*> (o .:? "scriptingLanguage") <*>
                     (o .:? "markupLanguage")
                     <*> (o .:? "type"))

instance ToJSON AdUnitMobileContentAdsSettings where
        toJSON AdUnitMobileContentAdsSettings'{..}
          = object
              (catMaybes
                 [("size" .=) <$> _aumcasSize,
                  ("scriptingLanguage" .=) <$>
                    _aumcasScriptingLanguage,
                  ("markupLanguage" .=) <$> _aumcasMarkupLanguage,
                  ("type" .=) <$> _aumcasType])

-- | The colors included in the style. These are represented as six
-- hexadecimal characters, similar to HTML color codes, but without the
-- leading hash.
--
-- /See:/ 'adStyleColors' smart constructor.
data AdStyleColors = AdStyleColors'
    { _ascText       :: !(Maybe Text)
    , _ascURL        :: !(Maybe Text)
    , _ascBOrder     :: !(Maybe Text)
    , _ascTitle      :: !(Maybe Text)
    , _ascBackgRound :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdStyleColors' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ascText'
--
-- * 'ascURL'
--
-- * 'ascBOrder'
--
-- * 'ascTitle'
--
-- * 'ascBackgRound'
adStyleColors
    :: AdStyleColors
adStyleColors =
    AdStyleColors'
    { _ascText = Nothing
    , _ascURL = Nothing
    , _ascBOrder = Nothing
    , _ascTitle = Nothing
    , _ascBackgRound = Nothing
    }

-- | The color of the ad text.
ascText :: Lens' AdStyleColors (Maybe Text)
ascText = lens _ascText (\ s a -> s{_ascText = a})

-- | The color of the ad url.
ascURL :: Lens' AdStyleColors (Maybe Text)
ascURL = lens _ascURL (\ s a -> s{_ascURL = a})

-- | The color of the ad border.
ascBOrder :: Lens' AdStyleColors (Maybe Text)
ascBOrder
  = lens _ascBOrder (\ s a -> s{_ascBOrder = a})

-- | The color of the ad title.
ascTitle :: Lens' AdStyleColors (Maybe Text)
ascTitle = lens _ascTitle (\ s a -> s{_ascTitle = a})

-- | The color of the ad background.
ascBackgRound :: Lens' AdStyleColors (Maybe Text)
ascBackgRound
  = lens _ascBackgRound
      (\ s a -> s{_ascBackgRound = a})

instance FromJSON AdStyleColors where
        parseJSON
          = withObject "AdStyleColors"
              (\ o ->
                 AdStyleColors' <$>
                   (o .:? "text") <*> (o .:? "url") <*> (o .:? "border")
                     <*> (o .:? "title")
                     <*> (o .:? "background"))

instance ToJSON AdStyleColors where
        toJSON AdStyleColors'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _ascText, ("url" .=) <$> _ascURL,
                  ("border" .=) <$> _ascBOrder,
                  ("title" .=) <$> _ascTitle,
                  ("background" .=) <$> _ascBackgRound])

-- | The backup option to be used in instances where no ad is available.
--
-- /See:/ 'adUnitContentAdsSettingsBackupOption' smart constructor.
data AdUnitContentAdsSettingsBackupOption = AdUnitContentAdsSettingsBackupOption'
    { _aucasboColor :: !(Maybe Text)
    , _aucasboURL   :: !(Maybe Text)
    , _aucasboType  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdUnitContentAdsSettingsBackupOption' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aucasboColor'
--
-- * 'aucasboURL'
--
-- * 'aucasboType'
adUnitContentAdsSettingsBackupOption
    :: AdUnitContentAdsSettingsBackupOption
adUnitContentAdsSettingsBackupOption =
    AdUnitContentAdsSettingsBackupOption'
    { _aucasboColor = Nothing
    , _aucasboURL = Nothing
    , _aucasboType = Nothing
    }

-- | Color to use when type is set to COLOR. These are represented as six
-- hexadecimal characters, similar to HTML color codes, but without the
-- leading hash.
aucasboColor :: Lens' AdUnitContentAdsSettingsBackupOption (Maybe Text)
aucasboColor
  = lens _aucasboColor (\ s a -> s{_aucasboColor = a})

-- | URL to use when type is set to URL.
aucasboURL :: Lens' AdUnitContentAdsSettingsBackupOption (Maybe Text)
aucasboURL
  = lens _aucasboURL (\ s a -> s{_aucasboURL = a})

-- | Type of the backup option. Possible values are BLANK, COLOR and URL.
aucasboType :: Lens' AdUnitContentAdsSettingsBackupOption (Maybe Text)
aucasboType
  = lens _aucasboType (\ s a -> s{_aucasboType = a})

instance FromJSON
         AdUnitContentAdsSettingsBackupOption where
        parseJSON
          = withObject "AdUnitContentAdsSettingsBackupOption"
              (\ o ->
                 AdUnitContentAdsSettingsBackupOption' <$>
                   (o .:? "color") <*> (o .:? "url") <*> (o .:? "type"))

instance ToJSON AdUnitContentAdsSettingsBackupOption
         where
        toJSON AdUnitContentAdsSettingsBackupOption'{..}
          = object
              (catMaybes
                 [("color" .=) <$> _aucasboColor,
                  ("url" .=) <$> _aucasboURL,
                  ("type" .=) <$> _aucasboType])

--
-- /See:/ 'adClient' smart constructor.
data AdClient = AdClient'
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
    AdClient'
    { _adKind = "adsensehost#adClient"
    , _adArcOptIn = Nothing
    , _adSupportsReporting = Nothing
    , _adId = Nothing
    , _adProductCode = Nothing
    }

-- | Kind of resource this is, in this case adsensehost#adClient.
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
                 AdClient' <$>
                   (o .:? "kind" .!= "adsensehost#adClient") <*>
                     (o .:? "arcOptIn")
                     <*> (o .:? "supportsReporting")
                     <*> (o .:? "id")
                     <*> (o .:? "productCode"))

instance ToJSON AdClient where
        toJSON AdClient'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _adKind),
                  ("arcOptIn" .=) <$> _adArcOptIn,
                  ("supportsReporting" .=) <$> _adSupportsReporting,
                  ("id" .=) <$> _adId,
                  ("productCode" .=) <$> _adProductCode])

--
-- /See:/ 'reportHeadersItem' smart constructor.
data ReportHeadersItem = ReportHeadersItem'
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
    ReportHeadersItem'
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
                 ReportHeadersItem' <$>
                   (o .:? "name") <*> (o .:? "currency") <*>
                     (o .:? "type"))

instance ToJSON ReportHeadersItem where
        toJSON ReportHeadersItem'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _rhiName,
                  ("currency" .=) <$> _rhiCurrency,
                  ("type" .=) <$> _rhiType])

--
-- /See:/ 'adStyle' smart constructor.
data AdStyle = AdStyle'
    { _assCorners :: !(Maybe Text)
    , _assKind    :: !Text
    , _assFont    :: !(Maybe AdStyleFont)
    , _assColors  :: !(Maybe AdStyleColors)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    AdStyle'
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
                 AdStyle' <$>
                   (o .:? "corners") <*>
                     (o .:? "kind" .!= "adsensehost#adStyle")
                     <*> (o .:? "font")
                     <*> (o .:? "colors"))

instance ToJSON AdStyle where
        toJSON AdStyle'{..}
          = object
              (catMaybes
                 [("corners" .=) <$> _assCorners,
                  Just ("kind" .= _assKind), ("font" .=) <$> _assFont,
                  ("colors" .=) <$> _assColors])

--
-- /See:/ 'customChannel' smart constructor.
data CustomChannel = CustomChannel'
    { _cKind :: !Text
    , _cName :: !(Maybe Text)
    , _cCode :: !(Maybe Text)
    , _cId   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    CustomChannel'
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
                 CustomChannel' <$>
                   (o .:? "kind" .!= "adsensehost#customChannel") <*>
                     (o .:? "name")
                     <*> (o .:? "code")
                     <*> (o .:? "id"))

instance ToJSON CustomChannel where
        toJSON CustomChannel'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _cKind), ("name" .=) <$> _cName,
                  ("code" .=) <$> _cCode, ("id" .=) <$> _cId])

--
-- /See:/ 'urlChannel' smart constructor.
data URLChannel = URLChannel'
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
    URLChannel'
    { _urlcKind = "adsensehost#urlChannel"
    , _urlcId = Nothing
    , _urlcURLPattern = Nothing
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
urlcURLPattern :: Lens' URLChannel (Maybe Text)
urlcURLPattern
  = lens _urlcURLPattern
      (\ s a -> s{_urlcURLPattern = a})

instance FromJSON URLChannel where
        parseJSON
          = withObject "URLChannel"
              (\ o ->
                 URLChannel' <$>
                   (o .:? "kind" .!= "adsensehost#urlChannel") <*>
                     (o .:? "id")
                     <*> (o .:? "urlPattern"))

instance ToJSON URLChannel where
        toJSON URLChannel'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _urlcKind), ("id" .=) <$> _urlcId,
                  ("urlPattern" .=) <$> _urlcURLPattern])

--
-- /See:/ 'adCode' smart constructor.
data AdCode = AdCode'
    { _aaKind   :: !Text
    , _aaAdCode :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdCode' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaKind'
--
-- * 'aaAdCode'
adCode
    :: AdCode
adCode =
    AdCode'
    { _aaKind = "adsensehost#adCode"
    , _aaAdCode = Nothing
    }

-- | Kind this is, in this case adsensehost#adCode.
aaKind :: Lens' AdCode Text
aaKind = lens _aaKind (\ s a -> s{_aaKind = a})

-- | The ad code snippet.
aaAdCode :: Lens' AdCode (Maybe Text)
aaAdCode = lens _aaAdCode (\ s a -> s{_aaAdCode = a})

instance FromJSON AdCode where
        parseJSON
          = withObject "AdCode"
              (\ o ->
                 AdCode' <$>
                   (o .:? "kind" .!= "adsensehost#adCode") <*>
                     (o .:? "adCode"))

instance ToJSON AdCode where
        toJSON AdCode'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _aaKind),
                  ("adCode" .=) <$> _aaAdCode])

-- | Settings specific to content ads (AFC) and highend mobile content ads
-- (AFMC - deprecated).
--
-- /See:/ 'adUnitContentAdsSettings' smart constructor.
data AdUnitContentAdsSettings = AdUnitContentAdsSettings'
    { _aucasBackupOption :: !(Maybe AdUnitContentAdsSettingsBackupOption)
    , _aucasSize         :: !(Maybe Text)
    , _aucasType         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdUnitContentAdsSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aucasBackupOption'
--
-- * 'aucasSize'
--
-- * 'aucasType'
adUnitContentAdsSettings
    :: AdUnitContentAdsSettings
adUnitContentAdsSettings =
    AdUnitContentAdsSettings'
    { _aucasBackupOption = Nothing
    , _aucasSize = Nothing
    , _aucasType = Nothing
    }

-- | The backup option to be used in instances where no ad is available.
aucasBackupOption :: Lens' AdUnitContentAdsSettings (Maybe AdUnitContentAdsSettingsBackupOption)
aucasBackupOption
  = lens _aucasBackupOption
      (\ s a -> s{_aucasBackupOption = a})

-- | Size of this ad unit. Size values are in the form SIZE_{width}_{height}.
aucasSize :: Lens' AdUnitContentAdsSettings (Maybe Text)
aucasSize
  = lens _aucasSize (\ s a -> s{_aucasSize = a})

-- | Type of this ad unit. Possible values are TEXT, TEXT_IMAGE, IMAGE and
-- LINK.
aucasType :: Lens' AdUnitContentAdsSettings (Maybe Text)
aucasType
  = lens _aucasType (\ s a -> s{_aucasType = a})

instance FromJSON AdUnitContentAdsSettings where
        parseJSON
          = withObject "AdUnitContentAdsSettings"
              (\ o ->
                 AdUnitContentAdsSettings' <$>
                   (o .:? "backupOption") <*> (o .:? "size") <*>
                     (o .:? "type"))

instance ToJSON AdUnitContentAdsSettings where
        toJSON AdUnitContentAdsSettings'{..}
          = object
              (catMaybes
                 [("backupOption" .=) <$> _aucasBackupOption,
                  ("size" .=) <$> _aucasSize,
                  ("type" .=) <$> _aucasType])
