{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Indexing.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Indexing.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | The URL life cycle event that Google is being notified about.
data URLNotificationType
    = URLNotificationTypeUnspecified
      -- ^ @URL_NOTIFICATION_TYPE_UNSPECIFIED@
      -- Unspecified.
    | URLUpdated
      -- ^ @URL_UPDATED@
      -- The given URL (Web document) has been updated.
    | URLDeleted
      -- ^ @URL_DELETED@
      -- The given URL (Web document) has been deleted.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable URLNotificationType

instance FromHttpApiData URLNotificationType where
    parseQueryParam = \case
        "URL_NOTIFICATION_TYPE_UNSPECIFIED" -> Right URLNotificationTypeUnspecified
        "URL_UPDATED" -> Right URLUpdated
        "URL_DELETED" -> Right URLDeleted
        x -> Left ("Unable to parse URLNotificationType from: " <> x)

instance ToHttpApiData URLNotificationType where
    toQueryParam = \case
        URLNotificationTypeUnspecified -> "URL_NOTIFICATION_TYPE_UNSPECIFIED"
        URLUpdated -> "URL_UPDATED"
        URLDeleted -> "URL_DELETED"

instance FromJSON URLNotificationType where
    parseJSON = parseJSONText "URLNotificationType"

instance ToJSON URLNotificationType where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText
