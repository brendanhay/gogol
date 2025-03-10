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
-- Module      : Gogol.Genomics.Pipelines.Run
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Runs a pipeline. The returned Operation\'s metadata field will contain a google.genomics.v2alpha1.Metadata object describing the status of the pipeline execution. The [response] field will contain a google.genomics.v2alpha1.RunPipelineResponse object if the pipeline completes successfully. __Note:__ Before you can use this method, the Genomics Service Agent must have access to your project. This is done automatically when the Cloud Genomics API is first enabled, but if you delete this permission, or if you enabled the Cloud Genomics API before the v2alpha1 API launch, you must disable and re-enable the API to grant the Genomics Service Agent the required permissions. Authorization requires the following <https://cloud.google.com/iam/ Google IAM> permission: * @genomics.operations.create@ [1]: \/genomics\/gsa
--
-- /See:/ <https://cloud.google.com/genomics Genomics API Reference> for @genomics.pipelines.run@.
module Gogol.Genomics.Pipelines.Run
  ( -- * Resource
    GenomicsPipelinesRunResource,

    -- ** Constructing a Request
    GenomicsPipelinesRun (..),
    newGenomicsPipelinesRun,
  )
where

import Gogol.Genomics.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @genomics.pipelines.run@ method which the
-- 'GenomicsPipelinesRun' request conforms to.
type GenomicsPipelinesRunResource =
  "v2alpha1"
    Core.:> "pipelines:run"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] RunPipelineRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Runs a pipeline. The returned Operation\'s metadata field will contain a google.genomics.v2alpha1.Metadata object describing the status of the pipeline execution. The [response] field will contain a google.genomics.v2alpha1.RunPipelineResponse object if the pipeline completes successfully. __Note:__ Before you can use this method, the Genomics Service Agent must have access to your project. This is done automatically when the Cloud Genomics API is first enabled, but if you delete this permission, or if you enabled the Cloud Genomics API before the v2alpha1 API launch, you must disable and re-enable the API to grant the Genomics Service Agent the required permissions. Authorization requires the following <https://cloud.google.com/iam/ Google IAM> permission: * @genomics.operations.create@ [1]: \/genomics\/gsa
--
-- /See:/ 'newGenomicsPipelinesRun' smart constructor.
data GenomicsPipelinesRun = GenomicsPipelinesRun
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: RunPipelineRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GenomicsPipelinesRun' with the minimum fields required to make a request.
newGenomicsPipelinesRun ::
  -- |  Multipart request metadata. See 'payload'.
  RunPipelineRequest ->
  GenomicsPipelinesRun
newGenomicsPipelinesRun payload =
  GenomicsPipelinesRun
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest GenomicsPipelinesRun where
  type Rs GenomicsPipelinesRun = Operation
  type
    Scopes GenomicsPipelinesRun =
      '[CloudPlatform'FullControl, Genomics'FullControl]
  requestClient GenomicsPipelinesRun {..} =
    go
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
          (Core.Proxy :: Core.Proxy GenomicsPipelinesRunResource)
          Core.mempty
