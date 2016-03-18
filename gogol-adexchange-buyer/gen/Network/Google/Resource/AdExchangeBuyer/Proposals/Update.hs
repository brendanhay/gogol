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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Proposals.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the given proposal
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.proposals.update@.
module Network.Google.Resource.AdExchangeBuyer.Proposals.Update
    (
    -- * REST Resource
      ProposalsUpdateResource

    -- * Creating a Request
    , proposalsUpdate
    , ProposalsUpdate

    -- * Request Lenses
    , puUpdateAction
    , puRevisionNumber
    , puPayload
    , puProposalId
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.proposals.update@ method which the
-- 'ProposalsUpdate' request conforms to.
type ProposalsUpdateResource =
     "adexchangebuyer" :>
       "v1.4" :>
         "proposals" :>
           Capture "proposalId" Text :>
             Capture "revisionNumber" (Textual Int64) :>
               Capture "updateAction" ProposalsUpdateUpdateAction :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Proposal :> Put '[JSON] Proposal

-- | Update the given proposal
--
-- /See:/ 'proposalsUpdate' smart constructor.
data ProposalsUpdate = ProposalsUpdate
    { _puUpdateAction   :: !ProposalsUpdateUpdateAction
    , _puRevisionNumber :: !(Textual Int64)
    , _puPayload        :: !Proposal
    , _puProposalId     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProposalsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puUpdateAction'
--
-- * 'puRevisionNumber'
--
-- * 'puPayload'
--
-- * 'puProposalId'
proposalsUpdate
    :: ProposalsUpdateUpdateAction -- ^ 'puUpdateAction'
    -> Int64 -- ^ 'puRevisionNumber'
    -> Proposal -- ^ 'puPayload'
    -> Text -- ^ 'puProposalId'
    -> ProposalsUpdate
proposalsUpdate pPuUpdateAction_ pPuRevisionNumber_ pPuPayload_ pPuProposalId_ =
    ProposalsUpdate
    { _puUpdateAction = pPuUpdateAction_
    , _puRevisionNumber = _Coerce # pPuRevisionNumber_
    , _puPayload = pPuPayload_
    , _puProposalId = pPuProposalId_
    }

-- | The proposed action to take on the proposal.
puUpdateAction :: Lens' ProposalsUpdate ProposalsUpdateUpdateAction
puUpdateAction
  = lens _puUpdateAction
      (\ s a -> s{_puUpdateAction = a})

-- | The last known revision number to update. If the head revision in the
-- marketplace database has since changed, an error will be thrown. The
-- caller should then fetch the latest proposal at head revision and retry
-- the update at that revision.
puRevisionNumber :: Lens' ProposalsUpdate Int64
puRevisionNumber
  = lens _puRevisionNumber
      (\ s a -> s{_puRevisionNumber = a})
      . _Coerce

-- | Multipart request metadata.
puPayload :: Lens' ProposalsUpdate Proposal
puPayload
  = lens _puPayload (\ s a -> s{_puPayload = a})

-- | The proposal id to update.
puProposalId :: Lens' ProposalsUpdate Text
puProposalId
  = lens _puProposalId (\ s a -> s{_puProposalId = a})

instance GoogleRequest ProposalsUpdate where
        type Rs ProposalsUpdate = Proposal
        requestClient ProposalsUpdate{..}
          = go _puProposalId _puRevisionNumber _puUpdateAction
              (Just AltJSON)
              _puPayload
              adExchangeBuyerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProposalsUpdateResource)
                      mempty
