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
-- Module      : Gogol.YouTube.ThirdPartyLinks.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a resource.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.thirdPartyLinks.delete@.
module Gogol.YouTube.ThirdPartyLinks.Delete
  ( -- * Resource
    YouTubeThirdPartyLinksDeleteResource,

    -- ** Constructing a Request
    newYouTubeThirdPartyLinksDelete,
    YouTubeThirdPartyLinksDelete,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.YouTube.Types

-- | A resource alias for @youtube.thirdPartyLinks.delete@ method which the
-- 'YouTubeThirdPartyLinksDelete' request conforms to.
type YouTubeThirdPartyLinksDeleteResource =
  "youtube"
    Core.:> "v3"
    Core.:> "thirdPartyLinks"
    Core.:> Core.QueryParam "linkingToken" Core.Text
    Core.:> Core.QueryParam "type" ThirdPartyLinksDeleteType
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "externalChannelId" Core.Text
    Core.:> Core.QueryParams "part" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Deletes a resource.
--
-- /See:/ 'newYouTubeThirdPartyLinksDelete' smart constructor.
data YouTubeThirdPartyLinksDelete = YouTubeThirdPartyLinksDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Channel ID to which changes should be applied, for delegation.
    externalChannelId :: (Core.Maybe Core.Text),
    -- | Delete the partner links with the given linking token.
    linkingToken :: Core.Text,
    -- | Do not use. Required for compatibility.
    part :: (Core.Maybe [Core.Text]),
    -- | Type of the link to be deleted.
    type' :: ThirdPartyLinksDeleteType,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeThirdPartyLinksDelete' with the minimum fields required to make a request.
newYouTubeThirdPartyLinksDelete ::
  -- |  Delete the partner links with the given linking token. See 'linkingToken'.
  Core.Text ->
  -- |  Type of the link to be deleted. See 'type''.
  ThirdPartyLinksDeleteType ->
  YouTubeThirdPartyLinksDelete
newYouTubeThirdPartyLinksDelete linkingToken type' =
  YouTubeThirdPartyLinksDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      externalChannelId = Core.Nothing,
      linkingToken = linkingToken,
      part = Core.Nothing,
      type' = type',
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    YouTubeThirdPartyLinksDelete
  where
  type Rs YouTubeThirdPartyLinksDelete = ()
  type Scopes YouTubeThirdPartyLinksDelete = '[]
  requestClient YouTubeThirdPartyLinksDelete {..} =
    go
      (Core.Just linkingToken)
      (Core.Just type')
      xgafv
      accessToken
      callback
      externalChannelId
      (part Core.^. Core._Default)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      youTubeService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy YouTubeThirdPartyLinksDeleteResource
          )
          Core.mempty
