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
-- Module      : Network.Google.Resource.Content.Productstatuses.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the statuses of the products in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentProductstatusesList@.
module Network.Google.Resource.Content.Productstatuses.List
    (
    -- * REST Resource
      ProductstatusesListResource

    -- * Creating a Request
    , productstatusesList'
    , ProductstatusesList'

    -- * Request Lenses
    , plQuotaUser
    , plMerchantId
    , plPrettyPrint
    , plUserIP
    , plKey
    , plPageToken
    , plOAuthToken
    , plMaxResults
    , plFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentProductstatusesList@ method which the
-- 'ProductstatusesList'' request conforms to.
type ProductstatusesListResource =
     Capture "merchantId" Word64 :>
       "productstatuses" :>
         QueryParam "pageToken" Text :>
           QueryParam "maxResults" Word32 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ProductstatusesListResponse

-- | Lists the statuses of the products in your Merchant Center account.
--
-- /See:/ 'productstatusesList'' smart constructor.
data ProductstatusesList' = ProductstatusesList'
    { _plQuotaUser   :: !(Maybe Text)
    , _plMerchantId  :: !Word64
    , _plPrettyPrint :: !Bool
    , _plUserIP      :: !(Maybe Text)
    , _plKey         :: !(Maybe AuthKey)
    , _plPageToken   :: !(Maybe Text)
    , _plOAuthToken  :: !(Maybe OAuthToken)
    , _plMaxResults  :: !(Maybe Word32)
    , _plFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductstatusesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plQuotaUser'
--
-- * 'plMerchantId'
--
-- * 'plPrettyPrint'
--
-- * 'plUserIP'
--
-- * 'plKey'
--
-- * 'plPageToken'
--
-- * 'plOAuthToken'
--
-- * 'plMaxResults'
--
-- * 'plFields'
productstatusesList'
    :: Word64 -- ^ 'merchantId'
    -> ProductstatusesList'
productstatusesList' pPlMerchantId_ =
    ProductstatusesList'
    { _plQuotaUser = Nothing
    , _plMerchantId = pPlMerchantId_
    , _plPrettyPrint = True
    , _plUserIP = Nothing
    , _plKey = Nothing
    , _plPageToken = Nothing
    , _plOAuthToken = Nothing
    , _plMaxResults = Nothing
    , _plFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
plQuotaUser :: Lens' ProductstatusesList' (Maybe Text)
plQuotaUser
  = lens _plQuotaUser (\ s a -> s{_plQuotaUser = a})

-- | The ID of the managing account.
plMerchantId :: Lens' ProductstatusesList' Word64
plMerchantId
  = lens _plMerchantId (\ s a -> s{_plMerchantId = a})

-- | Returns response with indentations and line breaks.
plPrettyPrint :: Lens' ProductstatusesList' Bool
plPrettyPrint
  = lens _plPrettyPrint
      (\ s a -> s{_plPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
plUserIP :: Lens' ProductstatusesList' (Maybe Text)
plUserIP = lens _plUserIP (\ s a -> s{_plUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
plKey :: Lens' ProductstatusesList' (Maybe AuthKey)
plKey = lens _plKey (\ s a -> s{_plKey = a})

-- | The token returned by the previous request.
plPageToken :: Lens' ProductstatusesList' (Maybe Text)
plPageToken
  = lens _plPageToken (\ s a -> s{_plPageToken = a})

-- | OAuth 2.0 token for the current user.
plOAuthToken :: Lens' ProductstatusesList' (Maybe OAuthToken)
plOAuthToken
  = lens _plOAuthToken (\ s a -> s{_plOAuthToken = a})

-- | The maximum number of product statuses to return in the response, used
-- for paging.
plMaxResults :: Lens' ProductstatusesList' (Maybe Word32)
plMaxResults
  = lens _plMaxResults (\ s a -> s{_plMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
plFields :: Lens' ProductstatusesList' (Maybe Text)
plFields = lens _plFields (\ s a -> s{_plFields = a})

instance GoogleAuth ProductstatusesList' where
        _AuthKey = plKey . _Just
        _AuthToken = plOAuthToken . _Just

instance GoogleRequest ProductstatusesList' where
        type Rs ProductstatusesList' =
             ProductstatusesListResponse
        request = requestWith shoppingContentRequest
        requestWith rq ProductstatusesList'{..}
          = go _plMerchantId _plPageToken _plMaxResults
              _plQuotaUser
              (Just _plPrettyPrint)
              _plUserIP
              _plFields
              _plKey
              _plOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ProductstatusesListResource)
                      rq
