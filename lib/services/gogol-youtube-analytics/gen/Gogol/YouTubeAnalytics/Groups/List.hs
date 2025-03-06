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
-- Module      : Gogol.YouTubeAnalytics.Groups.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a collection of groups that match the API request parameters. For example, you can retrieve all groups that the authenticated user owns, or you can retrieve one or more groups by their unique IDs.
--
-- /See:/ <https://developers.google.com/youtube/analytics YouTube Analytics API Reference> for @youtubeAnalytics.groups.list@.
module Gogol.YouTubeAnalytics.Groups.List
  ( -- * Resource
    YouTubeAnalyticsGroupsListResource,

    -- ** Constructing a Request
    YouTubeAnalyticsGroupsList (..),
    newYouTubeAnalyticsGroupsList,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.YouTubeAnalytics.Types

-- | A resource alias for @youtubeAnalytics.groups.list@ method which the
-- 'YouTubeAnalyticsGroupsList' request conforms to.
type YouTubeAnalyticsGroupsListResource =
  "v2"
    Core.:> "groups"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "id" Core.Text
    Core.:> Core.QueryParam "mine" Core.Bool
    Core.:> Core.QueryParam "onBehalfOfContentOwner" Core.Text
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListGroupsResponse

-- | Returns a collection of groups that match the API request parameters. For example, you can retrieve all groups that the authenticated user owns, or you can retrieve one or more groups by their unique IDs.
--
-- /See:/ 'newYouTubeAnalyticsGroupsList' smart constructor.
data YouTubeAnalyticsGroupsList = YouTubeAnalyticsGroupsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The @id@ parameter specifies a comma-separated list of the YouTube group ID(s) for the resource(s) that are being retrieved. Each group must be owned by the authenticated user. In a @group@ resource, the @id@ property specifies the group\'s YouTube group ID. Note that if you do not specify a value for the @id@ parameter, then you must set the @mine@ parameter to @true@.
    id :: (Core.Maybe Core.Text),
    -- | This parameter can only be used in a properly authorized request. Set this parameter\'s value to true to retrieve all groups owned by the authenticated user.
    mine :: (Core.Maybe Core.Bool),
    -- | This parameter can only be used in a properly authorized request. __Note:__ This parameter is intended exclusively for YouTube content partners that own and manage many different YouTube channels. The @onBehalfOfContentOwner@ parameter indicates that the request\'s authorization credentials identify a YouTube user who is acting on behalf of the content owner specified in the parameter value. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The account that the user authenticates with must be linked to the specified YouTube content owner.
    onBehalfOfContentOwner :: (Core.Maybe Core.Text),
    -- | The @pageToken@ parameter identifies a specific page in the result set that should be returned. In an API response, the @nextPageToken@ property identifies the next page that can be retrieved.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeAnalyticsGroupsList' with the minimum fields required to make a request.
newYouTubeAnalyticsGroupsList ::
  YouTubeAnalyticsGroupsList
newYouTubeAnalyticsGroupsList =
  YouTubeAnalyticsGroupsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      id = Core.Nothing,
      mine = Core.Nothing,
      onBehalfOfContentOwner = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest YouTubeAnalyticsGroupsList where
  type Rs YouTubeAnalyticsGroupsList = ListGroupsResponse
  type
    Scopes YouTubeAnalyticsGroupsList =
      '[ Youtube'FullControl,
         Youtube'Readonly,
         Youtubepartner'FullControl,
         YtAnalyticsMonetary'Readonly,
         YtAnalytics'Readonly
       ]
  requestClient YouTubeAnalyticsGroupsList {..} =
    go
      xgafv
      accessToken
      callback
      id
      mine
      onBehalfOfContentOwner
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      youTubeAnalyticsService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy YouTubeAnalyticsGroupsListResource)
          Core.mempty
