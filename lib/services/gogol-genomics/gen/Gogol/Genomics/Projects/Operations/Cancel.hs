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
-- Module      : Gogol.Genomics.Projects.Operations.Cancel
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. Clients may use Operations.GetOperation or Operations.ListOperations to check whether the cancellation succeeded or the operation completed despite cancellation. Authorization requires the following <https://cloud.google.com/iam Google IAM> permission: * @genomics.operations.cancel@
--
-- /See:/ <https://cloud.google.com/genomics Genomics API Reference> for @genomics.projects.operations.cancel@.
module Gogol.Genomics.Projects.Operations.Cancel
  ( -- * Resource
    GenomicsProjectsOperationsCancelResource,

    -- ** Constructing a Request
    GenomicsProjectsOperationsCancel (..),
    newGenomicsProjectsOperationsCancel,
  )
where

import Gogol.Genomics.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @genomics.projects.operations.cancel@ method which the
-- 'GenomicsProjectsOperationsCancel' request conforms to.
type GenomicsProjectsOperationsCancelResource =
  "v2alpha1"
    Core.:> Core.CaptureMode "name" "cancel" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CancelOperationRequest
    Core.:> Core.Post '[Core.JSON] Empty

-- | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. Clients may use Operations.GetOperation or Operations.ListOperations to check whether the cancellation succeeded or the operation completed despite cancellation. Authorization requires the following <https://cloud.google.com/iam Google IAM> permission: * @genomics.operations.cancel@
--
-- /See:/ 'newGenomicsProjectsOperationsCancel' smart constructor.
data GenomicsProjectsOperationsCancel = GenomicsProjectsOperationsCancel
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the operation resource to be cancelled.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: CancelOperationRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GenomicsProjectsOperationsCancel' with the minimum fields required to make a request.
newGenomicsProjectsOperationsCancel ::
  -- |  The name of the operation resource to be cancelled. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CancelOperationRequest ->
  GenomicsProjectsOperationsCancel
newGenomicsProjectsOperationsCancel name payload =
  GenomicsProjectsOperationsCancel
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest GenomicsProjectsOperationsCancel where
  type Rs GenomicsProjectsOperationsCancel = Empty
  type
    Scopes GenomicsProjectsOperationsCancel =
      '[CloudPlatform'FullControl, Genomics'FullControl]
  requestClient GenomicsProjectsOperationsCancel {..} =
    go
      name
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
          (Core.Proxy :: Core.Proxy GenomicsProjectsOperationsCancelResource)
          Core.mempty
