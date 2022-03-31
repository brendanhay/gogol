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
-- Module      : Gogol.Spanner.Projects.Instances.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all instances in the given project.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.list@.
module Gogol.Spanner.Projects.Instances.List
  ( -- * Resource
    SpannerProjectsInstancesListResource,

    -- ** Constructing a Request
    newSpannerProjectsInstancesList,
    SpannerProjectsInstancesList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.list@ method which the
-- 'SpannerProjectsInstancesList' request conforms to.
type SpannerProjectsInstancesListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "instances"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "instanceDeadline" Core.DateTime'
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListInstancesResponse

-- | Lists all instances in the given project.
--
-- /See:/ 'newSpannerProjectsInstancesList' smart constructor.
data SpannerProjectsInstancesList = SpannerProjectsInstancesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | An expression for filtering the results of the request. Filter rules are case insensitive. The fields eligible for filtering are: * @name@ * @display_name@ * @labels.key@ where key is the name of a label Some examples of using filters are: * @name:*@ --> The instance has a name. * @name:Howl@ --> The instance\'s name contains the string \"howl\". * @name:HOWL@ --> Equivalent to above. * @NAME:howl@ --> Equivalent to above. * @labels.env:*@ --> The instance has the label \"env\". * @labels.env:dev@ --> The instance has the label \"env\" and the value of the label contains the string \"dev\". * @name:howl labels.env:dev@ --> The instance\'s name contains \"howl\" and it has the label \"env\" with its value containing \"dev\".
    filter :: (Core.Maybe Core.Text),
    -- | Deadline used while retrieving metadata for instances. Instances whose metadata cannot be retrieved within this deadline will be added to unreachable in ListInstancesResponse.
    instanceDeadline :: (Core.Maybe Core.DateTime'),
    -- | Number of instances to be returned in the response. If 0 or less, defaults to the server\'s maximum allowed page size.
    pageSize :: (Core.Maybe Core.Int32),
    -- | If non-empty, @page_token@ should contain a next/page/token from a previous ListInstancesResponse.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The name of the project for which a list of instances is requested. Values are of the form @projects\/@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesList' with the minimum fields required to make a request.
newSpannerProjectsInstancesList ::
  -- |  Required. The name of the project for which a list of instances is requested. Values are of the form @projects\/@. See 'parent'.
  Core.Text ->
  SpannerProjectsInstancesList
newSpannerProjectsInstancesList parent =
  SpannerProjectsInstancesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      instanceDeadline = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SpannerProjectsInstancesList
  where
  type
    Rs SpannerProjectsInstancesList =
      ListInstancesResponse
  type
    Scopes SpannerProjectsInstancesList =
      '[CloudPlatform'FullControl, Spanner'Admin]
  requestClient SpannerProjectsInstancesList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      filter
      instanceDeadline
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      spannerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy SpannerProjectsInstancesListResource
          )
          Core.mempty
