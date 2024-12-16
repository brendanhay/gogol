{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Storage.Notifications.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Permanently deletes a notification subscription.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.notifications.delete@.
module Gogol.Storage.Notifications.Delete
    (
    -- * Resource
      StorageNotificationsDeleteResource

    -- ** Constructing a Request
    , StorageNotificationsDelete (..)
    , newStorageNotificationsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.notifications.delete@ method which the
-- 'StorageNotificationsDelete' request conforms to.
type StorageNotificationsDeleteResource =
     "storage" Core.:>
       "v1" Core.:>
         "b" Core.:>
           Core.Capture "bucket" Core.Text Core.:>
             "notificationConfigs" Core.:>
               Core.Capture "notification" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "userProject" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Delete '[Core.JSON] ()

-- | Permanently deletes a notification subscription.
--
-- /See:/ 'newStorageNotificationsDelete' smart constructor.
data StorageNotificationsDelete = StorageNotificationsDelete
    {
      -- | The parent bucket of the notification.
      bucket :: Core.Text
      -- | ID of the notification to delete.
    , notification :: Core.Text
      -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | The project to be billed for this request. Required for Requester Pays buckets.
    , userProject :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageNotificationsDelete' with the minimum fields required to make a request.
newStorageNotificationsDelete 
    ::  Core.Text
       -- ^  The parent bucket of the notification. See 'bucket'.
    -> Core.Text
       -- ^  ID of the notification to delete. See 'notification'.
    -> StorageNotificationsDelete
newStorageNotificationsDelete bucket notification =
  StorageNotificationsDelete
    { bucket = bucket
    , notification = notification
    , uploadType = Core.Nothing
    , userProject = Core.Nothing
    }

instance Core.GoogleRequest
           StorageNotificationsDelete
         where
        type Rs StorageNotificationsDelete = ()
        type Scopes StorageNotificationsDelete =
             '[CloudPlatform'FullControl, Devstorage'FullControl,
               Devstorage'ReadWrite]
        requestClient StorageNotificationsDelete{..}
          = go bucket notification uploadType userProject
              (Core.Just Core.AltJSON)
              storageService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy StorageNotificationsDeleteResource)
                      Core.mempty

