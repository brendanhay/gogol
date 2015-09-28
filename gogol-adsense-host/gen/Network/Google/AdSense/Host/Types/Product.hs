{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AdSense.Host.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AdSense.Host.Types.Product where

import           Network.Google.AdSense.Host.Types.Sum
import           Network.Google.Prelude

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

instance FromJSON ReportItemHeaders where
        parseJSON
          = withObject "ReportItemHeaders"
              (\ o ->
                 ReportItemHeaders <$>
                   (o .:? "name") <*> (o .:? "currency") <*>
                     (o .:? "type"))

instance ToJSON ReportItemHeaders where
        toJSON ReportItemHeaders{..}
          = object
              (catMaybes
                 [("name" .=) <$> _rihName,
                  ("currency" .=) <$> _rihCurrency,
                  ("type" .=) <$> _rihType])

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
    { _acKind = "adsensehost#adClient"
    , _acArcOptIn = Nothing
    , _acSupportsReporting = Nothing
    , _acId = Nothing
    , _acProductCode = Nothing
    }

-- | Kind of resource this is, in this case adsensehost#adClient.
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
                 [Just ("kind" .= _acKind),
                  ("arcOptIn" .=) <$> _acArcOptIn,
                  ("supportsReporting" .=) <$> _acSupportsReporting,
                  ("id" .=) <$> _acId,
                  ("productCode" .=) <$> _acProductCode])

