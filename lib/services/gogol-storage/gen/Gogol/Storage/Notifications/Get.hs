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
-- Module      : Gogol.Storage.Notifications.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- View a notification configuration.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.notifications.get@.
module Gogol.Storage.Notifications.Get
    (
    -- * Resource
      StorageNotificationsGetResource

    -- ** Constructing a Request
    , StorageNotificationsGet (..)
    , newStorageNotificationsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.notifications.get@ method which the
-- 'StorageNotificationsGet' request conforms to.
type StorageNotificationsGetResource =
     "storage" Core.:>
       "v1" Core.:>
         "b" Core.:>
           Core.Capture "bucket" Core.Text Core.:>
             "notificationConfigs" Core.:>
               Core.Capture "notification" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "userProject" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Get '[Core.JSON] Notification

-- | View a notification configuration.
--
-- /See:/ 'newStorageNotificationsGet' smart constructor.
data StorageNotificationsGet = StorageNotificationsGet
    {
      -- | The parent bucket of the notification.
      bucket :: Core.Text
      -- | Notification ID
    , notification :: Core.Text
      -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | The project to be billed for this request. Required for Requester Pays buckets.
    , userProject :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageNotificationsGet' with the minimum fields required to make a request.
newStorageNotificationsGet 
    ::  Core.Text
       -- ^  The parent bucket of the notification. See 'bucket'.
    -> Core.Text
       -- ^  Notification ID See 'notification'.
    -> StorageNotificationsGet
newStorageNotificationsGet bucket notification =
  StorageNotificationsGet
    { bucket = bucket
    , notification = notification
    , uploadType = Core.Nothing
    , userProject = Core.Nothing
    }

instance Core.GoogleRequest StorageNotificationsGet
         where
        type Rs StorageNotificationsGet = Notification
        type Scopes StorageNotificationsGet =
             '[CloudPlatform'FullControl, CloudPlatform'ReadOnly,
               Devstorage'FullControl, Devstorage'ReadOnly,
               Devstorage'ReadWrite]
        requestClient StorageNotificationsGet{..}
          = go bucket notification uploadType userProject
              (Core.Just Core.AltJSON)
              storageService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy StorageNotificationsGetResource)
                      Core.mempty

