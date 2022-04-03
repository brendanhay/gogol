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
-- Module      : Gogol.AdExchangeBuyer2.Accounts.Creatives.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists creatives.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.creatives.list@.
module Gogol.AdExchangeBuyer2.Accounts.Creatives.List
  ( -- * Resource
    AdExchangeBuyer2AccountsCreativesListResource,

    -- ** Constructing a Request
    AdExchangeBuyer2AccountsCreativesList (..),
    newAdExchangeBuyer2AccountsCreativesList,
  )
where

import Gogol.AdExchangeBuyer2.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adexchangebuyer2.accounts.creatives.list@ method which the
-- 'AdExchangeBuyer2AccountsCreativesList' request conforms to.
type AdExchangeBuyer2AccountsCreativesListResource =
  "v2beta1"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "creatives"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "query" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListCreativesResponse

-- | Lists creatives.
--
-- /See:/ 'newAdExchangeBuyer2AccountsCreativesList' smart constructor.
data AdExchangeBuyer2AccountsCreativesList = AdExchangeBuyer2AccountsCreativesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | The account to list the creatives from. Specify \"-\" to list all creatives the current user has access to.
    accountId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Requested page size. The server may return fewer creatives than requested (due to timeout constraint) even if more are available via another call. If unspecified, server will pick an appropriate default. Acceptable values are 1 to 1000, inclusive.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A token identifying a page of results the server should return. Typically, this is the value of ListCreativesResponse.next/page/token returned from the previous call to \'ListCreatives\' method.
    pageToken :: (Core.Maybe Core.Text),
    -- | An optional query string to filter creatives. If no filter is specified, all active creatives will be returned. Supported queries are: - accountId=/account/id/string/ - creativeId=/creative/id/string/ - dealsStatus: {approved, conditionally/approved, disapproved, not/checked} - openAuctionStatus: {approved, conditionally/approved, disapproved, not/checked} - attribute: {a numeric attribute from the list of attributes} - disapprovalReason: {a reason from DisapprovalReason} Example: \'accountId=12345 AND (dealsStatus:disapproved AND disapprovalReason:unacceptable_content) OR attribute:47\'
    query :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyer2AccountsCreativesList' with the minimum fields required to make a request.
newAdExchangeBuyer2AccountsCreativesList ::
  -- |  The account to list the creatives from. Specify \"-\" to list all creatives the current user has access to. See 'accountId'.
  Core.Text ->
  AdExchangeBuyer2AccountsCreativesList
newAdExchangeBuyer2AccountsCreativesList accountId =
  AdExchangeBuyer2AccountsCreativesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      accountId = accountId,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      query = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AdExchangeBuyer2AccountsCreativesList
  where
  type
    Rs AdExchangeBuyer2AccountsCreativesList =
      ListCreativesResponse
  type
    Scopes AdExchangeBuyer2AccountsCreativesList =
      '[Adexchange'Buyer]
  requestClient
    AdExchangeBuyer2AccountsCreativesList {..} =
      go
        accountId
        xgafv
        accessToken
        callback
        pageSize
        pageToken
        query
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        adExchangeBuyer2Service
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AdExchangeBuyer2AccountsCreativesListResource
            )
            Core.mempty
