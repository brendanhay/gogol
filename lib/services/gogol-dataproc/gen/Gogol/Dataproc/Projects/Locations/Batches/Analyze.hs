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
-- Module      : Gogol.Dataproc.Projects.Locations.Batches.Analyze
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Analyze a Batch for possible recommendations and insights.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.batches.analyze@.
module Gogol.Dataproc.Projects.Locations.Batches.Analyze
  ( -- * Resource
    DataprocProjectsLocationsBatchesAnalyzeResource,

    -- ** Constructing a Request
    DataprocProjectsLocationsBatchesAnalyze (..),
    newDataprocProjectsLocationsBatchesAnalyze,
  )
where

import Gogol.Dataproc.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dataproc.projects.locations.batches.analyze@ method which the
-- 'DataprocProjectsLocationsBatchesAnalyze' request conforms to.
type DataprocProjectsLocationsBatchesAnalyzeResource =
  "v1"
    Core.:> Core.CaptureMode "name" "analyze" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AnalyzeBatchRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Analyze a Batch for possible recommendations and insights.
--
-- /See:/ 'newDataprocProjectsLocationsBatchesAnalyze' smart constructor.
data DataprocProjectsLocationsBatchesAnalyze = DataprocProjectsLocationsBatchesAnalyze
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The fully qualified name of the batch to analyze in the format \"projects\/PROJECT/ID\/locations\/DATAPROC/REGION\/batches\/BATCH_ID\"
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: AnalyzeBatchRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsLocationsBatchesAnalyze' with the minimum fields required to make a request.
newDataprocProjectsLocationsBatchesAnalyze ::
  -- |  Required. The fully qualified name of the batch to analyze in the format \"projects\/PROJECT/ID\/locations\/DATAPROC/REGION\/batches\/BATCH_ID\" See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AnalyzeBatchRequest ->
  DataprocProjectsLocationsBatchesAnalyze
newDataprocProjectsLocationsBatchesAnalyze name payload =
  DataprocProjectsLocationsBatchesAnalyze
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DataprocProjectsLocationsBatchesAnalyze where
  type Rs DataprocProjectsLocationsBatchesAnalyze = Operation
  type
    Scopes DataprocProjectsLocationsBatchesAnalyze =
      '[CloudPlatform'FullControl]
  requestClient DataprocProjectsLocationsBatchesAnalyze {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      dataprocService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DataprocProjectsLocationsBatchesAnalyzeResource
          )
          Core.mempty
