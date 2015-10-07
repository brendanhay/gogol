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
-- Module      : Network.Google.Resource.Content.Inventory.Custombatch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates price and availability for multiple products or stores in a
-- single request. This operation does not update the expiration date of
-- the products.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentInventoryCustombatch@.
module Network.Google.Resource.Content.Inventory.Custombatch
    (
    -- * REST Resource
      InventoryCustombatchResource

    -- * Creating a Request
    , inventoryCustombatch'
    , InventoryCustombatch'

    -- * Request Lenses
    , icQuotaUser
    , icPrettyPrint
    , icUserIP
    , icPayload
    , icKey
    , icOAuthToken
    , icDryRun
    , icFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentInventoryCustombatch@ method which the
-- 'InventoryCustombatch'' request conforms to.
type InventoryCustombatchResource =
     "inventory" :>
       "batch" :>
         QueryParam "dryRun" Bool :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] InventoryCustomBatchRequest :>
                           Post '[JSON] InventoryCustomBatchResponse

-- | Updates price and availability for multiple products or stores in a
-- single request. This operation does not update the expiration date of
-- the products.
--
-- /See:/ 'inventoryCustombatch'' smart constructor.
data InventoryCustombatch' = InventoryCustombatch'
    { _icQuotaUser   :: !(Maybe Text)
    , _icPrettyPrint :: !Bool
    , _icUserIP      :: !(Maybe Text)
    , _icPayload     :: !InventoryCustomBatchRequest
    , _icKey         :: !(Maybe AuthKey)
    , _icOAuthToken  :: !(Maybe OAuthToken)
    , _icDryRun      :: !(Maybe Bool)
    , _icFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InventoryCustombatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icQuotaUser'
--
-- * 'icPrettyPrint'
--
-- * 'icUserIP'
--
-- * 'icPayload'
--
-- * 'icKey'
--
-- * 'icOAuthToken'
--
-- * 'icDryRun'
--
-- * 'icFields'
inventoryCustombatch'
    :: InventoryCustomBatchRequest -- ^ 'payload'
    -> InventoryCustombatch'
inventoryCustombatch' pIcPayload_ =
    InventoryCustombatch'
    { _icQuotaUser = Nothing
    , _icPrettyPrint = True
    , _icUserIP = Nothing
    , _icPayload = pIcPayload_
    , _icKey = Nothing
    , _icOAuthToken = Nothing
    , _icDryRun = Nothing
    , _icFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
icQuotaUser :: Lens' InventoryCustombatch' (Maybe Text)
icQuotaUser
  = lens _icQuotaUser (\ s a -> s{_icQuotaUser = a})

-- | Returns response with indentations and line breaks.
icPrettyPrint :: Lens' InventoryCustombatch' Bool
icPrettyPrint
  = lens _icPrettyPrint
      (\ s a -> s{_icPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
icUserIP :: Lens' InventoryCustombatch' (Maybe Text)
icUserIP = lens _icUserIP (\ s a -> s{_icUserIP = a})

-- | Multipart request metadata.
icPayload :: Lens' InventoryCustombatch' InventoryCustomBatchRequest
icPayload
  = lens _icPayload (\ s a -> s{_icPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
icKey :: Lens' InventoryCustombatch' (Maybe AuthKey)
icKey = lens _icKey (\ s a -> s{_icKey = a})

-- | OAuth 2.0 token for the current user.
icOAuthToken :: Lens' InventoryCustombatch' (Maybe OAuthToken)
icOAuthToken
  = lens _icOAuthToken (\ s a -> s{_icOAuthToken = a})

-- | Flag to run the request in dry-run mode.
icDryRun :: Lens' InventoryCustombatch' (Maybe Bool)
icDryRun = lens _icDryRun (\ s a -> s{_icDryRun = a})

-- | Selector specifying which fields to include in a partial response.
icFields :: Lens' InventoryCustombatch' (Maybe Text)
icFields = lens _icFields (\ s a -> s{_icFields = a})

instance GoogleAuth InventoryCustombatch' where
        _AuthKey = icKey . _Just
        _AuthToken = icOAuthToken . _Just

instance GoogleRequest InventoryCustombatch' where
        type Rs InventoryCustombatch' =
             InventoryCustomBatchResponse
        request = requestWith shoppingContentRequest
        requestWith rq InventoryCustombatch'{..}
          = go _icDryRun _icQuotaUser (Just _icPrettyPrint)
              _icUserIP
              _icFields
              _icKey
              _icOAuthToken
              (Just AltJSON)
              _icPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy InventoryCustombatchResource)
                      rq
