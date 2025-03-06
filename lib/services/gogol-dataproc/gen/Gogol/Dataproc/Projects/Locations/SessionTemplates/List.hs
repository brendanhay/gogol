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
-- Module      : Gogol.Dataproc.Projects.Locations.SessionTemplates.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists session templates.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.sessionTemplates.list@.
module Gogol.Dataproc.Projects.Locations.SessionTemplates.List
  ( -- * Resource
    DataprocProjectsLocationsSessionTemplatesListResource,

    -- ** Constructing a Request
    DataprocProjectsLocationsSessionTemplatesList (..),
    newDataprocProjectsLocationsSessionTemplatesList,
  )
where

import Gogol.Dataproc.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dataproc.projects.locations.sessionTemplates.list@ method which the
-- 'DataprocProjectsLocationsSessionTemplatesList' request conforms to.
type DataprocProjectsLocationsSessionTemplatesListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "sessionTemplates"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListSessionTemplatesResponse

-- | Lists session templates.
--
-- /See:/ 'newDataprocProjectsLocationsSessionTemplatesList' smart constructor.
data DataprocProjectsLocationsSessionTemplatesList = DataprocProjectsLocationsSessionTemplatesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. A filter for the session templates to return in the response. Filters are case sensitive and have the following syntax:field = value AND field = value ...
    filter :: (Core.Maybe Core.Text),
    -- | Optional. The maximum number of sessions to return in each response. The service may return fewer than this value.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. A page token received from a previous ListSessions call. Provide this token to retrieve the subsequent page.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The parent that owns this collection of session templates.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsLocationsSessionTemplatesList' with the minimum fields required to make a request.
newDataprocProjectsLocationsSessionTemplatesList ::
  -- |  Required. The parent that owns this collection of session templates. See 'parent'.
  Core.Text ->
  DataprocProjectsLocationsSessionTemplatesList
newDataprocProjectsLocationsSessionTemplatesList parent =
  DataprocProjectsLocationsSessionTemplatesList
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
    DataprocProjectsLocationsSessionTemplatesList
  where
  type
    Rs DataprocProjectsLocationsSessionTemplatesList =
      ListSessionTemplatesResponse
  type
    Scopes DataprocProjectsLocationsSessionTemplatesList =
      '[CloudPlatform'FullControl]
  requestClient DataprocProjectsLocationsSessionTemplatesList {..} =
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
      dataprocService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DataprocProjectsLocationsSessionTemplatesListResource
          )
          Core.mempty
