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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Changelogs.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of Changelogs.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.changelogs.list@.
module Gogol.DialogFlow.Projects.Locations.Agents.Changelogs.List
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsChangelogsListResource,

    -- ** Constructing a Request
    DialogFlowProjectsLocationsAgentsChangelogsList (..),
    newDialogFlowProjectsLocationsAgentsChangelogsList,
  )
where

import Gogol.DialogFlow.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dialogflow.projects.locations.agents.changelogs.list@ method which the
-- 'DialogFlowProjectsLocationsAgentsChangelogsList' request conforms to.
type DialogFlowProjectsLocationsAgentsChangelogsListResource =
  "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "changelogs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GoogleCloudDialogflowCxV3ListChangelogsResponse

-- | Returns the list of Changelogs.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsChangelogsList' smart constructor.
data DialogFlowProjectsLocationsAgentsChangelogsList = DialogFlowProjectsLocationsAgentsChangelogsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The filter string. Supports filter by user/email, resource, type and create/time. Some examples: 1. By user email: user/email = \"someone\@google.com\" 2. By resource name: resource = \"projects\/123\/locations\/global\/agents\/456\/flows\/789\" 3. By resource display name: display/name = \"my agent\" 4. By action: action = \"Create\" 5. By type: type = \"flows\" 6. By create time. Currently predicates on @create_time@ and @create_time_epoch_seconds@ are supported: create/time/epoch/seconds > 1551790877 AND create/time \<= 2017-01-15T01:30:15.01Z 7. Combination of above filters: resource = \"projects\/123\/locations\/global\/agents\/456\/flows\/789\" AND user/email = \"someone\@google.com\" AND create/time \<= 2017-01-15T01:30:15.01Z
    filter :: (Core.Maybe Core.Text),
    -- | The maximum number of items to return in a single page. By default 100 and at most 1000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The next/page/token value returned from a previous list request.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The agent containing the changelogs. Format: @projects\/\/locations\/\/agents\/@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsChangelogsList' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsChangelogsList ::
  -- |  Required. The agent containing the changelogs. Format: @projects\/\/locations\/\/agents\/@. See 'parent'.
  Core.Text ->
  DialogFlowProjectsLocationsAgentsChangelogsList
newDialogFlowProjectsLocationsAgentsChangelogsList parent =
  DialogFlowProjectsLocationsAgentsChangelogsList
    { xgafv = Core.Nothing,
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
    DialogFlowProjectsLocationsAgentsChangelogsList
  where
  type
    Rs
      DialogFlowProjectsLocationsAgentsChangelogsList =
      GoogleCloudDialogflowCxV3ListChangelogsResponse
  type
    Scopes
      DialogFlowProjectsLocationsAgentsChangelogsList =
      '[CloudPlatform'FullControl, Dialogflow'FullControl]
  requestClient
    DialogFlowProjectsLocationsAgentsChangelogsList {..} =
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
        dialogFlowService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DialogFlowProjectsLocationsAgentsChangelogsListResource
            )
            Core.mempty
