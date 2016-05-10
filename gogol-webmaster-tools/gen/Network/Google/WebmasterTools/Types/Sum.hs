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

instance FromHttpApiData URLCrawlErrorsSamplesMarkAsFixedCategory where
    parseQueryParam = \case
        "authPermissions" -> Right AuthPermissions
        "flashContent" -> Right FlashContent
        "manyToOneRedirect" -> Right ManyToOneRedirect
        "notFollowed" -> Right NotFollowed
        "notFound" -> Right NotFound
        "other" -> Right Other
        "roboted" -> Right Roboted
        "serverError" -> Right ServerError
        "soft404" -> Right SOFT404
        x -> Left ("Unable to parse URLCrawlErrorsSamplesMarkAsFixedCategory from: " <> x)

instance ToHttpApiData URLCrawlErrorsSamplesMarkAsFixedCategory where
    toQueryParam = \case
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

instance FromHttpApiData URLCrawlErrorsSamplesGetPlatform where
    parseQueryParam = \case
        "mobile" -> Right Mobile
        "smartphoneOnly" -> Right SmartphoneOnly
        "web" -> Right Web
        x -> Left ("Unable to parse URLCrawlErrorsSamplesGetPlatform from: " <> x)

instance ToHttpApiData URLCrawlErrorsSamplesGetPlatform where
    toQueryParam = \case
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

instance FromHttpApiData URLCrawlErrorsSamplesMarkAsFixedPlatform where
    parseQueryParam = \case
        "mobile" -> Right UCESMAFPMobile
        "smartphoneOnly" -> Right UCESMAFPSmartphoneOnly
        "web" -> Right UCESMAFPWeb
        x -> Left ("Unable to parse URLCrawlErrorsSamplesMarkAsFixedPlatform from: " <> x)

instance ToHttpApiData URLCrawlErrorsSamplesMarkAsFixedPlatform where
    toQueryParam = \case
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

instance FromHttpApiData URLCrawlErrorsSamplesGetCategory where
    parseQueryParam = \case
        "authPermissions" -> Right UCESGCAuthPermissions
        "flashContent" -> Right UCESGCFlashContent
        "manyToOneRedirect" -> Right UCESGCManyToOneRedirect
        "notFollowed" -> Right UCESGCNotFollowed
        "notFound" -> Right UCESGCNotFound
        "other" -> Right UCESGCOther
        "roboted" -> Right UCESGCRoboted
        "serverError" -> Right UCESGCServerError
        "soft404" -> Right UCESGCSOFT404
        x -> Left ("Unable to parse URLCrawlErrorsSamplesGetCategory from: " <> x)

instance ToHttpApiData URLCrawlErrorsSamplesGetCategory where
    toQueryParam = \case
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

instance FromHttpApiData URLCrawlErrorscountsQueryPlatform where
    parseQueryParam = \case
        "mobile" -> Right UCEQPMobile
        "smartphoneOnly" -> Right UCEQPSmartphoneOnly
        "web" -> Right UCEQPWeb
        x -> Left ("Unable to parse URLCrawlErrorscountsQueryPlatform from: " <> x)

instance ToHttpApiData URLCrawlErrorscountsQueryPlatform where
    toQueryParam = \case
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

instance FromHttpApiData URLCrawlErrorsSamplesListCategory where
    parseQueryParam = \case
        "authPermissions" -> Right UCESLCAuthPermissions
        "flashContent" -> Right UCESLCFlashContent
        "manyToOneRedirect" -> Right UCESLCManyToOneRedirect
        "notFollowed" -> Right UCESLCNotFollowed
        "notFound" -> Right UCESLCNotFound
        "other" -> Right UCESLCOther
        "roboted" -> Right UCESLCRoboted
        "serverError" -> Right UCESLCServerError
        "soft404" -> Right UCESLCSOFT404
        x -> Left ("Unable to parse URLCrawlErrorsSamplesListCategory from: " <> x)

instance ToHttpApiData URLCrawlErrorsSamplesListCategory where
    toQueryParam = \case
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

instance FromHttpApiData URLCrawlErrorsSamplesListPlatform where
    parseQueryParam = \case
        "mobile" -> Right UCESLPMobile
        "smartphoneOnly" -> Right UCESLPSmartphoneOnly
        "web" -> Right UCESLPWeb
        x -> Left ("Unable to parse URLCrawlErrorsSamplesListPlatform from: " <> x)

instance ToHttpApiData URLCrawlErrorsSamplesListPlatform where
    toQueryParam = \case
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

instance FromHttpApiData URLCrawlErrorscountsQueryCategory where
    parseQueryParam = \case
        "authPermissions" -> Right UCEQCAuthPermissions
        "flashContent" -> Right UCEQCFlashContent
        "manyToOneRedirect" -> Right UCEQCManyToOneRedirect
        "notFollowed" -> Right UCEQCNotFollowed
        "notFound" -> Right UCEQCNotFound
        "other" -> Right UCEQCOther
        "roboted" -> Right UCEQCRoboted
        "serverError" -> Right UCEQCServerError
        "soft404" -> Right UCEQCSOFT404
        x -> Left ("Unable to parse URLCrawlErrorscountsQueryCategory from: " <> x)

instance ToHttpApiData URLCrawlErrorscountsQueryCategory where
    toQueryParam = \case
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
