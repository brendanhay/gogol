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
-- Module      : Network.Google.Resource.Content.Productstatuses.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the status of a product from your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.productstatuses.get@.
module Network.Google.Resource.Content.Productstatuses.Get
    (
    -- * REST Resource
      ProductstatusesGetResource

    -- * Creating a Request
    , productstatusesGet
    , ProductstatusesGet

    -- * Request Lenses
    , pgMerchantId
    , pgDestinations
    , pgProductId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.productstatuses.get@ method which the
-- 'ProductstatusesGet' request conforms to.
type ProductstatusesGetResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "productstatuses" :>
             Capture "productId" Text :>
               QueryParams "destinations" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] ProductStatus

-- | Gets the status of a product from your Merchant Center account.
--
-- /See:/ 'productstatusesGet' smart constructor.
data ProductstatusesGet = ProductstatusesGet'
    { _pgMerchantId   :: !(Textual Word64)
    , _pgDestinations :: !(Maybe [Text])
    , _pgProductId    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductstatusesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgMerchantId'
--
-- * 'pgDestinations'
--
-- * 'pgProductId'
productstatusesGet
    :: Word64 -- ^ 'pgMerchantId'
    -> Text -- ^ 'pgProductId'
    -> ProductstatusesGet
productstatusesGet pPgMerchantId_ pPgProductId_ =
    ProductstatusesGet'
    { _pgMerchantId = _Coerce # pPgMerchantId_
    , _pgDestinations = Nothing
    , _pgProductId = pPgProductId_
    }

-- | The ID of the account that contains the product. This account cannot be
-- a multi-client account.
pgMerchantId :: Lens' ProductstatusesGet Word64
pgMerchantId
  = lens _pgMerchantId (\ s a -> s{_pgMerchantId = a})
      . _Coerce

-- | If set, only issues for the specified destinations are returned,
-- otherwise only issues for the Shopping destination.
pgDestinations :: Lens' ProductstatusesGet [Text]
pgDestinations
  = lens _pgDestinations
      (\ s a -> s{_pgDestinations = a})
      . _Default
      . _Coerce

-- | The REST id of the product.
pgProductId :: Lens' ProductstatusesGet Text
pgProductId
  = lens _pgProductId (\ s a -> s{_pgProductId = a})

instance GoogleRequest ProductstatusesGet where
        type Rs ProductstatusesGet = ProductStatus
        type Scopes ProductstatusesGet =
             '["https://www.googleapis.com/auth/content"]
        requestClient ProductstatusesGet'{..}
          = go _pgMerchantId _pgProductId
              (_pgDestinations ^. _Default)
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy ProductstatusesGetResource)
                      mempty
