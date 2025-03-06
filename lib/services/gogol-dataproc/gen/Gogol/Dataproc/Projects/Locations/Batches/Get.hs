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
-- Module      : Gogol.Dataproc.Projects.Locations.Batches.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the batch workload resource representation.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.batches.get@.
module Gogol.Dataproc.Projects.Locations.Batches.Get
  ( -- * Resource
    DataprocProjectsLocationsBatchesGetResource,

    -- ** Constructing a Request
    DataprocProjectsLocationsBatchesGet (..),
    newDataprocProjectsLocationsBatchesGet,
  )
where

import Gogol.Dataproc.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dataproc.projects.locations.batches.get@ method which the
-- 'DataprocProjectsLocationsBatchesGet' request conforms to.
type DataprocProjectsLocationsBatchesGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Batch

-- | Gets the batch workload resource representation.
--
-- /See:/ 'newDataprocProjectsLocationsBatchesGet' smart constructor.
data DataprocProjectsLocationsBatchesGet = DataprocProjectsLocationsBatchesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The fully qualified name of the batch to retrieve in the format \"projects\/PROJECT/ID\/locations\/DATAPROC/REGION\/batches\/BATCH_ID\"
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsLocationsBatchesGet' with the minimum fields required to make a request.
newDataprocProjectsLocationsBatchesGet ::
  -- |  Required. The fully qualified name of the batch to retrieve in the format \"projects\/PROJECT/ID\/locations\/DATAPROC/REGION\/batches\/BATCH_ID\" See 'name'.
  Core.Text ->
  DataprocProjectsLocationsBatchesGet
newDataprocProjectsLocationsBatchesGet name =
  DataprocProjectsLocationsBatchesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DataprocProjectsLocationsBatchesGet where
  type Rs DataprocProjectsLocationsBatchesGet = Batch
  type
    Scopes DataprocProjectsLocationsBatchesGet =
      '[CloudPlatform'FullControl]
  requestClient DataprocProjectsLocationsBatchesGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dataprocService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DataprocProjectsLocationsBatchesGetResource
          )
          Core.mempty
