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
-- Module      : Gogol.AdExchangeBuyer2.Accounts.Proposals.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a proposal given its ID. The proposal is returned at its head revision.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.proposals.get@.
module Gogol.AdExchangeBuyer2.Accounts.Proposals.Get
    (
    -- * Resource
      AdExchangeBuyer2AccountsProposalsGetResource

    -- ** Constructing a Request
    , newAdExchangeBuyer2AccountsProposalsGet
    , AdExchangeBuyer2AccountsProposalsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AdExchangeBuyer2.Types

-- | A resource alias for @adexchangebuyer2.accounts.proposals.get@ method which the
-- 'AdExchangeBuyer2AccountsProposalsGet' request conforms to.
type AdExchangeBuyer2AccountsProposalsGetResource =
     "v2beta1" Core.:>
       "accounts" Core.:>
         Core.Capture "accountId" Core.Text Core.:>
           "proposals" Core.:>
             Core.Capture "proposalId" Core.Text Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] Proposal

-- | Gets a proposal given its ID. The proposal is returned at its head revision.
--
-- /See:/ 'newAdExchangeBuyer2AccountsProposalsGet' smart constructor.
data AdExchangeBuyer2AccountsProposalsGet = AdExchangeBuyer2AccountsProposalsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Account ID of the buyer.
    , accountId :: Core.Text
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The unique ID of the proposal
    , proposalId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyer2AccountsProposalsGet' with the minimum fields required to make a request.
newAdExchangeBuyer2AccountsProposalsGet 
    ::  Core.Text
       -- ^  Account ID of the buyer. See 'accountId'.
    -> Core.Text
       -- ^  The unique ID of the proposal See 'proposalId'.
    -> AdExchangeBuyer2AccountsProposalsGet
newAdExchangeBuyer2AccountsProposalsGet accountId proposalId =
  AdExchangeBuyer2AccountsProposalsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , accountId = accountId
    , callback = Core.Nothing
    , proposalId = proposalId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AdExchangeBuyer2AccountsProposalsGet
         where
        type Rs AdExchangeBuyer2AccountsProposalsGet =
             Proposal
        type Scopes AdExchangeBuyer2AccountsProposalsGet =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient
          AdExchangeBuyer2AccountsProposalsGet{..}
          = go accountId proposalId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              adExchangeBuyer2Service
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AdExchangeBuyer2AccountsProposalsGetResource)
                      Core.mempty

