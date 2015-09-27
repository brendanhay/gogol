{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AdSense.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AdSense.Types.Product where

import           Network.Google.AdSense.Types.Sum
import           Network.Google.Prelude

--
-- /See:/ 'account' smart constructor.
data Account = Account
    { _accKind        :: !Text
    , _accPremium     :: !(Maybe Bool)
    , _accName        :: !(Maybe Text)
    , _accId          :: !(Maybe Text)
    , _accTimezone    :: !(Maybe Text)
    , _accSubAccounts :: !(Maybe [Maybe Account])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Account' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'accKind'
--
-- * 'accPremium'
--
-- * 'accName'
--
-- * 'accId'
--
-- * 'accTimezone'
--
-- * 'accSubAccounts'
account
    :: Account
account =
    Account
    { _accKind = "adsense#account"
    , _accPremium = Nothing
    , _accName = Nothing
    , _accId = Nothing
    , _accTimezone = Nothing
    , _accSubAccounts = Nothing
    }

-- | Kind of resource this is, in this case adsense#account.
accKind :: Lens' Account Text
accKind = lens _accKind (\ s a -> s{_accKind = a})

-- | Whether this account is premium.
accPremium :: Lens' Account (Maybe Bool)
accPremium
  = lens _accPremium (\ s a -> s{_accPremium = a})

-- | Name of this account.
accName :: Lens' Account (Maybe Text)
accName = lens _accName (\ s a -> s{_accName = a})

-- | Unique identifier of this account.
accId :: Lens' Account (Maybe Text)
accId = lens _accId (\ s a -> s{_accId = a})

-- | AdSense timezone of this account.
accTimezone :: Lens' Account (Maybe Text)
accTimezone
  = lens _accTimezone (\ s a -> s{_accTimezone = a})

-- | Sub accounts of the this account.
accSubAccounts :: Lens' Account [Maybe Account]
accSubAccounts
  = lens _accSubAccounts
      (\ s a -> s{_accSubAccounts = a})
      . _Default
      . _Coerce

instance FromJSON Account where
        parseJSON
          = withObject "Account"
              (\ o ->
                 Account <$>
                   (o .:? "kind" .!= "adsense#account") <*>
                     (o .:? "premium")
                     <*> (o .:? "name")
                     <*> (o .:? "id")
                     <*> (o .:? "timezone")
                     <*> (o .:? "subAccounts" .!= mempty))

instance ToJSON Account where
        toJSON Account{..}
          = object
              (catMaybes
                 [Just ("kind" .= _accKind),
                  ("premium" .=) <$> _accPremium,
                  ("name" .=) <$> _accName, ("id" .=) <$> _accId,
                  ("timezone" .=) <$> _accTimezone,
                  ("subAccounts" .=) <$> _accSubAccounts])

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
    , _aKind = "adsense#accounts"
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

-- | Kind of list this is, in this case adsense#accounts.
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
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "adsense#accounts")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON Accounts where
        toJSON Accounts{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _aEtag,
                  ("nextPageToken" .=) <$> _aNextPageToken,
                  Just ("kind" .= _aKind), ("items" .=) <$> _aItems])

--
-- /See:/ 'adClient' smart constructor.
data AdClient = AdClient
    { _acKind              :: !Text
    , _acArcOptIn          :: !(Maybe Bool)
    , _acSupportsReporting :: !(Maybe Bool)
    , _acId                :: !(Maybe Text)
    , _acProductCode       :: !(Maybe Text)
    , _acArcReviewMode     :: !(Maybe Text)
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
--
-- * 'acArcReviewMode'
adClient
    :: AdClient
adClient =
    AdClient
    { _acKind = "adsense#adClient"
    , _acArcOptIn = Nothing
    , _acSupportsReporting = Nothing
    , _acId = Nothing
    , _acProductCode = Nothing
    , _acArcReviewMode = Nothing
    }

-- | Kind of resource this is, in this case adsense#adClient.
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

-- | ARC review mode this ad client is in. Empty if the client is not opted
-- in to ARC. Possible values: POST_REVIEW, AUTOMATIC_PRE_REVIEW.
acArcReviewMode :: Lens' AdClient (Maybe Text)
acArcReviewMode
  = lens _acArcReviewMode
      (\ s a -> s{_acArcReviewMode = a})

instance FromJSON AdClient where
        parseJSON
          = withObject "AdClient"
              (\ o ->
                 AdClient <$>
                   (o .:? "kind" .!= "adsense#adClient") <*>
                     (o .:? "arcOptIn")
                     <*> (o .:? "supportsReporting")
                     <*> (o .:? "id")
                     <*> (o .:? "productCode")
                     <*> (o .:? "arcReviewMode"))

instance ToJSON AdClient where
        toJSON AdClient{..}
          = object
              (catMaybes
                 [Just ("kind" .= _acKind),
                  ("arcOptIn" .=) <$> _acArcOptIn,
                  ("supportsReporting" .=) <$> _acSupportsReporting,
                  ("id" .=) <$> _acId,
                  ("productCode" .=) <$> _acProductCode,
                  ("arcReviewMode" .=) <$> _acArcReviewMode])

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
    , _acsKind = "adsense#adClients"
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

-- | Kind of list this is, in this case adsense#adClients.
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
                     (o .:? "kind" .!= "adsense#adClients")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON AdClients where
        toJSON AdClients{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _acsEtag,
                  ("nextPageToken" .=) <$> _acsNextPageToken,
                  Just ("kind" .= _acsKind),
                  ("items" .=) <$> _acsItems])

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
    { _adKind = "adsense#adCode"
    , _adAdCode = Nothing
    }

