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
-- Module      : Gogol.BigQueryDataTransfer.Projects.TransferConfigs.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a data transfer configuration. All fields must be set, even if they are not updated.
--
-- /See:/ <https://cloud.google.com/bigquery-transfer/ BigQuery Data Transfer API Reference> for @bigquerydatatransfer.projects.transferConfigs.patch@.
module Gogol.BigQueryDataTransfer.Projects.TransferConfigs.Patch
  ( -- * Resource
    BigQueryDataTransferProjectsTransferConfigsPatchResource,

    -- ** Constructing a Request
    BigQueryDataTransferProjectsTransferConfigsPatch (..),
    newBigQueryDataTransferProjectsTransferConfigsPatch,
  )
where

import Gogol.BigQueryDataTransfer.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @bigquerydatatransfer.projects.transferConfigs.patch@ method which the
-- 'BigQueryDataTransferProjectsTransferConfigsPatch' request conforms to.
type BigQueryDataTransferProjectsTransferConfigsPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "authorizationCode" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "serviceAccountName" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "versionInfo" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] TransferConfig
    Core.:> Core.Patch '[Core.JSON] TransferConfig

-- | Updates a data transfer configuration. All fields must be set, even if they are not updated.
--
-- /See:/ 'newBigQueryDataTransferProjectsTransferConfigsPatch' smart constructor.
data BigQueryDataTransferProjectsTransferConfigsPatch = BigQueryDataTransferProjectsTransferConfigsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Optional OAuth2 authorization code to use with this transfer configuration. This is required only if @transferConfig.dataSourceId@ is \'youtube/channel\' and new credentials are needed, as indicated by @CheckValidCreds@. In order to obtain authorization/code, please make a request to https:\/\/www.gstatic.com\/bigquerydatatransfer\/oauthz\/auth?client/id=&scope=&redirect/uri=urn:ietf:wg:oauth:2.0:oob&response/type=authorization/code * client/id should be OAuth client/id of BigQuery DTS API for the given data source returned by ListDataSources method. * data/source/scopes are the scopes returned by ListDataSources method. Note that this should not be set when @service_account_name@ is used to create the transfer config.
    authorizationCode :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The resource name of the transfer config. Transfer config names have the form @projects\/{project_id}\/locations\/{region}\/transferConfigs\/{config_id}@. Where @config_id@ is usually a uuid, even though it is not guaranteed or required. The name is ignored when creating a transfer config.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: TransferConfig,
    -- | Optional service account name. If this field is set and \"service/account/name\" is set in update_mask, transfer config will be created with this service account credential. It requires that requesting user calling this API has permissions to act as this service account. Note that not all data sources support service account credentials when creating transfer config. Please refer to this public guide for the latest list of data sources with service account support: https:\/\/cloud.google.com\/bigquery-transfer\/docs\/use-service-accounts
    serviceAccountName :: (Core.Maybe Core.Text),
    -- | Required. Required list of fields to be updated in this request.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Optional version info. This is required only if @transferConfig.dataSourceId@ is anything else but \'youtube/channel\' and new credentials are needed, as indicated by @CheckValidCreds@. In order to obtain version info, please make a request to https:\/\/www.gstatic.com\/bigquerydatatransfer\/oauthz\/auth?client/id=&scope=&redirect/uri=urn:ietf:wg:oauth:2.0:oob&response/type=version/info * client/id should be OAuth client/id of BigQuery DTS API for the given data source returned by ListDataSources method. * data/source_scopes are the scopes returned by ListDataSources method. Note that this should not be set when @service_account_name@ is used to create the transfer config.
    versionInfo :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryDataTransferProjectsTransferConfigsPatch' with the minimum fields required to make a request.
newBigQueryDataTransferProjectsTransferConfigsPatch ::
  -- |  The resource name of the transfer config. Transfer config names have the form @projects\/{project_id}\/locations\/{region}\/transferConfigs\/{config_id}@. Where @config_id@ is usually a uuid, even though it is not guaranteed or required. The name is ignored when creating a transfer config. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  TransferConfig ->
  BigQueryDataTransferProjectsTransferConfigsPatch
newBigQueryDataTransferProjectsTransferConfigsPatch name payload =
  BigQueryDataTransferProjectsTransferConfigsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      authorizationCode = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      serviceAccountName = Core.Nothing,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      versionInfo = Core.Nothing
    }

instance
  Core.GoogleRequest
    BigQueryDataTransferProjectsTransferConfigsPatch
  where
  type
    Rs
      BigQueryDataTransferProjectsTransferConfigsPatch =
      TransferConfig
  type
    Scopes
      BigQueryDataTransferProjectsTransferConfigsPatch =
      '[CloudPlatform'FullControl]
  requestClient
    BigQueryDataTransferProjectsTransferConfigsPatch {..} =
      go
        name
        xgafv
        accessToken
        authorizationCode
        callback
        serviceAccountName
        updateMask
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
                  BigQueryDataTransferProjectsTransferConfigsPatchResource
            )
            Core.mempty
