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
-- Module      : Gogol.AdExchangeBuyer2.Accounts.FinalizedProposals.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List finalized proposals, regardless if a proposal is being renegotiated. A filter expression (PQL query) may be specified to filter the results. The notes will not be returned.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.finalizedProposals.list@.
module Gogol.AdExchangeBuyer2.Accounts.FinalizedProposals.List
  ( -- * Resource
    AdExchangeBuyer2AccountsFinalizedProposalsListResource,

    -- ** Constructing a Request
    newAdExchangeBuyer2AccountsFinalizedProposalsList,
    AdExchangeBuyer2AccountsFinalizedProposalsList,
  )
where

import Gogol.AdExchangeBuyer2.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adexchangebuyer2.accounts.finalizedProposals.list@ method which the
-- 'AdExchangeBuyer2AccountsFinalizedProposalsList' request conforms to.
type AdExchangeBuyer2AccountsFinalizedProposalsListResource =
  "v2beta1"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "finalizedProposals"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam
              "filterSyntax"
              AccountsFinalizedProposalsListFilterSyntax
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListProposalsResponse

-- | List finalized proposals, regardless if a proposal is being renegotiated. A filter expression (PQL query) may be specified to filter the results. The notes will not be returned.
--
-- /See:/ 'newAdExchangeBuyer2AccountsFinalizedProposalsList' smart constructor.
data AdExchangeBuyer2AccountsFinalizedProposalsList = AdExchangeBuyer2AccountsFinalizedProposalsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Account ID of the buyer.
    accountId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | An optional PQL filter query used to query for proposals. Nested repeated fields, such as proposal.deals.targetingCriterion, cannot be filtered.
    filter :: (Core.Maybe Core.Text),
    -- | Syntax the filter is written in. Current implementation defaults to PQL but in the future it will be LIST_FILTER.
    filterSyntax :: (Core.Maybe AccountsFinalizedProposalsListFilterSyntax),
    -- | Requested page size. The server may return fewer results than requested. If unspecified, the server will pick an appropriate default.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The page token as returned from ListProposalsResponse.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyer2AccountsFinalizedProposalsList' with the minimum fields required to make a request.
newAdExchangeBuyer2AccountsFinalizedProposalsList ::
  -- |  Account ID of the buyer. See 'accountId'.
  Core.Text ->
  AdExchangeBuyer2AccountsFinalizedProposalsList
newAdExchangeBuyer2AccountsFinalizedProposalsList accountId =
  AdExchangeBuyer2AccountsFinalizedProposalsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      accountId = accountId,
      callback = Core.Nothing,
      filter = Core.Nothing,
      filterSyntax = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AdExchangeBuyer2AccountsFinalizedProposalsList
  where
  type
    Rs
      AdExchangeBuyer2AccountsFinalizedProposalsList =
      ListProposalsResponse
  type
    Scopes
      AdExchangeBuyer2AccountsFinalizedProposalsList =
      '["https://www.googleapis.com/auth/adexchange.buyer"]
  requestClient
    AdExchangeBuyer2AccountsFinalizedProposalsList {..} =
      go
        accountId
        xgafv
        accessToken
        callback
        filter
        filterSyntax
        pageSize
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        adExchangeBuyer2Service
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AdExchangeBuyer2AccountsFinalizedProposalsListResource
            )
            Core.mempty
