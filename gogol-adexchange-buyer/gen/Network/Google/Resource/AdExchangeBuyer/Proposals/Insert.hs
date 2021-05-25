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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Proposals.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create the given list of proposals
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.proposals.insert@.
module Network.Google.Resource.AdExchangeBuyer.Proposals.Insert
    (
    -- * REST Resource
      ProposalsInsertResource

    -- * Creating a Request
    , proposalsInsert
    , ProposalsInsert

    -- * Request Lenses
    , piPayload
    ) where

import Network.Google.AdExchangeBuyer.Types
import Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.proposals.insert@ method which the
-- 'ProposalsInsert' request conforms to.
type ProposalsInsertResource =
     "adexchangebuyer" :>
       "v1.4" :>
         "proposals" :>
           "insert" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] CreateOrdersRequest :>
                 Post '[JSON] CreateOrdersResponse

-- | Create the given list of proposals
--
-- /See:/ 'proposalsInsert' smart constructor.
newtype ProposalsInsert =
  ProposalsInsert'
    { _piPayload :: CreateOrdersRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProposalsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piPayload'
proposalsInsert
    :: CreateOrdersRequest -- ^ 'piPayload'
    -> ProposalsInsert
proposalsInsert pPiPayload_ = ProposalsInsert' {_piPayload = pPiPayload_}


-- | Multipart request metadata.
piPayload :: Lens' ProposalsInsert CreateOrdersRequest
piPayload
  = lens _piPayload (\ s a -> s{_piPayload = a})

instance GoogleRequest ProposalsInsert where
        type Rs ProposalsInsert = CreateOrdersResponse
        type Scopes ProposalsInsert =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient ProposalsInsert'{..}
          = go (Just AltJSON) _piPayload adExchangeBuyerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProposalsInsertResource)
                      mempty
