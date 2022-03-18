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
-- Module      : Gogol.YouTube.Members.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of members that match the request criteria for a channel.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.members.list@.
module Gogol.YouTube.Members.List
  ( -- * Resource
    YouTubeMembersListResource,

    -- ** Constructing a Request
    newYouTubeMembersList,
    YouTubeMembersList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.YouTube.Types

-- | A resource alias for @youtube.members.list@ method which the
-- 'YouTubeMembersList' request conforms to.
type YouTubeMembersListResource =
  "youtube"
    Core.:> "v3"
    Core.:> "members"
    Core.:> Core.QueryParams "part" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filterByMemberChannelId" Core.Text
    Core.:> Core.QueryParam "hasAccessToLevel" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "mode" MembersListMode
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] MemberListResponse

-- | Retrieves a list of members that match the request criteria for a channel.
--
-- /See:/ 'newYouTubeMembersList' smart constructor.
data YouTubeMembersList = YouTubeMembersList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Comma separated list of channel IDs. Only data about members that are part of this list will be included in the response.
    filterByMemberChannelId :: (Core.Maybe Core.Text),
    -- | Filter members in the results set to the ones that have access to a level.
    hasAccessToLevel :: (Core.Maybe Core.Text),
    -- | The /maxResults/ parameter specifies the maximum number of items that should be returned in the result set.
    maxResults :: Core.Word32,
    -- | Parameter that specifies which channel members to return.
    mode :: MembersListMode,
    -- | The /pageToken/ parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved.
    pageToken :: (Core.Maybe Core.Text),
    -- | The /part/ parameter specifies the member resource parts that the API response will include. Set the parameter value to snippet.
    part :: [Core.Text],
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeMembersList' with the minimum fields required to make a request.
newYouTubeMembersList ::
  -- |  The /part/ parameter specifies the member resource parts that the API response will include. Set the parameter value to snippet. See 'part'.
  [Core.Text] ->
  YouTubeMembersList
newYouTubeMembersList part =
  YouTubeMembersList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filterByMemberChannelId = Core.Nothing,
      hasAccessToLevel = Core.Nothing,
      maxResults = 5,
      mode = MembersListMode_AllCurrent,
      pageToken = Core.Nothing,
      part = part,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest YouTubeMembersList where
  type Rs YouTubeMembersList = MemberListResponse
  type
    Scopes YouTubeMembersList =
      '["https://www.googleapis.com/auth/youtube.channel-memberships.creator"]
  requestClient YouTubeMembersList {..} =
    go
      part
      xgafv
      accessToken
      callback
      filterByMemberChannelId
      hasAccessToLevel
      (Core.Just maxResults)
      (Core.Just mode)
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      youTubeService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy YouTubeMembersListResource)
          Core.mempty
