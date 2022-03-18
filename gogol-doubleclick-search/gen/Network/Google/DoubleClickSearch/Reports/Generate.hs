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
-- Module      : Network.Google.DoubleClickSearch.Reports.Generate
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates and returns a report immediately.
--
-- /See:/ <https://developers.google.com/search-ads Search Ads 360 API Reference> for @doubleclicksearch.reports.generate@.
module Network.Google.DoubleClickSearch.Reports.Generate
  ( -- * Resource
    DoubleClickSearchReportsGenerateResource,

    -- ** Constructing a Request
    newDoubleClickSearchReportsGenerate,
    DoubleClickSearchReportsGenerate,
  )
where

import Network.Google.DoubleClickSearch.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @doubleclicksearch.reports.generate@ method which the
-- 'DoubleClickSearchReportsGenerate' request conforms to.
type DoubleClickSearchReportsGenerateResource =
  "doubleclicksearch"
    Core.:> "v2"
    Core.:> "reports"
    Core.:> "generate"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ReportRequest
    Core.:> Core.Post '[Core.JSON] Report

-- | Generates and returns a report immediately.
--
-- /See:/ 'newDoubleClickSearchReportsGenerate' smart constructor.
data DoubleClickSearchReportsGenerate = DoubleClickSearchReportsGenerate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: ReportRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DoubleClickSearchReportsGenerate' with the minimum fields required to make a request.
newDoubleClickSearchReportsGenerate ::
  -- |  Multipart request metadata. See 'payload'.
  ReportRequest ->
  DoubleClickSearchReportsGenerate
newDoubleClickSearchReportsGenerate payload =
  DoubleClickSearchReportsGenerate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DoubleClickSearchReportsGenerate
  where
  type Rs DoubleClickSearchReportsGenerate = Report
  type
    Scopes DoubleClickSearchReportsGenerate =
      '["https://www.googleapis.com/auth/doubleclicksearch"]
  requestClient DoubleClickSearchReportsGenerate {..} =
    go
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      doubleClickSearchService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DoubleClickSearchReportsGenerateResource
          )
          Core.mempty
