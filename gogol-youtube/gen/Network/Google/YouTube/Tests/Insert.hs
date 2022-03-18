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
-- Module      : Network.Google.YouTube.Tests.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- POST method.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.tests.insert@.
module Network.Google.YouTube.Tests.Insert
  ( -- * Resource
    YouTubeTestsInsertResource,

    -- ** Constructing a Request
    newYouTubeTestsInsert,
    YouTubeTestsInsert,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.tests.insert@ method which the
-- 'YouTubeTestsInsert' request conforms to.
type YouTubeTestsInsertResource =
  "youtube"
    Core.:> "v3"
    Core.:> "tests"
    Core.:> Core.QueryParams "part" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "externalChannelId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] TestItem
    Core.:> Core.Post '[Core.JSON] TestItem

-- | POST method.
--
-- /See:/ 'newYouTubeTestsInsert' smart constructor.
data YouTubeTestsInsert = YouTubeTestsInsert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- |
    externalChannelId :: (Core.Maybe Core.Text),
    -- |
    part :: [Core.Text],
    -- | Multipart request metadata.
    payload :: TestItem,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeTestsInsert' with the minimum fields required to make a request.
newYouTubeTestsInsert ::
  -- |  See 'part'.
  [Core.Text] ->
  -- |  Multipart request metadata. See 'payload'.
  TestItem ->
  YouTubeTestsInsert
newYouTubeTestsInsert part payload =
  YouTubeTestsInsert
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      externalChannelId = Core.Nothing,
      part = part,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest YouTubeTestsInsert where
  type Rs YouTubeTestsInsert = TestItem
  type
    Scopes YouTubeTestsInsert =
      '["https://www.googleapis.com/auth/youtube.readonly"]
  requestClient YouTubeTestsInsert {..} =
    go
      part
      xgafv
      accessToken
      callback
      externalChannelId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      youTubeService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy YouTubeTestsInsertResource)
          Core.mempty
