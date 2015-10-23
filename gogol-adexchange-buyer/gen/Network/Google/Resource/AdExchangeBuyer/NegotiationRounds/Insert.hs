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
-- Module      : Network.Google.Resource.AdExchangeBuyer.NegotiationRounds.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds the requested negotiationRound to the requested negotiation.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.negotiationrounds.insert@.
module Network.Google.Resource.AdExchangeBuyer.NegotiationRounds.Insert
    (
    -- * REST Resource
      NegotiationRoundsInsertResource

    -- * Creating a Request
    , negotiationRoundsInsert
    , NegotiationRoundsInsert

    -- * Request Lenses
    , nriPayload
    , nriNegotiationId
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.negotiationrounds.insert@ method which the
-- 'NegotiationRoundsInsert' request conforms to.
type NegotiationRoundsInsertResource =
     "adexchangebuyer" :>
       "v1.4" :>
         "negotiations" :>
           Capture "negotiationId" Int64 :>
             "negotiationrounds" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] NegotiationRoundDTO :>
                   Post '[JSON] NegotiationRoundDTO

-- | Adds the requested negotiationRound to the requested negotiation.
--
-- /See:/ 'negotiationRoundsInsert' smart constructor.
data NegotiationRoundsInsert = NegotiationRoundsInsert
    { _nriPayload       :: !NegotiationRoundDTO
    , _nriNegotiationId :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NegotiationRoundsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nriPayload'
--
-- * 'nriNegotiationId'
negotiationRoundsInsert
    :: NegotiationRoundDTO -- ^ 'nriPayload'
    -> Int64 -- ^ 'nriNegotiationId'
    -> NegotiationRoundsInsert
negotiationRoundsInsert pNriPayload_ pNriNegotiationId_ =
    NegotiationRoundsInsert
    { _nriPayload = pNriPayload_
    , _nriNegotiationId = pNriNegotiationId_
    }

-- | Multipart request metadata.
nriPayload :: Lens' NegotiationRoundsInsert NegotiationRoundDTO
nriPayload
  = lens _nriPayload (\ s a -> s{_nriPayload = a})

nriNegotiationId :: Lens' NegotiationRoundsInsert Int64
nriNegotiationId
  = lens _nriNegotiationId
      (\ s a -> s{_nriNegotiationId = a})

instance GoogleRequest NegotiationRoundsInsert where
        type Rs NegotiationRoundsInsert = NegotiationRoundDTO
        requestClient NegotiationRoundsInsert{..}
          = go _nriNegotiationId (Just AltJSON) _nriPayload
              adExchangeBuyerService
          where go
                  = buildClient
                      (Proxy :: Proxy NegotiationRoundsInsertResource)
                      mempty
