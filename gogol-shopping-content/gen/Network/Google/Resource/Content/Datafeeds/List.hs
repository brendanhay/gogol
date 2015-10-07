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
-- Module      : Network.Google.Resource.Content.Datafeeds.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the datafeeds in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentDatafeedsList@.
module Network.Google.Resource.Content.Datafeeds.List
    (
    -- * REST Resource
      DatafeedsListResource

    -- * Creating a Request
    , datafeedsList'
    , DatafeedsList'

    -- * Request Lenses
    , dlQuotaUser
    , dlMerchantId
    , dlPrettyPrint
    , dlUserIP
    , dlKey
    , dlPageToken
    , dlOAuthToken
    , dlMaxResults
    , dlFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentDatafeedsList@ method which the
-- 'DatafeedsList'' request conforms to.
type DatafeedsListResource =
     Capture "merchantId" Word64 :>
       "datafeeds" :>
         QueryParam "pageToken" Text :>
           QueryParam "maxResults" Word32 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] DatafeedsListResponse

-- | Lists the datafeeds in your Merchant Center account.
--
-- /See:/ 'datafeedsList'' smart constructor.
data DatafeedsList' = DatafeedsList'
    { _dlQuotaUser   :: !(Maybe Text)
    , _dlMerchantId  :: !Word64
    , _dlPrettyPrint :: !Bool
    , _dlUserIP      :: !(Maybe Text)
    , _dlKey         :: !(Maybe AuthKey)
    , _dlPageToken   :: !(Maybe Text)
    , _dlOAuthToken  :: !(Maybe OAuthToken)
    , _dlMaxResults  :: !(Maybe Word32)
    , _dlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatafeedsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlQuotaUser'
--
-- * 'dlMerchantId'
--
-- * 'dlPrettyPrint'
--
-- * 'dlUserIP'
--
-- * 'dlKey'
--
-- * 'dlPageToken'
--
-- * 'dlOAuthToken'
--
-- * 'dlMaxResults'
--
-- * 'dlFields'
datafeedsList'
    :: Word64 -- ^ 'merchantId'
    -> DatafeedsList'
datafeedsList' pDlMerchantId_ =
    DatafeedsList'
    { _dlQuotaUser = Nothing
    , _dlMerchantId = pDlMerchantId_
    , _dlPrettyPrint = True
    , _dlUserIP = Nothing
    , _dlKey = Nothing
    , _dlPageToken = Nothing
    , _dlOAuthToken = Nothing
    , _dlMaxResults = Nothing
    , _dlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dlQuotaUser :: Lens' DatafeedsList' (Maybe Text)
dlQuotaUser
  = lens _dlQuotaUser (\ s a -> s{_dlQuotaUser = a})

-- | The ID of the managing account.
dlMerchantId :: Lens' DatafeedsList' Word64
dlMerchantId
  = lens _dlMerchantId (\ s a -> s{_dlMerchantId = a})

-- | Returns response with indentations and line breaks.
dlPrettyPrint :: Lens' DatafeedsList' Bool
dlPrettyPrint
  = lens _dlPrettyPrint
      (\ s a -> s{_dlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dlUserIP :: Lens' DatafeedsList' (Maybe Text)
dlUserIP = lens _dlUserIP (\ s a -> s{_dlUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dlKey :: Lens' DatafeedsList' (Maybe AuthKey)
dlKey = lens _dlKey (\ s a -> s{_dlKey = a})

-- | The token returned by the previous request.
dlPageToken :: Lens' DatafeedsList' (Maybe Text)
dlPageToken
  = lens _dlPageToken (\ s a -> s{_dlPageToken = a})

-- | OAuth 2.0 token for the current user.
dlOAuthToken :: Lens' DatafeedsList' (Maybe OAuthToken)
dlOAuthToken
  = lens _dlOAuthToken (\ s a -> s{_dlOAuthToken = a})

-- | The maximum number of products to return in the response, used for
-- paging.
dlMaxResults :: Lens' DatafeedsList' (Maybe Word32)
dlMaxResults
  = lens _dlMaxResults (\ s a -> s{_dlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
dlFields :: Lens' DatafeedsList' (Maybe Text)
dlFields = lens _dlFields (\ s a -> s{_dlFields = a})

instance GoogleAuth DatafeedsList' where
        _AuthKey = dlKey . _Just
        _AuthToken = dlOAuthToken . _Just

instance GoogleRequest DatafeedsList' where
        type Rs DatafeedsList' = DatafeedsListResponse
        request = requestWith shoppingContentRequest
        requestWith rq DatafeedsList'{..}
          = go _dlMerchantId _dlPageToken _dlMaxResults
              _dlQuotaUser
              (Just _dlPrettyPrint)
              _dlUserIP
              _dlFields
              _dlKey
              _dlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy DatafeedsListResource)
                      rq
