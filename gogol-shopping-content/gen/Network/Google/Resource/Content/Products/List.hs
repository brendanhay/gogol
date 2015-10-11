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
-- Module      : Network.Google.Resource.Content.Products.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the products in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentProductsList@.
module Network.Google.Resource.Content.Products.List
    (
    -- * REST Resource
      ProductsListResource

    -- * Creating a Request
    , productsList'
    , ProductsList'

    -- * Request Lenses
    , proQuotaUser
    , proMerchantId
    , proPrettyPrint
    , proUserIP
    , proKey
    , proPageToken
    , proOAuthToken
    , proMaxResults
    , proFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentProductsList@ method which the
-- 'ProductsList'' request conforms to.
type ProductsListResource =
     Capture "merchantId" Word64 :>
       "products" :>
         QueryParam "pageToken" Text :>
           QueryParam "maxResults" Word32 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       Header "Authorization" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ProductsListResponse

-- | Lists the products in your Merchant Center account.
--
-- /See:/ 'productsList'' smart constructor.
data ProductsList' = ProductsList'
    { _proQuotaUser   :: !(Maybe Text)
    , _proMerchantId  :: !Word64
    , _proPrettyPrint :: !Bool
    , _proUserIP      :: !(Maybe Text)
    , _proKey         :: !(Maybe AuthKey)
    , _proPageToken   :: !(Maybe Text)
    , _proOAuthToken  :: !(Maybe OAuthToken)
    , _proMaxResults  :: !(Maybe Word32)
    , _proFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'proQuotaUser'
--
-- * 'proMerchantId'
--
-- * 'proPrettyPrint'
--
-- * 'proUserIP'
--
-- * 'proKey'
--
-- * 'proPageToken'
--
-- * 'proOAuthToken'
--
-- * 'proMaxResults'
--
-- * 'proFields'
productsList'
    :: Word64 -- ^ 'merchantId'
    -> ProductsList'
productsList' pProMerchantId_ =
    ProductsList'
    { _proQuotaUser = Nothing
    , _proMerchantId = pProMerchantId_
    , _proPrettyPrint = True
    , _proUserIP = Nothing
    , _proKey = Nothing
    , _proPageToken = Nothing
    , _proOAuthToken = Nothing
    , _proMaxResults = Nothing
    , _proFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
proQuotaUser :: Lens' ProductsList' (Maybe Text)
proQuotaUser
  = lens _proQuotaUser (\ s a -> s{_proQuotaUser = a})

-- | The ID of the managing account.
proMerchantId :: Lens' ProductsList' Word64
proMerchantId
  = lens _proMerchantId
      (\ s a -> s{_proMerchantId = a})

-- | Returns response with indentations and line breaks.
proPrettyPrint :: Lens' ProductsList' Bool
proPrettyPrint
  = lens _proPrettyPrint
      (\ s a -> s{_proPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
proUserIP :: Lens' ProductsList' (Maybe Text)
proUserIP
  = lens _proUserIP (\ s a -> s{_proUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
proKey :: Lens' ProductsList' (Maybe AuthKey)
proKey = lens _proKey (\ s a -> s{_proKey = a})

-- | The token returned by the previous request.
proPageToken :: Lens' ProductsList' (Maybe Text)
proPageToken
  = lens _proPageToken (\ s a -> s{_proPageToken = a})

-- | OAuth 2.0 token for the current user.
proOAuthToken :: Lens' ProductsList' (Maybe OAuthToken)
proOAuthToken
  = lens _proOAuthToken
      (\ s a -> s{_proOAuthToken = a})

-- | The maximum number of products to return in the response, used for
-- paging.
proMaxResults :: Lens' ProductsList' (Maybe Word32)
proMaxResults
  = lens _proMaxResults
      (\ s a -> s{_proMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
proFields :: Lens' ProductsList' (Maybe Text)
proFields
  = lens _proFields (\ s a -> s{_proFields = a})

instance GoogleAuth ProductsList' where
        _AuthKey = proKey . _Just
        _AuthToken = proOAuthToken . _Just

instance GoogleRequest ProductsList' where
        type Rs ProductsList' = ProductsListResponse
        request = requestWith shoppingContentRequest
        requestWith rq ProductsList'{..}
          = go _proMerchantId _proPageToken _proMaxResults
              _proQuotaUser
              (Just _proPrettyPrint)
              _proUserIP
              _proFields
              _proKey
              _proOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy ProductsListResource)
                      rq
