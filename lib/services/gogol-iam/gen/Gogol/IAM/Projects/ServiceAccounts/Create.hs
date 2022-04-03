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
-- Module      : Gogol.IAM.Projects.ServiceAccounts.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a ServiceAccount.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.serviceAccounts.create@.
module Gogol.IAM.Projects.ServiceAccounts.Create
  ( -- * Resource
    IAMProjectsServiceAccountsCreateResource,

    -- ** Constructing a Request
    IAMProjectsServiceAccountsCreate (..),
    newIAMProjectsServiceAccountsCreate,
  )
where

import Gogol.IAM.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @iam.projects.serviceAccounts.create@ method which the
-- 'IAMProjectsServiceAccountsCreate' request conforms to.
type IAMProjectsServiceAccountsCreateResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "serviceAccounts"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CreateServiceAccountRequest
    Core.:> Core.Post '[Core.JSON] ServiceAccount

-- | Creates a ServiceAccount.
--
-- /See:/ 'newIAMProjectsServiceAccountsCreate' smart constructor.
data IAMProjectsServiceAccountsCreate = IAMProjectsServiceAccountsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the project associated with the service accounts, such as @projects\/my-project-123@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: CreateServiceAccountRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAMProjectsServiceAccountsCreate' with the minimum fields required to make a request.
newIAMProjectsServiceAccountsCreate ::
  -- |  Required. The resource name of the project associated with the service accounts, such as @projects\/my-project-123@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CreateServiceAccountRequest ->
  IAMProjectsServiceAccountsCreate
newIAMProjectsServiceAccountsCreate name payload =
  IAMProjectsServiceAccountsCreate
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
    IAMProjectsServiceAccountsCreate
  where
  type
    Rs IAMProjectsServiceAccountsCreate =
      ServiceAccount
  type
    Scopes IAMProjectsServiceAccountsCreate =
      '[CloudPlatform'FullControl]
  requestClient IAMProjectsServiceAccountsCreate {..} =
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
              Core.Proxy IAMProjectsServiceAccountsCreateResource
          )
          Core.mempty
