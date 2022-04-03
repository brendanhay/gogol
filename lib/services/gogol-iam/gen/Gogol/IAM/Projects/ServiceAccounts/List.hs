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
-- Module      : Gogol.IAM.Projects.ServiceAccounts.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists every ServiceAccount that belongs to a specific project.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.serviceAccounts.list@.
module Gogol.IAM.Projects.ServiceAccounts.List
  ( -- * Resource
    IAMProjectsServiceAccountsListResource,

    -- ** Constructing a Request
    IAMProjectsServiceAccountsList (..),
    newIAMProjectsServiceAccountsList,
  )
where

import Gogol.IAM.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @iam.projects.serviceAccounts.list@ method which the
-- 'IAMProjectsServiceAccountsList' request conforms to.
type IAMProjectsServiceAccountsListResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "serviceAccounts"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListServiceAccountsResponse

-- | Lists every ServiceAccount that belongs to a specific project.
--
-- /See:/ 'newIAMProjectsServiceAccountsList' smart constructor.
data IAMProjectsServiceAccountsList = IAMProjectsServiceAccountsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the project associated with the service accounts, such as @projects\/my-project-123@.
    name :: Core.Text,
    -- | Optional limit on the number of service accounts to include in the response. Further accounts can subsequently be obtained by including the ListServiceAccountsResponse.next/page/token in a subsequent request. The default is 20, and the maximum is 100.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional pagination token returned in an earlier ListServiceAccountsResponse.next/page/token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAMProjectsServiceAccountsList' with the minimum fields required to make a request.
newIAMProjectsServiceAccountsList ::
  -- |  Required. The resource name of the project associated with the service accounts, such as @projects\/my-project-123@. See 'name'.
  Core.Text ->
  IAMProjectsServiceAccountsList
newIAMProjectsServiceAccountsList name =
  IAMProjectsServiceAccountsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    IAMProjectsServiceAccountsList
  where
  type
    Rs IAMProjectsServiceAccountsList =
      ListServiceAccountsResponse
  type
    Scopes IAMProjectsServiceAccountsList =
      '[CloudPlatform'FullControl]
  requestClient IAMProjectsServiceAccountsList {..} =
    go
      name
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      iAMService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy IAMProjectsServiceAccountsListResource
          )
          Core.mempty
