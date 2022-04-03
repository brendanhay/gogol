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
-- Module      : Gogol.DoubleClickSearch.Reports.GetFile
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Downloads a report file encoded in UTF-8.
--
-- /See:/ <https://developers.google.com/search-ads Search Ads 360 API Reference> for @doubleclicksearch.reports.getFile@.
module Gogol.DoubleClickSearch.Reports.GetFile
  ( -- * Resource
    DoubleClickSearchReportsGetFileResource,

    -- ** Constructing a Request
    DoubleClickSearchReportsGetFile (..),
    newDoubleClickSearchReportsGetFile,
  )
where

import Gogol.DoubleClickSearch.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @doubleclicksearch.reports.getFile@ method which the
-- 'DoubleClickSearchReportsGetFile' request conforms to.
type DoubleClickSearchReportsGetFileResource =
  "doubleclicksearch"
    Core.:> "v2"
    Core.:> "reports"
    Core.:> Core.Capture "reportId" Core.Text
    Core.:> "files"
    Core.:> Core.Capture "reportFragment" Core.Int32
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ()
    Core.:<|> "doubleclicksearch"
      Core.:> "v2"
      Core.:> "reports"
      Core.:> Core.Capture "reportId" Core.Text
      Core.:> "files"
      Core.:> Core.Capture "reportFragment" Core.Int32
      Core.:> Core.QueryParam "$.xgafv" Xgafv
      Core.:> Core.QueryParam "access_token" Core.Text
      Core.:> Core.QueryParam "callback" Core.Text
      Core.:> Core.QueryParam "uploadType" Core.Text
      Core.:> Core.QueryParam "upload_protocol" Core.Text
      Core.:> Core.QueryParam "alt" Core.AltMedia
      Core.:> Core.Get '[Core.OctetStream] Core.Stream

-- | Downloads a report file encoded in UTF-8.
--
-- /See:/ 'newDoubleClickSearchReportsGetFile' smart constructor.
data DoubleClickSearchReportsGetFile = DoubleClickSearchReportsGetFile
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The index of the report fragment to download.
    reportFragment :: Core.Int32,
    -- | ID of the report.
    reportId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DoubleClickSearchReportsGetFile' with the minimum fields required to make a request.
newDoubleClickSearchReportsGetFile ::
  -- |  The index of the report fragment to download. See 'reportFragment'.
  Core.Int32 ->
  -- |  ID of the report. See 'reportId'.
  Core.Text ->
  DoubleClickSearchReportsGetFile
newDoubleClickSearchReportsGetFile reportFragment reportId =
  DoubleClickSearchReportsGetFile
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      reportFragment = reportFragment,
      reportId = reportId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DoubleClickSearchReportsGetFile
  where
  type Rs DoubleClickSearchReportsGetFile = ()
  type
    Scopes DoubleClickSearchReportsGetFile =
      '[Doubleclicksearch'FullControl]
  requestClient DoubleClickSearchReportsGetFile {..} =
    go
      reportId
      reportFragment
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      doubleClickSearchService
    where
      go Core.:<|> _ =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DoubleClickSearchReportsGetFileResource
          )
          Core.mempty

instance
  Core.GoogleRequest
    (Core.MediaDownload DoubleClickSearchReportsGetFile)
  where
  type
    Rs
      (Core.MediaDownload DoubleClickSearchReportsGetFile) =
      Core.Stream
  type
    Scopes
      (Core.MediaDownload DoubleClickSearchReportsGetFile) =
      Core.Scopes DoubleClickSearchReportsGetFile
  requestClient
    ( Core.MediaDownload
        DoubleClickSearchReportsGetFile {..}
      ) =
      go
        reportId
        reportFragment
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltMedia)
        doubleClickSearchService
      where
        _ Core.:<|> go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy DoubleClickSearchReportsGetFileResource
            )
            Core.mempty
