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
-- Module      : Gogol.SearchConsole.UrlTestingTools.MobileFriendlyTest.Run
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Runs Mobile-Friendly Test for a given URL.
--
-- /See:/ <https://developers.google.com/webmaster-tools/about Google Search Console API Reference> for @searchconsole.urlTestingTools.mobileFriendlyTest.run@.
module Gogol.SearchConsole.UrlTestingTools.MobileFriendlyTest.Run
  ( -- * Resource
    SearchConsoleUrlTestingToolsMobileFriendlyTestRunResource,

    -- ** Constructing a Request
    SearchConsoleUrlTestingToolsMobileFriendlyTestRun (..),
    newSearchConsoleUrlTestingToolsMobileFriendlyTestRun,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.SearchConsole.Types

-- | A resource alias for @searchconsole.urlTestingTools.mobileFriendlyTest.run@ method which the
-- 'SearchConsoleUrlTestingToolsMobileFriendlyTestRun' request conforms to.
type SearchConsoleUrlTestingToolsMobileFriendlyTestRunResource =
  "v1"
    Core.:> "urlTestingTools"
    Core.:> "mobileFriendlyTest:run"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] RunMobileFriendlyTestRequest
    Core.:> Core.Post '[Core.JSON] RunMobileFriendlyTestResponse

-- | Runs Mobile-Friendly Test for a given URL.
--
-- /See:/ 'newSearchConsoleUrlTestingToolsMobileFriendlyTestRun' smart constructor.
data SearchConsoleUrlTestingToolsMobileFriendlyTestRun = SearchConsoleUrlTestingToolsMobileFriendlyTestRun
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: RunMobileFriendlyTestRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchConsoleUrlTestingToolsMobileFriendlyTestRun' with the minimum fields required to make a request.
newSearchConsoleUrlTestingToolsMobileFriendlyTestRun ::
  -- |  Multipart request metadata. See 'payload'.
  RunMobileFriendlyTestRequest ->
  SearchConsoleUrlTestingToolsMobileFriendlyTestRun
newSearchConsoleUrlTestingToolsMobileFriendlyTestRun payload =
  SearchConsoleUrlTestingToolsMobileFriendlyTestRun
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SearchConsoleUrlTestingToolsMobileFriendlyTestRun
  where
  type
    Rs SearchConsoleUrlTestingToolsMobileFriendlyTestRun =
      RunMobileFriendlyTestResponse
  type Scopes SearchConsoleUrlTestingToolsMobileFriendlyTestRun = '[]
  requestClient SearchConsoleUrlTestingToolsMobileFriendlyTestRun {..} =
    go
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      searchConsoleService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                SearchConsoleUrlTestingToolsMobileFriendlyTestRunResource
          )
          Core.mempty