-- | The backup option to be used in instances where no ad is available.
--
-- /See:/ 'adUnitBackupOptionContentAdsSettings' smart constructor.
data AdUnitBackupOptionContentAdsSettings = AdUnitBackupOptionContentAdsSettings
    { _aubocasColor :: !(Maybe Text)
    , _aubocasUrl   :: !(Maybe Text)
    , _aubocasType  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdUnitBackupOptionContentAdsSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aubocasColor'
--
-- * 'aubocasUrl'
--
-- * 'aubocasType'
adUnitBackupOptionContentAdsSettings
    :: AdUnitBackupOptionContentAdsSettings
adUnitBackupOptionContentAdsSettings =
    AdUnitBackupOptionContentAdsSettings
    { _aubocasColor = Nothing
    , _aubocasUrl = Nothing
    , _aubocasType = Nothing
    }

-- | Color to use when type is set to COLOR. These are represented as six
-- hexadecimal characters, similar to HTML color codes, but without the
-- leading hash.
aubocasColor :: Lens' AdUnitBackupOptionContentAdsSettings (Maybe Text)
aubocasColor
  = lens _aubocasColor (\ s a -> s{_aubocasColor = a})

-- | URL to use when type is set to URL.
aubocasUrl :: Lens' AdUnitBackupOptionContentAdsSettings (Maybe Text)
aubocasUrl
  = lens _aubocasUrl (\ s a -> s{_aubocasUrl = a})

-- | Type of the backup option. Possible values are BLANK, COLOR and URL.
aubocasType :: Lens' AdUnitBackupOptionContentAdsSettings (Maybe Text)
aubocasType
  = lens _aubocasType (\ s a -> s{_aubocasType = a})

instance FromJSON
         AdUnitBackupOptionContentAdsSettings where
        parseJSON
          = withObject "AdUnitBackupOptionContentAdsSettings"
              (\ o ->
                 AdUnitBackupOptionContentAdsSettings <$>
                   (o .:? "color") <*> (o .:? "url") <*> (o .:? "type"))

instance ToJSON AdUnitBackupOptionContentAdsSettings
         where
        toJSON AdUnitBackupOptionContentAdsSettings{..}
          = object
              (catMaybes
                 [("color" .=) <$> _aubocasColor,
                  ("url" .=) <$> _aubocasUrl,
                  ("type" .=) <$> _aubocasType])

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

-- | Settings specific to WAP mobile content ads (AFMC).
--
-- /See:/ 'adUnitMobileContentAdsSettings' smart constructor.
data AdUnitMobileContentAdsSettings = AdUnitMobileContentAdsSettings
    { _aumcasSize              :: !(Maybe Text)
    , _aumcasScriptingLanguage :: !(Maybe Text)
    , _aumcasMarkupLanguage    :: !(Maybe Text)
    , _aumcasType              :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    AdUnitMobileContentAdsSettings
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
                 AdUnitMobileContentAdsSettings <$>
                   (o .:? "size") <*> (o .:? "scriptingLanguage") <*>
                     (o .:? "markupLanguage")
                     <*> (o .:? "type"))

instance ToJSON AdUnitMobileContentAdsSettings where
        toJSON AdUnitMobileContentAdsSettings{..}
          = object
              (catMaybes
                 [("size" .=) <$> _aumcasSize,
                  ("scriptingLanguage" .=) <$>
                    _aumcasScriptingLanguage,
                  ("markupLanguage" .=) <$> _aumcasMarkupLanguage,
                  ("type" .=) <$> _aumcasType])

--
-- /See:/ 'customChannel' smart constructor.
data CustomChannel = CustomChannel
    { _ccKind :: !Text
    , _ccName :: !(Maybe Text)
    , _ccCode :: !(Maybe Text)
    , _ccId   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomChannel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
    { _ccKind = "adsensehost#customChannel"
    , _ccName = Nothing
    , _ccCode = Nothing
    , _ccId = Nothing
    }

-- | Kind of resource this is, in this case adsensehost#customChannel.
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
                 [Just ("kind" .= _ccKind), ("name" .=) <$> _ccName,
                  ("code" .=) <$> _ccCode, ("id" .=) <$> _ccId])

--
-- /See:/ 'adCode' smart constructor.
data AdCode = AdCode
    { _adKind   :: !Text
    , _adAdCode :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdCode' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adKind'
--
-- * 'adAdCode'
adCode
    :: AdCode
adCode =
    AdCode
    { _adKind = "adsensehost#adCode"
    , _adAdCode = Nothing
    }

-- | Kind this is, in this case adsensehost#adCode.
adKind :: Lens' AdCode Text
adKind = lens _adKind (\ s a -> s{_adKind = a})

-- | The ad code snippet.
adAdCode :: Lens' AdCode (Maybe Text)
adAdCode = lens _adAdCode (\ s a -> s{_adAdCode = a})

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
                 [Just ("kind" .= _adKind),
                  ("adCode" .=) <$> _adAdCode])

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
    { _ucKind = "adsensehost#urlChannel"
    , _ucId = Nothing
    , _ucUrlPattern = Nothing
    }

-- | Kind of resource this is, in this case adsensehost#urlChannel.
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

instance FromJSON UrlChannel where
        parseJSON
          = withObject "UrlChannel"
              (\ o ->
                 UrlChannel <$>
                   (o .:? "kind" .!= "adsensehost#urlChannel") <*>
                     (o .:? "id")
                     <*> (o .:? "urlPattern"))

instance ToJSON UrlChannel where
        toJSON UrlChannel{..}
          = object
              (catMaybes
                 [Just ("kind" .= _ucKind), ("id" .=) <$> _ucId,
                  ("urlPattern" .=) <$> _ucUrlPattern])

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
    , _acsKind = "adsensehost#adClients"
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

-- | Kind of list this is, in this case adsensehost#adClients.
acsKind :: Lens' AdClients Text
acsKind = lens _acsKind (\ s a -> s{_acsKind = a})

-- | The ad clients returned in this list response.
acsItems :: Lens' AdClients [Maybe AdClient]
acsItems
  = lens _acsItems (\ s a -> s{_acsItems = a}) .
      _Default
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
                 [("etag" .=) <$> _acsEtag,
                  ("nextPageToken" .=) <$> _acsNextPageToken,
                  Just ("kind" .= _acsKind),
                  ("items" .=) <$> _acsItems])

