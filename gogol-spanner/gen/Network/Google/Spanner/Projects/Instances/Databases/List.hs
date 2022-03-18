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
-- Module      : Network.Google.Spanner.Projects.Instances.Databases.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists Cloud Spanner databases.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.list@.
module Network.Google.Spanner.Projects.Instances.Databases.List
  ( -- * Resource
    SpannerProjectsInstancesDatabasesListResource,

    -- ** Constructing a Request
    newSpannerProjectsInstancesDatabasesList,
    SpannerProjectsInstancesDatabasesList,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.list@ method which the
-- 'SpannerProjectsInstancesDatabasesList' request conforms to.
type SpannerProjectsInstancesDatabasesListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "databases"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListDatabasesResponse

-- | Lists Cloud Spanner databases.
--
-- /See:/ 'newSpannerProjectsInstancesDatabasesList' smart constructor.
data SpannerProjectsInstancesDatabasesList = SpannerProjectsInstancesDatabasesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Number of databases to be returned in the response. If 0 or less, defaults to the server\'s maximum allowed page size.
    pageSize :: (Core.Maybe Core.Int32),
    -- | If non-empty, @page_token@ should contain a next/page/token from a previous ListDatabasesResponse.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The instance whose databases should be listed. Values are of the form @projects\/\/instances\/@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesDatabasesList' with the minimum fields required to make a request.
newSpannerProjectsInstancesDatabasesList ::
  -- |  Required. The instance whose databases should be listed. Values are of the form @projects\/\/instances\/@. See 'parent'.
  Core.Text ->
  SpannerProjectsInstancesDatabasesList
newSpannerProjectsInstancesDatabasesList parent =
  SpannerProjectsInstancesDatabasesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SpannerProjectsInstancesDatabasesList
  where
  type
    Rs SpannerProjectsInstancesDatabasesList =
      ListDatabasesResponse
  type
    Scopes SpannerProjectsInstancesDatabasesList =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/spanner.admin"
       ]
  requestClient
    SpannerProjectsInstancesDatabasesList {..} =
      go
        parent
        xgafv
        accessToken
        callback
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
                Core.Proxy
                  SpannerProjectsInstancesDatabasesListResource
            )
            Core.mempty
