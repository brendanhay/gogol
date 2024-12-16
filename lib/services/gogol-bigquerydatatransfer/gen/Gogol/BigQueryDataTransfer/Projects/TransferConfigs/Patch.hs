{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

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
    (
    -- * Resource
      BigQueryDataTransferProjectsTransferConfigsPatchResource

    -- ** Constructing a Request
    , BigQueryDataTransferProjectsTransferConfigsPatch (..)
    , newBigQueryDataTransferProjectsTransferConfigsPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.BigQueryDataTransfer.Types

-- | A resource alias for @bigquerydatatransfer.projects.transferConfigs.patch@ method which the
-- 'BigQueryDataTransferProjectsTransferConfigsPatch' request conforms to.
type BigQueryDataTransferProjectsTransferConfigsPatchResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "authorizationCode" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "serviceAccountName" Core.Text
                   Core.:>
                   Core.QueryParam "updateMask" Core.FieldMask Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "versionInfo" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.ReqBody '[Core.JSON] TransferConfig Core.:>
                               Core.Patch '[Core.JSON] TransferConfig

-- | Updates a data transfer configuration. All fields must be set, even if they are not updated.
--
-- /See:/ 'newBigQueryDataTransferProjectsTransferConfigsPatch' smart constructor.
data BigQueryDataTransferProjectsTransferConfigsPatch = BigQueryDataTransferProjectsTransferConfigsPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Deprecated: Authorization code was required when @transferConfig.dataSourceId@ is \'youtube/channel\' but it is no longer used in any data sources. Use @version_info@ instead. Optional OAuth2 authorization code to use with this transfer configuration. This is required only if @transferConfig.dataSourceId@ is \'youtube/channel\' and new credentials are needed, as indicated by @CheckValidCreds@. In order to obtain authorization/code, make a request to the following URL: https:\/\/bigquery.cloud.google.com\/datatransfer\/oauthz\/auth?redirect/uri=urn:ietf:wg:oauth:2.0:oob&response/type=authorization/code&client/id=client/id&scope=data/source/scopes * The client/id is the OAuth client/id of the data source as returned by ListDataSources method. * data/source/scopes are the scopes returned by ListDataSources method. Note that this should not be set when @service_account_name@ is used to update the transfer config.
    , authorizationCode :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Identifier. The resource name of the transfer config. Transfer config names have the form either @projects\/{project_id}\/locations\/{region}\/transferConfigs\/{config_id}@ or @projects\/{project_id}\/transferConfigs\/{config_id}@, where @config_id@ is usually a UUID, even though it is not guaranteed or required. The name is ignored when creating a transfer config.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: TransferConfig
      -- | Optional service account email. If this field is set, the transfer config will be created with this service account\'s credentials. It requires that the requesting user calling this API has permissions to act as this service account. Note that not all data sources support service account credentials when creating a transfer config. For the latest list of data sources, read about <https://cloud.google.com/bigquery-transfer/docs/use-service-accounts using service accounts>.
    , serviceAccountName :: (Core.Maybe Core.Text)
      -- | Required. Required list of fields to be updated in this request.
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Optional version info. This parameter replaces @authorization_code@ which is no longer used in any data sources. This is required only if @transferConfig.dataSourceId@ is \'youtube/channel\' /or/ new credentials are needed, as indicated by @CheckValidCreds@. In order to obtain version info, make a request to the following URL: https:\/\/bigquery.cloud.google.com\/datatransfer\/oauthz\/auth?redirect/uri=urn:ietf:wg:oauth:2.0:oob&response/type=version/info&client/id=client/id&scope=data/source/scopes * The client/id is the OAuth client/id of the data source as returned by ListDataSources method. * data/source/scopes are the scopes returned by ListDataSources method. Note that this should not be set when @service_account_name@ is used to update the transfer config.
    , versionInfo :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryDataTransferProjectsTransferConfigsPatch' with the minimum fields required to make a request.
newBigQueryDataTransferProjectsTransferConfigsPatch 
    ::  Core.Text
       -- ^  Identifier. The resource name of the transfer config. Transfer config names have the form either @projects\/{project_id}\/locations\/{region}\/transferConfigs\/{config_id}@ or @projects\/{project_id}\/transferConfigs\/{config_id}@, where @config_id@ is usually a UUID, even though it is not guaranteed or required. The name is ignored when creating a transfer config. See 'name'.
    -> TransferConfig
       -- ^  Multipart request metadata. See 'payload'.
    -> BigQueryDataTransferProjectsTransferConfigsPatch
newBigQueryDataTransferProjectsTransferConfigsPatch name payload =
  BigQueryDataTransferProjectsTransferConfigsPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , authorizationCode = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , serviceAccountName = Core.Nothing
    , updateMask = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , versionInfo = Core.Nothing
    }

instance Core.GoogleRequest
           BigQueryDataTransferProjectsTransferConfigsPatch
         where
        type Rs
               BigQueryDataTransferProjectsTransferConfigsPatch
             = TransferConfig
        type Scopes
               BigQueryDataTransferProjectsTransferConfigsPatch
             = '[CloudPlatform'FullControl]
        requestClient
          BigQueryDataTransferProjectsTransferConfigsPatch{..}
          = go name xgafv accessToken authorizationCode
              callback
              serviceAccountName
              updateMask
              uploadType
              uploadProtocol
              versionInfo
              (Core.Just Core.AltJSON)
              payload
              bigQueryDataTransferService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           BigQueryDataTransferProjectsTransferConfigsPatchResource)
                      Core.mempty

