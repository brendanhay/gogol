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
-- Module      : Network.Google.Resource.AndroidEnterprise.Products.Approve
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Approves the specified product (and the relevant app permissions, if
-- any).
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseProductsApprove@.
module Network.Google.Resource.AndroidEnterprise.Products.Approve
    (
    -- * REST Resource
      ProductsApproveResource

    -- * Creating a Request
    , productsApprove'
    , ProductsApprove'

    -- * Request Lenses
    , paQuotaUser
    , paPrettyPrint
    , paEnterpriseId
    , paUserIP
    , paKey
    , paOAuthToken
    , paProductId
    , paProductsApproveRequest
    , paFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseProductsApprove@ which the
-- 'ProductsApprove'' request conforms to.
type ProductsApproveResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "products" :>
           Capture "productId" Text :>
             "approve" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] ProductsApproveRequest :>
                               Post '[JSON] ()

-- | Approves the specified product (and the relevant app permissions, if
-- any).
--
-- /See:/ 'productsApprove'' smart constructor.
data ProductsApprove' = ProductsApprove'
    { _paQuotaUser              :: !(Maybe Text)
    , _paPrettyPrint            :: !Bool
    , _paEnterpriseId           :: !Text
    , _paUserIP                 :: !(Maybe Text)
    , _paKey                    :: !(Maybe Key)
    , _paOAuthToken             :: !(Maybe OAuthToken)
    , _paProductId              :: !Text
    , _paProductsApproveRequest :: !ProductsApproveRequest
    , _paFields                 :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductsApprove'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paQuotaUser'
--
-- * 'paPrettyPrint'
--
-- * 'paEnterpriseId'
--
-- * 'paUserIP'
--
-- * 'paKey'
--
-- * 'paOAuthToken'
--
-- * 'paProductId'
--
-- * 'paProductsApproveRequest'
--
-- * 'paFields'
productsApprove'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'productId'
    -> ProductsApproveRequest -- ^ 'ProductsApproveRequest'
    -> ProductsApprove'
productsApprove' pPaEnterpriseId_ pPaProductId_ pPaProductsApproveRequest_ =
    ProductsApprove'
    { _paQuotaUser = Nothing
    , _paPrettyPrint = True
    , _paEnterpriseId = pPaEnterpriseId_
    , _paUserIP = Nothing
    , _paKey = Nothing
    , _paOAuthToken = Nothing
    , _paProductId = pPaProductId_
    , _paProductsApproveRequest = pPaProductsApproveRequest_
    , _paFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
paQuotaUser :: Lens' ProductsApprove' (Maybe Text)
paQuotaUser
  = lens _paQuotaUser (\ s a -> s{_paQuotaUser = a})

-- | Returns response with indentations and line breaks.
paPrettyPrint :: Lens' ProductsApprove' Bool
paPrettyPrint
  = lens _paPrettyPrint
      (\ s a -> s{_paPrettyPrint = a})

-- | The ID of the enterprise.
paEnterpriseId :: Lens' ProductsApprove' Text
paEnterpriseId
  = lens _paEnterpriseId
      (\ s a -> s{_paEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
paUserIP :: Lens' ProductsApprove' (Maybe Text)
paUserIP = lens _paUserIP (\ s a -> s{_paUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
paKey :: Lens' ProductsApprove' (Maybe Key)
paKey = lens _paKey (\ s a -> s{_paKey = a})

-- | OAuth 2.0 token for the current user.
paOAuthToken :: Lens' ProductsApprove' (Maybe OAuthToken)
paOAuthToken
  = lens _paOAuthToken (\ s a -> s{_paOAuthToken = a})

-- | The ID of the product.
paProductId :: Lens' ProductsApprove' Text
paProductId
  = lens _paProductId (\ s a -> s{_paProductId = a})

-- | Multipart request metadata.
paProductsApproveRequest :: Lens' ProductsApprove' ProductsApproveRequest
paProductsApproveRequest
  = lens _paProductsApproveRequest
      (\ s a -> s{_paProductsApproveRequest = a})

-- | Selector specifying which fields to include in a partial response.
paFields :: Lens' ProductsApprove' (Maybe Text)
paFields = lens _paFields (\ s a -> s{_paFields = a})

instance GoogleAuth ProductsApprove' where
        authKey = paKey . _Just
        authToken = paOAuthToken . _Just

instance GoogleRequest ProductsApprove' where
        type Rs ProductsApprove' = ()
        request
          = requestWithRoute defReq androidEnterpriseURL
        requestWithRoute r u ProductsApprove'{..}
          = go _paQuotaUser (Just _paPrettyPrint)
              _paEnterpriseId
              _paUserIP
              _paKey
              _paOAuthToken
              _paProductId
              _paFields
              (Just AltJSON)
              _paProductsApproveRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProductsApproveResource)
                      r
                      u
