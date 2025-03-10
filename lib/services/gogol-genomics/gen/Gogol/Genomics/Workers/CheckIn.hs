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
-- Module      : Gogol.Genomics.Workers.CheckIn
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The worker uses this method to retrieve the assigned operation and provide periodic status updates.
--
-- /See:/ <https://cloud.google.com/genomics Genomics API Reference> for @genomics.workers.checkIn@.
module Gogol.Genomics.Workers.CheckIn
  ( -- * Resource
    GenomicsWorkersCheckInResource,

    -- ** Constructing a Request
    GenomicsWorkersCheckIn (..),
    newGenomicsWorkersCheckIn,
  )
where

import Gogol.Genomics.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @genomics.workers.checkIn@ method which the
-- 'GenomicsWorkersCheckIn' request conforms to.
type GenomicsWorkersCheckInResource =
  "v2alpha1"
    Core.:> "workers"
    Core.:> Core.CaptureMode "id" "checkIn" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CheckInRequest
    Core.:> Core.Post '[Core.JSON] CheckInResponse

-- | The worker uses this method to retrieve the assigned operation and provide periodic status updates.
--
-- /See:/ 'newGenomicsWorkersCheckIn' smart constructor.
data GenomicsWorkersCheckIn = GenomicsWorkersCheckIn
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The VM identity token for authenticating the VM instance. https:\/\/cloud.google.com\/compute\/docs\/instances\/verifying-instance-identity
    id :: Core.Text,
    -- | Multipart request metadata.
    payload :: CheckInRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GenomicsWorkersCheckIn' with the minimum fields required to make a request.
newGenomicsWorkersCheckIn ::
  -- |  The VM identity token for authenticating the VM instance. https:\/\/cloud.google.com\/compute\/docs\/instances\/verifying-instance-identity See 'id'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CheckInRequest ->
  GenomicsWorkersCheckIn
newGenomicsWorkersCheckIn id payload =
  GenomicsWorkersCheckIn
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      id = id,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest GenomicsWorkersCheckIn where
  type Rs GenomicsWorkersCheckIn = CheckInResponse
  type
    Scopes GenomicsWorkersCheckIn =
      '[CloudPlatform'FullControl, Genomics'FullControl]
  requestClient GenomicsWorkersCheckIn {..} =
    go
      id
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      genomicsService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy GenomicsWorkersCheckInResource)
          Core.mempty
