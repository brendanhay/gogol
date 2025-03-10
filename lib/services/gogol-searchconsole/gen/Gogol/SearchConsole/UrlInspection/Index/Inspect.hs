{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.SearchConsole.UrlInspection.Index.Inspect
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Index inspection.
--
-- /See:/ <https://developers.google.com/webmaster-tools/about Google Search Console API Reference> for @searchconsole.urlInspection.index.inspect@.
module Gogol.SearchConsole.UrlInspection.Index.Inspect
  ( -- * Resource
    SearchConsoleUrlInspectionIndexInspectResource,

    -- ** Constructing a Request
    SearchConsoleUrlInspectionIndexInspect (..),
    newSearchConsoleUrlInspectionIndexInspect,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.SearchConsole.Types

-- | A resource alias for @searchconsole.urlInspection.index.inspect@ method which the
-- 'SearchConsoleUrlInspectionIndexInspect' request conforms to.
type SearchConsoleUrlInspectionIndexInspectResource =
  "v1"
    Core.:> "urlInspection"
    Core.:> "index:inspect"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] InspectUrlIndexRequest
    Core.:> Core.Post '[Core.JSON] InspectUrlIndexResponse

-- | Index inspection.
--
-- /See:/ 'newSearchConsoleUrlInspectionIndexInspect' smart constructor.
data SearchConsoleUrlInspectionIndexInspect = SearchConsoleUrlInspectionIndexInspect
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: InspectUrlIndexRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchConsoleUrlInspectionIndexInspect' with the minimum fields required to make a request.
newSearchConsoleUrlInspectionIndexInspect ::
  -- |  Multipart request metadata. See 'payload'.
  InspectUrlIndexRequest ->
  SearchConsoleUrlInspectionIndexInspect
newSearchConsoleUrlInspectionIndexInspect payload =
  SearchConsoleUrlInspectionIndexInspect
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SearchConsoleUrlInspectionIndexInspect where
  type
    Rs SearchConsoleUrlInspectionIndexInspect =
      InspectUrlIndexResponse
  type
    Scopes SearchConsoleUrlInspectionIndexInspect =
      '[Webmasters'FullControl, Webmasters'Readonly]
  requestClient SearchConsoleUrlInspectionIndexInspect {..} =
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
              Core.Proxy SearchConsoleUrlInspectionIndexInspectResource
          )
          Core.mempty
