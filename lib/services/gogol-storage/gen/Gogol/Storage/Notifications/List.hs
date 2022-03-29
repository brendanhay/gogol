-- |
-- Module      : Gogol.Storage.Notifications.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.notifications.list@.
module Gogol.Storage.Notifications.List
    (
    -- * Constructing a Request
    StorageNotificationsList (..),
#ifdef NOFIELDSELECTORS
    MkStorageNotificationsList (..),
#endif
    mkStorageNotificationsList,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types


-- | Retrieves a list of notification subscriptions for a given bucket.
--
-- Construct a default value using the 'MkStorageNotificationsList' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data StorageNotificationsList = StorageNotificationsList
    {
      -- | Name of a Google Cloud Storage bucket.
      bucket :: Core.Text
      -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    , provisionalUserProject :: Core.Maybe Core.Text
      -- | The project to be billed for this request. Required for Requester Pays buckets.
    , userProject :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'StorageNotificationsList' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkStorageNotificationsList :: Core.Text -> StorageNotificationsList
pattern MkStorageNotificationsList{bucket} =
        StorageNotificationsList{bucket = bucket, provisionalUserProject = Core.Nothing, userProject = Core.Nothing}

{-# DEPRECATED mkStorageNotificationsList "Please use MkStorageNotificationsList instead" #-}
#endif

-- | Create 'StorageNotificationsList' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkStorageNotificationsList :: Core.Text -> StorageNotificationsList
mkStorageNotificationsList bucket
  = StorageNotificationsList{bucket = bucket, provisionalUserProject = Core.Nothing, userProject = Core.Nothing}
instance Core.GoogleRequest StorageNotificationsList where
        type Core.Scopes StorageNotificationsList =
             '[CloudPlatform'FullControl, CloudPlatform'ReadOnly, Devstorage'FullControl, Devstorage'ReadOnly, Devstorage'ReadWrite]
        type Core.Config StorageNotificationsList = StorageService
        type Core.Response StorageNotificationsList = Notifications
        toRequest Core.Service{serviceRequest, serviceParams = StorageParams{..}} StorageNotificationsList{..}
          = serviceRequest{Core.method = "GET",
                           Core.path = Core.toRequestPath ["/storage/v1/b/", Core.toPathBuilder bucket, "/notificationConfigs"],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("fields",) Core.. Core.toQueryParam Core.<$> fields, ("key",) Core.. Core.toQueryParam Core.<$> key,
                                  ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken, Core.Just ("prettyPrint", Core.toQueryParam prettyPrint),
                                  ("provisionalUserProject",) Core.. Core.toQueryParam Core.<$> provisionalUserProject,
                                  ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser, ("userProject",) Core.. Core.toQueryParam Core.<$> userProject,
                                  Core.Just ("alt", "json")]}
