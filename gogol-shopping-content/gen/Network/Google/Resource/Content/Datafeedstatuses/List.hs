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
-- Module      : Network.Google.Resource.Content.Datafeedstatuses.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the statuses of the datafeeds in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentDatafeedstatusesList@.
module Network.Google.Resource.Content.Datafeedstatuses.List
    (
    -- * REST Resource
      DatafeedstatusesListResource

    -- * Creating a Request
    , datafeedstatusesList'
    , DatafeedstatusesList'

    -- * Request Lenses
    , dllQuotaUser
    , dllMerchantId
    , dllPrettyPrint
    , dllUserIP
    , dllKey
    , dllPageToken
    , dllOAuthToken
    , dllMaxResults
    , dllFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentDatafeedstatusesList@ method which the
-- 'DatafeedstatusesList'' request conforms to.
type DatafeedstatusesListResource =
     Capture "merchantId" Word64 :>
       "datafeedstatuses" :>
         QueryParam "pageToken" Text :>
           QueryParam "maxResults" Word32 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] DatafeedstatusesListResponse

-- | Lists the statuses of the datafeeds in your Merchant Center account.
--
-- /See:/ 'datafeedstatusesList'' smart constructor.
data DatafeedstatusesList' = DatafeedstatusesList'
    { _dllQuotaUser   :: !(Maybe Text)
    , _dllMerchantId  :: !Word64
    , _dllPrettyPrint :: !Bool
    , _dllUserIP      :: !(Maybe Text)
    , _dllKey         :: !(Maybe AuthKey)
    , _dllPageToken   :: !(Maybe Text)
    , _dllOAuthToken  :: !(Maybe OAuthToken)
    , _dllMaxResults  :: !(Maybe Word32)
    , _dllFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatafeedstatusesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dllQuotaUser'
--
-- * 'dllMerchantId'
--
-- * 'dllPrettyPrint'
--
-- * 'dllUserIP'
--
-- * 'dllKey'
--
-- * 'dllPageToken'
--
-- * 'dllOAuthToken'
--
-- * 'dllMaxResults'
--
-- * 'dllFields'
datafeedstatusesList'
    :: Word64 -- ^ 'merchantId'
    -> DatafeedstatusesList'
datafeedstatusesList' pDllMerchantId_ =
    DatafeedstatusesList'
    { _dllQuotaUser = Nothing
    , _dllMerchantId = pDllMerchantId_
    , _dllPrettyPrint = True
    , _dllUserIP = Nothing
    , _dllKey = Nothing
    , _dllPageToken = Nothing
    , _dllOAuthToken = Nothing
    , _dllMaxResults = Nothing
    , _dllFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dllQuotaUser :: Lens' DatafeedstatusesList' (Maybe Text)
dllQuotaUser
  = lens _dllQuotaUser (\ s a -> s{_dllQuotaUser = a})

-- | The ID of the managing account.
dllMerchantId :: Lens' DatafeedstatusesList' Word64
dllMerchantId
  = lens _dllMerchantId
      (\ s a -> s{_dllMerchantId = a})

-- | Returns response with indentations and line breaks.
dllPrettyPrint :: Lens' DatafeedstatusesList' Bool
dllPrettyPrint
  = lens _dllPrettyPrint
      (\ s a -> s{_dllPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dllUserIP :: Lens' DatafeedstatusesList' (Maybe Text)
dllUserIP
  = lens _dllUserIP (\ s a -> s{_dllUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dllKey :: Lens' DatafeedstatusesList' (Maybe AuthKey)
dllKey = lens _dllKey (\ s a -> s{_dllKey = a})

-- | The token returned by the previous request.
dllPageToken :: Lens' DatafeedstatusesList' (Maybe Text)
dllPageToken
  = lens _dllPageToken (\ s a -> s{_dllPageToken = a})

-- | OAuth 2.0 token for the current user.
dllOAuthToken :: Lens' DatafeedstatusesList' (Maybe OAuthToken)
dllOAuthToken
  = lens _dllOAuthToken
      (\ s a -> s{_dllOAuthToken = a})

-- | The maximum number of products to return in the response, used for
-- paging.
dllMaxResults :: Lens' DatafeedstatusesList' (Maybe Word32)
dllMaxResults
  = lens _dllMaxResults
      (\ s a -> s{_dllMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
dllFields :: Lens' DatafeedstatusesList' (Maybe Text)
dllFields
  = lens _dllFields (\ s a -> s{_dllFields = a})

instance GoogleAuth DatafeedstatusesList' where
        _AuthKey = dllKey . _Just
        _AuthToken = dllOAuthToken . _Just

instance GoogleRequest DatafeedstatusesList' where
        type Rs DatafeedstatusesList' =
             DatafeedstatusesListResponse
        request = requestWith shoppingContentRequest
        requestWith rq DatafeedstatusesList'{..}
          = go _dllMerchantId _dllPageToken _dllMaxResults
              _dllQuotaUser
              (Just _dllPrettyPrint)
              _dllUserIP
              _dllFields
              _dllKey
              _dllOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy DatafeedstatusesListResource)
                      rq
