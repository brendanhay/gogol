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
-- Module      : Gogol.IAM.Projects.ServiceAccounts.Keys.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a ServiceAccountKey.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.serviceAccounts.keys.get@.
module Gogol.IAM.Projects.ServiceAccounts.Keys.Get
  ( -- * Resource
    IAMProjectsServiceAccountsKeysGetResource,

    -- ** Constructing a Request
    IAMProjectsServiceAccountsKeysGet (..),
    newIAMProjectsServiceAccountsKeysGet,
  )
where

import Gogol.IAM.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @iam.projects.serviceAccounts.keys.get@ method which the
-- 'IAMProjectsServiceAccountsKeysGet' request conforms to.
type IAMProjectsServiceAccountsKeysGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam
              "publicKeyType"
              ProjectsServiceAccountsKeysGetPublicKeyType
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ServiceAccountKey

-- | Gets a ServiceAccountKey.
--
-- /See:/ 'newIAMProjectsServiceAccountsKeysGet' smart constructor.
data IAMProjectsServiceAccountsKeysGet = IAMProjectsServiceAccountsKeysGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the service account key in the following format: @projects\/{PROJECT_ID}\/serviceAccounts\/{ACCOUNT}\/keys\/{key}@. Using @-@ as a wildcard for the @PROJECT_ID@ will infer the project from the account. The @ACCOUNT@ value can be the @email@ address or the @unique_id@ of the service account.
    name :: Core.Text,
    -- | Optional. The output format of the public key. The default is @TYPE_NONE@, which means that the public key is not returned.
    publicKeyType :: (Core.Maybe ProjectsServiceAccountsKeysGetPublicKeyType),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAMProjectsServiceAccountsKeysGet' with the minimum fields required to make a request.
newIAMProjectsServiceAccountsKeysGet ::
  -- |  Required. The resource name of the service account key in the following format: @projects\/{PROJECT_ID}\/serviceAccounts\/{ACCOUNT}\/keys\/{key}@. Using @-@ as a wildcard for the @PROJECT_ID@ will infer the project from the account. The @ACCOUNT@ value can be the @email@ address or the @unique_id@ of the service account. See 'name'.
  Core.Text ->
  IAMProjectsServiceAccountsKeysGet
newIAMProjectsServiceAccountsKeysGet name =
  IAMProjectsServiceAccountsKeysGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      publicKeyType = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    IAMProjectsServiceAccountsKeysGet
  where
  type
    Rs IAMProjectsServiceAccountsKeysGet =
      ServiceAccountKey
  type
    Scopes IAMProjectsServiceAccountsKeysGet =
      '[CloudPlatform'FullControl]
  requestClient IAMProjectsServiceAccountsKeysGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      publicKeyType
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      iAMService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy IAMProjectsServiceAccountsKeysGetResource
          )
          Core.mempty
