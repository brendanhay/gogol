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
-- Module      : Gogol.IAM.Projects.ServiceAccounts.Keys.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists every ServiceAccountKey for a service account.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.serviceAccounts.keys.list@.
module Gogol.IAM.Projects.ServiceAccounts.Keys.List
  ( -- * Resource
    IAMProjectsServiceAccountsKeysListResource,

    -- ** Constructing a Request
    newIAMProjectsServiceAccountsKeysList,
    IAMProjectsServiceAccountsKeysList,
  )
where

import Gogol.IAM.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @iam.projects.serviceAccounts.keys.list@ method which the
-- 'IAMProjectsServiceAccountsKeysList' request conforms to.
type IAMProjectsServiceAccountsKeysListResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "keys"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams
              "keyTypes"
              ProjectsServiceAccountsKeysListKeyTypes
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListServiceAccountKeysResponse

-- | Lists every ServiceAccountKey for a service account.
--
-- /See:/ 'newIAMProjectsServiceAccountsKeysList' smart constructor.
data IAMProjectsServiceAccountsKeysList = IAMProjectsServiceAccountsKeysList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Filters the types of keys the user wants to include in the list response. Duplicate key types are not allowed. If no key type is provided, all keys are returned.
    keyTypes :: (Core.Maybe [ProjectsServiceAccountsKeysListKeyTypes]),
    -- | Required. The resource name of the service account in the following format: @projects\/{PROJECT_ID}\/serviceAccounts\/{ACCOUNT}@. Using @-@ as a wildcard for the @PROJECT_ID@, will infer the project from the account. The @ACCOUNT@ value can be the @email@ address or the @unique_id@ of the service account.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAMProjectsServiceAccountsKeysList' with the minimum fields required to make a request.
newIAMProjectsServiceAccountsKeysList ::
  -- |  Required. The resource name of the service account in the following format: @projects\/{PROJECT_ID}\/serviceAccounts\/{ACCOUNT}@. Using @-@ as a wildcard for the @PROJECT_ID@, will infer the project from the account. The @ACCOUNT@ value can be the @email@ address or the @unique_id@ of the service account. See 'name'.
  Core.Text ->
  IAMProjectsServiceAccountsKeysList
newIAMProjectsServiceAccountsKeysList name =
  IAMProjectsServiceAccountsKeysList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      keyTypes = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    IAMProjectsServiceAccountsKeysList
  where
  type
    Rs IAMProjectsServiceAccountsKeysList =
      ListServiceAccountKeysResponse
  type
    Scopes IAMProjectsServiceAccountsKeysList =
      '[CloudPlatform'FullControl]
  requestClient IAMProjectsServiceAccountsKeysList {..} =
    go
      name
      xgafv
      accessToken
      callback
      (keyTypes Core.^. Core._Default)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      iAMService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                IAMProjectsServiceAccountsKeysListResource
          )
          Core.mempty
