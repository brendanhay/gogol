{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.WebmasterTools.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.WebmasterTools.Types.Sum where

import           Network.Google.Prelude

-- | The crawl error category. For example: serverError. If not specified,
-- returns results for all categories.
data WebmastersURLCrawlErrorscountsQueryCategory
    = AuthPermissions
      -- ^ @authPermissions@
    | ManyToOneRedirect
      -- ^ @manyToOneRedirect@
    | NotFollowed
      -- ^ @notFollowed@
    | NotFound
      -- ^ @notFound@
    | Other
      -- ^ @other@
    | Roboted
      -- ^ @roboted@
    | ServerError
      -- ^ @serverError@
    | SOFT404
      -- ^ @soft404@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable WebmastersURLCrawlErrorscountsQueryCategory

instance FromText WebmastersURLCrawlErrorscountsQueryCategory where
    fromText = \case
        "authPermissions" -> Just AuthPermissions
        "manyToOneRedirect" -> Just ManyToOneRedirect
        "notFollowed" -> Just NotFollowed
        "notFound" -> Just NotFound
        "other" -> Just Other
        "roboted" -> Just Roboted
        "serverError" -> Just ServerError
        "soft404" -> Just SOFT404
        _ -> Nothing

instance ToText WebmastersURLCrawlErrorscountsQueryCategory where
    toText = \case
        AuthPermissions -> "authPermissions"
        ManyToOneRedirect -> "manyToOneRedirect"
        NotFollowed -> "notFollowed"
        NotFound -> "notFound"
        Other -> "other"
        Roboted -> "roboted"
        ServerError -> "serverError"
        SOFT404 -> "soft404"

instance FromJSON WebmastersURLCrawlErrorscountsQueryCategory where
    parseJSON = parseJSONText "WebmastersURLCrawlErrorscountsQueryCategory"

instance ToJSON WebmastersURLCrawlErrorscountsQueryCategory where
    toJSON = toJSONText

-- | The user agent type (platform) that made the request. For example: web
data WebmastersURLCrawlErrorsSamplesListPlatform
    = Mobile
      -- ^ @mobile@
    | SmartphoneOnly
      -- ^ @smartphoneOnly@
    | Web
      -- ^ @web@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable WebmastersURLCrawlErrorsSamplesListPlatform

instance FromText WebmastersURLCrawlErrorsSamplesListPlatform where
    fromText = \case
        "mobile" -> Just Mobile
        "smartphoneOnly" -> Just SmartphoneOnly
        "web" -> Just Web
        _ -> Nothing

instance ToText WebmastersURLCrawlErrorsSamplesListPlatform where
    toText = \case
        Mobile -> "mobile"
        SmartphoneOnly -> "smartphoneOnly"
        Web -> "web"

instance FromJSON WebmastersURLCrawlErrorsSamplesListPlatform where
    parseJSON = parseJSONText "WebmastersURLCrawlErrorsSamplesListPlatform"

instance ToJSON WebmastersURLCrawlErrorsSamplesListPlatform where
    toJSON = toJSONText

-- | The crawl error category. For example: authPermissions
data WebmastersURLCrawlErrorsSamplesGetCategory
    = WUCESGCAuthPermissions
      -- ^ @authPermissions@
    | WUCESGCManyToOneRedirect
      -- ^ @manyToOneRedirect@
    | WUCESGCNotFollowed
      -- ^ @notFollowed@
    | WUCESGCNotFound
      -- ^ @notFound@
    | WUCESGCOther
      -- ^ @other@
    | WUCESGCRoboted
      -- ^ @roboted@
    | WUCESGCServerError
      -- ^ @serverError@
    | WUCESGCSOFT404
      -- ^ @soft404@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable WebmastersURLCrawlErrorsSamplesGetCategory

instance FromText WebmastersURLCrawlErrorsSamplesGetCategory where
    fromText = \case
        "authPermissions" -> Just WUCESGCAuthPermissions
        "manyToOneRedirect" -> Just WUCESGCManyToOneRedirect
        "notFollowed" -> Just WUCESGCNotFollowed
        "notFound" -> Just WUCESGCNotFound
        "other" -> Just WUCESGCOther
        "roboted" -> Just WUCESGCRoboted
        "serverError" -> Just WUCESGCServerError
        "soft404" -> Just WUCESGCSOFT404
        _ -> Nothing

instance ToText WebmastersURLCrawlErrorsSamplesGetCategory where
    toText = \case
        WUCESGCAuthPermissions -> "authPermissions"
        WUCESGCManyToOneRedirect -> "manyToOneRedirect"
        WUCESGCNotFollowed -> "notFollowed"
        WUCESGCNotFound -> "notFound"
        WUCESGCOther -> "other"
        WUCESGCRoboted -> "roboted"
        WUCESGCServerError -> "serverError"
        WUCESGCSOFT404 -> "soft404"

instance FromJSON WebmastersURLCrawlErrorsSamplesGetCategory where
    parseJSON = parseJSONText "WebmastersURLCrawlErrorsSamplesGetCategory"

instance ToJSON WebmastersURLCrawlErrorsSamplesGetCategory where
    toJSON = toJSONText

-- | The user agent type (platform) that made the request. For example: web
data WebmastersURLCrawlErrorsSamplesMarkAsFixedPlatform
    = WUCESMAFPMobile
      -- ^ @mobile@
    | WUCESMAFPSmartphoneOnly
      -- ^ @smartphoneOnly@
    | WUCESMAFPWeb
      -- ^ @web@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable WebmastersURLCrawlErrorsSamplesMarkAsFixedPlatform

instance FromText WebmastersURLCrawlErrorsSamplesMarkAsFixedPlatform where
    fromText = \case
        "mobile" -> Just WUCESMAFPMobile
        "smartphoneOnly" -> Just WUCESMAFPSmartphoneOnly
        "web" -> Just WUCESMAFPWeb
        _ -> Nothing

instance ToText WebmastersURLCrawlErrorsSamplesMarkAsFixedPlatform where
    toText = \case
        WUCESMAFPMobile -> "mobile"
        WUCESMAFPSmartphoneOnly -> "smartphoneOnly"
        WUCESMAFPWeb -> "web"

instance FromJSON WebmastersURLCrawlErrorsSamplesMarkAsFixedPlatform where
    parseJSON = parseJSONText "WebmastersURLCrawlErrorsSamplesMarkAsFixedPlatform"

instance ToJSON WebmastersURLCrawlErrorsSamplesMarkAsFixedPlatform where
    toJSON = toJSONText

-- | The crawl error category. For example: authPermissions
data WebmastersURLCrawlErrorsSamplesMarkAsFixedCategory
    = WUCESMAFCAuthPermissions
      -- ^ @authPermissions@
    | WUCESMAFCManyToOneRedirect
      -- ^ @manyToOneRedirect@
    | WUCESMAFCNotFollowed
      -- ^ @notFollowed@
    | WUCESMAFCNotFound
      -- ^ @notFound@
    | WUCESMAFCOther
      -- ^ @other@
    | WUCESMAFCRoboted
      -- ^ @roboted@
    | WUCESMAFCServerError
      -- ^ @serverError@
    | WUCESMAFCSOFT404
      -- ^ @soft404@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable WebmastersURLCrawlErrorsSamplesMarkAsFixedCategory

instance FromText WebmastersURLCrawlErrorsSamplesMarkAsFixedCategory where
    fromText = \case
        "authPermissions" -> Just WUCESMAFCAuthPermissions
        "manyToOneRedirect" -> Just WUCESMAFCManyToOneRedirect
        "notFollowed" -> Just WUCESMAFCNotFollowed
        "notFound" -> Just WUCESMAFCNotFound
        "other" -> Just WUCESMAFCOther
        "roboted" -> Just WUCESMAFCRoboted
        "serverError" -> Just WUCESMAFCServerError
        "soft404" -> Just WUCESMAFCSOFT404
        _ -> Nothing

instance ToText WebmastersURLCrawlErrorsSamplesMarkAsFixedCategory where
    toText = \case
        WUCESMAFCAuthPermissions -> "authPermissions"
        WUCESMAFCManyToOneRedirect -> "manyToOneRedirect"
        WUCESMAFCNotFollowed -> "notFollowed"
        WUCESMAFCNotFound -> "notFound"
        WUCESMAFCOther -> "other"
        WUCESMAFCRoboted -> "roboted"
        WUCESMAFCServerError -> "serverError"
        WUCESMAFCSOFT404 -> "soft404"

instance FromJSON WebmastersURLCrawlErrorsSamplesMarkAsFixedCategory where
    parseJSON = parseJSONText "WebmastersURLCrawlErrorsSamplesMarkAsFixedCategory"

instance ToJSON WebmastersURLCrawlErrorsSamplesMarkAsFixedCategory where
    toJSON = toJSONText

-- | The user agent type (platform) that made the request. For example: web
data WebmastersURLCrawlErrorsSamplesGetPlatform
    = WUCESGPMobile
      -- ^ @mobile@
    | WUCESGPSmartphoneOnly
      -- ^ @smartphoneOnly@
    | WUCESGPWeb
      -- ^ @web@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable WebmastersURLCrawlErrorsSamplesGetPlatform

instance FromText WebmastersURLCrawlErrorsSamplesGetPlatform where
    fromText = \case
        "mobile" -> Just WUCESGPMobile
        "smartphoneOnly" -> Just WUCESGPSmartphoneOnly
        "web" -> Just WUCESGPWeb
        _ -> Nothing

instance ToText WebmastersURLCrawlErrorsSamplesGetPlatform where
    toText = \case
        WUCESGPMobile -> "mobile"
        WUCESGPSmartphoneOnly -> "smartphoneOnly"
        WUCESGPWeb -> "web"

instance FromJSON WebmastersURLCrawlErrorsSamplesGetPlatform where
    parseJSON = parseJSONText "WebmastersURLCrawlErrorsSamplesGetPlatform"

instance ToJSON WebmastersURLCrawlErrorsSamplesGetPlatform where
    toJSON = toJSONText

-- | The crawl error category. For example: authPermissions
data WebmastersURLCrawlErrorsSamplesListCategory
    = WUCESLCAuthPermissions
      -- ^ @authPermissions@
    | WUCESLCManyToOneRedirect
      -- ^ @manyToOneRedirect@
    | WUCESLCNotFollowed
      -- ^ @notFollowed@
    | WUCESLCNotFound
      -- ^ @notFound@
    | WUCESLCOther
      -- ^ @other@
    | WUCESLCRoboted
      -- ^ @roboted@
    | WUCESLCServerError
      -- ^ @serverError@
    | WUCESLCSOFT404
      -- ^ @soft404@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable WebmastersURLCrawlErrorsSamplesListCategory

instance FromText WebmastersURLCrawlErrorsSamplesListCategory where
    fromText = \case
        "authPermissions" -> Just WUCESLCAuthPermissions
        "manyToOneRedirect" -> Just WUCESLCManyToOneRedirect
        "notFollowed" -> Just WUCESLCNotFollowed
        "notFound" -> Just WUCESLCNotFound
        "other" -> Just WUCESLCOther
        "roboted" -> Just WUCESLCRoboted
        "serverError" -> Just WUCESLCServerError
        "soft404" -> Just WUCESLCSOFT404
        _ -> Nothing

instance ToText WebmastersURLCrawlErrorsSamplesListCategory where
    toText = \case
        WUCESLCAuthPermissions -> "authPermissions"
        WUCESLCManyToOneRedirect -> "manyToOneRedirect"
        WUCESLCNotFollowed -> "notFollowed"
        WUCESLCNotFound -> "notFound"
        WUCESLCOther -> "other"
        WUCESLCRoboted -> "roboted"
        WUCESLCServerError -> "serverError"
        WUCESLCSOFT404 -> "soft404"

instance FromJSON WebmastersURLCrawlErrorsSamplesListCategory where
    parseJSON = parseJSONText "WebmastersURLCrawlErrorsSamplesListCategory"

instance ToJSON WebmastersURLCrawlErrorsSamplesListCategory where
    toJSON = toJSONText

-- | The user agent type (platform) that made the request. For example: web.
-- If not specified, returns results for all platforms.
data WebmastersURLCrawlErrorscountsQueryPlatform
    = WUCEQPMobile
      -- ^ @mobile@
    | WUCEQPSmartphoneOnly
      -- ^ @smartphoneOnly@
    | WUCEQPWeb
      -- ^ @web@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable WebmastersURLCrawlErrorscountsQueryPlatform

instance FromText WebmastersURLCrawlErrorscountsQueryPlatform where
    fromText = \case
        "mobile" -> Just WUCEQPMobile
        "smartphoneOnly" -> Just WUCEQPSmartphoneOnly
        "web" -> Just WUCEQPWeb
        _ -> Nothing

instance ToText WebmastersURLCrawlErrorscountsQueryPlatform where
    toText = \case
        WUCEQPMobile -> "mobile"
        WUCEQPSmartphoneOnly -> "smartphoneOnly"
        WUCEQPWeb -> "web"

instance FromJSON WebmastersURLCrawlErrorscountsQueryPlatform where
    parseJSON = parseJSONText "WebmastersURLCrawlErrorscountsQueryPlatform"

instance ToJSON WebmastersURLCrawlErrorscountsQueryPlatform where
    toJSON = toJSONText
