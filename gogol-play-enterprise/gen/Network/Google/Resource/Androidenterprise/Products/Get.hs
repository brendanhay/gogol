{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidenterprise.Products.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves details of a product for display to an enterprise admin.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidenterpriseProductsGet@.
module Network.Google.Resource.Androidenterprise.Products.Get
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
    , pUserIp
    , pKey
    , pLanguage
    , pOauthToken
    , pProductId
    , pFields
    , pAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterpriseProductsGet@ which the
-- 'ProductsGet'' request conforms to.
type ProductsGetResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "products" :>
           Capture "productId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "language" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] Product

-- | Retrieves details of a product for display to an enterprise admin.
--
-- /See:/ 'productsGet'' smart constructor.
data ProductsGet' = ProductsGet'
    { _pQuotaUser    :: !(Maybe Text)
    , _pPrettyPrint  :: !Bool
    , _pEnterpriseId :: !Text
    , _pUserIp       :: !(Maybe Text)
    , _pKey          :: !(Maybe Text)
    , _pLanguage     :: !(Maybe Text)
    , _pOauthToken   :: !(Maybe Text)
    , _pProductId    :: !Text
    , _pFields       :: !(Maybe Text)
    , _pAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'pUserIp'
--
-- * 'pKey'
--
-- * 'pLanguage'
--
-- * 'pOauthToken'
--
-- * 'pProductId'
--
-- * 'pFields'
--
-- * 'pAlt'
productsGet'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'productId'
    -> ProductsGet'
productsGet' pPEnterpriseId_ pPProductId_ =
    ProductsGet'
    { _pQuotaUser = Nothing
    , _pPrettyPrint = True
    , _pEnterpriseId = pPEnterpriseId_
    , _pUserIp = Nothing
    , _pKey = Nothing
    , _pLanguage = Nothing
    , _pOauthToken = Nothing
    , _pProductId = pPProductId_
    , _pFields = Nothing
    , _pAlt = JSON
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
pUserIp :: Lens' ProductsGet' (Maybe Text)
pUserIp = lens _pUserIp (\ s a -> s{_pUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pKey :: Lens' ProductsGet' (Maybe Text)
pKey = lens _pKey (\ s a -> s{_pKey = a})

-- | The BCP47 tag for the user\'s preferred language (e.g. \"en-US\",
-- \"de\").
pLanguage :: Lens' ProductsGet' (Maybe Text)
pLanguage
  = lens _pLanguage (\ s a -> s{_pLanguage = a})

-- | OAuth 2.0 token for the current user.
pOauthToken :: Lens' ProductsGet' (Maybe Text)
pOauthToken
  = lens _pOauthToken (\ s a -> s{_pOauthToken = a})

-- | The ID of the product, e.g. \"app:com.google.android.gm\".
pProductId :: Lens' ProductsGet' Text
pProductId
  = lens _pProductId (\ s a -> s{_pProductId = a})

-- | Selector specifying which fields to include in a partial response.
pFields :: Lens' ProductsGet' (Maybe Text)
pFields = lens _pFields (\ s a -> s{_pFields = a})

-- | Data format for the response.
pAlt :: Lens' ProductsGet' Alt
pAlt = lens _pAlt (\ s a -> s{_pAlt = a})

instance GoogleRequest ProductsGet' where
        type Rs ProductsGet' = Product
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u ProductsGet'{..}
          = go _pQuotaUser (Just _pPrettyPrint) _pEnterpriseId
              _pUserIp
              _pKey
              _pLanguage
              _pOauthToken
              _pProductId
              _pFields
              (Just _pAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProductsGetResource)
                      r
                      u
