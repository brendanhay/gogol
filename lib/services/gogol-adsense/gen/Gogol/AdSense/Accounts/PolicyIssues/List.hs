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
-- Module      : Gogol.AdSense.Accounts.PolicyIssues.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the policy issues where the specified account is involved, both directly and through any AFP child accounts.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.accounts.policyIssues.list@.
module Gogol.AdSense.Accounts.PolicyIssues.List
  ( -- * Resource
    AdSenseAccountsPolicyIssuesListResource,

    -- ** Constructing a Request
    AdSenseAccountsPolicyIssuesList (..),
    newAdSenseAccountsPolicyIssuesList,
  )
where

import Gogol.AdSense.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @adsense.accounts.policyIssues.list@ method which the
-- 'AdSenseAccountsPolicyIssuesList' request conforms to.
type AdSenseAccountsPolicyIssuesListResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "policyIssues"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListPolicyIssuesResponse

-- | Lists all the policy issues where the specified account is involved, both directly and through any AFP child accounts.
--
-- /See:/ 'newAdSenseAccountsPolicyIssuesList' smart constructor.
data AdSenseAccountsPolicyIssuesList = AdSenseAccountsPolicyIssuesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of policy issues to include in the response, used for paging. If unspecified, at most 10000 policy issues will be returned. The maximum value is 10000; values above 10000 will be coerced to 10000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A page token, received from a previous @ListPolicyIssues@ call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to @ListPolicyIssues@ must match the call that provided the page token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The account for which policy issues are being retrieved. Format: accounts\/{account}
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseAccountsPolicyIssuesList' with the minimum fields required to make a request.
newAdSenseAccountsPolicyIssuesList ::
  -- |  Required. The account for which policy issues are being retrieved. Format: accounts\/{account} See 'parent'.
  Core.Text ->
  AdSenseAccountsPolicyIssuesList
newAdSenseAccountsPolicyIssuesList parent =
  AdSenseAccountsPolicyIssuesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AdSenseAccountsPolicyIssuesList where
  type Rs AdSenseAccountsPolicyIssuesList = ListPolicyIssuesResponse
  type
    Scopes AdSenseAccountsPolicyIssuesList =
      '[Adsense'FullControl, Adsense'Readonly]
  requestClient AdSenseAccountsPolicyIssuesList {..} =
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
          (Core.Proxy :: Core.Proxy AdSenseAccountsPolicyIssuesListResource)
          Core.mempty
