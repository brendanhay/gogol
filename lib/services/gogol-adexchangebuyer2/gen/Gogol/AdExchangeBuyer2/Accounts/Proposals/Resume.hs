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
-- Module      : Gogol.AdExchangeBuyer2.Accounts.Proposals.Resume
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the given proposal to resume serving. This method will set the @DealServingMetadata.DealPauseStatus.has_buyer_paused@ bit to false for all deals in the proposal. Note that if the @has_seller_paused@ bit is also set, serving will not resume until the seller also resumes. It is a no-op to resume an already-running proposal. It is an error to call ResumeProposal for a proposal that is not finalized or renegotiating.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.proposals.resume@.
module Gogol.AdExchangeBuyer2.Accounts.Proposals.Resume
    (
    -- * Resource
      AdExchangeBuyer2AccountsProposalsResumeResource

    -- ** Constructing a Request
    , AdExchangeBuyer2AccountsProposalsResume (..)
    , newAdExchangeBuyer2AccountsProposalsResume
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AdExchangeBuyer2.Types

-- | A resource alias for @adexchangebuyer2.accounts.proposals.resume@ method which the
-- 'AdExchangeBuyer2AccountsProposalsResume' request conforms to.
type AdExchangeBuyer2AccountsProposalsResumeResource
     =
     "v2beta1" Core.:>
       "accounts" Core.:>
         Core.Capture "accountId" Core.Text Core.:>
           "proposals" Core.:>
             Core.CaptureMode "proposalId" "resume" Core.Text
               Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON] ResumeProposalRequest
                             Core.:> Core.Post '[Core.JSON] Proposal

-- | Update the given proposal to resume serving. This method will set the @DealServingMetadata.DealPauseStatus.has_buyer_paused@ bit to false for all deals in the proposal. Note that if the @has_seller_paused@ bit is also set, serving will not resume until the seller also resumes. It is a no-op to resume an already-running proposal. It is an error to call ResumeProposal for a proposal that is not finalized or renegotiating.
--
-- /See:/ 'newAdExchangeBuyer2AccountsProposalsResume' smart constructor.
data AdExchangeBuyer2AccountsProposalsResume = AdExchangeBuyer2AccountsProposalsResume
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
    , payload :: ResumeProposalRequest
      -- | The ID of the proposal to resume.
    , proposalId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyer2AccountsProposalsResume' with the minimum fields required to make a request.
newAdExchangeBuyer2AccountsProposalsResume 
    ::  Core.Text
       -- ^  Account ID of the buyer. See 'accountId'.
    -> ResumeProposalRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  The ID of the proposal to resume. See 'proposalId'.
    -> AdExchangeBuyer2AccountsProposalsResume
newAdExchangeBuyer2AccountsProposalsResume accountId payload proposalId =
  AdExchangeBuyer2AccountsProposalsResume
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
           AdExchangeBuyer2AccountsProposalsResume
         where
        type Rs AdExchangeBuyer2AccountsProposalsResume =
             Proposal
        type Scopes AdExchangeBuyer2AccountsProposalsResume =
             '[Adexchange'Buyer]
        requestClient
          AdExchangeBuyer2AccountsProposalsResume{..}
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
                           AdExchangeBuyer2AccountsProposalsResumeResource)
                      Core.mempty

