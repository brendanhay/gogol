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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Negotiations.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the requested negotiation.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.negotiations.get@.
module Network.Google.Resource.AdExchangeBuyer.Negotiations.Get
    (
    -- * REST Resource
      NegotiationsGetResource

    -- * Creating a Request
    , negotiationsGet
    , NegotiationsGet

    -- * Request Lenses
    , ngPayload
    , ngNegotiationId
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.negotiations.get@ method which the
-- 'NegotiationsGet' request conforms to.
type NegotiationsGetResource =
     "adexchangebuyer" :>
       "v1.4" :>
         "negotiations" :>
           Capture "negotiationId" (JSONText Int64) :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] GetNegotiationByIdRequest :>
                 Get '[JSON] NegotiationDTO

-- | Gets the requested negotiation.
--
-- /See:/ 'negotiationsGet' smart constructor.
data NegotiationsGet = NegotiationsGet
    { _ngPayload       :: !GetNegotiationByIdRequest
    , _ngNegotiationId :: !(JSONText Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NegotiationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ngPayload'
--
-- * 'ngNegotiationId'
negotiationsGet
    :: GetNegotiationByIdRequest -- ^ 'ngPayload'
    -> Int64 -- ^ 'ngNegotiationId'
    -> NegotiationsGet
negotiationsGet pNgPayload_ pNgNegotiationId_ =
    NegotiationsGet
    { _ngPayload = pNgPayload_
    , _ngNegotiationId = _Coerce # pNgNegotiationId_
    }

-- | Multipart request metadata.
ngPayload :: Lens' NegotiationsGet GetNegotiationByIdRequest
ngPayload
  = lens _ngPayload (\ s a -> s{_ngPayload = a})

ngNegotiationId :: Lens' NegotiationsGet Int64
ngNegotiationId
  = lens _ngNegotiationId
      (\ s a -> s{_ngNegotiationId = a})
      . _Coerce

instance GoogleRequest NegotiationsGet where
        type Rs NegotiationsGet = NegotiationDTO
        requestClient NegotiationsGet{..}
          = go _ngNegotiationId (Just AltJSON) _ngPayload
              adExchangeBuyerService
          where go
                  = buildClient
                      (Proxy :: Proxy NegotiationsGetResource)
                      mempty
