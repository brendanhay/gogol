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
-- Module      : Network.Google.IAM.Projects.ServiceAccounts.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches a ServiceAccount.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.serviceAccounts.patch@.
module Network.Google.IAM.Projects.ServiceAccounts.Patch
  ( -- * Resource
    IAMProjectsServiceAccountsPatchResource,

    -- ** Constructing a Request
    newIAMProjectsServiceAccountsPatch,
    IAMProjectsServiceAccountsPatch,
  )
where

import Network.Google.IAM.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @iam.projects.serviceAccounts.patch@ method which the
-- 'IAMProjectsServiceAccountsPatch' request conforms to.
type IAMProjectsServiceAccountsPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] PatchServiceAccountRequest
    Core.:> Core.Patch '[Core.JSON] ServiceAccount

-- | Patches a ServiceAccount.
--
-- /See:/ 'newIAMProjectsServiceAccountsPatch' smart constructor.
data IAMProjectsServiceAccountsPatch = IAMProjectsServiceAccountsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The resource name of the service account. Use one of the following formats: * @projects\/{PROJECT_ID}\/serviceAccounts\/{EMAIL_ADDRESS}@ * @projects\/{PROJECT_ID}\/serviceAccounts\/{UNIQUE_ID}@ As an alternative, you can use the @-@ wildcard character instead of the project ID: * @projects\/-\/serviceAccounts\/{EMAIL_ADDRESS}@ * @projects\/-\/serviceAccounts\/{UNIQUE_ID}@ When possible, avoid using the @-@ wildcard character, because it can cause response messages to contain misleading error codes. For example, if you try to get the service account @projects\/-\/serviceAccounts\/fake\@example.com@, which does not exist, the response contains an HTTP @403 Forbidden@ error instead of a @404 Not Found@ error.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: PatchServiceAccountRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAMProjectsServiceAccountsPatch' with the minimum fields required to make a request.
newIAMProjectsServiceAccountsPatch ::
  -- |  The resource name of the service account. Use one of the following formats: * @projects\/{PROJECT_ID}\/serviceAccounts\/{EMAIL_ADDRESS}@ * @projects\/{PROJECT_ID}\/serviceAccounts\/{UNIQUE_ID}@ As an alternative, you can use the @-@ wildcard character instead of the project ID: * @projects\/-\/serviceAccounts\/{EMAIL_ADDRESS}@ * @projects\/-\/serviceAccounts\/{UNIQUE_ID}@ When possible, avoid using the @-@ wildcard character, because it can cause response messages to contain misleading error codes. For example, if you try to get the service account @projects\/-\/serviceAccounts\/fake\@example.com@, which does not exist, the response contains an HTTP @403 Forbidden@ error instead of a @404 Not Found@ error. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  PatchServiceAccountRequest ->
  IAMProjectsServiceAccountsPatch
newIAMProjectsServiceAccountsPatch name payload =
  IAMProjectsServiceAccountsPatch
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
    IAMProjectsServiceAccountsPatch
  where
  type
    Rs IAMProjectsServiceAccountsPatch =
      ServiceAccount
  type
    Scopes IAMProjectsServiceAccountsPatch =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient IAMProjectsServiceAccountsPatch {..} =
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
              Core.Proxy IAMProjectsServiceAccountsPatchResource
          )
          Core.mempty