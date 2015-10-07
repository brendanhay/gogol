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
-- Module      : Network.Google.Resource.AndroidEnterprise.Products.GetPermissions
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the Android app permissions required by this app.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseProductsGetPermissions@.
module Network.Google.Resource.AndroidEnterprise.Products.GetPermissions
    (
    -- * REST Resource
      ProductsGetPermissionsResource

    -- * Creating a Request
    , productsGetPermissions'
    , ProductsGetPermissions'

    -- * Request Lenses
    , pgpQuotaUser
    , pgpPrettyPrint
    , pgpEnterpriseId
    , pgpUserIP
    , pgpKey
    , pgpOAuthToken
    , pgpProductId
    , pgpFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseProductsGetPermissions@ method which the
-- 'ProductsGetPermissions'' request conforms to.
type ProductsGetPermissionsResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "products" :>
           Capture "productId" Text :>
             "permissions" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ProductPermissions

-- | Retrieves the Android app permissions required by this app.
--
-- /See:/ 'productsGetPermissions'' smart constructor.
data ProductsGetPermissions' = ProductsGetPermissions'
    { _pgpQuotaUser    :: !(Maybe Text)
    , _pgpPrettyPrint  :: !Bool
    , _pgpEnterpriseId :: !Text
    , _pgpUserIP       :: !(Maybe Text)
    , _pgpKey          :: !(Maybe AuthKey)
    , _pgpOAuthToken   :: !(Maybe OAuthToken)
    , _pgpProductId    :: !Text
    , _pgpFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductsGetPermissions'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgpQuotaUser'
--
-- * 'pgpPrettyPrint'
--
-- * 'pgpEnterpriseId'
--
-- * 'pgpUserIP'
--
-- * 'pgpKey'
--
-- * 'pgpOAuthToken'
--
-- * 'pgpProductId'
--
-- * 'pgpFields'
productsGetPermissions'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'productId'
    -> ProductsGetPermissions'
productsGetPermissions' pPgpEnterpriseId_ pPgpProductId_ =
    ProductsGetPermissions'
    { _pgpQuotaUser = Nothing
    , _pgpPrettyPrint = True
    , _pgpEnterpriseId = pPgpEnterpriseId_
    , _pgpUserIP = Nothing
    , _pgpKey = Nothing
    , _pgpOAuthToken = Nothing
    , _pgpProductId = pPgpProductId_
    , _pgpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pgpQuotaUser :: Lens' ProductsGetPermissions' (Maybe Text)
pgpQuotaUser
  = lens _pgpQuotaUser (\ s a -> s{_pgpQuotaUser = a})

-- | Returns response with indentations and line breaks.
pgpPrettyPrint :: Lens' ProductsGetPermissions' Bool
pgpPrettyPrint
  = lens _pgpPrettyPrint
      (\ s a -> s{_pgpPrettyPrint = a})

-- | The ID of the enterprise.
pgpEnterpriseId :: Lens' ProductsGetPermissions' Text
pgpEnterpriseId
  = lens _pgpEnterpriseId
      (\ s a -> s{_pgpEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pgpUserIP :: Lens' ProductsGetPermissions' (Maybe Text)
pgpUserIP
  = lens _pgpUserIP (\ s a -> s{_pgpUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pgpKey :: Lens' ProductsGetPermissions' (Maybe AuthKey)
pgpKey = lens _pgpKey (\ s a -> s{_pgpKey = a})

-- | OAuth 2.0 token for the current user.
pgpOAuthToken :: Lens' ProductsGetPermissions' (Maybe OAuthToken)
pgpOAuthToken
  = lens _pgpOAuthToken
      (\ s a -> s{_pgpOAuthToken = a})

-- | The ID of the product.
pgpProductId :: Lens' ProductsGetPermissions' Text
pgpProductId
  = lens _pgpProductId (\ s a -> s{_pgpProductId = a})

-- | Selector specifying which fields to include in a partial response.
pgpFields :: Lens' ProductsGetPermissions' (Maybe Text)
pgpFields
  = lens _pgpFields (\ s a -> s{_pgpFields = a})

instance GoogleAuth ProductsGetPermissions' where
        _AuthKey = pgpKey . _Just
        _AuthToken = pgpOAuthToken . _Just

instance GoogleRequest ProductsGetPermissions' where
        type Rs ProductsGetPermissions' = ProductPermissions
        request = requestWith androidEnterpriseRequest
        requestWith rq ProductsGetPermissions'{..}
          = go _pgpEnterpriseId _pgpProductId _pgpQuotaUser
              (Just _pgpPrettyPrint)
              _pgpUserIP
              _pgpFields
              _pgpKey
              _pgpOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ProductsGetPermissionsResource)
                      rq
