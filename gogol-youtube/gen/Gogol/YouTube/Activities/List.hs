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
-- Module      : Gogol.YouTube.Activities.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of resources, possibly filtered.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.activities.list@.
module Gogol.YouTube.Activities.List
  ( -- * Resource
    YouTubeActivitiesListResource,

    -- ** Constructing a Request
    newYouTubeActivitiesList,
    YouTubeActivitiesList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.YouTube.Types

-- | A resource alias for @youtube.activities.list@ method which the
-- 'YouTubeActivitiesList' request conforms to.
type YouTubeActivitiesListResource =
  "youtube"
    Core.:> "v3"
    Core.:> "activities"
    Core.:> Core.QueryParams "part" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "channelId" Core.Text
    Core.:> Core.QueryParam "home" Core.Bool
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "mine" Core.Bool
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "publishedAfter" Core.DateTime'
    Core.:> Core.QueryParam "publishedBefore" Core.DateTime'
    Core.:> Core.QueryParam "regionCode" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              ActivityListResponse

-- | Retrieves a list of resources, possibly filtered.
--
-- /See:/ 'newYouTubeActivitiesList' smart constructor.
data YouTubeActivitiesList = YouTubeActivitiesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- |
    channelId :: (Core.Maybe Core.Text),
    -- |
    home :: (Core.Maybe Core.Bool),
    -- | The /maxResults/ parameter specifies the maximum number of items that should be returned in the result set.
    maxResults :: Core.Word32,
    -- |
    mine :: (Core.Maybe Core.Bool),
    -- | The /pageToken/ parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved.
    pageToken :: (Core.Maybe Core.Text),
    -- | The /part/ parameter specifies a comma-separated list of one or more activity resource properties that the API response will include. If the parameter identifies a property that contains child properties, the child properties will be included in the response. For example, in an activity resource, the snippet property contains other properties that identify the type of activity, a display title for the activity, and so forth. If you set /part=snippet/, the API response will also contain all of those nested properties.
    part :: [Core.Text],
    -- |
    publishedAfter :: (Core.Maybe Core.DateTime'),
    -- |
    publishedBefore :: (Core.Maybe Core.DateTime'),
    -- |
    regionCode :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeActivitiesList' with the minimum fields required to make a request.
newYouTubeActivitiesList ::
  -- |  The /part/ parameter specifies a comma-separated list of one or more activity resource properties that the API response will include. If the parameter identifies a property that contains child properties, the child properties will be included in the response. For example, in an activity resource, the snippet property contains other properties that identify the type of activity, a display title for the activity, and so forth. If you set /part=snippet/, the API response will also contain all of those nested properties. See 'part'.
  [Core.Text] ->
  YouTubeActivitiesList
newYouTubeActivitiesList part =
  YouTubeActivitiesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      channelId = Core.Nothing,
      home = Core.Nothing,
      maxResults = 5,
      mine = Core.Nothing,
      pageToken = Core.Nothing,
      part = part,
      publishedAfter = Core.Nothing,
      publishedBefore = Core.Nothing,
      regionCode = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest YouTubeActivitiesList where
  type Rs YouTubeActivitiesList = ActivityListResponse
  type
    Scopes YouTubeActivitiesList =
      '[ "https://www.googleapis.com/auth/youtube",
         "https://www.googleapis.com/auth/youtube.force-ssl",
         "https://www.googleapis.com/auth/youtube.readonly"
       ]
  requestClient YouTubeActivitiesList {..} =
    go
      part
      xgafv
      accessToken
      callback
      channelId
      home
      (Core.Just maxResults)
      mine
      pageToken
      publishedAfter
      publishedBefore
      regionCode
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      youTubeService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy YouTubeActivitiesListResource
          )
          Core.mempty
