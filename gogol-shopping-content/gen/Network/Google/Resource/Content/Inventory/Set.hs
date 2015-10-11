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
-- Module      : Network.Google.Resource.Content.Inventory.Set
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates price and availability of a product in your Merchant Center
-- account. This operation does not update the expiration date of the
-- product.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentInventorySet@.
module Network.Google.Resource.Content.Inventory.Set
    (
    -- * REST Resource
      InventorySetResource

    -- * Creating a Request
    , inventorySet'
    , InventorySet'

    -- * Request Lenses
    , isQuotaUser
    , isMerchantId
    , isPrettyPrint
    , isStoreCode
    , isUserIP
    , isPayload
    , isKey
    , isOAuthToken
    , isProductId
    , isDryRun
    , isFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentInventorySet@ method which the
-- 'InventorySet'' request conforms to.
type InventorySetResource =
     Capture "merchantId" Word64 :>
       "inventory" :>
         Capture "storeCode" Text :>
           "products" :>
             Capture "productId" Text :>
               QueryParam "dryRun" Bool :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           Header "Authorization" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] InventorySetRequest :>
                                 Post '[JSON] InventorySetResponse

-- | Updates price and availability of a product in your Merchant Center
-- account. This operation does not update the expiration date of the
-- product.
--
-- /See:/ 'inventorySet'' smart constructor.
data InventorySet' = InventorySet'
    { _isQuotaUser   :: !(Maybe Text)
    , _isMerchantId  :: !Word64
    , _isPrettyPrint :: !Bool
    , _isStoreCode   :: !Text
    , _isUserIP      :: !(Maybe Text)
    , _isPayload     :: !InventorySetRequest
    , _isKey         :: !(Maybe AuthKey)
    , _isOAuthToken  :: !(Maybe OAuthToken)
    , _isProductId   :: !Text
    , _isDryRun      :: !(Maybe Bool)
    , _isFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InventorySet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isQuotaUser'
--
-- * 'isMerchantId'
--
-- * 'isPrettyPrint'
--
-- * 'isStoreCode'
--
-- * 'isUserIP'
--
-- * 'isPayload'
--
-- * 'isKey'
--
-- * 'isOAuthToken'
--
-- * 'isProductId'
--
-- * 'isDryRun'
--
-- * 'isFields'
inventorySet'
    :: Word64 -- ^ 'merchantId'
    -> Text -- ^ 'storeCode'
    -> InventorySetRequest -- ^ 'payload'
    -> Text -- ^ 'productId'
    -> InventorySet'
inventorySet' pIsMerchantId_ pIsStoreCode_ pIsPayload_ pIsProductId_ =
    InventorySet'
    { _isQuotaUser = Nothing
    , _isMerchantId = pIsMerchantId_
    , _isPrettyPrint = True
    , _isStoreCode = pIsStoreCode_
    , _isUserIP = Nothing
    , _isPayload = pIsPayload_
    , _isKey = Nothing
    , _isOAuthToken = Nothing
    , _isProductId = pIsProductId_
    , _isDryRun = Nothing
    , _isFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
isQuotaUser :: Lens' InventorySet' (Maybe Text)
isQuotaUser
  = lens _isQuotaUser (\ s a -> s{_isQuotaUser = a})

-- | The ID of the managing account.
isMerchantId :: Lens' InventorySet' Word64
isMerchantId
  = lens _isMerchantId (\ s a -> s{_isMerchantId = a})

-- | Returns response with indentations and line breaks.
isPrettyPrint :: Lens' InventorySet' Bool
isPrettyPrint
  = lens _isPrettyPrint
      (\ s a -> s{_isPrettyPrint = a})

-- | The code of the store for which to update price and availability. Use
-- online to update price and availability of an online product.
isStoreCode :: Lens' InventorySet' Text
isStoreCode
  = lens _isStoreCode (\ s a -> s{_isStoreCode = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
isUserIP :: Lens' InventorySet' (Maybe Text)
isUserIP = lens _isUserIP (\ s a -> s{_isUserIP = a})

-- | Multipart request metadata.
isPayload :: Lens' InventorySet' InventorySetRequest
isPayload
  = lens _isPayload (\ s a -> s{_isPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
isKey :: Lens' InventorySet' (Maybe AuthKey)
isKey = lens _isKey (\ s a -> s{_isKey = a})

-- | OAuth 2.0 token for the current user.
isOAuthToken :: Lens' InventorySet' (Maybe OAuthToken)
isOAuthToken
  = lens _isOAuthToken (\ s a -> s{_isOAuthToken = a})

-- | The ID of the product for which to update price and availability.
isProductId :: Lens' InventorySet' Text
isProductId
  = lens _isProductId (\ s a -> s{_isProductId = a})

-- | Flag to run the request in dry-run mode.
isDryRun :: Lens' InventorySet' (Maybe Bool)
isDryRun = lens _isDryRun (\ s a -> s{_isDryRun = a})

-- | Selector specifying which fields to include in a partial response.
isFields :: Lens' InventorySet' (Maybe Text)
isFields = lens _isFields (\ s a -> s{_isFields = a})

instance GoogleAuth InventorySet' where
        _AuthKey = isKey . _Just
        _AuthToken = isOAuthToken . _Just

instance GoogleRequest InventorySet' where
        type Rs InventorySet' = InventorySetResponse
        request = requestWith shoppingContentRequest
        requestWith rq InventorySet'{..}
          = go _isMerchantId _isStoreCode _isProductId
              _isDryRun
              _isQuotaUser
              (Just _isPrettyPrint)
              _isUserIP
              _isFields
              _isKey
              _isOAuthToken
              (Just AltJSON)
              _isPayload
          where go
                  = clientBuild (Proxy :: Proxy InventorySetResource)
                      rq