-- | Kind this is, in this case adsense#adCode.
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
                   (o .:? "kind" .!= "adsense#adCode") <*>
                     (o .:? "adCode"))

instance ToJSON AdCode where
        toJSON AdCode{..}
          = object
              (catMaybes
                 [Just ("kind" .= _adKind),
                  ("adCode" .=) <$> _adAdCode])

--
-- /See:/ 'adStyle' smart constructor.
data AdStyle = AdStyle
    { _asCorners :: !(Maybe Text)
    , _asKind    :: !Text
    , _asFont    :: !(Maybe AdStyleFont)
    , _asColors  :: !(Maybe AdStyleColors)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdStyle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asCorners'
--
-- * 'asKind'
--
-- * 'asFont'
--
-- * 'asColors'
adStyle
    :: AdStyle
adStyle =
    AdStyle
    { _asCorners = Nothing
    , _asKind = "adsense#adStyle"
    , _asFont = Nothing
    , _asColors = Nothing
    }

-- | The style of the corners in the ad.
asCorners :: Lens' AdStyle (Maybe Text)
asCorners
  = lens _asCorners (\ s a -> s{_asCorners = a})

-- | Kind this is, in this case adsense#adStyle.
asKind :: Lens' AdStyle Text
asKind = lens _asKind (\ s a -> s{_asKind = a})

-- | The font which is included in the style.
asFont :: Lens' AdStyle (Maybe AdStyleFont)
asFont = lens _asFont (\ s a -> s{_asFont = a})

-- | The colors which are included in the style. These are represented as six
-- hexadecimal characters, similar to HTML color codes, but without the
-- leading hash.
asColors :: Lens' AdStyle (Maybe AdStyleColors)
asColors = lens _asColors (\ s a -> s{_asColors = a})

instance FromJSON AdStyle where
        parseJSON
          = withObject "AdStyle"
              (\ o ->
                 AdStyle <$>
                   (o .:? "corners") <*>
                     (o .:? "kind" .!= "adsense#adStyle")
                     <*> (o .:? "font")
                     <*> (o .:? "colors"))

instance ToJSON AdStyle where
        toJSON AdStyle{..}
          = object
              (catMaybes
                 [("corners" .=) <$> _asCorners,
                  Just ("kind" .= _asKind), ("font" .=) <$> _asFont,
                  ("colors" .=) <$> _asColors])

-- | The colors which are included in the style. These are represented as six
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

-- | The size of the font.
asfSize :: Lens' AdStyleFont (Maybe Text)
asfSize = lens _asfSize (\ s a -> s{_asfSize = a})

-- | The family of the font.
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
-- /See:/ 'adUnit' smart constructor.
data AdUnit = AdUnit
    { _auuStatus                   :: !(Maybe Text)
    , _auuMobileContentAdsSettings :: !(Maybe AdUnitMobileContentAdsSettings)
    , _auuKind                     :: !Text
    , _auuFeedAdsSettings          :: !(Maybe AdUnitFeedAdsSettings)
    , _auuCustomStyle              :: !(Maybe (Maybe AdStyle))
    , _auuSavedStyleId             :: !(Maybe Text)
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
-- * 'auuFeedAdsSettings'
--
-- * 'auuCustomStyle'
--
-- * 'auuSavedStyleId'
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
    , _auuKind = "adsense#adUnit"
    , _auuFeedAdsSettings = Nothing
    , _auuCustomStyle = Nothing
    , _auuSavedStyleId = Nothing
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

-- | Kind of resource this is, in this case adsense#adUnit.
auuKind :: Lens' AdUnit Text
auuKind = lens _auuKind (\ s a -> s{_auuKind = a})

-- | Settings specific to feed ads (AFF).
auuFeedAdsSettings :: Lens' AdUnit (Maybe AdUnitFeedAdsSettings)
auuFeedAdsSettings
  = lens _auuFeedAdsSettings
      (\ s a -> s{_auuFeedAdsSettings = a})

-- | Custom style information specific to this ad unit.
auuCustomStyle :: Lens' AdUnit (Maybe (Maybe AdStyle))
auuCustomStyle
  = lens _auuCustomStyle
      (\ s a -> s{_auuCustomStyle = a})

-- | ID of the saved ad style which holds this ad unit\'s style information.
auuSavedStyleId :: Lens' AdUnit (Maybe Text)
auuSavedStyleId
  = lens _auuSavedStyleId
      (\ s a -> s{_auuSavedStyleId = a})

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
                     <*> (o .:? "kind" .!= "adsense#adUnit")
                     <*> (o .:? "feedAdsSettings")
                     <*> (o .:? "customStyle")
                     <*> (o .:? "savedStyleId")
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
                  ("feedAdsSettings" .=) <$> _auuFeedAdsSettings,
                  ("customStyle" .=) <$> _auuCustomStyle,
                  ("savedStyleId" .=) <$> _auuSavedStyleId,
                  ("name" .=) <$> _auuName,
                  ("contentAdsSettings" .=) <$> _auuContentAdsSettings,
                  ("code" .=) <$> _auuCode, ("id" .=) <$> _auuId])

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

