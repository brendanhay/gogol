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
-- Module      : Gogol.BigQueryDataTransfer.Projects.Locations.DataSources.CheckValidCreds
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns true if valid credentials exist for the given data source and requesting user.
--
-- /See:/ <https://cloud.google.com/bigquery-transfer/ BigQuery Data Transfer API Reference> for @bigquerydatatransfer.projects.locations.dataSources.checkValidCreds@.
module Gogol.BigQueryDataTransfer.Projects.Locations.DataSources.CheckValidCreds
  ( -- * Resource
    BigQueryDataTransferProjectsLocationsDataSourcesCheckValidCredsResource,

    -- ** Constructing a Request
    newBigQueryDataTransferProjectsLocationsDataSourcesCheckValidCreds,
    BigQueryDataTransferProjectsLocationsDataSourcesCheckValidCreds,
  )
where

import Gogol.BigQueryDataTransfer.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @bigquerydatatransfer.projects.locations.dataSources.checkValidCreds@ method which the
-- 'BigQueryDataTransferProjectsLocationsDataSourcesCheckValidCreds' request conforms to.
type BigQueryDataTransferProjectsLocationsDataSourcesCheckValidCredsResource =
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
-- /See:/ 'newBigQueryDataTransferProjectsLocationsDataSourcesCheckValidCreds' smart constructor.
data BigQueryDataTransferProjectsLocationsDataSourcesCheckValidCreds = BigQueryDataTransferProjectsLocationsDataSourcesCheckValidCreds
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

-- | Creates a value of 'BigQueryDataTransferProjectsLocationsDataSourcesCheckValidCreds' with the minimum fields required to make a request.
newBigQueryDataTransferProjectsLocationsDataSourcesCheckValidCreds ::
  -- |  Required. The data source in the form: @projects\/{project_id}\/dataSources\/{data_source_id}@ or @projects\/{project_id}\/locations\/{location_id}\/dataSources\/{data_source_id}@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CheckValidCredsRequest ->
  BigQueryDataTransferProjectsLocationsDataSourcesCheckValidCreds
newBigQueryDataTransferProjectsLocationsDataSourcesCheckValidCreds name payload =
  BigQueryDataTransferProjectsLocationsDataSourcesCheckValidCreds
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
    BigQueryDataTransferProjectsLocationsDataSourcesCheckValidCreds
  where
  type
    Rs
      BigQueryDataTransferProjectsLocationsDataSourcesCheckValidCreds =
      CheckValidCredsResponse
  type
    Scopes
      BigQueryDataTransferProjectsLocationsDataSourcesCheckValidCreds =
      '[ Bigquery'FullControl,
         CloudPlatform'FullControl,
         CloudPlatform'ReadOnly
       ]
  requestClient
    BigQueryDataTransferProjectsLocationsDataSourcesCheckValidCreds {..} =
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
                  BigQueryDataTransferProjectsLocationsDataSourcesCheckValidCredsResource
            )
            Core.mempty
