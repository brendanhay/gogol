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
-- Module      : Gogol.FirebaseDynamicLinks.GetLinkStats
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fetches analytics stats of a short Dynamic Link for a given duration. Metrics include number of clicks, redirects, installs, app first opens, and app reopens.
--
-- /See:/ <https://firebase.google.com/docs/dynamic-links/ Firebase Dynamic Links API Reference> for @firebasedynamiclinks.getLinkStats@.
module Gogol.FirebaseDynamicLinks.GetLinkStats
  ( -- * Resource
    FirebaseDynamicLinksGetLinkStatsResource,

    -- ** Constructing a Request
    newFirebaseDynamicLinksGetLinkStats,
    FirebaseDynamicLinksGetLinkStats,
  )
where

import Gogol.FirebaseDynamicLinks.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @firebasedynamiclinks.getLinkStats@ method which the
-- 'FirebaseDynamicLinksGetLinkStats' request conforms to.
type FirebaseDynamicLinksGetLinkStatsResource =
  "v1"
    Core.:> Core.Capture "dynamicLink" Core.Text
    Core.:> "linkStats"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "durationDays" Core.Int64
    Core.:> Core.QueryParam "sdkVersion" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] DynamicLinkStats

-- | Fetches analytics stats of a short Dynamic Link for a given duration. Metrics include number of clicks, redirects, installs, app first opens, and app reopens.
--
-- /See:/ 'newFirebaseDynamicLinksGetLinkStats' smart constructor.
data FirebaseDynamicLinksGetLinkStats = FirebaseDynamicLinksGetLinkStats
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The span of time requested in days.
    durationDays :: (Core.Maybe Core.Int64),
    -- | Dynamic Link URL. e.g. https:\/\/abcd.app.goo.gl\/wxyz
    dynamicLink :: Core.Text,
    -- | Google SDK version. Version takes the form \"$major.$minor.$patch\"
    sdkVersion :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FirebaseDynamicLinksGetLinkStats' with the minimum fields required to make a request.
newFirebaseDynamicLinksGetLinkStats ::
  -- |  Dynamic Link URL. e.g. https:\/\/abcd.app.goo.gl\/wxyz See 'dynamicLink'.
  Core.Text ->
  FirebaseDynamicLinksGetLinkStats
newFirebaseDynamicLinksGetLinkStats dynamicLink =
  FirebaseDynamicLinksGetLinkStats
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      durationDays = Core.Nothing,
      dynamicLink = dynamicLink,
      sdkVersion = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    FirebaseDynamicLinksGetLinkStats
  where
  type
    Rs FirebaseDynamicLinksGetLinkStats =
      DynamicLinkStats
  type
    Scopes FirebaseDynamicLinksGetLinkStats =
      '[Firebase'FullControl]
  requestClient FirebaseDynamicLinksGetLinkStats {..} =
    go
      dynamicLink
      xgafv
      accessToken
      callback
      durationDays
      sdkVersion
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      firebaseDynamicLinksService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy FirebaseDynamicLinksGetLinkStatsResource
          )
          Core.mempty
