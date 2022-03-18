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
-- Module      : Gogol.BigQueryDataTransfer.Projects.DataSources.CheckValidCreds
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns true if valid credentials exist for the given data source and requesting user.
--
-- /See:/ <https://cloud.google.com/bigquery-transfer/ BigQuery Data Transfer API Reference> for @bigquerydatatransfer.projects.dataSources.checkValidCreds@.
module Gogol.BigQueryDataTransfer.Projects.DataSources.CheckValidCreds
  ( -- * Resource
    BigQueryDataTransferProjectsDataSourcesCheckValidCredsResource,

    -- ** Constructing a Request
    newBigQueryDataTransferProjectsDataSourcesCheckValidCreds,
    BigQueryDataTransferProjectsDataSourcesCheckValidCreds,
  )
where

import Gogol.BigQueryDataTransfer.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @bigquerydatatransfer.projects.dataSources.checkValidCreds@ method which the
-- 'BigQueryDataTransferProjectsDataSourcesCheckValidCreds' request conforms to.
type BigQueryDataTransferProjectsDataSourcesCheckValidCredsResource =
  "v1"
    Core.:> Core.CaptureMode "name" "checkValidCreds" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CheckValidCredsRequest
    Core.:> Core.Post '[Core.JSON] CheckValidCredsResponse

-- | Returns true if valid credentials exist for the given data source and requesting user.
--
-- /See:/ 'newBigQueryDataTransferProjectsDataSourcesCheckValidCreds' smart constructor.
data BigQueryDataTransferProjectsDataSourcesCheckValidCreds = BigQueryDataTransferProjectsDataSourcesCheckValidCreds
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The data source in the form: @projects\/{project_id}\/dataSources\/{data_source_id}@ or @projects\/{project_id}\/locations\/{location_id}\/dataSources\/{data_source_id}@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: CheckValidCredsRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryDataTransferProjectsDataSourcesCheckValidCreds' with the minimum fields required to make a request.
newBigQueryDataTransferProjectsDataSourcesCheckValidCreds ::
  -- |  Required. The data source in the form: @projects\/{project_id}\/dataSources\/{data_source_id}@ or @projects\/{project_id}\/locations\/{location_id}\/dataSources\/{data_source_id}@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CheckValidCredsRequest ->
  BigQueryDataTransferProjectsDataSourcesCheckValidCreds
newBigQueryDataTransferProjectsDataSourcesCheckValidCreds name payload =
  BigQueryDataTransferProjectsDataSourcesCheckValidCreds
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    BigQueryDataTransferProjectsDataSourcesCheckValidCreds
  where
  type
    Rs
      BigQueryDataTransferProjectsDataSourcesCheckValidCreds =
      CheckValidCredsResponse
  type
    Scopes
      BigQueryDataTransferProjectsDataSourcesCheckValidCreds =
      '[ "https://www.googleapis.com/auth/bigquery",
         "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloud-platform.read-only"
       ]
  requestClient
    BigQueryDataTransferProjectsDataSourcesCheckValidCreds {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        bigQueryDataTransferService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  BigQueryDataTransferProjectsDataSourcesCheckValidCredsResource
            )
            Core.mempty
