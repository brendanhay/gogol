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
-- Module      : Gogol.AdExchangeBuyer2.Accounts.Proposals.CancelNegotiation
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancel an ongoing negotiation on a proposal. This does not cancel or end serving for the deals if the proposal has been finalized, but only cancels a negotiation unilaterally.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.proposals.cancelNegotiation@.
module Gogol.AdExchangeBuyer2.Accounts.Proposals.CancelNegotiation
    (
    -- * Resource
      AdExchangeBuyer2AccountsProposalsCancelNegotiationResource

    -- ** Constructing a Request
    , newAdExchangeBuyer2AccountsProposalsCancelNegotiation
    , AdExchangeBuyer2AccountsProposalsCancelNegotiation
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AdExchangeBuyer2.Types

-- | A resource alias for @adexchangebuyer2.accounts.proposals.cancelNegotiation@ method which the
-- 'AdExchangeBuyer2AccountsProposalsCancelNegotiation' request conforms to.
type AdExchangeBuyer2AccountsProposalsCancelNegotiationResource
     =
     "v2beta1" Core.:>
       "accounts" Core.:>
         Core.Capture "accountId" Core.Text Core.:>
           "proposals" Core.:>
             Core.CaptureMode "proposalId" "cancelNegotiation"
               Core.Text
               Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON] CancelNegotiationRequest
                             Core.:> Core.Post '[Core.JSON] Proposal

-- | Cancel an ongoing negotiation on a proposal. This does not cancel or end serving for the deals if the proposal has been finalized, but only cancels a negotiation unilaterally.
--
-- /See:/ 'newAdExchangeBuyer2AccountsProposalsCancelNegotiation' smart constructor.
data AdExchangeBuyer2AccountsProposalsCancelNegotiation = AdExchangeBuyer2AccountsProposalsCancelNegotiation
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Account ID of the buyer.
    , accountId :: Core.Text
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: CancelNegotiationRequest
      -- | The ID of the proposal to cancel negotiation for.
    , proposalId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyer2AccountsProposalsCancelNegotiation' with the minimum fields required to make a request.
newAdExchangeBuyer2AccountsProposalsCancelNegotiation 
    ::  Core.Text
       -- ^  Account ID of the buyer. See 'accountId'.
    -> CancelNegotiationRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  The ID of the proposal to cancel negotiation for. See 'proposalId'.
    -> AdExchangeBuyer2AccountsProposalsCancelNegotiation
newAdExchangeBuyer2AccountsProposalsCancelNegotiation accountId payload proposalId =
  AdExchangeBuyer2AccountsProposalsCancelNegotiation
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , accountId = accountId
    , callback = Core.Nothing
    , payload = payload
    , proposalId = proposalId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AdExchangeBuyer2AccountsProposalsCancelNegotiation
         where
        type Rs
               AdExchangeBuyer2AccountsProposalsCancelNegotiation
             = Proposal
        type Scopes
               AdExchangeBuyer2AccountsProposalsCancelNegotiation
             =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient
          AdExchangeBuyer2AccountsProposalsCancelNegotiation{..}
          = go accountId proposalId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              adExchangeBuyer2Service
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AdExchangeBuyer2AccountsProposalsCancelNegotiationResource)
                      Core.mempty

