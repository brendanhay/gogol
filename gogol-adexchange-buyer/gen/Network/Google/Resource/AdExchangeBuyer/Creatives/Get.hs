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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Creatives.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the status for a single creative. A creative will be available
-- 30-40 minutes after submission.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.creatives.get@.
module Network.Google.Resource.AdExchangeBuyer.Creatives.Get
    (
    -- * REST Resource
      CreativesGetResource

    -- * Creating a Request
    , creativesGet
    , CreativesGet

    -- * Request Lenses
    , cgBuyerCreativeId
    , cgAccountId
    ) where

import Network.Google.AdExchangeBuyer.Types
import Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.creatives.get@ method which the
-- 'CreativesGet' request conforms to.
type CreativesGetResource =
     "adexchangebuyer" :>
       "v1.4" :>
         "creatives" :>
           Capture "accountId" (Textual Int32) :>
             Capture "buyerCreativeId" Text :>
               QueryParam "alt" AltJSON :> Get '[JSON] Creative

-- | Gets the status for a single creative. A creative will be available
-- 30-40 minutes after submission.
--
-- /See:/ 'creativesGet' smart constructor.
data CreativesGet =
  CreativesGet'
    { _cgBuyerCreativeId :: !Text
    , _cgAccountId :: !(Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreativesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgBuyerCreativeId'
--
-- * 'cgAccountId'
creativesGet
    :: Text -- ^ 'cgBuyerCreativeId'
    -> Int32 -- ^ 'cgAccountId'
    -> CreativesGet
creativesGet pCgBuyerCreativeId_ pCgAccountId_ =
  CreativesGet'
    { _cgBuyerCreativeId = pCgBuyerCreativeId_
    , _cgAccountId = _Coerce # pCgAccountId_
    }


-- | The buyer-specific id for this creative.
cgBuyerCreativeId :: Lens' CreativesGet Text
cgBuyerCreativeId
  = lens _cgBuyerCreativeId
      (\ s a -> s{_cgBuyerCreativeId = a})

-- | The id for the account that will serve this creative.
cgAccountId :: Lens' CreativesGet Int32
cgAccountId
  = lens _cgAccountId (\ s a -> s{_cgAccountId = a}) .
      _Coerce

instance GoogleRequest CreativesGet where
        type Rs CreativesGet = Creative
        type Scopes CreativesGet =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient CreativesGet'{..}
          = go _cgAccountId _cgBuyerCreativeId (Just AltJSON)
              adExchangeBuyerService
          where go
                  = buildClient (Proxy :: Proxy CreativesGetResource)
                      mempty
