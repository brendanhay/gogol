{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Indexing
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Notifies Google when your web pages change.
--
-- /See:/ <https://developers.google.com/search/apis/indexing-api/ Indexing API Reference>
module Network.Google.Indexing
    (
    -- * Service Configuration
      indexingService

    -- * OAuth Scopes
    , indexingScope

    -- * API Declaration
    , IndexingAPI

    -- * Resources

    -- ** indexing.urlNotifications.getMetadata
    , module Network.Google.Resource.Indexing.URLNotifications.GetMetadata

    -- ** indexing.urlNotifications.publish
    , module Network.Google.Resource.Indexing.URLNotifications.Publish

    -- * Types

    -- ** PublishURLNotificationResponse
    , PublishURLNotificationResponse
    , publishURLNotificationResponse
    , punrURLNotificationMetadata

    -- ** URLNotificationType
    , URLNotificationType (..)

    -- ** Xgafv
    , Xgafv (..)

    -- ** URLNotificationMetadata
    , URLNotificationMetadata
    , urlNotificationMetadata
    , unmLatestUpdate
    , unmLatestRemove
    , unmURL

    -- ** URLNotification
    , URLNotification
    , urlNotification
    , unURL
    , unNotifyTime
    , unType
    ) where

import Network.Google.Prelude
import Network.Google.Indexing.Types
import Network.Google.Resource.Indexing.URLNotifications.GetMetadata
import Network.Google.Resource.Indexing.URLNotifications.Publish

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Indexing API service.
type IndexingAPI =
     URLNotificationsGetMetadataResource :<|>
       URLNotificationsPublishResource
