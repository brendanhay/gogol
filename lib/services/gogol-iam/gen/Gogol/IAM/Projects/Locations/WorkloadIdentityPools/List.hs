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
-- Module      : Gogol.IAM.Projects.Locations.WorkloadIdentityPools.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all non-deleted WorkloadIdentityPools in a project. If @show_deleted@ is set to @true@, then deleted pools are also listed.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.locations.workloadIdentityPools.list@.
module Gogol.IAM.Projects.Locations.WorkloadIdentityPools.List
  ( -- * Resource
    IAMProjectsLocationsWorkloadIdentityPoolsListResource,

    -- ** Constructing a Request
    IAMProjectsLocationsWorkloadIdentityPoolsList (..),
    newIAMProjectsLocationsWorkloadIdentityPoolsList,
  )
where

import Gogol.IAM.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @iam.projects.locations.workloadIdentityPools.list@ method which the
-- 'IAMProjectsLocationsWorkloadIdentityPoolsList' request conforms to.
type IAMProjectsLocationsWorkloadIdentityPoolsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "workloadIdentityPools"
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
              ListWorkloadIdentityPoolsResponse

-- | Lists all non-deleted WorkloadIdentityPools in a project. If @show_deleted@ is set to @true@, then deleted pools are also listed.
--
-- /See:/ 'newIAMProjectsLocationsWorkloadIdentityPoolsList' smart constructor.
data IAMProjectsLocationsWorkloadIdentityPoolsList = IAMProjectsLocationsWorkloadIdentityPoolsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of pools to return. If unspecified, at most 50 pools are returned. The maximum value is 1000; values above are 1000 truncated to 1000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A page token, received from a previous @ListWorkloadIdentityPools@ call. Provide this to retrieve the subsequent page.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The parent resource to list pools for.
    parent :: Core.Text,
    -- | Whether to return soft-deleted pools.
    showDeleted :: (Core.Maybe Core.Bool),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAMProjectsLocationsWorkloadIdentityPoolsList' with the minimum fields required to make a request.
newIAMProjectsLocationsWorkloadIdentityPoolsList ::
  -- |  Required. The parent resource to list pools for. See 'parent'.
  Core.Text ->
  IAMProjectsLocationsWorkloadIdentityPoolsList
newIAMProjectsLocationsWorkloadIdentityPoolsList parent =
  IAMProjectsLocationsWorkloadIdentityPoolsList
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
    IAMProjectsLocationsWorkloadIdentityPoolsList
  where
  type
    Rs IAMProjectsLocationsWorkloadIdentityPoolsList =
      ListWorkloadIdentityPoolsResponse
  type
    Scopes
      IAMProjectsLocationsWorkloadIdentityPoolsList =
      '[CloudPlatform'FullControl]
  requestClient
    IAMProjectsLocationsWorkloadIdentityPoolsList {..} =
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
                  IAMProjectsLocationsWorkloadIdentityPoolsListResource
            )
            Core.mempty
