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
-- Module      : Gogol.Storage.Channels.Stop
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stop watching resources through this channel
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.channels.stop@.
module Gogol.Storage.Channels.Stop
  ( -- * Resource
    StorageChannelsStopResource,

    -- ** Constructing a Request
    StorageChannelsStop (..),
    newStorageChannelsStop,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.channels.stop@ method which the
-- 'StorageChannelsStop' request conforms to.
type StorageChannelsStopResource =
  "storage"
    Core.:> "v1"
    Core.:> "channels"
    Core.:> "stop"
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Channel
    Core.:> Core.Post '[Core.JSON] ()

-- | Stop watching resources through this channel
--
-- /See:/ 'newStorageChannelsStop' smart constructor.
data StorageChannelsStop = StorageChannelsStop
  { -- | Multipart request metadata.
    payload :: Channel,
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageChannelsStop' with the minimum fields required to make a request.
newStorageChannelsStop ::
  -- |  Multipart request metadata. See 'payload'.
  Channel ->
  StorageChannelsStop
newStorageChannelsStop payload =
  StorageChannelsStop {payload = payload, uploadType = Core.Nothing}

instance Core.GoogleRequest StorageChannelsStop where
  type Rs StorageChannelsStop = ()
  type
    Scopes StorageChannelsStop =
      '[ CloudPlatform'FullControl,
         CloudPlatform'ReadOnly,
         Devstorage'FullControl,
         Devstorage'ReadOnly,
         Devstorage'ReadWrite
       ]
  requestClient StorageChannelsStop {..} =
    go uploadType (Core.Just Core.AltJSON) payload storageService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy StorageChannelsStopResource)
          Core.mempty
