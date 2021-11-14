{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Indexing.Types
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Indexing.Types
    (
    -- * Service Configuration
      indexingService

    -- * OAuth Scopes
    , indexingScope

    -- * PublishURLNotificationResponse
    , PublishURLNotificationResponse
    , publishURLNotificationResponse
    , punrURLNotificationMetadata

    -- * URLNotificationType
    , URLNotificationType (..)

    -- * Xgafv
    , Xgafv (..)

    -- * URLNotificationMetadata
    , URLNotificationMetadata
    , urlNotificationMetadata
    , unmLatestUpdate
    , unmLatestRemove
    , unmURL

    -- * URLNotification
    , URLNotification
    , urlNotification
    , unURL
    , unNotifyTime
    , unType
    ) where

import Network.Google.Indexing.Types.Product
import Network.Google.Indexing.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v3' of the Indexing API. This contains the host and root path used as a starting point for constructing service requests.
indexingService :: ServiceConfig
indexingService
  = defaultService (ServiceId "indexing:v3")
      "indexing.googleapis.com"

-- | Submit data to Google for indexing
indexingScope :: Proxy '["https://www.googleapis.com/auth/indexing"]
indexingScope = Proxy