-- | Color to use when type is set to COLOR.
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

-- | Size of this ad unit.
aucasSize :: Lens' AdUnitContentAdsSettings (Maybe Text)
aucasSize
  = lens _aucasSize (\ s a -> s{_aucasSize = a})

-- | Type of this ad unit.
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

-- | Settings specific to feed ads (AFF).
--
-- /See:/ 'adUnitFeedAdsSettings' smart constructor.
data AdUnitFeedAdsSettings = AdUnitFeedAdsSettings
    { _aufasFrequency        :: !(Maybe Int32)
    , _aufasAdPosition       :: !(Maybe Text)
    , _aufasType             :: !(Maybe Text)
    , _aufasMinimumWordCount :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdUnitFeedAdsSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aufasFrequency'
--
-- * 'aufasAdPosition'
--
-- * 'aufasType'
--
-- * 'aufasMinimumWordCount'
adUnitFeedAdsSettings
    :: AdUnitFeedAdsSettings
adUnitFeedAdsSettings =
    AdUnitFeedAdsSettings
    { _aufasFrequency = Nothing
    , _aufasAdPosition = Nothing
    , _aufasType = Nothing
    , _aufasMinimumWordCount = Nothing
    }

-- | The frequency at which ads should appear in the feed (i.e. every N
-- entries).
aufasFrequency :: Lens' AdUnitFeedAdsSettings (Maybe Int32)
aufasFrequency
  = lens _aufasFrequency
      (\ s a -> s{_aufasFrequency = a})

-- | The position of the ads relative to the feed entries.
aufasAdPosition :: Lens' AdUnitFeedAdsSettings (Maybe Text)
aufasAdPosition
  = lens _aufasAdPosition
      (\ s a -> s{_aufasAdPosition = a})

-- | The type of ads which should appear.
aufasType :: Lens' AdUnitFeedAdsSettings (Maybe Text)
aufasType
  = lens _aufasType (\ s a -> s{_aufasType = a})

-- | The minimum length an entry should be in order to have attached ads.
aufasMinimumWordCount :: Lens' AdUnitFeedAdsSettings (Maybe Int32)
aufasMinimumWordCount
  = lens _aufasMinimumWordCount
      (\ s a -> s{_aufasMinimumWordCount = a})

instance FromJSON AdUnitFeedAdsSettings where
        parseJSON
          = withObject "AdUnitFeedAdsSettings"
              (\ o ->
                 AdUnitFeedAdsSettings <$>
                   (o .:? "frequency") <*> (o .:? "adPosition") <*>
                     (o .:? "type")
                     <*> (o .:? "minimumWordCount"))

instance ToJSON AdUnitFeedAdsSettings where
        toJSON AdUnitFeedAdsSettings{..}
          = object
              (catMaybes
                 [("frequency" .=) <$> _aufasFrequency,
                  ("adPosition" .=) <$> _aufasAdPosition,
                  ("type" .=) <$> _aufasType,
                  ("minimumWordCount" .=) <$> _aufasMinimumWordCount])

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
    , _auKind = "adsense#adUnits"
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

-- | Kind of list this is, in this case adsense#adUnits.
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
                     (o .:? "kind" .!= "adsense#adUnits")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON AdUnits where
        toJSON AdUnits{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _auEtag,
                  ("nextPageToken" .=) <$> _auNextPageToken,
                  Just ("kind" .= _auKind), ("items" .=) <$> _auItems])

--
-- /See:/ 'adsenseReportsGenerateResponse' smart constructor.
data AdsenseReportsGenerateResponse = AdsenseReportsGenerateResponse
    { _argrKind             :: !Text
    , _argrAverages         :: !(Maybe [Text])
    , _argrEndDate          :: !(Maybe Text)
    , _argrWarnings         :: !(Maybe [Text])
    , _argrRows             :: !(Maybe [[Text]])
    , _argrTotals           :: !(Maybe [Text])
    , _argrStartDate        :: !(Maybe Text)
    , _argrHeaders          :: !(Maybe [AdsenseReportsGenerateResponseItemHeaders])
    , _argrTotalMatchedRows :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdsenseReportsGenerateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'argrKind'
--
-- * 'argrAverages'
--
-- * 'argrEndDate'
--
-- * 'argrWarnings'
--
-- * 'argrRows'
--
-- * 'argrTotals'
--
-- * 'argrStartDate'
--
-- * 'argrHeaders'
--
-- * 'argrTotalMatchedRows'
adsenseReportsGenerateResponse
    :: AdsenseReportsGenerateResponse
adsenseReportsGenerateResponse =
    AdsenseReportsGenerateResponse
    { _argrKind = "adsense#report"
    , _argrAverages = Nothing
    , _argrEndDate = Nothing
    , _argrWarnings = Nothing
    , _argrRows = Nothing
    , _argrTotals = Nothing
    , _argrStartDate = Nothing
    , _argrHeaders = Nothing
    , _argrTotalMatchedRows = Nothing
    }

-- | Kind this is, in this case adsense#report.
argrKind :: Lens' AdsenseReportsGenerateResponse Text
argrKind = lens _argrKind (\ s a -> s{_argrKind = a})

-- | The averages of the report. This is the same length as any other row in
-- the report; cells corresponding to dimension columns are empty.
argrAverages :: Lens' AdsenseReportsGenerateResponse [Text]
argrAverages
  = lens _argrAverages (\ s a -> s{_argrAverages = a})
      . _Default
      . _Coerce

-- | The requested end date in yyyy-mm-dd format.
argrEndDate :: Lens' AdsenseReportsGenerateResponse (Maybe Text)
argrEndDate
  = lens _argrEndDate (\ s a -> s{_argrEndDate = a})

-- | Any warnings associated with generation of the report.
argrWarnings :: Lens' AdsenseReportsGenerateResponse [Text]
argrWarnings
  = lens _argrWarnings (\ s a -> s{_argrWarnings = a})
      . _Default
      . _Coerce

-- | The output rows of the report. Each row is a list of cells; one for each
-- dimension in the request, followed by one for each metric in the
-- request. The dimension cells contain strings, and the metric cells
-- contain numbers.
argrRows :: Lens' AdsenseReportsGenerateResponse [[Text]]
argrRows
  = lens _argrRows (\ s a -> s{_argrRows = a}) .
      _Default
      . _Coerce

-- | The totals of the report. This is the same length as any other row in
-- the report; cells corresponding to dimension columns are empty.
argrTotals :: Lens' AdsenseReportsGenerateResponse [Text]
argrTotals
  = lens _argrTotals (\ s a -> s{_argrTotals = a}) .
      _Default
      . _Coerce

-- | The requested start date in yyyy-mm-dd format.
argrStartDate :: Lens' AdsenseReportsGenerateResponse (Maybe Text)
argrStartDate
  = lens _argrStartDate
      (\ s a -> s{_argrStartDate = a})

-- | The header information of the columns requested in the report. This is a
-- list of headers; one for each dimension in the request, followed by one
-- for each metric in the request.
argrHeaders :: Lens' AdsenseReportsGenerateResponse [AdsenseReportsGenerateResponseItemHeaders]
argrHeaders
  = lens _argrHeaders (\ s a -> s{_argrHeaders = a}) .
      _Default
      . _Coerce

-- | The total number of rows matched by the report request. Fewer rows may
-- be returned in the response due to being limited by the row count
-- requested or the report row limit.
argrTotalMatchedRows :: Lens' AdsenseReportsGenerateResponse (Maybe Int64)
argrTotalMatchedRows
  = lens _argrTotalMatchedRows
      (\ s a -> s{_argrTotalMatchedRows = a})

instance FromJSON AdsenseReportsGenerateResponse
         where
        parseJSON
          = withObject "AdsenseReportsGenerateResponse"
              (\ o ->
                 AdsenseReportsGenerateResponse <$>
                   (o .:? "kind" .!= "adsense#report") <*>
                     (o .:? "averages" .!= mempty)
                     <*> (o .:? "endDate")
                     <*> (o .:? "warnings" .!= mempty)
                     <*> (o .:? "rows" .!= mempty)
                     <*> (o .:? "totals" .!= mempty)
                     <*> (o .:? "startDate")
                     <*> (o .:? "headers" .!= mempty)
                     <*> (o .:? "totalMatchedRows"))

instance ToJSON AdsenseReportsGenerateResponse where
        toJSON AdsenseReportsGenerateResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _argrKind),
                  ("averages" .=) <$> _argrAverages,
                  ("endDate" .=) <$> _argrEndDate,
                  ("warnings" .=) <$> _argrWarnings,
                  ("rows" .=) <$> _argrRows,
                  ("totals" .=) <$> _argrTotals,
                  ("startDate" .=) <$> _argrStartDate,
                  ("headers" .=) <$> _argrHeaders,
                  ("totalMatchedRows" .=) <$> _argrTotalMatchedRows])

