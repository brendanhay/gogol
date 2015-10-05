{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AndroidEnterprise.Products.UpdatePermissions
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the set of Android app permissions for this app that have been
-- accepted by the enterprise.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseProductsUpdatePermissions@.
module Network.Google.Resource.AndroidEnterprise.Products.UpdatePermissions
    (
    -- * REST Resource
      ProductsUpdatePermissionsResource

    -- * Creating a Request
    , productsUpdatePermissions'
    , ProductsUpdatePermissions'

    -- * Request Lenses
    , pupQuotaUser
    , pupPrettyPrint
    , pupEnterpriseId
    , pupUserIP
    , pupPayload
    , pupKey
    , pupOAuthToken
    , pupProductId
    , pupFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseProductsUpdatePermissions@ which the
-- 'ProductsUpdatePermissions'' request conforms to.
type ProductsUpdatePermissionsResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "products" :>
           Capture "productId" Text :>
             "permissions" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] ProductPermissions :>
                               Put '[JSON] ProductPermissions

-- | Updates the set of Android app permissions for this app that have been
-- accepted by the enterprise.
--
-- /See:/ 'productsUpdatePermissions'' smart constructor.
data ProductsUpdatePermissions' = ProductsUpdatePermissions'
    { _pupQuotaUser    :: !(Maybe Text)
    , _pupPrettyPrint  :: !Bool
    , _pupEnterpriseId :: !Text
    , _pupUserIP       :: !(Maybe Text)
    , _pupPayload      :: !ProductPermissions
    , _pupKey          :: !(Maybe Key)
    , _pupOAuthToken   :: !(Maybe OAuthToken)
    , _pupProductId    :: !Text
    , _pupFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductsUpdatePermissions'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pupQuotaUser'
--
-- * 'pupPrettyPrint'
--
-- * 'pupEnterpriseId'
--
-- * 'pupUserIP'
--
-- * 'pupPayload'
--
-- * 'pupKey'
--
-- * 'pupOAuthToken'
--
-- * 'pupProductId'
--
-- * 'pupFields'
productsUpdatePermissions'
    :: Text -- ^ 'enterpriseId'
    -> ProductPermissions -- ^ 'payload'
    -> Text -- ^ 'productId'
    -> ProductsUpdatePermissions'
productsUpdatePermissions' pPupEnterpriseId_ pPupPayload_ pPupProductId_ =
    ProductsUpdatePermissions'
    { _pupQuotaUser = Nothing
    , _pupPrettyPrint = True
    , _pupEnterpriseId = pPupEnterpriseId_
    , _pupUserIP = Nothing
    , _pupPayload = pPupPayload_
    , _pupKey = Nothing
    , _pupOAuthToken = Nothing
    , _pupProductId = pPupProductId_
    , _pupFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pupQuotaUser :: Lens' ProductsUpdatePermissions' (Maybe Text)
pupQuotaUser
  = lens _pupQuotaUser (\ s a -> s{_pupQuotaUser = a})

-- | Returns response with indentations and line breaks.
pupPrettyPrint :: Lens' ProductsUpdatePermissions' Bool
pupPrettyPrint
  = lens _pupPrettyPrint
      (\ s a -> s{_pupPrettyPrint = a})

-- | The ID of the enterprise.
pupEnterpriseId :: Lens' ProductsUpdatePermissions' Text
pupEnterpriseId
  = lens _pupEnterpriseId
      (\ s a -> s{_pupEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pupUserIP :: Lens' ProductsUpdatePermissions' (Maybe Text)
pupUserIP
  = lens _pupUserIP (\ s a -> s{_pupUserIP = a})

-- | Multipart request metadata.
pupPayload :: Lens' ProductsUpdatePermissions' ProductPermissions
pupPayload
  = lens _pupPayload (\ s a -> s{_pupPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pupKey :: Lens' ProductsUpdatePermissions' (Maybe Key)
pupKey = lens _pupKey (\ s a -> s{_pupKey = a})

-- | OAuth 2.0 token for the current user.
pupOAuthToken :: Lens' ProductsUpdatePermissions' (Maybe OAuthToken)
pupOAuthToken
  = lens _pupOAuthToken
      (\ s a -> s{_pupOAuthToken = a})

-- | The ID of the product.
pupProductId :: Lens' ProductsUpdatePermissions' Text
pupProductId
  = lens _pupProductId (\ s a -> s{_pupProductId = a})

-- | Selector specifying which fields to include in a partial response.
pupFields :: Lens' ProductsUpdatePermissions' (Maybe Text)
pupFields
  = lens _pupFields (\ s a -> s{_pupFields = a})

instance GoogleAuth ProductsUpdatePermissions' where
        authKey = pupKey . _Just
        authToken = pupOAuthToken . _Just

instance GoogleRequest ProductsUpdatePermissions'
         where
        type Rs ProductsUpdatePermissions' =
             ProductPermissions
        request
          = requestWithRoute defReq androidEnterpriseURL
        requestWithRoute r u ProductsUpdatePermissions'{..}
          = go _pupEnterpriseId _pupProductId _pupQuotaUser
              (Just _pupPrettyPrint)
              _pupUserIP
              _pupFields
              _pupKey
              _pupOAuthToken
              (Just AltJSON)
              _pupPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProductsUpdatePermissionsResource)
                      r
                      u
