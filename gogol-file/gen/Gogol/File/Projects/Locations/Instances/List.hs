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
-- Module      : Gogol.File.Projects.Locations.Instances.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all instances in a project for either a specified location or for all locations.
--
-- /See:/ <https://cloud.google.com/filestore/ Cloud Filestore API Reference> for @file.projects.locations.instances.list@.
module Gogol.File.Projects.Locations.Instances.List
  ( -- * Resource
    FileProjectsLocationsInstancesListResource,

    -- ** Constructing a Request
    newFileProjectsLocationsInstancesList,
    FileProjectsLocationsInstancesList,
  )
where

import Gogol.File.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @file.projects.locations.instances.list@ method which the
-- 'FileProjectsLocationsInstancesList' request conforms to.
type FileProjectsLocationsInstancesListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "instances"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "orderBy" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListInstancesResponse

-- | Lists all instances in a project for either a specified location or for all locations.
--
-- /See:/ 'newFileProjectsLocationsInstancesList' smart constructor.
data FileProjectsLocationsInstancesList = FileProjectsLocationsInstancesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | List filter.
    filter :: (Core.Maybe Core.Text),
    -- | Sort results. Supported values are \"name\", \"name desc\" or \"\" (unsorted).
    orderBy :: (Core.Maybe Core.Text),
    -- | The maximum number of items to return.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The next/page/token value to use if there are additional results to retrieve for this list request.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The project and location for which to retrieve instance information, in the format @projects\/{project_id}\/locations\/{location}@. In Cloud Filestore, locations map to GCP zones, for example __us-west1-b__. To retrieve instance information for all locations, use \"-\" for the @{location}@ value.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FileProjectsLocationsInstancesList' with the minimum fields required to make a request.
newFileProjectsLocationsInstancesList ::
  -- |  Required. The project and location for which to retrieve instance information, in the format @projects\/{project_id}\/locations\/{location}@. In Cloud Filestore, locations map to GCP zones, for example __us-west1-b__. To retrieve instance information for all locations, use \"-\" for the @{location}@ value. See 'parent'.
  Core.Text ->
  FileProjectsLocationsInstancesList
newFileProjectsLocationsInstancesList parent =
  FileProjectsLocationsInstancesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      orderBy = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    FileProjectsLocationsInstancesList
  where
  type
    Rs FileProjectsLocationsInstancesList =
      ListInstancesResponse
  type
    Scopes FileProjectsLocationsInstancesList =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient FileProjectsLocationsInstancesList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      filter
      orderBy
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      fileService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                FileProjectsLocationsInstancesListResource
          )
          Core.mempty
