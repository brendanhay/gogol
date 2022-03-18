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
-- Module      : Gogol.YouTube.ThirdPartyLinks.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of resources, possibly filtered.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.thirdPartyLinks.list@.
module Gogol.YouTube.ThirdPartyLinks.List
  ( -- * Resource
    YouTubeThirdPartyLinksListResource,

    -- ** Constructing a Request
    newYouTubeThirdPartyLinksList,
    YouTubeThirdPartyLinksList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.YouTube.Types

-- | A resource alias for @youtube.thirdPartyLinks.list@ method which the
-- 'YouTubeThirdPartyLinksList' request conforms to.
type YouTubeThirdPartyLinksListResource =
  "youtube"
    Core.:> "v3"
    Core.:> "thirdPartyLinks"
    Core.:> Core.QueryParams "part" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "externalChannelId" Core.Text
    Core.:> Core.QueryParam "linkingToken" Core.Text
    Core.:> Core.QueryParam "type" ThirdPartyLinksListType
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ThirdPartyLink

-- | Retrieves a list of resources, possibly filtered.
--
-- /See:/ 'newYouTubeThirdPartyLinksList' smart constructor.
data YouTubeThirdPartyLinksList = YouTubeThirdPartyLinksList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Channel ID to which changes should be applied, for delegation.
    externalChannelId :: (Core.Maybe Core.Text),
    -- | Get a third party link with the given linking token.
    linkingToken :: (Core.Maybe Core.Text),
    -- | The /part/ parameter specifies the thirdPartyLink resource parts that the API response will include. Supported values are linkingToken, status, and snippet.
    part :: [Core.Text],
    -- | Get a third party link of the given type.
    type' :: (Core.Maybe ThirdPartyLinksListType),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeThirdPartyLinksList' with the minimum fields required to make a request.
newYouTubeThirdPartyLinksList ::
  -- |  The /part/ parameter specifies the thirdPartyLink resource parts that the API response will include. Supported values are linkingToken, status, and snippet. See 'part'.
  [Core.Text] ->
  YouTubeThirdPartyLinksList
newYouTubeThirdPartyLinksList part =
  YouTubeThirdPartyLinksList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      externalChannelId = Core.Nothing,
      linkingToken = Core.Nothing,
      part = part,
      type' = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    YouTubeThirdPartyLinksList
  where
  type Rs YouTubeThirdPartyLinksList = ThirdPartyLink
  type Scopes YouTubeThirdPartyLinksList = '[]
  requestClient YouTubeThirdPartyLinksList {..} =
    go
      part
      xgafv
      accessToken
      callback
      externalChannelId
      linkingToken
      type'
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      youTubeService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy YouTubeThirdPartyLinksListResource
          )
          Core.mempty
