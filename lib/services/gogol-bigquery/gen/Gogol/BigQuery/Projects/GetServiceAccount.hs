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
-- Module      : Gogol.BigQuery.Projects.GetServiceAccount
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- RPC to get the service account for a project used for interactions with Google Cloud KMS
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.projects.getServiceAccount@.
module Gogol.BigQuery.Projects.GetServiceAccount
  ( -- * Resource
    BigQueryProjectsGetServiceAccountResource,

    -- ** Constructing a Request
    BigQueryProjectsGetServiceAccount (..),
    newBigQueryProjectsGetServiceAccount,
  )
where

import Gogol.BigQuery.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @bigquery.projects.getServiceAccount@ method which the
-- 'BigQueryProjectsGetServiceAccount' request conforms to.
type BigQueryProjectsGetServiceAccountResource =
  "bigquery"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "serviceAccount"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GetServiceAccountResponse

-- | RPC to get the service account for a project used for interactions with Google Cloud KMS
--
-- /See:/ 'newBigQueryProjectsGetServiceAccount' smart constructor.
data BigQueryProjectsGetServiceAccount = BigQueryProjectsGetServiceAccount
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. ID of the project.
    projectId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryProjectsGetServiceAccount' with the minimum fields required to make a request.
newBigQueryProjectsGetServiceAccount ::
  -- |  Required. ID of the project. See 'projectId'.
  Core.Text ->
  BigQueryProjectsGetServiceAccount
newBigQueryProjectsGetServiceAccount projectId =
  BigQueryProjectsGetServiceAccount
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      projectId = projectId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest BigQueryProjectsGetServiceAccount where
  type
    Rs BigQueryProjectsGetServiceAccount =
      GetServiceAccountResponse
  type
    Scopes BigQueryProjectsGetServiceAccount =
      '[ Bigquery'FullControl,
         CloudPlatform'FullControl,
         CloudPlatform'ReadOnly
       ]
  requestClient BigQueryProjectsGetServiceAccount {..} =
    go
      projectId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      bigQueryService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy BigQueryProjectsGetServiceAccountResource
          )
          Core.mempty
