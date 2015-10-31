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
-- Module      : Network.Google.Resource.AdExchangeBuyer.MarketplaceNotes.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get all the notes associated with a proposal
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.marketplacenotes.list@.
module Network.Google.Resource.AdExchangeBuyer.MarketplaceNotes.List
    (
    -- * REST Resource
      MarketplaceNotesListResource

    -- * Creating a Request
    , marketplaceNotesList
    , MarketplaceNotesList

    -- * Request Lenses
    , mnlProposalId
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.marketplacenotes.list@ method which the
-- 'MarketplaceNotesList' request conforms to.
type MarketplaceNotesListResource =
     "adexchangebuyer" :>
       "v1.4" :>
         "proposals" :>
           Capture "proposalId" Text :>
             "notes" :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] GetOrderNotesResponse

-- | Get all the notes associated with a proposal
--
-- /See:/ 'marketplaceNotesList' smart constructor.
newtype MarketplaceNotesList = MarketplaceNotesList
    { _mnlProposalId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceNotesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mnlProposalId'
marketplaceNotesList
    :: Text -- ^ 'mnlProposalId'
    -> MarketplaceNotesList
marketplaceNotesList pMnlProposalId_ =
    MarketplaceNotesList
    { _mnlProposalId = pMnlProposalId_
    }

-- | The proposalId to get notes for.
mnlProposalId :: Lens' MarketplaceNotesList Text
mnlProposalId
  = lens _mnlProposalId
      (\ s a -> s{_mnlProposalId = a})

instance GoogleRequest MarketplaceNotesList where
        type Rs MarketplaceNotesList = GetOrderNotesResponse
        type Scopes MarketplaceNotesList =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient MarketplaceNotesList{..}
          = go _mnlProposalId (Just AltJSON)
              adExchangeBuyerService
          where go
                  = buildClient
                      (Proxy :: Proxy MarketplaceNotesListResource)
                      mempty
