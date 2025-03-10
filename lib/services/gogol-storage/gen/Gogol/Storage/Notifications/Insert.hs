{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Storage.Notifications.Insert
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a notification subscription for a given bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.notifications.insert@.
module Gogol.Storage.Notifications.Insert
  ( -- * Resource
    StorageNotificationsInsertResource,

    -- ** Constructing a Request
    StorageNotificationsInsert (..),
    newStorageNotificationsInsert,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.notifications.insert@ method which the
-- 'StorageNotificationsInsert' request conforms to.
type StorageNotificationsInsertResource =
  "storage"
    Core.:> "v1"
    Core.:> "b"
    Core.:> Core.Capture "bucket" Core.Text
    Core.:> "notificationConfigs"
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "userProject" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Notification
    Core.:> Core.Post '[Core.JSON] Notification

-- | Creates a notification subscription for a given bucket.
--
-- /See:/ 'newStorageNotificationsInsert' smart constructor.
data StorageNotificationsInsert = StorageNotificationsInsert
  { -- | The parent bucket of the notification.
    bucket :: Core.Text,
    -- | Multipart request metadata.
    payload :: Notification,
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text),
    -- | The project to be billed for this request. Required for Requester Pays buckets.
    userProject :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageNotificationsInsert' with the minimum fields required to make a request.
newStorageNotificationsInsert ::
  -- |  The parent bucket of the notification. See 'bucket'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Notification ->
  StorageNotificationsInsert
newStorageNotificationsInsert bucket payload =
  StorageNotificationsInsert
    { bucket = bucket,
      payload = payload,
      uploadType = Core.Nothing,
      userProject = Core.Nothing
    }

instance Core.GoogleRequest StorageNotificationsInsert where
  type Rs StorageNotificationsInsert = Notification
  type
    Scopes StorageNotificationsInsert =
      '[ CloudPlatform'FullControl,
         Devstorage'FullControl,
         Devstorage'ReadWrite
       ]
  requestClient StorageNotificationsInsert {..} =
    go
      bucket
      uploadType
      userProject
      (Core.Just Core.AltJSON)
      payload
      storageService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy StorageNotificationsInsertResource)
          Core.mempty
