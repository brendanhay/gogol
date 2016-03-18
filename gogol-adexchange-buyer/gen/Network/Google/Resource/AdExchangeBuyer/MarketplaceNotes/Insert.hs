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
-- Module      : Network.Google.Resource.AdExchangeBuyer.MarketplaceNotes.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Add notes to the proposal
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.marketplacenotes.insert@.
module Network.Google.Resource.AdExchangeBuyer.MarketplaceNotes.Insert
    (
    -- * REST Resource
      MarketplaceNotesInsertResource

    -- * Creating a Request
    , marketplaceNotesInsert
    , MarketplaceNotesInsert

    -- * Request Lenses
    , mniPayload
    , mniProposalId
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.marketplacenotes.insert@ method which the
-- 'MarketplaceNotesInsert' request conforms to.
type MarketplaceNotesInsertResource =
     "adexchangebuyer" :>
       "v1.4" :>
         "proposals" :>
           Capture "proposalId" Text :>
             "notes" :>
               "insert" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] AddOrderNotesRequest :>
                     Post '[JSON] AddOrderNotesResponse

-- | Add notes to the proposal
--
-- /See:/ 'marketplaceNotesInsert' smart constructor.
data MarketplaceNotesInsert = MarketplaceNotesInsert
    { _mniPayload    :: !AddOrderNotesRequest
    , _mniProposalId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceNotesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mniPayload'
--
-- * 'mniProposalId'
marketplaceNotesInsert
    :: AddOrderNotesRequest -- ^ 'mniPayload'
    -> Text -- ^ 'mniProposalId'
    -> MarketplaceNotesInsert
marketplaceNotesInsert pMniPayload_ pMniProposalId_ =
    MarketplaceNotesInsert
    { _mniPayload = pMniPayload_
    , _mniProposalId = pMniProposalId_
    }

-- | Multipart request metadata.
mniPayload :: Lens' MarketplaceNotesInsert AddOrderNotesRequest
mniPayload
  = lens _mniPayload (\ s a -> s{_mniPayload = a})

-- | The proposalId to add notes for.
mniProposalId :: Lens' MarketplaceNotesInsert Text
mniProposalId
  = lens _mniProposalId
      (\ s a -> s{_mniProposalId = a})

instance GoogleRequest MarketplaceNotesInsert where
        type Rs MarketplaceNotesInsert =
             AddOrderNotesResponse
        requestClient MarketplaceNotesInsert{..}
          = go _mniProposalId (Just AltJSON) _mniPayload
              adExchangeBuyerService
          where go
                  = buildClient
                      (Proxy :: Proxy MarketplaceNotesInsertResource)
                      mempty
