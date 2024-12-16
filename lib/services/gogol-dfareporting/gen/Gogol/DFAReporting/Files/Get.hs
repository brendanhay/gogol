{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.DFAReporting.Files.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a report file by its report ID and file ID. This method supports media download.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.files.get@.
module Gogol.DFAReporting.Files.Get
    (
    -- * Resource
      DFAReportingFilesGetResource

    -- ** Constructing a Request
    , DFAReportingFilesGet (..)
    , newDFAReportingFilesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DFAReporting.Types

-- | A resource alias for @dfareporting.files.get@ method which the
-- 'DFAReportingFilesGet' request conforms to.
type DFAReportingFilesGetResource =
     "dfareporting" Core.:>
       "v4" Core.:>
         "reports" Core.:>
           Core.Capture "reportId" Core.Int64 Core.:>
             "files" Core.:>
               Core.Capture "fileId" Core.Int64 Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] File
       Core.:<|>
       "dfareporting" Core.:>
         "v4" Core.:>
           "reports" Core.:>
             Core.Capture "reportId" Core.Int64 Core.:>
               "files" Core.:>
                 Core.Capture "fileId" Core.Int64 Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltMedia Core.:>
                               Core.Get '[Core.OctetStream] Core.Stream

-- | Retrieves a report file by its report ID and file ID. This method supports media download.
--
-- /See:/ 'newDFAReportingFilesGet' smart constructor.
data DFAReportingFilesGet = DFAReportingFilesGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The ID of the report file.
    , fileId :: Core.Int64
      -- | The ID of the report.
    , reportId :: Core.Int64
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingFilesGet' with the minimum fields required to make a request.
newDFAReportingFilesGet 
    ::  Core.Int64
       -- ^  The ID of the report file. See 'fileId'.
    -> Core.Int64
       -- ^  The ID of the report. See 'reportId'.
    -> DFAReportingFilesGet
newDFAReportingFilesGet fileId reportId =
  DFAReportingFilesGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , fileId = fileId
    , reportId = reportId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DFAReportingFilesGet
         where
        type Rs DFAReportingFilesGet = File
        type Scopes DFAReportingFilesGet =
             '[Dfareporting'FullControl]
        requestClient DFAReportingFilesGet{..}
          = go reportId fileId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dFAReportingService
          where go Core.:<|> _
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DFAReportingFilesGetResource)
                      Core.mempty

instance Core.GoogleRequest
           (Core.MediaDownload DFAReportingFilesGet)
         where
        type Rs (Core.MediaDownload DFAReportingFilesGet) =
             Core.Stream
        type Scopes (Core.MediaDownload DFAReportingFilesGet)
             = Core.Scopes DFAReportingFilesGet
        requestClient
          (Core.MediaDownload DFAReportingFilesGet{..})
          = go reportId fileId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltMedia)
              dFAReportingService
          where _ Core.:<|> go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DFAReportingFilesGetResource)
                      Core.mempty

