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
-- Module      : Network.Google.AdSense.Accounts.Reports.Saved.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists saved reports.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.accounts.reports.saved.list@.
module Network.Google.AdSense.Accounts.Reports.Saved.List
  ( -- * Resource
    AdSenseAccountsReportsSavedListResource,

    -- ** Constructing a Request
    newAdSenseAccountsReportsSavedList,
    AdSenseAccountsReportsSavedList,
  )
where

import Network.Google.AdSense.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @adsense.accounts.reports.saved.list@ method which the
-- 'AdSenseAccountsReportsSavedList' request conforms to.
type AdSenseAccountsReportsSavedListResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "reports"
    Core.:> "saved"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListSavedReportsResponse

-- | Lists saved reports.
--
-- /See:/ 'newAdSenseAccountsReportsSavedList' smart constructor.
data AdSenseAccountsReportsSavedList = AdSenseAccountsReportsSavedList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of reports to include in the response, used for paging. If unspecified, at most 10000 reports will be returned. The maximum value is 10000; values above 10000 will be coerced to 10000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A page token, received from a previous @ListPayments@ call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to @ListPayments@ must match the call that provided the page token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The account which owns the collection of reports. Format: accounts\/{account}
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseAccountsReportsSavedList' with the minimum fields required to make a request.
newAdSenseAccountsReportsSavedList ::
  -- |  Required. The account which owns the collection of reports. Format: accounts\/{account} See 'parent'.
  Core.Text ->
  AdSenseAccountsReportsSavedList
newAdSenseAccountsReportsSavedList parent =
  AdSenseAccountsReportsSavedList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AdSenseAccountsReportsSavedList
  where
  type
    Rs AdSenseAccountsReportsSavedList =
      ListSavedReportsResponse
  type
    Scopes AdSenseAccountsReportsSavedList =
      '[ "https://www.googleapis.com/auth/adsense",
         "https://www.googleapis.com/auth/adsense.readonly"
       ]
  requestClient AdSenseAccountsReportsSavedList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      adSenseService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdSenseAccountsReportsSavedListResource
          )
          Core.mempty
