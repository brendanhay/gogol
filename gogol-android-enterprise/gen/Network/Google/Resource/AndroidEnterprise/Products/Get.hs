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
-- Module      : Network.Google.Resource.AndroidEnterprise.Products.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves details of a product for display to an enterprise admin.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseProductsGet@.
module Network.Google.Resource.AndroidEnterprise.Products.Get
    (
    -- * REST Resource
      ProductsGetResource

    -- * Creating a Request
    , productsGet'
    , ProductsGet'

    -- * Request Lenses
    , pQuotaUser
    , pPrettyPrint
    , pEnterpriseId
    , pUserIP
    , pKey
    , pLanguage
    , pOAuthToken
    , pProductId
    , pFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseProductsGet@ which the
-- 'ProductsGet'' request conforms to.
type ProductsGetResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "products" :>
           Capture "productId" Text :>
             QueryParam "language" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Product

-- | Retrieves details of a product for display to an enterprise admin.
--
-- /See:/ 'productsGet'' smart constructor.
data ProductsGet' = ProductsGet'
    { _pQuotaUser    :: !(Maybe Text)
    , _pPrettyPrint  :: !Bool
    , _pEnterpriseId :: !Text
    , _pUserIP       :: !(Maybe Text)
    , _pKey          :: !(Maybe AuthKey)
    , _pLanguage     :: !(Maybe Text)
    , _pOAuthToken   :: !(Maybe OAuthToken)
    , _pProductId    :: !Text
    , _pFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pQuotaUser'
--
-- * 'pPrettyPrint'
--
-- * 'pEnterpriseId'
--
-- * 'pUserIP'
--
-- * 'pKey'
--
-- * 'pLanguage'
--
-- * 'pOAuthToken'
--
-- * 'pProductId'
--
-- * 'pFields'
productsGet'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'productId'
    -> ProductsGet'
productsGet' pPEnterpriseId_ pPProductId_ =
    ProductsGet'
    { _pQuotaUser = Nothing
    , _pPrettyPrint = True
    , _pEnterpriseId = pPEnterpriseId_
    , _pUserIP = Nothing
    , _pKey = Nothing
    , _pLanguage = Nothing
    , _pOAuthToken = Nothing
    , _pProductId = pPProductId_
    , _pFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pQuotaUser :: Lens' ProductsGet' (Maybe Text)
pQuotaUser
  = lens _pQuotaUser (\ s a -> s{_pQuotaUser = a})

-- | Returns response with indentations and line breaks.
pPrettyPrint :: Lens' ProductsGet' Bool
pPrettyPrint
  = lens _pPrettyPrint (\ s a -> s{_pPrettyPrint = a})

-- | The ID of the enterprise.
pEnterpriseId :: Lens' ProductsGet' Text
pEnterpriseId
  = lens _pEnterpriseId
      (\ s a -> s{_pEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pUserIP :: Lens' ProductsGet' (Maybe Text)
pUserIP = lens _pUserIP (\ s a -> s{_pUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pKey :: Lens' ProductsGet' (Maybe AuthKey)
pKey = lens _pKey (\ s a -> s{_pKey = a})

-- | The BCP47 tag for the user\'s preferred language (e.g. \"en-US\",
-- \"de\").
pLanguage :: Lens' ProductsGet' (Maybe Text)
pLanguage
  = lens _pLanguage (\ s a -> s{_pLanguage = a})

-- | OAuth 2.0 token for the current user.
pOAuthToken :: Lens' ProductsGet' (Maybe OAuthToken)
pOAuthToken
  = lens _pOAuthToken (\ s a -> s{_pOAuthToken = a})

-- | The ID of the product, e.g. \"app:com.google.android.gm\".
pProductId :: Lens' ProductsGet' Text
pProductId
  = lens _pProductId (\ s a -> s{_pProductId = a})

-- | Selector specifying which fields to include in a partial response.
pFields :: Lens' ProductsGet' (Maybe Text)
pFields = lens _pFields (\ s a -> s{_pFields = a})

instance GoogleAuth ProductsGet' where
        authKey = pKey . _Just
        authToken = pOAuthToken . _Just

instance GoogleRequest ProductsGet' where
        type Rs ProductsGet' = Product
        request
          = requestWithRoute defReq androidEnterpriseURL
        requestWithRoute r u ProductsGet'{..}
          = go _pEnterpriseId _pProductId _pLanguage
              _pQuotaUser
              (Just _pPrettyPrint)
              _pUserIP
              _pFields
              _pKey
              _pOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProductsGetResource)
                      r
                      u
