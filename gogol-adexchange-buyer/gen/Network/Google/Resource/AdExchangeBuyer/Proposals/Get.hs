{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.AdExchangeBuyer.Proposals.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get a proposal given its id
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.proposals.get@.
module Network.Google.Resource.AdExchangeBuyer.Proposals.Get
    (
    -- * REST Resource
      ProposalsGetResource

    -- * Creating a Request
    , proposalsGet
    , ProposalsGet

    -- * Request Lenses
    , pgProposalId
    ) where

import Network.Google.AdExchangeBuyer.Types
import Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.proposals.get@ method which the
-- 'ProposalsGet' request conforms to.
type ProposalsGetResource =
     "adexchangebuyer" :>
       "v1.4" :>
         "proposals" :>
           Capture "proposalId" Text :>
             QueryParam "alt" AltJSON :> Get '[JSON] Proposal

-- | Get a proposal given its id
--
-- /See:/ 'proposalsGet' smart constructor.
newtype ProposalsGet =
  ProposalsGet'
    { _pgProposalId :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProposalsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgProposalId'
proposalsGet
    :: Text -- ^ 'pgProposalId'
    -> ProposalsGet
proposalsGet pPgProposalId_ = ProposalsGet' {_pgProposalId = pPgProposalId_}


-- | Id of the proposal to retrieve.
pgProposalId :: Lens' ProposalsGet Text
pgProposalId
  = lens _pgProposalId (\ s a -> s{_pgProposalId = a})

instance GoogleRequest ProposalsGet where
        type Rs ProposalsGet = Proposal
        type Scopes ProposalsGet =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient ProposalsGet'{..}
          = go _pgProposalId (Just AltJSON)
              adExchangeBuyerService
          where go
                  = buildClient (Proxy :: Proxy ProposalsGetResource)
                      mempty