--
-- /See:/ 'adsenseReportsGenerateResponseItemHeaders' smart constructor.
data AdsenseReportsGenerateResponseItemHeaders = AdsenseReportsGenerateResponseItemHeaders
    { _argrihName     :: !(Maybe Text)
    , _argrihCurrency :: !(Maybe Text)
    , _argrihType     :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdsenseReportsGenerateResponseItemHeaders' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'argrihName'
--
-- * 'argrihCurrency'
--
-- * 'argrihType'
adsenseReportsGenerateResponseItemHeaders
    :: AdsenseReportsGenerateResponseItemHeaders
adsenseReportsGenerateResponseItemHeaders =
    AdsenseReportsGenerateResponseItemHeaders
    { _argrihName = Nothing
    , _argrihCurrency = Nothing
    , _argrihType = Nothing
    }

-- | The name of the header.
argrihName :: Lens' AdsenseReportsGenerateResponseItemHeaders (Maybe Text)
argrihName
  = lens _argrihName (\ s a -> s{_argrihName = a})

-- | The currency of this column. Only present if the header type is
-- METRIC_CURRENCY.
argrihCurrency :: Lens' AdsenseReportsGenerateResponseItemHeaders (Maybe Text)
argrihCurrency
  = lens _argrihCurrency
      (\ s a -> s{_argrihCurrency = a})

-- | The type of the header; one of DIMENSION, METRIC_TALLY, METRIC_RATIO, or
-- METRIC_CURRENCY.
argrihType :: Lens' AdsenseReportsGenerateResponseItemHeaders (Maybe Text)
argrihType
  = lens _argrihType (\ s a -> s{_argrihType = a})

instance FromJSON
         AdsenseReportsGenerateResponseItemHeaders where
        parseJSON
          = withObject
              "AdsenseReportsGenerateResponseItemHeaders"
              (\ o ->
                 AdsenseReportsGenerateResponseItemHeaders <$>
                   (o .:? "name") <*> (o .:? "currency") <*>
                     (o .:? "type"))

instance ToJSON
         AdsenseReportsGenerateResponseItemHeaders where
        toJSON AdsenseReportsGenerateResponseItemHeaders{..}
          = object
              (catMaybes
                 [("name" .=) <$> _argrihName,
                  ("currency" .=) <$> _argrihCurrency,
                  ("type" .=) <$> _argrihType])

--
-- /See:/ 'alert' smart constructor.
data Alert = Alert
    { _aleIsDismissible :: !(Maybe Bool)
    , _aleKind          :: !Text
    , _aleSeverity      :: !(Maybe Text)
    , _aleId            :: !(Maybe Text)
    , _aleType          :: !(Maybe Text)
    , _aleMessage       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Alert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aleIsDismissible'
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
    { _aleIsDismissible = Nothing
    , _aleKind = "adsense#alert"
    , _aleSeverity = Nothing
    , _aleId = Nothing
    , _aleType = Nothing
    , _aleMessage = Nothing
    }

-- | Whether this alert can be dismissed.
aleIsDismissible :: Lens' Alert (Maybe Bool)
aleIsDismissible
  = lens _aleIsDismissible
      (\ s a -> s{_aleIsDismissible = a})

-- | Kind of resource this is, in this case adsense#alert.
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

instance FromJSON Alert where
        parseJSON
          = withObject "Alert"
              (\ o ->
                 Alert <$>
                   (o .:? "isDismissible") <*>
                     (o .:? "kind" .!= "adsense#alert")
                     <*> (o .:? "severity")
                     <*> (o .:? "id")
                     <*> (o .:? "type")
                     <*> (o .:? "message"))

instance ToJSON Alert where
        toJSON Alert{..}
          = object
              (catMaybes
                 [("isDismissible" .=) <$> _aleIsDismissible,
                  Just ("kind" .= _aleKind),
                  ("severity" .=) <$> _aleSeverity,
                  ("id" .=) <$> _aleId, ("type" .=) <$> _aleType,
                  ("message" .=) <$> _aleMessage])

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
    { _aaKind = "adsense#alerts"
    , _aaItems = Nothing
    }

-- | Kind of list this is, in this case adsense#alerts.
aaKind :: Lens' Alerts Text
aaKind = lens _aaKind (\ s a -> s{_aaKind = a})

-- | The alerts returned in this list response.
aaItems :: Lens' Alerts [Maybe Alert]
aaItems
  = lens _aaItems (\ s a -> s{_aaItems = a}) . _Default
      . _Coerce

instance FromJSON Alerts where
        parseJSON
          = withObject "Alerts"
              (\ o ->
                 Alerts <$>
                   (o .:? "kind" .!= "adsense#alerts") <*>
                     (o .:? "items" .!= mempty))

instance ToJSON Alerts where
        toJSON Alerts{..}
          = object
              (catMaybes
                 [Just ("kind" .= _aaKind),
                  ("items" .=) <$> _aaItems])

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
    , _ccKind = "adsense#customChannel"
    , _ccName = Nothing
    , _ccCode = Nothing
    , _ccId = Nothing
    }

-- | The targeting information of this custom channel, if activated.
ccTargetingInfo :: Lens' CustomChannel (Maybe CustomChannelTargetingInfo)
ccTargetingInfo
  = lens _ccTargetingInfo
      (\ s a -> s{_ccTargetingInfo = a})

-- | Kind of resource this is, in this case adsense#customChannel.
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
                   (o .:? "targetingInfo") <*>
                     (o .:? "kind" .!= "adsense#customChannel")
                     <*> (o .:? "name")
                     <*> (o .:? "code")
                     <*> (o .:? "id"))

