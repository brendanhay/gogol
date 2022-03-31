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
-- Module      : Gogol.YouTube.I18nRegions.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of resources, possibly filtered.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.i18nRegions.list@.
module Gogol.YouTube.I18nRegions.List
  ( -- * Resource
    YouTubeI18nRegionsListResource,

    -- ** Constructing a Request
    newYouTubeI18nRegionsList,
    YouTubeI18nRegionsList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.YouTube.Types

-- | A resource alias for @youtube.i18nRegions.list@ method which the
-- 'YouTubeI18nRegionsList' request conforms to.
type YouTubeI18nRegionsListResource =
  "youtube"
    Core.:> "v3"
    Core.:> "i18nRegions"
    Core.:> Core.QueryParams "part" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "hl" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] I18nRegionListResponse

-- | Retrieves a list of resources, possibly filtered.
--
-- /See:/ 'newYouTubeI18nRegionsList' smart constructor.
data YouTubeI18nRegionsList = YouTubeI18nRegionsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- |
    hl :: Core.Text,
    -- | The /part/ parameter specifies the i18nRegion resource properties that the API response will include. Set the parameter value to snippet.
    part :: [Core.Text],
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeI18nRegionsList' with the minimum fields required to make a request.
newYouTubeI18nRegionsList ::
  -- |  The /part/ parameter specifies the i18nRegion resource properties that the API response will include. Set the parameter value to snippet. See 'part'.
  [Core.Text] ->
  YouTubeI18nRegionsList
newYouTubeI18nRegionsList part =
  YouTubeI18nRegionsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      hl = "en_US",
      part = part,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest YouTubeI18nRegionsList where
  type
    Rs YouTubeI18nRegionsList =
      I18nRegionListResponse
  type
    Scopes YouTubeI18nRegionsList =
      '[ Youtube'FullControl,
         Youtube'ForceSsl,
         Youtube'Readonly,
         Youtubepartner'FullControl
       ]
  requestClient YouTubeI18nRegionsList {..} =
    go
      part
      xgafv
      accessToken
      callback
      (Core.Just hl)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      youTubeService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy YouTubeI18nRegionsListResource
          )
          Core.mempty
