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
-- Module      : Gogol.BigQueryDataTransfer.Projects.TransferConfigs.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new data transfer configuration.
--
-- /See:/ <https://cloud.google.com/bigquery-transfer/ BigQuery Data Transfer API Reference> for @bigquerydatatransfer.projects.transferConfigs.create@.
module Gogol.BigQueryDataTransfer.Projects.TransferConfigs.Create
  ( -- * Resource
    BigQueryDataTransferProjectsTransferConfigsCreateResource,

    -- ** Constructing a Request
    BigQueryDataTransferProjectsTransferConfigsCreate (..),
    newBigQueryDataTransferProjectsTransferConfigsCreate,
  )
where

import Gogol.BigQueryDataTransfer.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @bigquerydatatransfer.projects.transferConfigs.create@ method which the
-- 'BigQueryDataTransferProjectsTransferConfigsCreate' request conforms to.
type BigQueryDataTransferProjectsTransferConfigsCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "transferConfigs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "authorizationCode" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "serviceAccountName" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "versionInfo" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] TransferConfig
    Core.:> Core.Post '[Core.JSON] TransferConfig

-- | Creates a new data transfer configuration.
--
-- /See:/ 'newBigQueryDataTransferProjectsTransferConfigsCreate' smart constructor.
data BigQueryDataTransferProjectsTransferConfigsCreate = BigQueryDataTransferProjectsTransferConfigsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Deprecated: Authorization code was required when @transferConfig.dataSourceId@ is \'youtube/channel\' but it is no longer used in any data sources. Use @version_info@ instead. Optional OAuth2 authorization code to use with this transfer configuration. This is required only if @transferConfig.dataSourceId@ is \'youtube/channel\' and new credentials are needed, as indicated by @CheckValidCreds@. In order to obtain authorization/code, make a request to the following URL: https:\/\/bigquery.cloud.google.com\/datatransfer\/oauthz\/auth?redirect/uri=urn:ietf:wg:oauth:2.0:oob&response/type=authorization/code&client/id=client/id&scope=data/source/scopes * The client/id is the OAuth client/id of the data source as returned by ListDataSources method. * data/source/scopes are the scopes returned by ListDataSources method. Note that this should not be set when @service_account_name@ is used to create the transfer config.
    authorizationCode :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The BigQuery project id where the transfer configuration should be created. Must be in the format projects\/{project/id}\/locations\/{location/id} or projects\/{project_id}. If specified location and location of the destination bigquery dataset do not match - the request will fail.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: TransferConfig,
    -- | Optional service account email. If this field is set, the transfer config will be created with this service account\'s credentials. It requires that the requesting user calling this API has permissions to act as this service account. Note that not all data sources support service account credentials when creating a transfer config. For the latest list of data sources, read about <https://cloud.google.com/bigquery-transfer/docs/use-service-accounts using service accounts>.
    serviceAccountName :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Optional version info. This parameter replaces @authorization_code@ which is no longer used in any data sources. This is required only if @transferConfig.dataSourceId@ is \'youtube/channel\' /or/ new credentials are needed, as indicated by @CheckValidCreds@. In order to obtain version info, make a request to the following URL: https:\/\/bigquery.cloud.google.com\/datatransfer\/oauthz\/auth?redirect/uri=urn:ietf:wg:oauth:2.0:oob&response/type=version/info&client/id=client/id&scope=data/source/scopes * The client/id is the OAuth client/id of the data source as returned by ListDataSources method. * data/source/scopes are the scopes returned by ListDataSources method. Note that this should not be set when @service_account_name@ is used to create the transfer config.
    versionInfo :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryDataTransferProjectsTransferConfigsCreate' with the minimum fields required to make a request.
newBigQueryDataTransferProjectsTransferConfigsCreate ::
  -- |  Required. The BigQuery project id where the transfer configuration should be created. Must be in the format projects\/{project/id}\/locations\/{location/id} or projects\/{project_id}. If specified location and location of the destination bigquery dataset do not match - the request will fail. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  TransferConfig ->
  BigQueryDataTransferProjectsTransferConfigsCreate
newBigQueryDataTransferProjectsTransferConfigsCreate parent payload =
  BigQueryDataTransferProjectsTransferConfigsCreate
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      authorizationCode = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      serviceAccountName = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      versionInfo = Core.Nothing
    }

instance
  Core.GoogleRequest
    BigQueryDataTransferProjectsTransferConfigsCreate
  where
  type
    Rs BigQueryDataTransferProjectsTransferConfigsCreate =
      TransferConfig
  type
    Scopes BigQueryDataTransferProjectsTransferConfigsCreate =
      '[CloudPlatform'FullControl]
  requestClient BigQueryDataTransferProjectsTransferConfigsCreate {..} =
    go
      parent
      xgafv
      accessToken
      authorizationCode
      callback
      serviceAccountName
      uploadType
      uploadProtocol
      versionInfo
      (Core.Just Core.AltJSON)
      payload
      bigQueryDataTransferService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                BigQueryDataTransferProjectsTransferConfigsCreateResource
          )
          Core.mempty