instance ToJSON CustomChannel where
        toJSON CustomChannel{..}
          = object
              (catMaybes
                 [("targetingInfo" .=) <$> _ccTargetingInfo,
                  Just ("kind" .= _ccKind), ("name" .=) <$> _ccName,
                  ("code" .=) <$> _ccCode, ("id" .=) <$> _ccId])

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
    , _cKind = "adsense#customChannels"
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

-- | Kind of list this is, in this case adsense#customChannels.
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
                     (o .:? "kind" .!= "adsense#customChannels")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON CustomChannels where
        toJSON CustomChannels{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _cEtag,
                  ("nextPageToken" .=) <$> _cNextPageToken,
                  Just ("kind" .= _cKind), ("items" .=) <$> _cItems])

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
    { _mKind = "adsense#metadata"
    , _mItems = Nothing
    }

-- | Kind of list this is, in this case adsense#metadata.
mKind :: Lens' Metadata Text
mKind = lens _mKind (\ s a -> s{_mKind = a})

mItems :: Lens' Metadata [Maybe ReportingMetadataEntry]
mItems
  = lens _mItems (\ s a -> s{_mItems = a}) . _Default .
      _Coerce

instance FromJSON Metadata where
        parseJSON
          = withObject "Metadata"
              (\ o ->
                 Metadata <$>
                   (o .:? "kind" .!= "adsense#metadata") <*>
                     (o .:? "items" .!= mempty))

instance ToJSON Metadata where
        toJSON Metadata{..}
          = object
              (catMaybes
                 [Just ("kind" .= _mKind), ("items" .=) <$> _mItems])

--
-- /See:/ 'payment' smart constructor.
data Payment = Payment
    { _pPaymentAmountCurrencyCode :: !(Maybe Text)
    , _pKind                      :: !Text
    , _pPaymentDate               :: !(Maybe Text)
    , _pId                        :: !(Maybe Text)
    , _pPaymentAmount             :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Payment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pPaymentAmountCurrencyCode'
--
-- * 'pKind'
--
-- * 'pPaymentDate'
--
-- * 'pId'
--
-- * 'pPaymentAmount'
payment
    :: Payment
payment =
    Payment
    { _pPaymentAmountCurrencyCode = Nothing
    , _pKind = "adsense#payment"
    , _pPaymentDate = Nothing
    , _pId = Nothing
    , _pPaymentAmount = Nothing
    }

-- | The currency code for the amount to be paid.
pPaymentAmountCurrencyCode :: Lens' Payment (Maybe Text)
pPaymentAmountCurrencyCode
  = lens _pPaymentAmountCurrencyCode
      (\ s a -> s{_pPaymentAmountCurrencyCode = a})

-- | Kind of resource this is, in this case adsense#payment.
pKind :: Lens' Payment Text
pKind = lens _pKind (\ s a -> s{_pKind = a})

-- | The date this payment was\/will be credited to the user, or none if the
-- payment threshold has not been met.
pPaymentDate :: Lens' Payment (Maybe Text)
pPaymentDate
  = lens _pPaymentDate (\ s a -> s{_pPaymentDate = a})

-- | Unique identifier of this Payment.
pId :: Lens' Payment (Maybe Text)
pId = lens _pId (\ s a -> s{_pId = a})

-- | The amount to be paid.
pPaymentAmount :: Lens' Payment (Maybe Text)
pPaymentAmount
  = lens _pPaymentAmount
      (\ s a -> s{_pPaymentAmount = a})

instance FromJSON Payment where
        parseJSON
          = withObject "Payment"
              (\ o ->
                 Payment <$>
                   (o .:? "paymentAmountCurrencyCode") <*>
                     (o .:? "kind" .!= "adsense#payment")
                     <*> (o .:? "paymentDate")
                     <*> (o .:? "id")
                     <*> (o .:? "paymentAmount"))

instance ToJSON Payment where
        toJSON Payment{..}
          = object
              (catMaybes
                 [("paymentAmountCurrencyCode" .=) <$>
                    _pPaymentAmountCurrencyCode,
                  Just ("kind" .= _pKind),
                  ("paymentDate" .=) <$> _pPaymentDate,
                  ("id" .=) <$> _pId,
                  ("paymentAmount" .=) <$> _pPaymentAmount])

--
-- /See:/ 'payments' smart constructor.
data Payments = Payments
    { _payKind  :: !Text
    , _payItems :: !(Maybe [Maybe Payment])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Payments' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'payKind'
--
-- * 'payItems'
payments
    :: Payments
payments =
    Payments
    { _payKind = "adsense#payments"
    , _payItems = Nothing
    }

-- | Kind of list this is, in this case adsense#payments.
payKind :: Lens' Payments Text
payKind = lens _payKind (\ s a -> s{_payKind = a})

-- | The list of Payments for the account. One or both of a) the account\'s
-- most recent payment; and b) the account\'s upcoming payment.
payItems :: Lens' Payments [Maybe Payment]
payItems
  = lens _payItems (\ s a -> s{_payItems = a}) .
      _Default
      . _Coerce

