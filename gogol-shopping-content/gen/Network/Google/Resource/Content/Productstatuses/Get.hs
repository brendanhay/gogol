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
-- Module      : Network.Google.Resource.Content.Productstatuses.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the status of a product from your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentProductstatusesGet@.
module Network.Google.Resource.Content.Productstatuses.Get
    (
    -- * REST Resource
      ProductstatusesGetResource

    -- * Creating a Request
    , productstatusesGet'
    , ProductstatusesGet'

    -- * Request Lenses
    , pggQuotaUser
    , pggMerchantId
    , pggPrettyPrint
    , pggUserIP
    , pggKey
    , pggOAuthToken
    , pggProductId
    , pggFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentProductstatusesGet@ method which the
-- 'ProductstatusesGet'' request conforms to.
type ProductstatusesGetResource =
     Capture "merchantId" Word64 :>
       "productstatuses" :>
         Capture "productId" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     Header "Authorization" OAuthToken :>
                       QueryParam "alt" AltJSON :> Get '[JSON] ProductStatus

-- | Gets the status of a product from your Merchant Center account.
--
-- /See:/ 'productstatusesGet'' smart constructor.
data ProductstatusesGet' = ProductstatusesGet'
    { _pggQuotaUser   :: !(Maybe Text)
    , _pggMerchantId  :: !Word64
    , _pggPrettyPrint :: !Bool
    , _pggUserIP      :: !(Maybe Text)
    , _pggKey         :: !(Maybe AuthKey)
    , _pggOAuthToken  :: !(Maybe OAuthToken)
    , _pggProductId   :: !Text
    , _pggFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductstatusesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pggQuotaUser'
--
-- * 'pggMerchantId'
--
-- * 'pggPrettyPrint'
--
-- * 'pggUserIP'
--
-- * 'pggKey'
--
-- * 'pggOAuthToken'
--
-- * 'pggProductId'
--
-- * 'pggFields'
productstatusesGet'
    :: Word64 -- ^ 'merchantId'
    -> Text -- ^ 'productId'
    -> ProductstatusesGet'
productstatusesGet' pPggMerchantId_ pPggProductId_ =
    ProductstatusesGet'
    { _pggQuotaUser = Nothing
    , _pggMerchantId = pPggMerchantId_
    , _pggPrettyPrint = True
    , _pggUserIP = Nothing
    , _pggKey = Nothing
    , _pggOAuthToken = Nothing
    , _pggProductId = pPggProductId_
    , _pggFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pggQuotaUser :: Lens' ProductstatusesGet' (Maybe Text)
pggQuotaUser
  = lens _pggQuotaUser (\ s a -> s{_pggQuotaUser = a})

-- | The ID of the managing account.
pggMerchantId :: Lens' ProductstatusesGet' Word64
pggMerchantId
  = lens _pggMerchantId
      (\ s a -> s{_pggMerchantId = a})

-- | Returns response with indentations and line breaks.
pggPrettyPrint :: Lens' ProductstatusesGet' Bool
pggPrettyPrint
  = lens _pggPrettyPrint
      (\ s a -> s{_pggPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pggUserIP :: Lens' ProductstatusesGet' (Maybe Text)
pggUserIP
  = lens _pggUserIP (\ s a -> s{_pggUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pggKey :: Lens' ProductstatusesGet' (Maybe AuthKey)
pggKey = lens _pggKey (\ s a -> s{_pggKey = a})

-- | OAuth 2.0 token for the current user.
pggOAuthToken :: Lens' ProductstatusesGet' (Maybe OAuthToken)
pggOAuthToken
  = lens _pggOAuthToken
      (\ s a -> s{_pggOAuthToken = a})

-- | The ID of the product.
pggProductId :: Lens' ProductstatusesGet' Text
pggProductId
  = lens _pggProductId (\ s a -> s{_pggProductId = a})

-- | Selector specifying which fields to include in a partial response.
pggFields :: Lens' ProductstatusesGet' (Maybe Text)
pggFields
  = lens _pggFields (\ s a -> s{_pggFields = a})

instance GoogleAuth ProductstatusesGet' where
        _AuthKey = pggKey . _Just
        _AuthToken = pggOAuthToken . _Just

instance GoogleRequest ProductstatusesGet' where
        type Rs ProductstatusesGet' = ProductStatus
        request = requestWith shoppingContentRequest
        requestWith rq ProductstatusesGet'{..}
          = go _pggMerchantId _pggProductId _pggQuotaUser
              (Just _pggPrettyPrint)
              _pggUserIP
              _pggFields
              _pggKey
              _pggOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ProductstatusesGetResource)
                      rq
