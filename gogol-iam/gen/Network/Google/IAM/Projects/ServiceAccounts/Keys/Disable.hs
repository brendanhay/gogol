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
-- Module      : Network.Google.IAM.Projects.ServiceAccounts.Keys.Disable
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disable a ServiceAccountKey. A disabled service account key can be enabled through EnableServiceAccountKey.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.serviceAccounts.keys.disable@.
module Network.Google.IAM.Projects.ServiceAccounts.Keys.Disable
  ( -- * Resource
    IAMProjectsServiceAccountsKeysDisableResource,

    -- ** Constructing a Request
    newIAMProjectsServiceAccountsKeysDisable,
    IAMProjectsServiceAccountsKeysDisable,
  )
where

import Network.Google.IAM.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @iam.projects.serviceAccounts.keys.disable@ method which the
-- 'IAMProjectsServiceAccountsKeysDisable' request conforms to.
type IAMProjectsServiceAccountsKeysDisableResource =
  "v1"
    Core.:> Core.CaptureMode "name" "disable" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              DisableServiceAccountKeyRequest
    Core.:> Core.Post '[Core.JSON] Empty

-- | Disable a ServiceAccountKey. A disabled service account key can be enabled through EnableServiceAccountKey.
--
-- /See:/ 'newIAMProjectsServiceAccountsKeysDisable' smart constructor.
data IAMProjectsServiceAccountsKeysDisable = IAMProjectsServiceAccountsKeysDisable
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the service account key in the following format: @projects\/{PROJECT_ID}\/serviceAccounts\/{ACCOUNT}\/keys\/{key}@. Using @-@ as a wildcard for the @PROJECT_ID@ will infer the project from the account. The @ACCOUNT@ value can be the @email@ address or the @unique_id@ of the service account.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: DisableServiceAccountKeyRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAMProjectsServiceAccountsKeysDisable' with the minimum fields required to make a request.
newIAMProjectsServiceAccountsKeysDisable ::
  -- |  Required. The resource name of the service account key in the following format: @projects\/{PROJECT_ID}\/serviceAccounts\/{ACCOUNT}\/keys\/{key}@. Using @-@ as a wildcard for the @PROJECT_ID@ will infer the project from the account. The @ACCOUNT@ value can be the @email@ address or the @unique_id@ of the service account. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  DisableServiceAccountKeyRequest ->
  IAMProjectsServiceAccountsKeysDisable
newIAMProjectsServiceAccountsKeysDisable name payload =
  IAMProjectsServiceAccountsKeysDisable
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
    IAMProjectsServiceAccountsKeysDisable
  where
  type Rs IAMProjectsServiceAccountsKeysDisable = Empty
  type
    Scopes IAMProjectsServiceAccountsKeysDisable =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    IAMProjectsServiceAccountsKeysDisable {..} =
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
                  IAMProjectsServiceAccountsKeysDisableResource
            )
            Core.mempty
