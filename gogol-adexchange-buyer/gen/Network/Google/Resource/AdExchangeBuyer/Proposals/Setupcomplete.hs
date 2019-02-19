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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Proposals.Setupcomplete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the given proposal to indicate that setup has been completed.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.proposals.setupcomplete@.
module Network.Google.Resource.AdExchangeBuyer.Proposals.Setupcomplete
    (
    -- * REST Resource
      ProposalsSetupcompleteResource

    -- * Creating a Request
    , proposalsSetupcomplete
    , ProposalsSetupcomplete

    -- * Request Lenses
    , psProposalId
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.proposals.setupcomplete@ method which the
-- 'ProposalsSetupcomplete' request conforms to.
type ProposalsSetupcompleteResource =
     "adexchangebuyer" :>
       "v1.4" :>
         "proposals" :>
           Capture "proposalId" Text :>
             "setupcomplete" :>
               QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Update the given proposal to indicate that setup has been completed.
--
-- /See:/ 'proposalsSetupcomplete' smart constructor.
newtype ProposalsSetupcomplete =
  ProposalsSetupcomplete'
    { _psProposalId :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProposalsSetupcomplete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psProposalId'
proposalsSetupcomplete
    :: Text -- ^ 'psProposalId'
    -> ProposalsSetupcomplete
proposalsSetupcomplete pPsProposalId_ =
  ProposalsSetupcomplete' {_psProposalId = pPsProposalId_}


-- | The proposal id for which the setup is complete
psProposalId :: Lens' ProposalsSetupcomplete Text
psProposalId
  = lens _psProposalId (\ s a -> s{_psProposalId = a})

instance GoogleRequest ProposalsSetupcomplete where
        type Rs ProposalsSetupcomplete = ()
        type Scopes ProposalsSetupcomplete =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient ProposalsSetupcomplete'{..}
          = go _psProposalId (Just AltJSON)
              adExchangeBuyerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProposalsSetupcompleteResource)
                      mempty
