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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Offers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all offers the authenticated user has access to.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.offers.list@.
module Network.Google.Resource.AdExchangeBuyer.Offers.List
    (
    -- * REST Resource
      OffersListResource

    -- * Creating a Request
    , offersList
    , OffersList

    -- * Request Lenses
    , olPayload
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.offers.list@ method which the
-- 'OffersList' request conforms to.
type OffersListResource =
     "offers" :>
       QueryParam "alt" AltJSON :>
         ReqBody '[JSON] ListOffersRequest :>
           Get '[JSON] ListOffersResponse

-- | Lists all offers the authenticated user has access to.
--
-- /See:/ 'offersList' smart constructor.
newtype OffersList = OffersList
    { _olPayload :: ListOffersRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OffersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olPayload'
offersList
    :: ListOffersRequest -- ^ 'olPayload'
    -> OffersList
offersList pOlPayload_ =
    OffersList
    { _olPayload = pOlPayload_
    }

-- | Multipart request metadata.
olPayload :: Lens' OffersList ListOffersRequest
olPayload
  = lens _olPayload (\ s a -> s{_olPayload = a})

instance GoogleRequest OffersList where
        type Rs OffersList = ListOffersResponse
        requestClient OffersList{..}
          = go (Just AltJSON) _olPayload adExchangeBuyerService
          where go
                  = buildClient (Proxy :: Proxy OffersListResource)
                      mempty
