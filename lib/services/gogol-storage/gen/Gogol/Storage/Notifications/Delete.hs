-- |
-- Module      : Gogol.Storage.Notifications.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.notifications.delete@.
module Gogol.Storage.Notifications.Delete
    (
    -- * Constructing a Request
    StorageNotificationsDelete (..),
#ifdef NOFIELDSELECTORS
    MkStorageNotificationsDelete (..),
#endif
    mkStorageNotificationsDelete,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types


-- | Permanently deletes a notification subscription.
--
-- Construct a default value using the 'MkStorageNotificationsDelete' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data StorageNotificationsDelete = StorageNotificationsDelete
    {
      -- | The parent bucket of the notification.
      bucket :: Core.Text
      -- | ID of the notification to delete.
    , notification :: Core.Text
      -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    , provisionalUserProject :: Core.Maybe Core.Text
      -- | The project to be billed for this request. Required for Requester Pays buckets.
    , userProject :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'StorageNotificationsDelete' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkStorageNotificationsDelete :: Core.Text -> Core.Text -> StorageNotificationsDelete
pattern MkStorageNotificationsDelete{bucket, notification} =
        StorageNotificationsDelete{bucket = bucket, notification = notification, provisionalUserProject = Core.Nothing,
                                   userProject = Core.Nothing}

{-# DEPRECATED mkStorageNotificationsDelete "Please use MkStorageNotificationsDelete instead" #-}
#endif

-- | Create 'StorageNotificationsDelete' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkStorageNotificationsDelete :: Core.Text -> Core.Text -> StorageNotificationsDelete
mkStorageNotificationsDelete bucket notification
  = StorageNotificationsDelete{bucket = bucket, notification = notification, provisionalUserProject = Core.Nothing,
                               userProject = Core.Nothing}
instance Core.GoogleRequest StorageNotificationsDelete where
        type Core.Scopes StorageNotificationsDelete = '[CloudPlatform'FullControl, Devstorage'FullControl, Devstorage'ReadWrite]
        type Core.Config StorageNotificationsDelete = StorageService
        type Core.Response StorageNotificationsDelete = ()
        toRequest Core.Service{serviceRequest, serviceParams = StorageParams{..}} StorageNotificationsDelete{..}
          = serviceRequest{Core.method = "DELETE",
                           Core.path =
                             Core.toRequestPath ["/storage/v1/b/", Core.toPathBuilder bucket, "/notificationConfigs/", Core.toPathBuilder notification],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("fields",) Core.. Core.toQueryParam Core.<$> fields, ("key",) Core.. Core.toQueryParam Core.<$> key,
                                  ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken, Core.Just ("prettyPrint", Core.toQueryParam prettyPrint),
                                  ("provisionalUserProject",) Core.. Core.toQueryParam Core.<$> provisionalUserProject,
                                  ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser, ("userProject",) Core.. Core.toQueryParam Core.<$> userProject,
                                  Core.Just ("alt", "json")]}
