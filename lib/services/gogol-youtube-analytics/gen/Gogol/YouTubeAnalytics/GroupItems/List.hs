{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.YouTubeAnalytics.GroupItems.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a collection of group items that match the API request parameters.
--
-- /See:/ <https://developers.google.com/youtube/analytics YouTube Analytics API Reference> for @youtubeAnalytics.groupItems.list@.
module Gogol.YouTubeAnalytics.GroupItems.List
    (
    -- * Resource
      YouTubeAnalyticsGroupItemsListResource

    -- ** Constructing a Request
    , newYouTubeAnalyticsGroupItemsList
    , YouTubeAnalyticsGroupItemsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.YouTubeAnalytics.Types

-- | A resource alias for @youtubeAnalytics.groupItems.list@ method which the
-- 'YouTubeAnalyticsGroupItemsList' request conforms to.
type YouTubeAnalyticsGroupItemsListResource =
     "v2" Core.:>
       "groupItems" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "groupId" Core.Text Core.:>
                 Core.QueryParam "onBehalfOfContentOwner" Core.Text
                   Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Get '[Core.JSON] ListGroupItemsResponse

-- | Returns a collection of group items that match the API request parameters.
--
-- /See:/ 'newYouTubeAnalyticsGroupItemsList' smart constructor.
data YouTubeAnalyticsGroupItemsList = YouTubeAnalyticsGroupItemsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The @groupId@ parameter specifies the unique ID of the group for which you want to retrieve group items.
    , groupId :: (Core.Maybe Core.Text)
      -- | This parameter can only be used in a properly authorized request. __Note:__ This parameter is intended exclusively for YouTube content partners that own and manage many different YouTube channels. The @onBehalfOfContentOwner@ parameter indicates that the request\'s authorization credentials identify a YouTube user who is acting on behalf of the content owner specified in the parameter value. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The account that the user authenticates with must be linked to the specified YouTube content owner.
    , onBehalfOfContentOwner :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeAnalyticsGroupItemsList' with the minimum fields required to make a request.
newYouTubeAnalyticsGroupItemsList 
    ::  YouTubeAnalyticsGroupItemsList
newYouTubeAnalyticsGroupItemsList =
  YouTubeAnalyticsGroupItemsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , groupId = Core.Nothing
    , onBehalfOfContentOwner = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           YouTubeAnalyticsGroupItemsList
         where
        type Rs YouTubeAnalyticsGroupItemsList =
             ListGroupItemsResponse
        type Scopes YouTubeAnalyticsGroupItemsList =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.readonly",
               "https://www.googleapis.com/auth/youtubepartner",
               "https://www.googleapis.com/auth/yt-analytics-monetary.readonly",
               "https://www.googleapis.com/auth/yt-analytics.readonly"]
        requestClient YouTubeAnalyticsGroupItemsList{..}
          = go xgafv accessToken callback groupId
              onBehalfOfContentOwner
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              youTubeAnalyticsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy YouTubeAnalyticsGroupItemsListResource)
                      Core.mempty

