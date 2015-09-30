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
-- Module      : Network.Google.Resource.Androidenterprise.Products.UpdatePermissions
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the set of Android app permissions for this app that have been
-- accepted by the enterprise.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidenterpriseProductsUpdatePermissions@.
module Network.Google.Resource.Androidenterprise.Products.UpdatePermissions
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
    , pupUserIp
    , pupKey
    , pupOauthToken
    , pupProductId
    , pupFields
    , pupAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterpriseProductsUpdatePermissions@ which the
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
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :>
                             Put '[JSON] ProductPermissions

-- | Updates the set of Android app permissions for this app that have been
-- accepted by the enterprise.
--
-- /See:/ 'productsUpdatePermissions'' smart constructor.
data ProductsUpdatePermissions' = ProductsUpdatePermissions'
    { _pupQuotaUser    :: !(Maybe Text)
    , _pupPrettyPrint  :: !Bool
    , _pupEnterpriseId :: !Text
    , _pupUserIp       :: !(Maybe Text)
    , _pupKey          :: !(Maybe Text)
    , _pupOauthToken   :: !(Maybe Text)
    , _pupProductId    :: !Text
    , _pupFields       :: !(Maybe Text)
    , _pupAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'pupUserIp'
--
-- * 'pupKey'
--
-- * 'pupOauthToken'
--
-- * 'pupProductId'
--
-- * 'pupFields'
--
-- * 'pupAlt'
productsUpdatePermissions'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'productId'
    -> ProductsUpdatePermissions'
productsUpdatePermissions' pPupEnterpriseId_ pPupProductId_ =
    ProductsUpdatePermissions'
    { _pupQuotaUser = Nothing
    , _pupPrettyPrint = True
    , _pupEnterpriseId = pPupEnterpriseId_
    , _pupUserIp = Nothing
    , _pupKey = Nothing
    , _pupOauthToken = Nothing
    , _pupProductId = pPupProductId_
    , _pupFields = Nothing
    , _pupAlt = JSON
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
pupUserIp :: Lens' ProductsUpdatePermissions' (Maybe Text)
pupUserIp
  = lens _pupUserIp (\ s a -> s{_pupUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pupKey :: Lens' ProductsUpdatePermissions' (Maybe Text)
pupKey = lens _pupKey (\ s a -> s{_pupKey = a})

-- | OAuth 2.0 token for the current user.
pupOauthToken :: Lens' ProductsUpdatePermissions' (Maybe Text)
pupOauthToken
  = lens _pupOauthToken
      (\ s a -> s{_pupOauthToken = a})

-- | The ID of the product.
pupProductId :: Lens' ProductsUpdatePermissions' Text
pupProductId
  = lens _pupProductId (\ s a -> s{_pupProductId = a})

-- | Selector specifying which fields to include in a partial response.
pupFields :: Lens' ProductsUpdatePermissions' (Maybe Text)
pupFields
  = lens _pupFields (\ s a -> s{_pupFields = a})

-- | Data format for the response.
pupAlt :: Lens' ProductsUpdatePermissions' Alt
pupAlt = lens _pupAlt (\ s a -> s{_pupAlt = a})

instance GoogleRequest ProductsUpdatePermissions'
         where
        type Rs ProductsUpdatePermissions' =
             ProductPermissions
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u ProductsUpdatePermissions'{..}
          = go _pupQuotaUser (Just _pupPrettyPrint)
              _pupEnterpriseId
              _pupUserIp
              _pupKey
              _pupOauthToken
              _pupProductId
              _pupFields
              (Just _pupAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProductsUpdatePermissionsResource)
                      r
                      u
