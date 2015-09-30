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
-- Module      : Network.Google.Resource.Androidenterprise.Products.GetPermissions
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the Android app permissions required by this app.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidenterpriseProductsGetPermissions@.
module Network.Google.Resource.Androidenterprise.Products.GetPermissions
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
    , pgpUserIp
    , pgpKey
    , pgpOauthToken
    , pgpProductId
    , pgpFields
    , pgpAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterpriseProductsGetPermissions@ which the
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
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :>
                             Get '[JSON] ProductPermissions

-- | Retrieves the Android app permissions required by this app.
--
-- /See:/ 'productsGetPermissions'' smart constructor.
data ProductsGetPermissions' = ProductsGetPermissions'
    { _pgpQuotaUser    :: !(Maybe Text)
    , _pgpPrettyPrint  :: !Bool
    , _pgpEnterpriseId :: !Text
    , _pgpUserIp       :: !(Maybe Text)
    , _pgpKey          :: !(Maybe Text)
    , _pgpOauthToken   :: !(Maybe Text)
    , _pgpProductId    :: !Text
    , _pgpFields       :: !(Maybe Text)
    , _pgpAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'pgpUserIp'
--
-- * 'pgpKey'
--
-- * 'pgpOauthToken'
--
-- * 'pgpProductId'
--
-- * 'pgpFields'
--
-- * 'pgpAlt'
productsGetPermissions'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'productId'
    -> ProductsGetPermissions'
productsGetPermissions' pPgpEnterpriseId_ pPgpProductId_ =
    ProductsGetPermissions'
    { _pgpQuotaUser = Nothing
    , _pgpPrettyPrint = True
    , _pgpEnterpriseId = pPgpEnterpriseId_
    , _pgpUserIp = Nothing
    , _pgpKey = Nothing
    , _pgpOauthToken = Nothing
    , _pgpProductId = pPgpProductId_
    , _pgpFields = Nothing
    , _pgpAlt = JSON
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
pgpUserIp :: Lens' ProductsGetPermissions' (Maybe Text)
pgpUserIp
  = lens _pgpUserIp (\ s a -> s{_pgpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pgpKey :: Lens' ProductsGetPermissions' (Maybe Text)
pgpKey = lens _pgpKey (\ s a -> s{_pgpKey = a})

-- | OAuth 2.0 token for the current user.
pgpOauthToken :: Lens' ProductsGetPermissions' (Maybe Text)
pgpOauthToken
  = lens _pgpOauthToken
      (\ s a -> s{_pgpOauthToken = a})

-- | The ID of the product.
pgpProductId :: Lens' ProductsGetPermissions' Text
pgpProductId
  = lens _pgpProductId (\ s a -> s{_pgpProductId = a})

-- | Selector specifying which fields to include in a partial response.
pgpFields :: Lens' ProductsGetPermissions' (Maybe Text)
pgpFields
  = lens _pgpFields (\ s a -> s{_pgpFields = a})

-- | Data format for the response.
pgpAlt :: Lens' ProductsGetPermissions' Alt
pgpAlt = lens _pgpAlt (\ s a -> s{_pgpAlt = a})

instance GoogleRequest ProductsGetPermissions' where
        type Rs ProductsGetPermissions' = ProductPermissions
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u ProductsGetPermissions'{..}
          = go _pgpQuotaUser (Just _pgpPrettyPrint)
              _pgpEnterpriseId
              _pgpUserIp
              _pgpKey
              _pgpOauthToken
              _pgpProductId
              _pgpFields
              (Just _pgpAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProductsGetPermissionsResource)
                      r
                      u
