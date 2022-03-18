{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Drive.Channels.Stop
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stop watching resources through this channel
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.channels.stop@.
module Gogol.Drive.Channels.Stop
  ( -- * Resource
    DriveChannelsStopResource,

    -- ** Constructing a Request
    newDriveChannelsStop,
    DriveChannelsStop,
  )
where

import Gogol.Drive.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @drive.channels.stop@ method which the
-- 'DriveChannelsStop' request conforms to.
type DriveChannelsStopResource =
  "drive"
    Core.:> "v3"
    Core.:> "channels"
    Core.:> "stop"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Channel
    Core.:> Core.Post '[Core.JSON] ()

-- | Stop watching resources through this channel
--
-- /See:/ 'newDriveChannelsStop' smart constructor.
newtype DriveChannelsStop = DriveChannelsStop
  { -- | Multipart request metadata.
    payload :: Channel
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveChannelsStop' with the minimum fields required to make a request.
newDriveChannelsStop ::
  -- |  Multipart request metadata. See 'payload'.
  Channel ->
  DriveChannelsStop
newDriveChannelsStop payload = DriveChannelsStop {payload = payload}

instance Core.GoogleRequest DriveChannelsStop where
  type Rs DriveChannelsStop = ()
  type
    Scopes DriveChannelsStop =
      '[ "https://www.googleapis.com/auth/drive",
         "https://www.googleapis.com/auth/drive.appdata",
         "https://www.googleapis.com/auth/drive.file",
         "https://www.googleapis.com/auth/drive.metadata",
         "https://www.googleapis.com/auth/drive.metadata.readonly",
         "https://www.googleapis.com/auth/drive.photos.readonly",
         "https://www.googleapis.com/auth/drive.readonly"
       ]
  requestClient DriveChannelsStop {..} =
    go (Core.Just Core.AltJSON) payload driveService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DriveChannelsStopResource)
          Core.mempty
