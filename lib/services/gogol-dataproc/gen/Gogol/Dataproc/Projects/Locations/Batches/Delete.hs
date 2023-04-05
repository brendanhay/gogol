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
-- Module      : Gogol.Dataproc.Projects.Locations.Batches.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the batch workload resource. If the batch is not in terminal state, the delete fails and the response returns FAILED_PRECONDITION.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.batches.delete@.
module Gogol.Dataproc.Projects.Locations.Batches.Delete
  ( -- * Resource
    DataprocProjectsLocationsBatchesDeleteResource,

    -- ** Constructing a Request
    DataprocProjectsLocationsBatchesDelete (..),
    newDataprocProjectsLocationsBatchesDelete,
  )
where

import Gogol.Dataproc.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dataproc.projects.locations.batches.delete@ method which the
-- 'DataprocProjectsLocationsBatchesDelete' request conforms to.
type DataprocProjectsLocationsBatchesDeleteResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes the batch workload resource. If the batch is not in terminal state, the delete fails and the response returns FAILED_PRECONDITION.
--
-- /See:/ 'newDataprocProjectsLocationsBatchesDelete' smart constructor.
data DataprocProjectsLocationsBatchesDelete = DataprocProjectsLocationsBatchesDelete
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

-- | Creates a value of 'DataprocProjectsLocationsBatchesDelete' with the minimum fields required to make a request.
newDataprocProjectsLocationsBatchesDelete ::
  -- |  Required. The fully qualified name of the batch to retrieve in the format \"projects\/PROJECT/ID\/locations\/DATAPROC/REGION\/batches\/BATCH_ID\" See 'name'.
  Core.Text ->
  DataprocProjectsLocationsBatchesDelete
newDataprocProjectsLocationsBatchesDelete name =
  DataprocProjectsLocationsBatchesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DataprocProjectsLocationsBatchesDelete
  where
  type
    Rs DataprocProjectsLocationsBatchesDelete =
      Empty
  type
    Scopes DataprocProjectsLocationsBatchesDelete =
      '[CloudPlatform'FullControl]
  requestClient
    DataprocProjectsLocationsBatchesDelete {..} =
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
                Core.Proxy
                  DataprocProjectsLocationsBatchesDeleteResource
            )
            Core.mempty
