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
-- Module      : Network.Google.IAM.Projects.Locations.WorkloadIdentityPools.Providers.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all non-deleted WorkloadIdentityPoolProviders in a WorkloadIdentityPool. If @show_deleted@ is set to @true@, then deleted providers are also listed.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.locations.workloadIdentityPools.providers.list@.
module Network.Google.IAM.Projects.Locations.WorkloadIdentityPools.Providers.List
  ( -- * Resource
    IAMProjectsLocationsWorkloadIdentityPoolsProvidersListResource,

    -- ** Constructing a Request
    newIAMProjectsLocationsWorkloadIdentityPoolsProvidersList,
    IAMProjectsLocationsWorkloadIdentityPoolsProvidersList,
  )
where

import Network.Google.IAM.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @iam.projects.locations.workloadIdentityPools.providers.list@ method which the
-- 'IAMProjectsLocationsWorkloadIdentityPoolsProvidersList' request conforms to.
type IAMProjectsLocationsWorkloadIdentityPoolsProvidersListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "providers"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "showDeleted" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              ListWorkloadIdentityPoolProvidersResponse

-- | Lists all non-deleted WorkloadIdentityPoolProviders in a WorkloadIdentityPool. If @show_deleted@ is set to @true@, then deleted providers are also listed.
--
-- /See:/ 'newIAMProjectsLocationsWorkloadIdentityPoolsProvidersList' smart constructor.
data IAMProjectsLocationsWorkloadIdentityPoolsProvidersList = IAMProjectsLocationsWorkloadIdentityPoolsProvidersList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of providers to return. If unspecified, at most 50 providers are returned. The maximum value is 100; values above 100 are truncated to 100.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A page token, received from a previous @ListWorkloadIdentityPoolProviders@ call. Provide this to retrieve the subsequent page.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The pool to list providers for.
    parent :: Core.Text,
    -- | Whether to return soft-deleted providers.
    showDeleted :: (Core.Maybe Core.Bool),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAMProjectsLocationsWorkloadIdentityPoolsProvidersList' with the minimum fields required to make a request.
newIAMProjectsLocationsWorkloadIdentityPoolsProvidersList ::
  -- |  Required. The pool to list providers for. See 'parent'.
  Core.Text ->
  IAMProjectsLocationsWorkloadIdentityPoolsProvidersList
newIAMProjectsLocationsWorkloadIdentityPoolsProvidersList parent =
  IAMProjectsLocationsWorkloadIdentityPoolsProvidersList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      showDeleted = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    IAMProjectsLocationsWorkloadIdentityPoolsProvidersList
  where
  type
    Rs
      IAMProjectsLocationsWorkloadIdentityPoolsProvidersList =
      ListWorkloadIdentityPoolProvidersResponse
  type
    Scopes
      IAMProjectsLocationsWorkloadIdentityPoolsProvidersList =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    IAMProjectsLocationsWorkloadIdentityPoolsProvidersList {..} =
      go
        parent
        xgafv
        accessToken
        callback
        pageSize
        pageToken
        showDeleted
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        iAMService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  IAMProjectsLocationsWorkloadIdentityPoolsProvidersListResource
            )
            Core.mempty
