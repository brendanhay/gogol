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
-- Module      : Network.Google.Resource.Content.Products.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a product from your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentProductsGet@.
module Network.Google.Resource.Content.Products.Get
    (
    -- * REST Resource
      ProductsGetResource

    -- * Creating a Request
    , productsGet'
    , ProductsGet'

    -- * Request Lenses
    , pgQuotaUser
    , pgMerchantId
    , pgPrettyPrint
    , pgUserIP
    , pgKey
    , pgOAuthToken
    , pgProductId
    , pgFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentProductsGet@ method which the
-- 'ProductsGet'' request conforms to.
type ProductsGetResource =
     Capture "merchantId" Word64 :>
       "products" :>
         Capture "productId" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Product

-- | Retrieves a product from your Merchant Center account.
--
-- /See:/ 'productsGet'' smart constructor.
data ProductsGet' = ProductsGet'
    { _pgQuotaUser   :: !(Maybe Text)
    , _pgMerchantId  :: !Word64
    , _pgPrettyPrint :: !Bool
    , _pgUserIP      :: !(Maybe Text)
    , _pgKey         :: !(Maybe AuthKey)
    , _pgOAuthToken  :: !(Maybe OAuthToken)
    , _pgProductId   :: !Text
    , _pgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgQuotaUser'
--
-- * 'pgMerchantId'
--
-- * 'pgPrettyPrint'
--
-- * 'pgUserIP'
--
-- * 'pgKey'
--
-- * 'pgOAuthToken'
--
-- * 'pgProductId'
--
-- * 'pgFields'
productsGet'
    :: Word64 -- ^ 'merchantId'
    -> Text -- ^ 'productId'
    -> ProductsGet'
productsGet' pPgMerchantId_ pPgProductId_ =
    ProductsGet'
    { _pgQuotaUser = Nothing
    , _pgMerchantId = pPgMerchantId_
    , _pgPrettyPrint = True
    , _pgUserIP = Nothing
    , _pgKey = Nothing
    , _pgOAuthToken = Nothing
    , _pgProductId = pPgProductId_
    , _pgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pgQuotaUser :: Lens' ProductsGet' (Maybe Text)
pgQuotaUser
  = lens _pgQuotaUser (\ s a -> s{_pgQuotaUser = a})

-- | The ID of the managing account.
pgMerchantId :: Lens' ProductsGet' Word64
pgMerchantId
  = lens _pgMerchantId (\ s a -> s{_pgMerchantId = a})

-- | Returns response with indentations and line breaks.
pgPrettyPrint :: Lens' ProductsGet' Bool
pgPrettyPrint
  = lens _pgPrettyPrint
      (\ s a -> s{_pgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pgUserIP :: Lens' ProductsGet' (Maybe Text)
pgUserIP = lens _pgUserIP (\ s a -> s{_pgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pgKey :: Lens' ProductsGet' (Maybe AuthKey)
pgKey = lens _pgKey (\ s a -> s{_pgKey = a})

-- | OAuth 2.0 token for the current user.
pgOAuthToken :: Lens' ProductsGet' (Maybe OAuthToken)
pgOAuthToken
  = lens _pgOAuthToken (\ s a -> s{_pgOAuthToken = a})

-- | The ID of the product.
pgProductId :: Lens' ProductsGet' Text
pgProductId
  = lens _pgProductId (\ s a -> s{_pgProductId = a})

-- | Selector specifying which fields to include in a partial response.
pgFields :: Lens' ProductsGet' (Maybe Text)
pgFields = lens _pgFields (\ s a -> s{_pgFields = a})

instance GoogleAuth ProductsGet' where
        _AuthKey = pgKey . _Just
        _AuthToken = pgOAuthToken . _Just

instance GoogleRequest ProductsGet' where
        type Rs ProductsGet' = Product
        request = requestWith shoppingContentRequest
        requestWith rq ProductsGet'{..}
          = go _pgMerchantId _pgProductId _pgQuotaUser
              (Just _pgPrettyPrint)
              _pgUserIP
              _pgFields
              _pgKey
              _pgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy ProductsGetResource) rq
