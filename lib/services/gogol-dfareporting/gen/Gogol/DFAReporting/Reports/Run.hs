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
-- Module      : Gogol.DFAReporting.Reports.Run
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Runs a report.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.reports.run@.
module Gogol.DFAReporting.Reports.Run
    (
    -- * Resource
      DFAReportingReportsRunResource

    -- ** Constructing a Request
    , DFAReportingReportsRun (..)
    , newDFAReportingReportsRun
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DFAReporting.Types

-- | A resource alias for @dfareporting.reports.run@ method which the
-- 'DFAReportingReportsRun' request conforms to.
type DFAReportingReportsRunResource =
     "dfareporting" Core.:>
       "v4" Core.:>
         "userprofiles" Core.:>
           Core.Capture "profileId" Core.Int64 Core.:>
             "reports" Core.:>
               Core.Capture "reportId" Core.Int64 Core.:>
                 "run" Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "synchronous" Core.Bool Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.Post '[Core.JSON] File

-- | Runs a report.
--
-- /See:/ 'newDFAReportingReportsRun' smart constructor.
data DFAReportingReportsRun = DFAReportingReportsRun
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The Campaign Manager 360 user profile ID.
    , profileId :: Core.Int64
      -- | The ID of the report.
    , reportId :: Core.Int64
      -- | If set and true, tries to run the report synchronously.
    , synchronous :: Core.Bool
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingReportsRun' with the minimum fields required to make a request.
newDFAReportingReportsRun 
    ::  Core.Int64
       -- ^  The Campaign Manager 360 user profile ID. See 'profileId'.
    -> Core.Int64
       -- ^  The ID of the report. See 'reportId'.
    -> DFAReportingReportsRun
newDFAReportingReportsRun profileId reportId =
  DFAReportingReportsRun
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , profileId = profileId
    , reportId = reportId
    , synchronous = Core.False
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DFAReportingReportsRun
         where
        type Rs DFAReportingReportsRun = File
        type Scopes DFAReportingReportsRun =
             '[Dfareporting'FullControl]
        requestClient DFAReportingReportsRun{..}
          = go profileId reportId xgafv accessToken callback
              (Core.Just synchronous)
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dFAReportingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DFAReportingReportsRunResource)
                      Core.mempty

