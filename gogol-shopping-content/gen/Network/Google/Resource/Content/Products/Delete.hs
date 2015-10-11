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
-- Module      : Network.Google.Resource.Content.Products.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a product from your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentProductsDelete@.
module Network.Google.Resource.Content.Products.Delete
    (
    -- * REST Resource
      ProductsDeleteResource

    -- * Creating a Request
    , productsDelete'
    , ProductsDelete'

    -- * Request Lenses
    , pdQuotaUser
    , pdMerchantId
    , pdPrettyPrint
    , pdUserIP
    , pdKey
    , pdOAuthToken
    , pdProductId
    , pdDryRun
    , pdFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentProductsDelete@ method which the
-- 'ProductsDelete'' request conforms to.
type ProductsDeleteResource =
     Capture "merchantId" Word64 :>
       "products" :>
         Capture "productId" Text :>
           QueryParam "dryRun" Bool :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       Header "Authorization" OAuthToken :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a product from your Merchant Center account.
--
-- /See:/ 'productsDelete'' smart constructor.
data ProductsDelete' = ProductsDelete'
    { _pdQuotaUser   :: !(Maybe Text)
    , _pdMerchantId  :: !Word64
    , _pdPrettyPrint :: !Bool
    , _pdUserIP      :: !(Maybe Text)
    , _pdKey         :: !(Maybe AuthKey)
    , _pdOAuthToken  :: !(Maybe OAuthToken)
    , _pdProductId   :: !Text
    , _pdDryRun      :: !(Maybe Bool)
    , _pdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdQuotaUser'
--
-- * 'pdMerchantId'
--
-- * 'pdPrettyPrint'
--
-- * 'pdUserIP'
--
-- * 'pdKey'
--
-- * 'pdOAuthToken'
--
-- * 'pdProductId'
--
-- * 'pdDryRun'
--
-- * 'pdFields'
productsDelete'
    :: Word64 -- ^ 'merchantId'
    -> Text -- ^ 'productId'
    -> ProductsDelete'
productsDelete' pPdMerchantId_ pPdProductId_ =
    ProductsDelete'
    { _pdQuotaUser = Nothing
    , _pdMerchantId = pPdMerchantId_
    , _pdPrettyPrint = True
    , _pdUserIP = Nothing
    , _pdKey = Nothing
    , _pdOAuthToken = Nothing
    , _pdProductId = pPdProductId_
    , _pdDryRun = Nothing
    , _pdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pdQuotaUser :: Lens' ProductsDelete' (Maybe Text)
pdQuotaUser
  = lens _pdQuotaUser (\ s a -> s{_pdQuotaUser = a})

-- | The ID of the managing account.
pdMerchantId :: Lens' ProductsDelete' Word64
pdMerchantId
  = lens _pdMerchantId (\ s a -> s{_pdMerchantId = a})

-- | Returns response with indentations and line breaks.
pdPrettyPrint :: Lens' ProductsDelete' Bool
pdPrettyPrint
  = lens _pdPrettyPrint
      (\ s a -> s{_pdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pdUserIP :: Lens' ProductsDelete' (Maybe Text)
pdUserIP = lens _pdUserIP (\ s a -> s{_pdUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pdKey :: Lens' ProductsDelete' (Maybe AuthKey)
pdKey = lens _pdKey (\ s a -> s{_pdKey = a})

-- | OAuth 2.0 token for the current user.
pdOAuthToken :: Lens' ProductsDelete' (Maybe OAuthToken)
pdOAuthToken
  = lens _pdOAuthToken (\ s a -> s{_pdOAuthToken = a})

-- | The ID of the product.
pdProductId :: Lens' ProductsDelete' Text
pdProductId
  = lens _pdProductId (\ s a -> s{_pdProductId = a})

-- | Flag to run the request in dry-run mode.
pdDryRun :: Lens' ProductsDelete' (Maybe Bool)
pdDryRun = lens _pdDryRun (\ s a -> s{_pdDryRun = a})

-- | Selector specifying which fields to include in a partial response.
pdFields :: Lens' ProductsDelete' (Maybe Text)
pdFields = lens _pdFields (\ s a -> s{_pdFields = a})

instance GoogleAuth ProductsDelete' where
        _AuthKey = pdKey . _Just
        _AuthToken = pdOAuthToken . _Just

instance GoogleRequest ProductsDelete' where
        type Rs ProductsDelete' = ()
        request = requestWith shoppingContentRequest
        requestWith rq ProductsDelete'{..}
          = go _pdMerchantId _pdProductId _pdDryRun
              _pdQuotaUser
              (Just _pdPrettyPrint)
              _pdUserIP
              _pdFields
              _pdKey
              _pdOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy ProductsDeleteResource)
                      rq
