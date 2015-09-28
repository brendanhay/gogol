{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Webmaster.Tools.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Webmaster.Tools.Types.Sum where

import           Network.Google.Prelude

-- | The crawl error category. For example: authPermissions
data URLcrawlerrorssamplesGet'Category
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

instance Hashable URLcrawlerrorssamplesGet'Category

instance FromText URLcrawlerrorssamplesGet'Category where
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

instance ToText URLcrawlerrorssamplesGet'Category where
    toText = \case
        AuthPermissions -> "authPermissions"
        ManyToOneRedirect -> "manyToOneRedirect"
        NotFollowed -> "notFollowed"
        NotFound -> "notFound"
        Other -> "other"
        Roboted -> "roboted"
        ServerError -> "serverError"
        SOFT404 -> "soft404"

instance FromJSON URLcrawlerrorssamplesGet'Category where
    parseJSON = parseJSONText "URLcrawlerrorssamplesGet'Category"

instance ToJSON URLcrawlerrorssamplesGet'Category where
    toJSON = toJSONText

-- | The user agent type (platform) that made the request. For example: web
data URLcrawlerrorssamplesList'Platform
    = Mobile
      -- ^ @mobile@
    | SmartphoneOnly
      -- ^ @smartphoneOnly@
    | Web
      -- ^ @web@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable URLcrawlerrorssamplesList'Platform

instance FromText URLcrawlerrorssamplesList'Platform where
    fromText = \case
        "mobile" -> Just Mobile
        "smartphoneOnly" -> Just SmartphoneOnly
        "web" -> Just Web
        _ -> Nothing

instance ToText URLcrawlerrorssamplesList'Platform where
    toText = \case
        Mobile -> "mobile"
        SmartphoneOnly -> "smartphoneOnly"
        Web -> "web"

instance FromJSON URLcrawlerrorssamplesList'Platform where
    parseJSON = parseJSONText "URLcrawlerrorssamplesList'Platform"

instance ToJSON URLcrawlerrorssamplesList'Platform where
    toJSON = toJSONText

-- | The user agent type (platform) that made the request. For example: web.
-- If not specified, returns results for all platforms.
data URLcrawlerrorscountsQuery'Platform
    = UQPMobile
      -- ^ @mobile@
    | UQPSmartphoneOnly
      -- ^ @smartphoneOnly@
    | UQPWeb
      -- ^ @web@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable URLcrawlerrorscountsQuery'Platform

instance FromText URLcrawlerrorscountsQuery'Platform where
    fromText = \case
        "mobile" -> Just UQPMobile
        "smartphoneOnly" -> Just UQPSmartphoneOnly
        "web" -> Just UQPWeb
        _ -> Nothing

instance ToText URLcrawlerrorscountsQuery'Platform where
    toText = \case
        UQPMobile -> "mobile"
        UQPSmartphoneOnly -> "smartphoneOnly"
        UQPWeb -> "web"

instance FromJSON URLcrawlerrorscountsQuery'Platform where
    parseJSON = parseJSONText "URLcrawlerrorscountsQuery'Platform"

instance ToJSON URLcrawlerrorscountsQuery'Platform where
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

-- | The crawl error category. For example: authPermissions
data URLcrawlerrorssamplesList'Category
    = ULCAuthPermissions
      -- ^ @authPermissions@
    | ULCManyToOneRedirect
      -- ^ @manyToOneRedirect@
    | ULCNotFollowed
      -- ^ @notFollowed@
    | ULCNotFound
      -- ^ @notFound@
    | ULCOther
      -- ^ @other@
    | ULCRoboted
      -- ^ @roboted@
    | ULCServerError
      -- ^ @serverError@
    | ULCSOFT404
      -- ^ @soft404@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable URLcrawlerrorssamplesList'Category

instance FromText URLcrawlerrorssamplesList'Category where
    fromText = \case
        "authPermissions" -> Just ULCAuthPermissions
        "manyToOneRedirect" -> Just ULCManyToOneRedirect
        "notFollowed" -> Just ULCNotFollowed
        "notFound" -> Just ULCNotFound
        "other" -> Just ULCOther
        "roboted" -> Just ULCRoboted
        "serverError" -> Just ULCServerError
        "soft404" -> Just ULCSOFT404
        _ -> Nothing

instance ToText URLcrawlerrorssamplesList'Category where
    toText = \case
        ULCAuthPermissions -> "authPermissions"
        ULCManyToOneRedirect -> "manyToOneRedirect"
        ULCNotFollowed -> "notFollowed"
        ULCNotFound -> "notFound"
        ULCOther -> "other"
        ULCRoboted -> "roboted"
        ULCServerError -> "serverError"
        ULCSOFT404 -> "soft404"

instance FromJSON URLcrawlerrorssamplesList'Category where
    parseJSON = parseJSONText "URLcrawlerrorssamplesList'Category"

instance ToJSON URLcrawlerrorssamplesList'Category where
    toJSON = toJSONText

-- | The user agent type (platform) that made the request. For example: web
data URLcrawlerrorssamplesGet'Platform
    = UGPMobile
      -- ^ @mobile@
    | UGPSmartphoneOnly
      -- ^ @smartphoneOnly@
    | UGPWeb
      -- ^ @web@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable URLcrawlerrorssamplesGet'Platform

instance FromText URLcrawlerrorssamplesGet'Platform where
    fromText = \case
        "mobile" -> Just UGPMobile
        "smartphoneOnly" -> Just UGPSmartphoneOnly
        "web" -> Just UGPWeb
        _ -> Nothing

instance ToText URLcrawlerrorssamplesGet'Platform where
    toText = \case
        UGPMobile -> "mobile"
        UGPSmartphoneOnly -> "smartphoneOnly"
        UGPWeb -> "web"

instance FromJSON URLcrawlerrorssamplesGet'Platform where
    parseJSON = parseJSONText "URLcrawlerrorssamplesGet'Platform"

instance ToJSON URLcrawlerrorssamplesGet'Platform where
    toJSON = toJSONText

-- | The user agent type (platform) that made the request. For example: web
data URLcrawlerrorssamplesMarkAsFixed'Platform
    = UMAFPMobile
      -- ^ @mobile@
    | UMAFPSmartphoneOnly
      -- ^ @smartphoneOnly@
    | UMAFPWeb
      -- ^ @web@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable URLcrawlerrorssamplesMarkAsFixed'Platform

instance FromText URLcrawlerrorssamplesMarkAsFixed'Platform where
    fromText = \case
        "mobile" -> Just UMAFPMobile
        "smartphoneOnly" -> Just UMAFPSmartphoneOnly
        "web" -> Just UMAFPWeb
        _ -> Nothing

instance ToText URLcrawlerrorssamplesMarkAsFixed'Platform where
    toText = \case
        UMAFPMobile -> "mobile"
        UMAFPSmartphoneOnly -> "smartphoneOnly"
        UMAFPWeb -> "web"

instance FromJSON URLcrawlerrorssamplesMarkAsFixed'Platform where
    parseJSON = parseJSONText "URLcrawlerrorssamplesMarkAsFixed'Platform"

instance ToJSON URLcrawlerrorssamplesMarkAsFixed'Platform where
    toJSON = toJSONText

-- | The crawl error category. For example: serverError. If not specified,
-- returns results for all categories.
data URLcrawlerrorscountsQuery'Category
    = UQCAuthPermissions
      -- ^ @authPermissions@
    | UQCManyToOneRedirect
      -- ^ @manyToOneRedirect@
    | UQCNotFollowed
      -- ^ @notFollowed@
    | UQCNotFound
      -- ^ @notFound@
    | UQCOther
      -- ^ @other@
    | UQCRoboted
      -- ^ @roboted@
    | UQCServerError
      -- ^ @serverError@
    | UQCSOFT404
      -- ^ @soft404@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable URLcrawlerrorscountsQuery'Category

instance FromText URLcrawlerrorscountsQuery'Category where
    fromText = \case
        "authPermissions" -> Just UQCAuthPermissions
        "manyToOneRedirect" -> Just UQCManyToOneRedirect
        "notFollowed" -> Just UQCNotFollowed
        "notFound" -> Just UQCNotFound
        "other" -> Just UQCOther
        "roboted" -> Just UQCRoboted
        "serverError" -> Just UQCServerError
        "soft404" -> Just UQCSOFT404
        _ -> Nothing

instance ToText URLcrawlerrorscountsQuery'Category where
    toText = \case
        UQCAuthPermissions -> "authPermissions"
        UQCManyToOneRedirect -> "manyToOneRedirect"
        UQCNotFollowed -> "notFollowed"
        UQCNotFound -> "notFound"
        UQCOther -> "other"
        UQCRoboted -> "roboted"
        UQCServerError -> "serverError"
        UQCSOFT404 -> "soft404"

instance FromJSON URLcrawlerrorscountsQuery'Category where
    parseJSON = parseJSONText "URLcrawlerrorscountsQuery'Category"

instance ToJSON URLcrawlerrorscountsQuery'Category where
    toJSON = toJSONText

-- | The crawl error category. For example: authPermissions
data URLcrawlerrorssamplesMarkAsFixed'Category
    = UMAFCAuthPermissions
      -- ^ @authPermissions@
    | UMAFCManyToOneRedirect
      -- ^ @manyToOneRedirect@
    | UMAFCNotFollowed
      -- ^ @notFollowed@
    | UMAFCNotFound
      -- ^ @notFound@
    | UMAFCOther
      -- ^ @other@
    | UMAFCRoboted
      -- ^ @roboted@
    | UMAFCServerError
      -- ^ @serverError@
    | UMAFCSOFT404
      -- ^ @soft404@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable URLcrawlerrorssamplesMarkAsFixed'Category

instance FromText URLcrawlerrorssamplesMarkAsFixed'Category where
    fromText = \case
        "authPermissions" -> Just UMAFCAuthPermissions
        "manyToOneRedirect" -> Just UMAFCManyToOneRedirect
        "notFollowed" -> Just UMAFCNotFollowed
        "notFound" -> Just UMAFCNotFound
        "other" -> Just UMAFCOther
        "roboted" -> Just UMAFCRoboted
        "serverError" -> Just UMAFCServerError
        "soft404" -> Just UMAFCSOFT404
        _ -> Nothing

instance ToText URLcrawlerrorssamplesMarkAsFixed'Category where
    toText = \case
        UMAFCAuthPermissions -> "authPermissions"
        UMAFCManyToOneRedirect -> "manyToOneRedirect"
        UMAFCNotFollowed -> "notFollowed"
        UMAFCNotFound -> "notFound"
        UMAFCOther -> "other"
        UMAFCRoboted -> "roboted"
        UMAFCServerError -> "serverError"
        UMAFCSOFT404 -> "soft404"

instance FromJSON URLcrawlerrorssamplesMarkAsFixed'Category where
    parseJSON = parseJSONText "URLcrawlerrorssamplesMarkAsFixed'Category"

instance ToJSON URLcrawlerrorssamplesMarkAsFixed'Category where
    toJSON = toJSONText