-- | The colors included in the style. These are represented as six
-- hexadecimal characters, similar to HTML color codes, but without the
-- leading hash.
--
-- /See:/ 'adStyleColors' smart constructor.
data AdStyleColors = AdStyleColors
    { _ascText       :: !(Maybe Text)
    , _ascUrl        :: !(Maybe Text)
    , _ascBorder     :: !(Maybe Text)
    , _ascTitle      :: !(Maybe Text)
    , _ascBackground :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdStyleColors' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ascText'
--
-- * 'ascUrl'
--
-- * 'ascBorder'
--
-- * 'ascTitle'
--
-- * 'ascBackground'
adStyleColors
    :: AdStyleColors
adStyleColors =
    AdStyleColors
    { _ascText = Nothing
    , _ascUrl = Nothing
    , _ascBorder = Nothing
    , _ascTitle = Nothing
    , _ascBackground = Nothing
    }

-- | The color of the ad text.
ascText :: Lens' AdStyleColors (Maybe Text)
ascText = lens _ascText (\ s a -> s{_ascText = a})

-- | The color of the ad url.
ascUrl :: Lens' AdStyleColors (Maybe Text)
ascUrl = lens _ascUrl (\ s a -> s{_ascUrl = a})

-- | The color of the ad border.
ascBorder :: Lens' AdStyleColors (Maybe Text)
ascBorder
  = lens _ascBorder (\ s a -> s{_ascBorder = a})

-- | The color of the ad title.
ascTitle :: Lens' AdStyleColors (Maybe Text)
ascTitle = lens _ascTitle (\ s a -> s{_ascTitle = a})

-- | The color of the ad background.
ascBackground :: Lens' AdStyleColors (Maybe Text)
ascBackground
  = lens _ascBackground
      (\ s a -> s{_ascBackground = a})

instance FromJSON AdStyleColors where
        parseJSON
          = withObject "AdStyleColors"
              (\ o ->
                 AdStyleColors <$>
                   (o .:? "text") <*> (o .:? "url") <*> (o .:? "border")
                     <*> (o .:? "title")
                     <*> (o .:? "background"))

instance ToJSON AdStyleColors where
        toJSON AdStyleColors{..}
          = object
              (catMaybes
                 [("text" .=) <$> _ascText, ("url" .=) <$> _ascUrl,
                  ("border" .=) <$> _ascBorder,
                  ("title" .=) <$> _ascTitle,
                  ("background" .=) <$> _ascBackground])

-- | Settings specific to content ads (AFC) and highend mobile content ads
-- (AFMC).
--
-- /See:/ 'adUnitContentAdsSettings' smart constructor.
data AdUnitContentAdsSettings = AdUnitContentAdsSettings
    { _aucasBackupOption :: !(Maybe AdUnitBackupOptionContentAdsSettings)
    , _aucasSize         :: !(Maybe Text)
    , _aucasType         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    AdUnitContentAdsSettings
    { _aucasBackupOption = Nothing
    , _aucasSize = Nothing
    , _aucasType = Nothing
    }

-- | The backup option to be used in instances where no ad is available.
aucasBackupOption :: Lens' AdUnitContentAdsSettings (Maybe AdUnitBackupOptionContentAdsSettings)
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
                 AdUnitContentAdsSettings <$>
                   (o .:? "backupOption") <*> (o .:? "size") <*>
                     (o .:? "type"))

instance ToJSON AdUnitContentAdsSettings where
        toJSON AdUnitContentAdsSettings{..}
          = object
              (catMaybes
                 [("backupOption" .=) <$> _aucasBackupOption,
                  ("size" .=) <$> _aucasSize,
                  ("type" .=) <$> _aucasType])

-- | The font which is included in the style.
--
-- /See:/ 'adStyleFont' smart constructor.
data AdStyleFont = AdStyleFont
    { _asfSize   :: !(Maybe Text)
    , _asfFamily :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    AdStyleFont
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
                 AdStyleFont <$> (o .:? "size") <*> (o .:? "family"))

instance ToJSON AdStyleFont where
        toJSON AdStyleFont{..}
          = object
              (catMaybes
                 [("size" .=) <$> _asfSize,
                  ("family" .=) <$> _asfFamily])

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
    { _auuStatus                   :: !(Maybe Text)
    , _auuMobileContentAdsSettings :: !(Maybe AdUnitMobileContentAdsSettings)
    , _auuKind                     :: !Text
    , _auuCustomStyle              :: !(Maybe (Maybe AdStyle))
    , _auuName                     :: !(Maybe Text)
    , _auuContentAdsSettings       :: !(Maybe AdUnitContentAdsSettings)
    , _auuCode                     :: !(Maybe Text)
    , _auuId                       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    AdUnit
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

-- | Settings specific to WAP mobile content ads (AFMC).
auuMobileContentAdsSettings :: Lens' AdUnit (Maybe AdUnitMobileContentAdsSettings)
auuMobileContentAdsSettings
  = lens _auuMobileContentAdsSettings
      (\ s a -> s{_auuMobileContentAdsSettings = a})

-- | Kind of resource this is, in this case adsensehost#adUnit.
auuKind :: Lens' AdUnit Text
auuKind = lens _auuKind (\ s a -> s{_auuKind = a})

-- | Custom style information specific to this ad unit.
auuCustomStyle :: Lens' AdUnit (Maybe (Maybe AdStyle))
auuCustomStyle
  = lens _auuCustomStyle
      (\ s a -> s{_auuCustomStyle = a})

-- | Name of this ad unit.
auuName :: Lens' AdUnit (Maybe Text)
auuName = lens _auuName (\ s a -> s{_auuName = a})

-- | Settings specific to content ads (AFC) and highend mobile content ads
-- (AFMC).
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
                 [("status" .=) <$> _auuStatus,
                  ("mobileContentAdsSettings" .=) <$>
                    _auuMobileContentAdsSettings,
                  Just ("kind" .= _auuKind),
                  ("customStyle" .=) <$> _auuCustomStyle,
                  ("name" .=) <$> _auuName,
                  ("contentAdsSettings" .=) <$> _auuContentAdsSettings,
                  ("code" .=) <$> _auuCode, ("id" .=) <$> _auuId])

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
    , _urlcKind = "adsensehost#urlChannels"
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

-- | Kind of list this is, in this case adsensehost#urlChannels.
urlcKind :: Lens' UrlChannels Text
urlcKind = lens _urlcKind (\ s a -> s{_urlcKind = a})

-- | The URL channels returned in this list response.
urlcItems :: Lens' UrlChannels [Maybe UrlChannel]
urlcItems
  = lens _urlcItems (\ s a -> s{_urlcItems = a}) .
      _Default
      . _Coerce

instance FromJSON UrlChannels where
        parseJSON
          = withObject "UrlChannels"
              (\ o ->
                 UrlChannels <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "adsensehost#urlChannels")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON UrlChannels where
        toJSON UrlChannels{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _urlcEtag,
                  ("nextPageToken" .=) <$> _urlcNextPageToken,
                  Just ("kind" .= _urlcKind),
                  ("items" .=) <$> _urlcItems])

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
    , _cKind = "adsensehost#customChannels"
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

-- | Kind of list this is, in this case adsensehost#customChannels.
cKind :: Lens' CustomChannels Text
cKind = lens _cKind (\ s a -> s{_cKind = a})

-- | The custom channels returned in this list response.
cItems :: Lens' CustomChannels [Maybe CustomChannel]
cItems
  = lens _cItems (\ s a -> s{_cItems = a}) . _Default .
      _Coerce

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
                 [("etag" .=) <$> _cEtag,
                  ("nextPageToken" .=) <$> _cNextPageToken,
                  Just ("kind" .= _cKind), ("items" .=) <$> _cItems])

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
