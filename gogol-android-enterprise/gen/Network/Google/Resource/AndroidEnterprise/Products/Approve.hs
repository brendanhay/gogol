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
    , paPayload
    , paKey
    , paOAuthToken
    , paProductId
    , paFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseProductsApprove@ method which the
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
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] ProductsApproveRequest :>
                               Post '[JSON] ()

-- | Approves the specified product (and the relevant app permissions, if
-- any).
--
-- /See:/ 'productsApprove'' smart constructor.
data ProductsApprove' = ProductsApprove'
    { _paQuotaUser    :: !(Maybe Text)
    , _paPrettyPrint  :: !Bool
    , _paEnterpriseId :: !Text
    , _paUserIP       :: !(Maybe Text)
    , _paPayload      :: !ProductsApproveRequest
    , _paKey          :: !(Maybe AuthKey)
    , _paOAuthToken   :: !(Maybe OAuthToken)
    , _paProductId    :: !Text
    , _paFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'paPayload'
--
-- * 'paKey'
--
-- * 'paOAuthToken'
--
-- * 'paProductId'
--
-- * 'paFields'
productsApprove'
    :: Text -- ^ 'enterpriseId'
    -> ProductsApproveRequest -- ^ 'payload'
    -> Text -- ^ 'productId'
    -> ProductsApprove'
productsApprove' pPaEnterpriseId_ pPaPayload_ pPaProductId_ =
    ProductsApprove'
    { _paQuotaUser = Nothing
    , _paPrettyPrint = True
    , _paEnterpriseId = pPaEnterpriseId_
    , _paUserIP = Nothing
    , _paPayload = pPaPayload_
    , _paKey = Nothing
    , _paOAuthToken = Nothing
    , _paProductId = pPaProductId_
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

-- | Multipart request metadata.
paPayload :: Lens' ProductsApprove' ProductsApproveRequest
paPayload
  = lens _paPayload (\ s a -> s{_paPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
paKey :: Lens' ProductsApprove' (Maybe AuthKey)
paKey = lens _paKey (\ s a -> s{_paKey = a})

-- | OAuth 2.0 token for the current user.
paOAuthToken :: Lens' ProductsApprove' (Maybe OAuthToken)
paOAuthToken
  = lens _paOAuthToken (\ s a -> s{_paOAuthToken = a})

-- | The ID of the product.
paProductId :: Lens' ProductsApprove' Text
paProductId
  = lens _paProductId (\ s a -> s{_paProductId = a})

-- | Selector specifying which fields to include in a partial response.
paFields :: Lens' ProductsApprove' (Maybe Text)
paFields = lens _paFields (\ s a -> s{_paFields = a})

instance GoogleAuth ProductsApprove' where
        _AuthKey = paKey . _Just
        _AuthToken = paOAuthToken . _Just

instance GoogleRequest ProductsApprove' where
        type Rs ProductsApprove' = ()
        request = requestWith androidEnterpriseRequest
        requestWith rq ProductsApprove'{..}
          = go _paEnterpriseId _paProductId _paQuotaUser
              (Just _paPrettyPrint)
              _paUserIP
              _paFields
              _paKey
              _paOAuthToken
              (Just AltJSON)
              _paPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy ProductsApproveResource)
                      rq
