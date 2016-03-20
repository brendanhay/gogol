{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.WebmasterTools.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.WebmasterTools.Types.Sum where

import           Network.Google.Prelude

-- | The crawl error category. For example: authPermissions
data URLCrawlErrorsSamplesMarkAsFixedCategory
    = AuthPermissions
      -- ^ @authPermissions@
    | FlashContent
      -- ^ @flashContent@
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

instance Hashable URLCrawlErrorsSamplesMarkAsFixedCategory

instance FromText URLCrawlErrorsSamplesMarkAsFixedCategory where
    fromText = \case
        "authPermissions" -> Just AuthPermissions
        "flashContent" -> Just FlashContent
        "manyToOneRedirect" -> Just ManyToOneRedirect
        "notFollowed" -> Just NotFollowed
        "notFound" -> Just NotFound
        "other" -> Just Other
        "roboted" -> Just Roboted
        "serverError" -> Just ServerError
        "soft404" -> Just SOFT404
        _ -> Nothing

instance ToText URLCrawlErrorsSamplesMarkAsFixedCategory where
    toText = \case
        AuthPermissions -> "authPermissions"
        FlashContent -> "flashContent"
        ManyToOneRedirect -> "manyToOneRedirect"
        NotFollowed -> "notFollowed"
        NotFound -> "notFound"
        Other -> "other"
        Roboted -> "roboted"
        ServerError -> "serverError"
        SOFT404 -> "soft404"

instance FromJSON URLCrawlErrorsSamplesMarkAsFixedCategory where
    parseJSON = parseJSONText "URLCrawlErrorsSamplesMarkAsFixedCategory"

instance ToJSON URLCrawlErrorsSamplesMarkAsFixedCategory where
    toJSON = toJSONText

-- | The user agent type (platform) that made the request. For example: web
data URLCrawlErrorsSamplesGetPlatform
    = Mobile
      -- ^ @mobile@
    | SmartphoneOnly
      -- ^ @smartphoneOnly@
    | Web
      -- ^ @web@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable URLCrawlErrorsSamplesGetPlatform

instance FromText URLCrawlErrorsSamplesGetPlatform where
    fromText = \case
        "mobile" -> Just Mobile
        "smartphoneOnly" -> Just SmartphoneOnly
        "web" -> Just Web
        _ -> Nothing

instance ToText URLCrawlErrorsSamplesGetPlatform where
    toText = \case
        Mobile -> "mobile"
        SmartphoneOnly -> "smartphoneOnly"
        Web -> "web"

instance FromJSON URLCrawlErrorsSamplesGetPlatform where
    parseJSON = parseJSONText "URLCrawlErrorsSamplesGetPlatform"

instance ToJSON URLCrawlErrorsSamplesGetPlatform where
    toJSON = toJSONText

-- | The user agent type (platform) that made the request. For example: web
data URLCrawlErrorsSamplesMarkAsFixedPlatform
    = UCESMAFPMobile
      -- ^ @mobile@
    | UCESMAFPSmartphoneOnly
      -- ^ @smartphoneOnly@
    | UCESMAFPWeb
      -- ^ @web@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable URLCrawlErrorsSamplesMarkAsFixedPlatform

instance FromText URLCrawlErrorsSamplesMarkAsFixedPlatform where
    fromText = \case
        "mobile" -> Just UCESMAFPMobile
        "smartphoneOnly" -> Just UCESMAFPSmartphoneOnly
        "web" -> Just UCESMAFPWeb
        _ -> Nothing

instance ToText URLCrawlErrorsSamplesMarkAsFixedPlatform where
    toText = \case
        UCESMAFPMobile -> "mobile"
        UCESMAFPSmartphoneOnly -> "smartphoneOnly"
        UCESMAFPWeb -> "web"

instance FromJSON URLCrawlErrorsSamplesMarkAsFixedPlatform where
    parseJSON = parseJSONText "URLCrawlErrorsSamplesMarkAsFixedPlatform"

instance ToJSON URLCrawlErrorsSamplesMarkAsFixedPlatform where
    toJSON = toJSONText

-- | The crawl error category. For example: authPermissions
data URLCrawlErrorsSamplesGetCategory
    = UCESGCAuthPermissions
      -- ^ @authPermissions@
    | UCESGCFlashContent
      -- ^ @flashContent@
    | UCESGCManyToOneRedirect
      -- ^ @manyToOneRedirect@
    | UCESGCNotFollowed
      -- ^ @notFollowed@
    | UCESGCNotFound
      -- ^ @notFound@
    | UCESGCOther
      -- ^ @other@
    | UCESGCRoboted
      -- ^ @roboted@
    | UCESGCServerError
      -- ^ @serverError@
    | UCESGCSOFT404
      -- ^ @soft404@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable URLCrawlErrorsSamplesGetCategory

instance FromText URLCrawlErrorsSamplesGetCategory where
    fromText = \case
        "authPermissions" -> Just UCESGCAuthPermissions
        "flashContent" -> Just UCESGCFlashContent
        "manyToOneRedirect" -> Just UCESGCManyToOneRedirect
        "notFollowed" -> Just UCESGCNotFollowed
        "notFound" -> Just UCESGCNotFound
        "other" -> Just UCESGCOther
        "roboted" -> Just UCESGCRoboted
        "serverError" -> Just UCESGCServerError
        "soft404" -> Just UCESGCSOFT404
        _ -> Nothing

instance ToText URLCrawlErrorsSamplesGetCategory where
    toText = \case
        UCESGCAuthPermissions -> "authPermissions"
        UCESGCFlashContent -> "flashContent"
        UCESGCManyToOneRedirect -> "manyToOneRedirect"
        UCESGCNotFollowed -> "notFollowed"
        UCESGCNotFound -> "notFound"
        UCESGCOther -> "other"
        UCESGCRoboted -> "roboted"
        UCESGCServerError -> "serverError"
        UCESGCSOFT404 -> "soft404"

instance FromJSON URLCrawlErrorsSamplesGetCategory where
    parseJSON = parseJSONText "URLCrawlErrorsSamplesGetCategory"

instance ToJSON URLCrawlErrorsSamplesGetCategory where
    toJSON = toJSONText

-- | The user agent type (platform) that made the request. For example: web.
-- If not specified, returns results for all platforms.
data URLCrawlErrorscountsQueryPlatform
    = UCEQPMobile
      -- ^ @mobile@
    | UCEQPSmartphoneOnly
      -- ^ @smartphoneOnly@
    | UCEQPWeb
      -- ^ @web@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable URLCrawlErrorscountsQueryPlatform

instance FromText URLCrawlErrorscountsQueryPlatform where
    fromText = \case
        "mobile" -> Just UCEQPMobile
        "smartphoneOnly" -> Just UCEQPSmartphoneOnly
        "web" -> Just UCEQPWeb
        _ -> Nothing

instance ToText URLCrawlErrorscountsQueryPlatform where
    toText = \case
        UCEQPMobile -> "mobile"
        UCEQPSmartphoneOnly -> "smartphoneOnly"
        UCEQPWeb -> "web"

instance FromJSON URLCrawlErrorscountsQueryPlatform where
    parseJSON = parseJSONText "URLCrawlErrorscountsQueryPlatform"

instance ToJSON URLCrawlErrorscountsQueryPlatform where
    toJSON = toJSONText

-- | The crawl error category. For example: authPermissions
data URLCrawlErrorsSamplesListCategory
    = UCESLCAuthPermissions
      -- ^ @authPermissions@
    | UCESLCFlashContent
      -- ^ @flashContent@
    | UCESLCManyToOneRedirect
      -- ^ @manyToOneRedirect@
    | UCESLCNotFollowed
      -- ^ @notFollowed@
    | UCESLCNotFound
      -- ^ @notFound@
    | UCESLCOther
      -- ^ @other@
    | UCESLCRoboted
      -- ^ @roboted@
    | UCESLCServerError
      -- ^ @serverError@
    | UCESLCSOFT404
      -- ^ @soft404@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable URLCrawlErrorsSamplesListCategory

instance FromText URLCrawlErrorsSamplesListCategory where
    fromText = \case
        "authPermissions" -> Just UCESLCAuthPermissions
        "flashContent" -> Just UCESLCFlashContent
        "manyToOneRedirect" -> Just UCESLCManyToOneRedirect
        "notFollowed" -> Just UCESLCNotFollowed
        "notFound" -> Just UCESLCNotFound
        "other" -> Just UCESLCOther
        "roboted" -> Just UCESLCRoboted
        "serverError" -> Just UCESLCServerError
        "soft404" -> Just UCESLCSOFT404
        _ -> Nothing

instance ToText URLCrawlErrorsSamplesListCategory where
    toText = \case
        UCESLCAuthPermissions -> "authPermissions"
        UCESLCFlashContent -> "flashContent"
        UCESLCManyToOneRedirect -> "manyToOneRedirect"
        UCESLCNotFollowed -> "notFollowed"
        UCESLCNotFound -> "notFound"
        UCESLCOther -> "other"
        UCESLCRoboted -> "roboted"
        UCESLCServerError -> "serverError"
        UCESLCSOFT404 -> "soft404"

instance FromJSON URLCrawlErrorsSamplesListCategory where
    parseJSON = parseJSONText "URLCrawlErrorsSamplesListCategory"

instance ToJSON URLCrawlErrorsSamplesListCategory where
    toJSON = toJSONText

-- | The user agent type (platform) that made the request. For example: web
data URLCrawlErrorsSamplesListPlatform
    = UCESLPMobile
      -- ^ @mobile@
    | UCESLPSmartphoneOnly
      -- ^ @smartphoneOnly@
    | UCESLPWeb
      -- ^ @web@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable URLCrawlErrorsSamplesListPlatform

instance FromText URLCrawlErrorsSamplesListPlatform where
    fromText = \case
        "mobile" -> Just UCESLPMobile
        "smartphoneOnly" -> Just UCESLPSmartphoneOnly
        "web" -> Just UCESLPWeb
        _ -> Nothing

instance ToText URLCrawlErrorsSamplesListPlatform where
    toText = \case
        UCESLPMobile -> "mobile"
        UCESLPSmartphoneOnly -> "smartphoneOnly"
        UCESLPWeb -> "web"

instance FromJSON URLCrawlErrorsSamplesListPlatform where
    parseJSON = parseJSONText "URLCrawlErrorsSamplesListPlatform"

instance ToJSON URLCrawlErrorsSamplesListPlatform where
    toJSON = toJSONText

-- | The crawl error category. For example: serverError. If not specified,
-- returns results for all categories.
data URLCrawlErrorscountsQueryCategory
    = UCEQCAuthPermissions
      -- ^ @authPermissions@
    | UCEQCFlashContent
      -- ^ @flashContent@
    | UCEQCManyToOneRedirect
      -- ^ @manyToOneRedirect@
    | UCEQCNotFollowed
      -- ^ @notFollowed@
    | UCEQCNotFound
      -- ^ @notFound@
    | UCEQCOther
      -- ^ @other@
    | UCEQCRoboted
      -- ^ @roboted@
    | UCEQCServerError
      -- ^ @serverError@
    | UCEQCSOFT404
      -- ^ @soft404@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable URLCrawlErrorscountsQueryCategory

instance FromText URLCrawlErrorscountsQueryCategory where
    fromText = \case
        "authPermissions" -> Just UCEQCAuthPermissions
        "flashContent" -> Just UCEQCFlashContent
        "manyToOneRedirect" -> Just UCEQCManyToOneRedirect
        "notFollowed" -> Just UCEQCNotFollowed
        "notFound" -> Just UCEQCNotFound
        "other" -> Just UCEQCOther
        "roboted" -> Just UCEQCRoboted
        "serverError" -> Just UCEQCServerError
        "soft404" -> Just UCEQCSOFT404
        _ -> Nothing

instance ToText URLCrawlErrorscountsQueryCategory where
    toText = \case
        UCEQCAuthPermissions -> "authPermissions"
        UCEQCFlashContent -> "flashContent"
        UCEQCManyToOneRedirect -> "manyToOneRedirect"
        UCEQCNotFollowed -> "notFollowed"
        UCEQCNotFound -> "notFound"
        UCEQCOther -> "other"
        UCEQCRoboted -> "roboted"
        UCEQCServerError -> "serverError"
        UCEQCSOFT404 -> "soft404"

instance FromJSON URLCrawlErrorscountsQueryCategory where
    parseJSON = parseJSONText "URLCrawlErrorscountsQueryCategory"

instance ToJSON URLCrawlErrorscountsQueryCategory where
    toJSON = toJSONText
