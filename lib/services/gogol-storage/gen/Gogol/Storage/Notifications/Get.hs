-- |
-- Module      : Gogol.Storage.Notifications.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.notifications.get@.
module Gogol.Storage.Notifications.Get
    (
    -- * Constructing a Request
    StorageNotificationsGet (..),
#ifdef NOFIELDSELECTORS
    MkStorageNotificationsGet (..),
#endif
    mkStorageNotificationsGet,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types


-- | View a notification configuration.
--
-- Construct a default value using the 'MkStorageNotificationsGet' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data StorageNotificationsGet = StorageNotificationsGet
    {
      -- | The parent bucket of the notification.
      bucket :: Core.Text
      -- | Notification ID.
    , notification :: Core.Text
      -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    , provisionalUserProject :: Core.Maybe Core.Text
      -- | The project to be billed for this request. Required for Requester Pays buckets.
    , userProject :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'StorageNotificationsGet' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkStorageNotificationsGet :: Core.Text -> Core.Text -> StorageNotificationsGet
pattern MkStorageNotificationsGet{bucket, notification} =
        StorageNotificationsGet{bucket = bucket, notification = notification, provisionalUserProject = Core.Nothing,
                                userProject = Core.Nothing}

{-# DEPRECATED mkStorageNotificationsGet "Please use MkStorageNotificationsGet instead" #-}
#endif

-- | Create 'StorageNotificationsGet' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkStorageNotificationsGet :: Core.Text -> Core.Text -> StorageNotificationsGet
mkStorageNotificationsGet bucket notification
  = StorageNotificationsGet{bucket = bucket, notification = notification, provisionalUserProject = Core.Nothing,
                            userProject = Core.Nothing}
instance Core.GoogleRequest StorageNotificationsGet where
        type Core.Scopes StorageNotificationsGet =
             '[CloudPlatform'FullControl, CloudPlatform'ReadOnly, Devstorage'FullControl, Devstorage'ReadOnly, Devstorage'ReadWrite]
        type Core.Config StorageNotificationsGet = StorageService
        type Core.Response StorageNotificationsGet = Notification
        toRequest Core.Service{serviceRequest, serviceParams = StorageParams{..}} StorageNotificationsGet{..}
          = serviceRequest{Core.method = "GET",
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
