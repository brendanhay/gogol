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
data WebmastersURLcrawlerrorscountsQueryCategory
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

instance Hashable WebmastersURLcrawlerrorscountsQueryCategory

instance FromText WebmastersURLcrawlerrorscountsQueryCategory where
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

instance ToText WebmastersURLcrawlerrorscountsQueryCategory where
    toText = \case
        AuthPermissions -> "authPermissions"
        ManyToOneRedirect -> "manyToOneRedirect"
        NotFollowed -> "notFollowed"
        NotFound -> "notFound"
        Other -> "other"
        Roboted -> "roboted"
        ServerError -> "serverError"
        SOFT404 -> "soft404"

instance FromJSON WebmastersURLcrawlerrorscountsQueryCategory where
    parseJSON = parseJSONText "WebmastersURLcrawlerrorscountsQueryCategory"

instance ToJSON WebmastersURLcrawlerrorscountsQueryCategory where
    toJSON = toJSONText

-- | The user agent type (platform) that made the request. For example: web
data WebmastersURLcrawlerrorssamplesListPlatform
    = Mobile
      -- ^ @mobile@
    | SmartphoneOnly
      -- ^ @smartphoneOnly@
    | Web
      -- ^ @web@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable WebmastersURLcrawlerrorssamplesListPlatform

instance FromText WebmastersURLcrawlerrorssamplesListPlatform where
    fromText = \case
        "mobile" -> Just Mobile
        "smartphoneOnly" -> Just SmartphoneOnly
        "web" -> Just Web
        _ -> Nothing

instance ToText WebmastersURLcrawlerrorssamplesListPlatform where
    toText = \case
        Mobile -> "mobile"
        SmartphoneOnly -> "smartphoneOnly"
        Web -> "web"

instance FromJSON WebmastersURLcrawlerrorssamplesListPlatform where
    parseJSON = parseJSONText "WebmastersURLcrawlerrorssamplesListPlatform"

instance ToJSON WebmastersURLcrawlerrorssamplesListPlatform where
    toJSON = toJSONText

-- | The crawl error category. For example: authPermissions
data WebmastersURLcrawlerrorssamplesGetCategory
    = WUGCAuthPermissions
      -- ^ @authPermissions@
    | WUGCManyToOneRedirect
      -- ^ @manyToOneRedirect@
    | WUGCNotFollowed
      -- ^ @notFollowed@
    | WUGCNotFound
      -- ^ @notFound@
    | WUGCOther
      -- ^ @other@
    | WUGCRoboted
      -- ^ @roboted@
    | WUGCServerError
      -- ^ @serverError@
    | WUGCSOFT404
      -- ^ @soft404@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable WebmastersURLcrawlerrorssamplesGetCategory

instance FromText WebmastersURLcrawlerrorssamplesGetCategory where
    fromText = \case
        "authPermissions" -> Just WUGCAuthPermissions
        "manyToOneRedirect" -> Just WUGCManyToOneRedirect
        "notFollowed" -> Just WUGCNotFollowed
        "notFound" -> Just WUGCNotFound
        "other" -> Just WUGCOther
        "roboted" -> Just WUGCRoboted
        "serverError" -> Just WUGCServerError
        "soft404" -> Just WUGCSOFT404
        _ -> Nothing

instance ToText WebmastersURLcrawlerrorssamplesGetCategory where
    toText = \case
        WUGCAuthPermissions -> "authPermissions"
        WUGCManyToOneRedirect -> "manyToOneRedirect"
        WUGCNotFollowed -> "notFollowed"
        WUGCNotFound -> "notFound"
        WUGCOther -> "other"
        WUGCRoboted -> "roboted"
        WUGCServerError -> "serverError"
        WUGCSOFT404 -> "soft404"

instance FromJSON WebmastersURLcrawlerrorssamplesGetCategory where
    parseJSON = parseJSONText "WebmastersURLcrawlerrorssamplesGetCategory"

instance ToJSON WebmastersURLcrawlerrorssamplesGetCategory where
    toJSON = toJSONText

