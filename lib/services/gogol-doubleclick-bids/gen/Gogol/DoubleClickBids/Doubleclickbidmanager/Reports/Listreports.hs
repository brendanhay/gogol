{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.DoubleClickBids.Doubleclickbidmanager.Reports.Listreports
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves stored reports.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference> for @doubleclickbidmanager.reports.listreports@.
module Gogol.DoubleClickBids.Doubleclickbidmanager.Reports.Listreports
    (
    -- * Resource
      DoubleclickbidmanagerReportsListreportsResource

    -- ** Constructing a Request
    , newDoubleclickbidmanagerReportsListreports
    , DoubleclickbidmanagerReportsListreports
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DoubleClickBids.Types

-- | A resource alias for @doubleclickbidmanager.reports.listreports@ method which the
-- 'DoubleclickbidmanagerReportsListreports' request conforms to.
type DoubleclickbidmanagerReportsListreportsResource
     =
     "doubleclickbidmanager" Core.:>
       "v1.1" Core.:>
         "queries" Core.:>
           Core.Capture "queryId" Core.Int64 Core.:>
             "reports" Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "pageSize" Core.Int32 Core.:>
                       Core.QueryParam "pageToken" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Get '[Core.JSON] ListReportsResponse

-- | Retrieves stored reports.
--
-- /See:/ 'newDoubleclickbidmanagerReportsListreports' smart constructor.
data DoubleclickbidmanagerReportsListreports = DoubleclickbidmanagerReportsListreports
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Maximum number of results per page. Must be between 1 and 100. Defaults to 100 if unspecified.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Optional pagination token.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Query ID with which the reports are associated.
    , queryId :: Core.Int64
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DoubleclickbidmanagerReportsListreports' with the minimum fields required to make a request.
newDoubleclickbidmanagerReportsListreports 
    ::  Core.Int64
       -- ^  Query ID with which the reports are associated. See 'queryId'.
    -> DoubleclickbidmanagerReportsListreports
newDoubleclickbidmanagerReportsListreports queryId =
  DoubleclickbidmanagerReportsListreports
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , queryId = queryId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DoubleclickbidmanagerReportsListreports
         where
        type Rs DoubleclickbidmanagerReportsListreports =
             ListReportsResponse
        type Scopes DoubleclickbidmanagerReportsListreports =
             '["https://www.googleapis.com/auth/doubleclickbidmanager"]
        requestClient
          DoubleclickbidmanagerReportsListreports{..}
          = go queryId xgafv accessToken callback pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              doubleClickBidsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DoubleclickbidmanagerReportsListreportsResource)
                      Core.mempty

