-- |
-- Module      : Gogol.Storage.Notifications.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.notifications.insert@.
module Gogol.Storage.Notifications.Insert
    (
    -- * Constructing a Request
    StorageNotificationsInsert (..),
#ifdef NOFIELDSELECTORS
    MkStorageNotificationsInsert (..),
#endif
    mkStorageNotificationsInsert,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types


-- | Creates a notification subscription for a given bucket.
--
-- Construct a default value using the 'MkStorageNotificationsInsert' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data StorageNotificationsInsert = StorageNotificationsInsert
    {
      -- | The parent bucket of the notification.
      bucket :: Core.Text
      -- | Multipart request metadata.
    , meta :: Notification
      -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    , provisionalUserProject :: Core.Maybe Core.Text
      -- | The project to be billed for this request. Required for Requester Pays buckets.
    , userProject :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'StorageNotificationsInsert' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkStorageNotificationsInsert :: Core.Text -> Notification -> StorageNotificationsInsert
pattern MkStorageNotificationsInsert{bucket, meta} =
        StorageNotificationsInsert{bucket = bucket, meta = meta, provisionalUserProject = Core.Nothing, userProject = Core.Nothing}

{-# DEPRECATED mkStorageNotificationsInsert "Please use MkStorageNotificationsInsert instead" #-}
#endif

-- | Create 'StorageNotificationsInsert' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkStorageNotificationsInsert :: Core.Text -> Notification -> StorageNotificationsInsert
mkStorageNotificationsInsert bucket meta
  = StorageNotificationsInsert{bucket = bucket, meta = meta, provisionalUserProject = Core.Nothing, userProject = Core.Nothing}
instance Core.GoogleRequest StorageNotificationsInsert where
        type Core.Scopes StorageNotificationsInsert = '[CloudPlatform'FullControl, Devstorage'FullControl, Devstorage'ReadWrite]
        type Core.Config StorageNotificationsInsert = StorageService
        type Core.Response StorageNotificationsInsert = Notification
        toRequest Core.Service{serviceRequest, serviceParams = StorageParams{..}} StorageNotificationsInsert{..}
          = serviceRequest{Core.method = "POST",
                           Core.path = Core.toRequestPath ["/storage/v1/b/", Core.toPathBuilder bucket, "/notificationConfigs"],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("fields",) Core.. Core.toQueryParam Core.<$> fields, ("key",) Core.. Core.toQueryParam Core.<$> key,
                                  ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken, Core.Just ("prettyPrint", Core.toQueryParam prettyPrint),
                                  ("provisionalUserProject",) Core.. Core.toQueryParam Core.<$> provisionalUserProject,
                                  ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser, ("userProject",) Core.. Core.toQueryParam Core.<$> userProject,
                                  Core.Just ("alt", "json")],
                           Core.requestBody = Core.toRequestBodyJSON payload}
