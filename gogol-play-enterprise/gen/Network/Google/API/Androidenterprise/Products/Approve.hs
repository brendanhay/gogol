{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Androidenterprise.Products.Approve
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Approves the specified product (and the relevant app permissions, if
-- any).
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @androidenterprise.products.approve@.
module Network.Google.API.Androidenterprise.Products.Approve
    (
    -- * REST Resource
      ProductsApproveAPI

    -- * Creating a Request
    , productsApprove'
    , ProductsApprove'

    -- * Request Lenses
    , paQuotaUser
    , paPrettyPrint
    , paEnterpriseId
    , paUserIp
    , paKey
    , paOauthToken
    , paProductId
    , paFields
    , paAlt
    ) where

import           Network.Google.Play.Enterprise.Types
import           Network.Google.Prelude

-- | A resource alias for androidenterprise.products.approve which the
-- 'ProductsApprove'' request conforms to.
type ProductsApproveAPI =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "products" :>
           Capture "productId" Text :>
             "approve" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Post '[JSON] ()

-- | Approves the specified product (and the relevant app permissions, if
-- any).
--
-- /See:/ 'productsApprove'' smart constructor.
data ProductsApprove' = ProductsApprove'
    { _paQuotaUser    :: !(Maybe Text)
    , _paPrettyPrint  :: !Bool
    , _paEnterpriseId :: !Text
    , _paUserIp       :: !(Maybe Text)
    , _paKey          :: !(Maybe Text)
    , _paOauthToken   :: !(Maybe Text)
    , _paProductId    :: !Text
    , _paFields       :: !(Maybe Text)
    , _paAlt          :: !Alt
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
-- * 'paUserIp'
--
-- * 'paKey'
--
-- * 'paOauthToken'
--
-- * 'paProductId'
--
-- * 'paFields'
--
-- * 'paAlt'
productsApprove'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'productId'
    -> ProductsApprove'
productsApprove' pPaEnterpriseId_ pPaProductId_ =
    ProductsApprove'
    { _paQuotaUser = Nothing
    , _paPrettyPrint = True
    , _paEnterpriseId = pPaEnterpriseId_
    , _paUserIp = Nothing
    , _paKey = Nothing
    , _paOauthToken = Nothing
    , _paProductId = pPaProductId_
    , _paFields = Nothing
    , _paAlt = JSON
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
paUserIp :: Lens' ProductsApprove' (Maybe Text)
paUserIp = lens _paUserIp (\ s a -> s{_paUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
paKey :: Lens' ProductsApprove' (Maybe Text)
paKey = lens _paKey (\ s a -> s{_paKey = a})

-- | OAuth 2.0 token for the current user.
paOauthToken :: Lens' ProductsApprove' (Maybe Text)
paOauthToken
  = lens _paOauthToken (\ s a -> s{_paOauthToken = a})

-- | The ID of the product.
paProductId :: Lens' ProductsApprove' Text
paProductId
  = lens _paProductId (\ s a -> s{_paProductId = a})

-- | Selector specifying which fields to include in a partial response.
paFields :: Lens' ProductsApprove' (Maybe Text)
paFields = lens _paFields (\ s a -> s{_paFields = a})

-- | Data format for the response.
paAlt :: Lens' ProductsApprove' Alt
paAlt = lens _paAlt (\ s a -> s{_paAlt = a})

instance GoogleRequest ProductsApprove' where
        type Rs ProductsApprove' = ()
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u ProductsApprove'{..}
          = go _paQuotaUser (Just _paPrettyPrint)
              _paEnterpriseId
              _paUserIp
              _paKey
              _paOauthToken
              _paProductId
              _paFields
              (Just _paAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy ProductsApproveAPI)
                      r
                      u