-- | The user agent type (platform) that made the request. For example: web
data WebmastersURLcrawlerrorssamplesMarkAsFixedPlatform
    = WUMAFPMobile
      -- ^ @mobile@
    | WUMAFPSmartphoneOnly
      -- ^ @smartphoneOnly@
    | WUMAFPWeb
      -- ^ @web@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable WebmastersURLcrawlerrorssamplesMarkAsFixedPlatform

instance FromText WebmastersURLcrawlerrorssamplesMarkAsFixedPlatform where
    fromText = \case
        "mobile" -> Just WUMAFPMobile
        "smartphoneOnly" -> Just WUMAFPSmartphoneOnly
        "web" -> Just WUMAFPWeb
        _ -> Nothing

instance ToText WebmastersURLcrawlerrorssamplesMarkAsFixedPlatform where
    toText = \case
        WUMAFPMobile -> "mobile"
        WUMAFPSmartphoneOnly -> "smartphoneOnly"
        WUMAFPWeb -> "web"

instance FromJSON WebmastersURLcrawlerrorssamplesMarkAsFixedPlatform where
    parseJSON = parseJSONText "WebmastersURLcrawlerrorssamplesMarkAsFixedPlatform"

instance ToJSON WebmastersURLcrawlerrorssamplesMarkAsFixedPlatform where
    toJSON = toJSONText

-- | The crawl error category. For example: authPermissions
data WebmastersURLcrawlerrorssamplesMarkAsFixedCategory
    = WUMAFCAuthPermissions
      -- ^ @authPermissions@
    | WUMAFCManyToOneRedirect
      -- ^ @manyToOneRedirect@
    | WUMAFCNotFollowed
      -- ^ @notFollowed@
    | WUMAFCNotFound
      -- ^ @notFound@
    | WUMAFCOther
      -- ^ @other@
    | WUMAFCRoboted
      -- ^ @roboted@
    | WUMAFCServerError
      -- ^ @serverError@
    | WUMAFCSOFT404
      -- ^ @soft404@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable WebmastersURLcrawlerrorssamplesMarkAsFixedCategory

instance FromText WebmastersURLcrawlerrorssamplesMarkAsFixedCategory where
    fromText = \case
        "authPermissions" -> Just WUMAFCAuthPermissions
        "manyToOneRedirect" -> Just WUMAFCManyToOneRedirect
        "notFollowed" -> Just WUMAFCNotFollowed
        "notFound" -> Just WUMAFCNotFound
        "other" -> Just WUMAFCOther
        "roboted" -> Just WUMAFCRoboted
        "serverError" -> Just WUMAFCServerError
        "soft404" -> Just WUMAFCSOFT404
        _ -> Nothing

instance ToText WebmastersURLcrawlerrorssamplesMarkAsFixedCategory where
    toText = \case
        WUMAFCAuthPermissions -> "authPermissions"
        WUMAFCManyToOneRedirect -> "manyToOneRedirect"
        WUMAFCNotFollowed -> "notFollowed"
        WUMAFCNotFound -> "notFound"
        WUMAFCOther -> "other"
        WUMAFCRoboted -> "roboted"
        WUMAFCServerError -> "serverError"
        WUMAFCSOFT404 -> "soft404"

instance FromJSON WebmastersURLcrawlerrorssamplesMarkAsFixedCategory where
    parseJSON = parseJSONText "WebmastersURLcrawlerrorssamplesMarkAsFixedCategory"

instance ToJSON WebmastersURLcrawlerrorssamplesMarkAsFixedCategory where
    toJSON = toJSONText

-- | The user agent type (platform) that made the request. For example: web
data WebmastersURLcrawlerrorssamplesGetPlatform
    = WUGPMobile
      -- ^ @mobile@
    | WUGPSmartphoneOnly
      -- ^ @smartphoneOnly@
    | WUGPWeb
      -- ^ @web@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable WebmastersURLcrawlerrorssamplesGetPlatform

instance FromText WebmastersURLcrawlerrorssamplesGetPlatform where
    fromText = \case
        "mobile" -> Just WUGPMobile
        "smartphoneOnly" -> Just WUGPSmartphoneOnly
        "web" -> Just WUGPWeb
        _ -> Nothing

