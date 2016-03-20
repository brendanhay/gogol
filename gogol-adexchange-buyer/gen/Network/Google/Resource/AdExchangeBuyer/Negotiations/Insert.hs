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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Negotiations.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates or updates the requested negotiation.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.negotiations.insert@.
module Network.Google.Resource.AdExchangeBuyer.Negotiations.Insert
    (
    -- * REST Resource
      NegotiationsInsertResource

    -- * Creating a Request
    , negotiationsInsert
    , NegotiationsInsert

    -- * Request Lenses
    , niPayload
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.negotiations.insert@ method which the
-- 'NegotiationsInsert' request conforms to.
type NegotiationsInsertResource =
     "adexchangebuyer" :>
       "v1.4" :>
         "negotiations" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] NegotiationDTO :>
               Post '[JSON] NegotiationDTO

-- | Creates or updates the requested negotiation.
--
-- /See:/ 'negotiationsInsert' smart constructor.
newtype NegotiationsInsert = NegotiationsInsert
    { _niPayload :: NegotiationDTO
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NegotiationsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'niPayload'
negotiationsInsert
    :: NegotiationDTO -- ^ 'niPayload'
    -> NegotiationsInsert
negotiationsInsert pNiPayload_ =
    NegotiationsInsert
    { _niPayload = pNiPayload_
    }

-- | Multipart request metadata.
niPayload :: Lens' NegotiationsInsert NegotiationDTO
niPayload
  = lens _niPayload (\ s a -> s{_niPayload = a})

instance GoogleRequest NegotiationsInsert where
        type Rs NegotiationsInsert = NegotiationDTO
        requestClient NegotiationsInsert{..}
          = go (Just AltJSON) _niPayload adExchangeBuyerService
          where go
                  = buildClient
                      (Proxy :: Proxy NegotiationsInsertResource)
                      mempty
