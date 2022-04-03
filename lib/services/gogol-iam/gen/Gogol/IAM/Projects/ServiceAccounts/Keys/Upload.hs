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
-- Module      : Gogol.IAM.Projects.ServiceAccounts.Keys.Upload
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a ServiceAccountKey, using a public key that you provide.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.serviceAccounts.keys.upload@.
module Gogol.IAM.Projects.ServiceAccounts.Keys.Upload
  ( -- * Resource
    IAMProjectsServiceAccountsKeysUploadResource,

    -- ** Constructing a Request
    IAMProjectsServiceAccountsKeysUpload (..),
    newIAMProjectsServiceAccountsKeysUpload,
  )
where

import Gogol.IAM.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @iam.projects.serviceAccounts.keys.upload@ method which the
-- 'IAMProjectsServiceAccountsKeysUpload' request conforms to.
type IAMProjectsServiceAccountsKeysUploadResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "keys:upload"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              UploadServiceAccountKeyRequest
    Core.:> Core.Post '[Core.JSON] ServiceAccountKey

-- | Creates a ServiceAccountKey, using a public key that you provide.
--
-- /See:/ 'newIAMProjectsServiceAccountsKeysUpload' smart constructor.
data IAMProjectsServiceAccountsKeysUpload = IAMProjectsServiceAccountsKeysUpload
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The resource name of the service account in the following format: @projects\/{PROJECT_ID}\/serviceAccounts\/{ACCOUNT}@. Using @-@ as a wildcard for the @PROJECT_ID@ will infer the project from the account. The @ACCOUNT@ value can be the @email@ address or the @unique_id@ of the service account.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: UploadServiceAccountKeyRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAMProjectsServiceAccountsKeysUpload' with the minimum fields required to make a request.
newIAMProjectsServiceAccountsKeysUpload ::
  -- |  The resource name of the service account in the following format: @projects\/{PROJECT_ID}\/serviceAccounts\/{ACCOUNT}@. Using @-@ as a wildcard for the @PROJECT_ID@ will infer the project from the account. The @ACCOUNT@ value can be the @email@ address or the @unique_id@ of the service account. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  UploadServiceAccountKeyRequest ->
  IAMProjectsServiceAccountsKeysUpload
newIAMProjectsServiceAccountsKeysUpload name payload =
  IAMProjectsServiceAccountsKeysUpload
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
    IAMProjectsServiceAccountsKeysUpload
  where
  type
    Rs IAMProjectsServiceAccountsKeysUpload =
      ServiceAccountKey
  type
    Scopes IAMProjectsServiceAccountsKeysUpload =
      '[CloudPlatform'FullControl]
  requestClient
    IAMProjectsServiceAccountsKeysUpload {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        iAMService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  IAMProjectsServiceAccountsKeysUploadResource
            )
            Core.mempty
