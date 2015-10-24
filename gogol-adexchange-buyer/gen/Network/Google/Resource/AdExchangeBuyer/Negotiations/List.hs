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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Negotiations.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all negotiations the authenticated user has access to.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.negotiations.list@.
module Network.Google.Resource.AdExchangeBuyer.Negotiations.List
    (
    -- * REST Resource
      NegotiationsListResource

    -- * Creating a Request
    , negotiationsList
    , NegotiationsList

    -- * Request Lenses
    , nlPayload
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.negotiations.list@ method which the
-- 'NegotiationsList' request conforms to.
type NegotiationsListResource =
     "adexchangebuyer" :>
       "v1.4" :>
         "negotiations" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] GetNegotiationsRequest :>
               Get '[JSON] GetNegotiationsResponse

-- | Lists all negotiations the authenticated user has access to.
--
-- /See:/ 'negotiationsList' smart constructor.
newtype NegotiationsList = NegotiationsList
    { _nlPayload :: GetNegotiationsRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NegotiationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nlPayload'
negotiationsList
    :: GetNegotiationsRequest -- ^ 'nlPayload'
    -> NegotiationsList
negotiationsList pNlPayload_ =
    NegotiationsList
    { _nlPayload = pNlPayload_
    }

-- | Multipart request metadata.
nlPayload :: Lens' NegotiationsList GetNegotiationsRequest
nlPayload
  = lens _nlPayload (\ s a -> s{_nlPayload = a})

instance GoogleRequest NegotiationsList where
        type Rs NegotiationsList = GetNegotiationsResponse
        requestClient NegotiationsList{..}
          = go (Just AltJSON) _nlPayload adExchangeBuyerService
          where go
                  = buildClient
                      (Proxy :: Proxy NegotiationsListResource)
                      mempty