instance FromJSON Payments where
        parseJSON
          = withObject "Payments"
              (\ o ->
                 Payments <$>
                   (o .:? "kind" .!= "adsense#payments") <*>
                     (o .:? "items" .!= mempty))

instance ToJSON Payments where
        toJSON Payments{..}
          = object
              (catMaybes
                 [Just ("kind" .= _payKind),
                  ("items" .=) <$> _payItems])

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
    { _rmeKind = "adsense#reportingMetadataEntry"
    , _rmeRequiredMetrics = Nothing
    , _rmeCompatibleMetrics = Nothing
    , _rmeRequiredDimensions = Nothing
    , _rmeId = Nothing
    , _rmeCompatibleDimensions = Nothing
    , _rmeSupportedProducts = Nothing
    }

-- | Kind of resource this is, in this case adsense#reportingMetadataEntry.
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
                   (o .:? "kind" .!= "adsense#reportingMetadataEntry")
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
-- /See:/ 'savedAdStyle' smart constructor.
data SavedAdStyle = SavedAdStyle
    { _sKind    :: !Text
    , _sName    :: !(Maybe Text)
    , _sAdStyle :: !(Maybe (Maybe AdStyle))
    , _sId      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SavedAdStyle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sKind'
--
-- * 'sName'
--
-- * 'sAdStyle'
--
-- * 'sId'
savedAdStyle
    :: SavedAdStyle
savedAdStyle =
    SavedAdStyle
    { _sKind = "adsense#savedAdStyle"
    , _sName = Nothing
    , _sAdStyle = Nothing
    , _sId = Nothing
    }

-- | Kind of resource this is, in this case adsense#savedAdStyle.
sKind :: Lens' SavedAdStyle Text
sKind = lens _sKind (\ s a -> s{_sKind = a})

-- | The user selected name of this SavedAdStyle.
sName :: Lens' SavedAdStyle (Maybe Text)
sName = lens _sName (\ s a -> s{_sName = a})

-- | The AdStyle itself.
sAdStyle :: Lens' SavedAdStyle (Maybe (Maybe AdStyle))
sAdStyle = lens _sAdStyle (\ s a -> s{_sAdStyle = a})

-- | Unique identifier of this saved ad style. This should be considered an
-- opaque identifier; it is not safe to rely on it being in any particular
-- format.
sId :: Lens' SavedAdStyle (Maybe Text)
sId = lens _sId (\ s a -> s{_sId = a})

instance FromJSON SavedAdStyle where
        parseJSON
          = withObject "SavedAdStyle"
              (\ o ->
                 SavedAdStyle <$>
                   (o .:? "kind" .!= "adsense#savedAdStyle") <*>
                     (o .:? "name")
                     <*> (o .:? "adStyle")
                     <*> (o .:? "id"))

instance ToJSON SavedAdStyle where
        toJSON SavedAdStyle{..}
          = object
              (catMaybes
                 [Just ("kind" .= _sKind), ("name" .=) <$> _sName,
                  ("adStyle" .=) <$> _sAdStyle, ("id" .=) <$> _sId])

--
-- /See:/ 'savedAdStyles' smart constructor.
data SavedAdStyles = SavedAdStyles
    { _sasEtag          :: !(Maybe Text)
    , _sasNextPageToken :: !(Maybe Text)
    , _sasKind          :: !Text
    , _sasItems         :: !(Maybe [Maybe SavedAdStyle])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SavedAdStyles' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sasEtag'
--
-- * 'sasNextPageToken'
--
-- * 'sasKind'
--
-- * 'sasItems'
savedAdStyles
    :: SavedAdStyles
savedAdStyles =
    SavedAdStyles
    { _sasEtag = Nothing
    , _sasNextPageToken = Nothing
    , _sasKind = "adsense#savedAdStyles"
    , _sasItems = Nothing
    }

-- | ETag of this response for caching purposes.
sasEtag :: Lens' SavedAdStyles (Maybe Text)
sasEtag = lens _sasEtag (\ s a -> s{_sasEtag = a})

-- | Continuation token used to page through ad units. To retrieve the next
-- page of results, set the next request\'s \"pageToken\" value to this.
sasNextPageToken :: Lens' SavedAdStyles (Maybe Text)
sasNextPageToken
  = lens _sasNextPageToken
      (\ s a -> s{_sasNextPageToken = a})

-- | Kind of list this is, in this case adsense#savedAdStyles.
sasKind :: Lens' SavedAdStyles Text
sasKind = lens _sasKind (\ s a -> s{_sasKind = a})

-- | The saved ad styles returned in this list response.
sasItems :: Lens' SavedAdStyles [Maybe SavedAdStyle]
sasItems
  = lens _sasItems (\ s a -> s{_sasItems = a}) .
      _Default
      . _Coerce

instance FromJSON SavedAdStyles where
        parseJSON
          = withObject "SavedAdStyles"
              (\ o ->
                 SavedAdStyles <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "adsense#savedAdStyles")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON SavedAdStyles where
        toJSON SavedAdStyles{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _sasEtag,
                  ("nextPageToken" .=) <$> _sasNextPageToken,
                  Just ("kind" .= _sasKind),
                  ("items" .=) <$> _sasItems])

--
-- /See:/ 'savedReport' smart constructor.
data SavedReport = SavedReport
    { _savKind :: !Text
    , _savName :: !(Maybe Text)
    , _savId   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SavedReport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'savKind'
--
-- * 'savName'
--
-- * 'savId'
savedReport
    :: SavedReport
savedReport =
    SavedReport
    { _savKind = "adsense#savedReport"
    , _savName = Nothing
    , _savId = Nothing
    }

-- | Kind of resource this is, in this case adsense#savedReport.
savKind :: Lens' SavedReport Text
savKind = lens _savKind (\ s a -> s{_savKind = a})

-- | This saved report\'s name.
savName :: Lens' SavedReport (Maybe Text)
savName = lens _savName (\ s a -> s{_savName = a})

-- | Unique identifier of this saved report.
savId :: Lens' SavedReport (Maybe Text)
savId = lens _savId (\ s a -> s{_savId = a})

instance FromJSON SavedReport where
        parseJSON
          = withObject "SavedReport"
              (\ o ->
                 SavedReport <$>
                   (o .:? "kind" .!= "adsense#savedReport") <*>
                     (o .:? "name")
                     <*> (o .:? "id"))

instance ToJSON SavedReport where
        toJSON SavedReport{..}
          = object
              (catMaybes
                 [Just ("kind" .= _savKind), ("name" .=) <$> _savName,
                  ("id" .=) <$> _savId])

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
    , _srKind = "adsense#savedReports"
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

-- | Kind of list this is, in this case adsense#savedReports.
srKind :: Lens' SavedReports Text
srKind = lens _srKind (\ s a -> s{_srKind = a})

-- | The saved reports returned in this list response.
srItems :: Lens' SavedReports [Maybe SavedReport]
srItems
  = lens _srItems (\ s a -> s{_srItems = a}) . _Default
      . _Coerce

instance FromJSON SavedReports where
        parseJSON
          = withObject "SavedReports"
              (\ o ->
                 SavedReports <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "adsense#savedReports")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON SavedReports where
        toJSON SavedReports{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _srEtag,
                  ("nextPageToken" .=) <$> _srNextPageToken,
                  Just ("kind" .= _srKind), ("items" .=) <$> _srItems])

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
    { _ucKind = "adsense#urlChannel"
    , _ucId = Nothing
    , _ucUrlPattern = Nothing
    }

-- | Kind of resource this is, in this case adsense#urlChannel.
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
                   (o .:? "kind" .!= "adsense#urlChannel") <*>
                     (o .:? "id")
                     <*> (o .:? "urlPattern"))

instance ToJSON UrlChannel where
        toJSON UrlChannel{..}
          = object
              (catMaybes
                 [Just ("kind" .= _ucKind), ("id" .=) <$> _ucId,
                  ("urlPattern" .=) <$> _ucUrlPattern])

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
    , _urlcKind = "adsense#urlChannels"
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

-- | Kind of list this is, in this case adsense#urlChannels.
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
                     (o .:? "kind" .!= "adsense#urlChannels")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON UrlChannels where
        toJSON UrlChannels{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _urlcEtag,
                  ("nextPageToken" .=) <$> _urlcNextPageToken,
                  Just ("kind" .= _urlcKind),
                  ("items" .=) <$> _urlcItems])
