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
-- Module      : Network.Google.Genomics.Projects.Workers.CheckIn
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The worker uses this method to retrieve the assigned operation and provide periodic status updates.
--
-- /See:/ <https://cloud.google.com/genomics Genomics API Reference> for @genomics.projects.workers.checkIn@.
module Network.Google.Genomics.Projects.Workers.CheckIn
  ( -- * Resource
    GenomicsProjectsWorkersCheckInResource,

    -- ** Constructing a Request
    newGenomicsProjectsWorkersCheckIn,
    GenomicsProjectsWorkersCheckIn,
  )
where

import Network.Google.Genomics.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @genomics.projects.workers.checkIn@ method which the
-- 'GenomicsProjectsWorkersCheckIn' request conforms to.
type GenomicsProjectsWorkersCheckInResource =
  "v2alpha1"
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
-- /See:/ 'newGenomicsProjectsWorkersCheckIn' smart constructor.
data GenomicsProjectsWorkersCheckIn = GenomicsProjectsWorkersCheckIn
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

-- | Creates a value of 'GenomicsProjectsWorkersCheckIn' with the minimum fields required to make a request.
newGenomicsProjectsWorkersCheckIn ::
  -- |  The VM identity token for authenticating the VM instance. https:\/\/cloud.google.com\/compute\/docs\/instances\/verifying-instance-identity See 'id'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CheckInRequest ->
  GenomicsProjectsWorkersCheckIn
newGenomicsProjectsWorkersCheckIn id payload =
  GenomicsProjectsWorkersCheckIn
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      id = id,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    GenomicsProjectsWorkersCheckIn
  where
  type
    Rs GenomicsProjectsWorkersCheckIn =
      CheckInResponse
  type
    Scopes GenomicsProjectsWorkersCheckIn =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/genomics"
       ]
  requestClient GenomicsProjectsWorkersCheckIn {..} =
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
          ( Core.Proxy ::
              Core.Proxy GenomicsProjectsWorkersCheckInResource
          )
          Core.mempty
