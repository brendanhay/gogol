{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Composer.Projects.Locations.Environments.Workloads.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists workloads in a Cloud Composer environment. Workload is a unit that runs a single Composer component. This method is supported for Cloud Composer environments in versions composer-2././-airflow-/./.* and newer.
--
-- /See:/ <https://cloud.google.com/composer/ Cloud Composer API Reference> for @composer.projects.locations.environments.workloads.list@.
module Gogol.Composer.Projects.Locations.Environments.Workloads.List
  ( -- * Resource
    ComposerProjectsLocationsEnvironmentsWorkloadsListResource,

    -- ** Constructing a Request
    ComposerProjectsLocationsEnvironmentsWorkloadsList (..),
    newComposerProjectsLocationsEnvironmentsWorkloadsList,
  )
where

import Gogol.Composer.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @composer.projects.locations.environments.workloads.list@ method which the
-- 'ComposerProjectsLocationsEnvironmentsWorkloadsList' request conforms to.
type ComposerProjectsLocationsEnvironmentsWorkloadsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "workloads"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListWorkloadsResponse

-- | Lists workloads in a Cloud Composer environment. Workload is a unit that runs a single Composer component. This method is supported for Cloud Composer environments in versions composer-2././-airflow-/./.* and newer.
--
-- /See:/ 'newComposerProjectsLocationsEnvironmentsWorkloadsList' smart constructor.
data ComposerProjectsLocationsEnvironmentsWorkloadsList = ComposerProjectsLocationsEnvironmentsWorkloadsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The list filter. Currently only supports equality on the type field. The value of a field specified in the filter expression must be one ComposerWorkloadType enum option. It\'s possible to get multiple types using \"OR\" operator, e.g.: \"type=SCHEDULER OR type=CELERY_WORKER\". If not specified, all items are returned.
    filter :: (Core.Maybe Core.Text),
    -- | Optional. The maximum number of environments to return.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. The next/page/token value returned from a previous List request, if any.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The environment name to get workloads for, in the form: \"projects\/{projectId}\/locations\/{locationId}\/environments\/{environmentId}\"
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComposerProjectsLocationsEnvironmentsWorkloadsList' with the minimum fields required to make a request.
newComposerProjectsLocationsEnvironmentsWorkloadsList ::
  -- |  Required. The environment name to get workloads for, in the form: \"projects\/{projectId}\/locations\/{locationId}\/environments\/{environmentId}\" See 'parent'.
  Core.Text ->
  ComposerProjectsLocationsEnvironmentsWorkloadsList
newComposerProjectsLocationsEnvironmentsWorkloadsList parent =
  ComposerProjectsLocationsEnvironmentsWorkloadsList
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ComposerProjectsLocationsEnvironmentsWorkloadsList
  where
  type
    Rs ComposerProjectsLocationsEnvironmentsWorkloadsList =
      ListWorkloadsResponse
  type
    Scopes ComposerProjectsLocationsEnvironmentsWorkloadsList =
      '[CloudPlatform'FullControl]
  requestClient
    ComposerProjectsLocationsEnvironmentsWorkloadsList {..} =
      go
        parent
        xgafv
        accessToken
        callback
        filter
        pageSize
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        composerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ComposerProjectsLocationsEnvironmentsWorkloadsListResource
            )
            Core.mempty