instance ToText WebmastersURLcrawlerrorssamplesGetPlatform where
    toText = \case
        WUGPMobile -> "mobile"
        WUGPSmartphoneOnly -> "smartphoneOnly"
        WUGPWeb -> "web"

instance FromJSON WebmastersURLcrawlerrorssamplesGetPlatform where
    parseJSON = parseJSONText "WebmastersURLcrawlerrorssamplesGetPlatform"

instance ToJSON WebmastersURLcrawlerrorssamplesGetPlatform where
    toJSON = toJSONText

-- | The crawl error category. For example: authPermissions
data WebmastersURLcrawlerrorssamplesListCategory
    = WULCAuthPermissions
      -- ^ @authPermissions@
    | WULCManyToOneRedirect
      -- ^ @manyToOneRedirect@
    | WULCNotFollowed
      -- ^ @notFollowed@
    | WULCNotFound
      -- ^ @notFound@
    | WULCOther
      -- ^ @other@
    | WULCRoboted
      -- ^ @roboted@
    | WULCServerError
      -- ^ @serverError@
    | WULCSOFT404
      -- ^ @soft404@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable WebmastersURLcrawlerrorssamplesListCategory

instance FromText WebmastersURLcrawlerrorssamplesListCategory where
    fromText = \case
        "authPermissions" -> Just WULCAuthPermissions
        "manyToOneRedirect" -> Just WULCManyToOneRedirect
        "notFollowed" -> Just WULCNotFollowed
        "notFound" -> Just WULCNotFound
        "other" -> Just WULCOther
        "roboted" -> Just WULCRoboted
        "serverError" -> Just WULCServerError
        "soft404" -> Just WULCSOFT404
        _ -> Nothing

instance ToText WebmastersURLcrawlerrorssamplesListCategory where
    toText = \case
        WULCAuthPermissions -> "authPermissions"
        WULCManyToOneRedirect -> "manyToOneRedirect"
        WULCNotFollowed -> "notFollowed"
        WULCNotFound -> "notFound"
        WULCOther -> "other"
        WULCRoboted -> "roboted"
        WULCServerError -> "serverError"
        WULCSOFT404 -> "soft404"

instance FromJSON WebmastersURLcrawlerrorssamplesListCategory where
    parseJSON = parseJSONText "WebmastersURLcrawlerrorssamplesListCategory"

instance ToJSON WebmastersURLcrawlerrorssamplesListCategory where
    toJSON = toJSONText

-- | Data format for the response.
data Alt
    = JSON
      -- ^ @json@
      -- Responses with Content-Type of application\/json
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Alt

instance FromText Alt where
    fromText = \case
        "json" -> Just JSON
        _ -> Nothing

instance ToText Alt where
    toText = \case
        JSON -> "json"

instance FromJSON Alt where
    parseJSON = parseJSONText "Alt"

instance ToJSON Alt where
    toJSON = toJSONText

-- | The user agent type (platform) that made the request. For example: web.
-- If not specified, returns results for all platforms.
data WebmastersURLcrawlerrorscountsQueryPlatform
    = WUQPMobile
      -- ^ @mobile@
    | WUQPSmartphoneOnly
      -- ^ @smartphoneOnly@
    | WUQPWeb
      -- ^ @web@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable WebmastersURLcrawlerrorscountsQueryPlatform

instance FromText WebmastersURLcrawlerrorscountsQueryPlatform where
    fromText = \case
        "mobile" -> Just WUQPMobile
        "smartphoneOnly" -> Just WUQPSmartphoneOnly
        "web" -> Just WUQPWeb
        _ -> Nothing

instance ToText WebmastersURLcrawlerrorscountsQueryPlatform where
    toText = \case
        WUQPMobile -> "mobile"
        WUQPSmartphoneOnly -> "smartphoneOnly"
        WUQPWeb -> "web"

instance FromJSON WebmastersURLcrawlerrorscountsQueryPlatform where
    parseJSON = parseJSONText "WebmastersURLcrawlerrorscountsQueryPlatform"

instance ToJSON WebmastersURLcrawlerrorscountsQueryPlatform where
    toJSON = toJSONText
