{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.DriveActivity.Activity.Query
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Query past activity in Google Drive.
--
-- /See:/ <https://developers.google.com/drive/activity/ Drive Activity API Reference> for @driveactivity.activity.query@.
module Gogol.DriveActivity.Activity.Query
  ( -- * Resource
    DriveActivityActivityQueryResource,

    -- ** Constructing a Request
    DriveActivityActivityQuery (..),
    newDriveActivityActivityQuery,
  )
where

import Gogol.DriveActivity.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @driveactivity.activity.query@ method which the
-- 'DriveActivityActivityQuery' request conforms to.
type DriveActivityActivityQueryResource =
  "v2"
    Core.:> "activity:query"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] QueryDriveActivityRequest
    Core.:> Core.Post '[Core.JSON] QueryDriveActivityResponse

-- | Query past activity in Google Drive.
--
-- /See:/ 'newDriveActivityActivityQuery' smart constructor.
data DriveActivityActivityQuery = DriveActivityActivityQuery
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: QueryDriveActivityRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveActivityActivityQuery' with the minimum fields required to make a request.
newDriveActivityActivityQuery ::
  -- |  Multipart request metadata. See 'payload'.
  QueryDriveActivityRequest ->
  DriveActivityActivityQuery
newDriveActivityActivityQuery payload =
  DriveActivityActivityQuery
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DriveActivityActivityQuery where
  type Rs DriveActivityActivityQuery = QueryDriveActivityResponse
  type
    Scopes DriveActivityActivityQuery =
      '[Drive'Activity, Drive'Activity'Readonly]
  requestClient DriveActivityActivityQuery {..} =
    go
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      driveActivityService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DriveActivityActivityQueryResource)
          Core.mempty
