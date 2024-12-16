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
-- Module      : Gogol.AdExchangeBuyer2.Accounts.FinalizedProposals.Resume
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update given deals to resume serving. This method will set the @DealServingMetadata.DealPauseStatus.has_buyer_paused@ bit to false for all listed deals in the request. Currently, this method only applies to PG and PD deals. For PA deals, call accounts.proposals.resume endpoint. It is a no-op to resume running deals or deals paused by the other party. It is an error to call ResumeProposalDeals for deals which are not part of the proposal of proposal_id or which are not finalized or renegotiating.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.finalizedProposals.resume@.
module Gogol.AdExchangeBuyer2.Accounts.FinalizedProposals.Resume
    (
    -- * Resource
      AdExchangeBuyer2AccountsFinalizedProposalsResumeResource

    -- ** Constructing a Request
    , AdExchangeBuyer2AccountsFinalizedProposalsResume (..)
    , newAdExchangeBuyer2AccountsFinalizedProposalsResume
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AdExchangeBuyer2.Types

-- | A resource alias for @adexchangebuyer2.accounts.finalizedProposals.resume@ method which the
-- 'AdExchangeBuyer2AccountsFinalizedProposalsResume' request conforms to.
type AdExchangeBuyer2AccountsFinalizedProposalsResumeResource
     =
     "v2beta1" Core.:>
       "accounts" Core.:>
         Core.Capture "accountId" Core.Text Core.:>
           "finalizedProposals" Core.:>
             Core.CaptureMode "proposalId" "resume" Core.Text
               Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON] ResumeProposalDealsRequest
                             Core.:> Core.Post '[Core.JSON] Proposal

-- | Update given deals to resume serving. This method will set the @DealServingMetadata.DealPauseStatus.has_buyer_paused@ bit to false for all listed deals in the request. Currently, this method only applies to PG and PD deals. For PA deals, call accounts.proposals.resume endpoint. It is a no-op to resume running deals or deals paused by the other party. It is an error to call ResumeProposalDeals for deals which are not part of the proposal of proposal_id or which are not finalized or renegotiating.
--
-- /See:/ 'newAdExchangeBuyer2AccountsFinalizedProposalsResume' smart constructor.
data AdExchangeBuyer2AccountsFinalizedProposalsResume = AdExchangeBuyer2AccountsFinalizedProposalsResume
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
    , payload :: ResumeProposalDealsRequest
      -- | The proposal_id of the proposal containing the deals.
    , proposalId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyer2AccountsFinalizedProposalsResume' with the minimum fields required to make a request.
newAdExchangeBuyer2AccountsFinalizedProposalsResume 
    ::  Core.Text
       -- ^  Account ID of the buyer. See 'accountId'.
    -> ResumeProposalDealsRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  The proposal_id of the proposal containing the deals. See 'proposalId'.
    -> AdExchangeBuyer2AccountsFinalizedProposalsResume
newAdExchangeBuyer2AccountsFinalizedProposalsResume accountId payload proposalId =
  AdExchangeBuyer2AccountsFinalizedProposalsResume
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
           AdExchangeBuyer2AccountsFinalizedProposalsResume
         where
        type Rs
               AdExchangeBuyer2AccountsFinalizedProposalsResume
             = Proposal
        type Scopes
               AdExchangeBuyer2AccountsFinalizedProposalsResume
             = '[Adexchange'Buyer]
        requestClient
          AdExchangeBuyer2AccountsFinalizedProposalsResume{..}
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
                           AdExchangeBuyer2AccountsFinalizedProposalsResumeResource)
                      Core.mempty

