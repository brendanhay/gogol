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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Proposals.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the given proposal. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.proposals.patch@.
module Network.Google.Resource.AdExchangeBuyer.Proposals.Patch
    (
    -- * REST Resource
      ProposalsPatchResource

    -- * Creating a Request
    , proposalsPatch
    , ProposalsPatch

    -- * Request Lenses
    , ppUpdateAction
    , ppRevisionNumber
    , ppPayload
    , ppProposalId
    ) where

import Network.Google.AdExchangeBuyer.Types
import Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.proposals.patch@ method which the
-- 'ProposalsPatch' request conforms to.
type ProposalsPatchResource =
     "adexchangebuyer" :>
       "v1.4" :>
         "proposals" :>
           Capture "proposalId" Text :>
             Capture "revisionNumber" (Textual Int64) :>
               Capture "updateAction" ProposalsPatchUpdateAction :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Proposal :> Patch '[JSON] Proposal

-- | Update the given proposal. This method supports patch semantics.
--
-- /See:/ 'proposalsPatch' smart constructor.
data ProposalsPatch =
  ProposalsPatch'
    { _ppUpdateAction :: !ProposalsPatchUpdateAction
    , _ppRevisionNumber :: !(Textual Int64)
    , _ppPayload :: !Proposal
    , _ppProposalId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProposalsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppUpdateAction'
--
-- * 'ppRevisionNumber'
--
-- * 'ppPayload'
--
-- * 'ppProposalId'
proposalsPatch
    :: ProposalsPatchUpdateAction -- ^ 'ppUpdateAction'
    -> Int64 -- ^ 'ppRevisionNumber'
    -> Proposal -- ^ 'ppPayload'
    -> Text -- ^ 'ppProposalId'
    -> ProposalsPatch
proposalsPatch pPpUpdateAction_ pPpRevisionNumber_ pPpPayload_ pPpProposalId_ =
  ProposalsPatch'
    { _ppUpdateAction = pPpUpdateAction_
    , _ppRevisionNumber = _Coerce # pPpRevisionNumber_
    , _ppPayload = pPpPayload_
    , _ppProposalId = pPpProposalId_
    }


-- | The proposed action to take on the proposal. This field is required and
-- it must be set when updating a proposal.
ppUpdateAction :: Lens' ProposalsPatch ProposalsPatchUpdateAction
ppUpdateAction
  = lens _ppUpdateAction
      (\ s a -> s{_ppUpdateAction = a})

-- | The last known revision number to update. If the head revision in the
-- marketplace database has since changed, an error will be thrown. The
-- caller should then fetch the latest proposal at head revision and retry
-- the update at that revision.
ppRevisionNumber :: Lens' ProposalsPatch Int64
ppRevisionNumber
  = lens _ppRevisionNumber
      (\ s a -> s{_ppRevisionNumber = a})
      . _Coerce

-- | Multipart request metadata.
ppPayload :: Lens' ProposalsPatch Proposal
ppPayload
  = lens _ppPayload (\ s a -> s{_ppPayload = a})

-- | The proposal id to update.
ppProposalId :: Lens' ProposalsPatch Text
ppProposalId
  = lens _ppProposalId (\ s a -> s{_ppProposalId = a})

instance GoogleRequest ProposalsPatch where
        type Rs ProposalsPatch = Proposal
        type Scopes ProposalsPatch =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient ProposalsPatch'{..}
          = go _ppProposalId _ppRevisionNumber _ppUpdateAction
              (Just AltJSON)
              _ppPayload
              adExchangeBuyerService
          where go
                  = buildClient (Proxy :: Proxy ProposalsPatchResource)
                      mempty
