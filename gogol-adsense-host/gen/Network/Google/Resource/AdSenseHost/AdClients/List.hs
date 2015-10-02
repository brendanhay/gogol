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
-- Module      : Network.Google.Resource.AdSenseHost.AdClients.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all host ad clients in this AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @AdsensehostAdClientsList@.
module Network.Google.Resource.AdSenseHost.AdClients.List
    (
    -- * REST Resource
      AdClientsListResource

    -- * Creating a Request
    , adClientsList'
    , AdClientsList'

    -- * Request Lenses
    , aclQuotaUser
    , aclPrettyPrint
    , aclUserIP
    , aclKey
    , aclPageToken
    , aclOAuthToken
    , aclMaxResults
    , aclFields
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsensehostAdClientsList@ which the
-- 'AdClientsList'' request conforms to.
type AdClientsListResource =
     "adclients" :>
       QueryParam "maxResults" Word32 :>
         QueryParam "pageToken" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Get '[JSON] AdClients

-- | List all host ad clients in this AdSense account.
--
-- /See:/ 'adClientsList'' smart constructor.
data AdClientsList' = AdClientsList'
    { _aclQuotaUser   :: !(Maybe Text)
    , _aclPrettyPrint :: !Bool
    , _aclUserIP      :: !(Maybe Text)
    , _aclKey         :: !(Maybe Key)
    , _aclPageToken   :: !(Maybe Text)
    , _aclOAuthToken  :: !(Maybe OAuthToken)
    , _aclMaxResults  :: !(Maybe Word32)
    , _aclFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdClientsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aclQuotaUser'
--
-- * 'aclPrettyPrint'
--
-- * 'aclUserIP'
--
-- * 'aclKey'
--
-- * 'aclPageToken'
--
-- * 'aclOAuthToken'
--
-- * 'aclMaxResults'
--
-- * 'aclFields'
adClientsList'
    :: AdClientsList'
adClientsList' =
    AdClientsList'
    { _aclQuotaUser = Nothing
    , _aclPrettyPrint = True
    , _aclUserIP = Nothing
    , _aclKey = Nothing
    , _aclPageToken = Nothing
    , _aclOAuthToken = Nothing
    , _aclMaxResults = Nothing
    , _aclFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aclQuotaUser :: Lens' AdClientsList' (Maybe Text)
aclQuotaUser
  = lens _aclQuotaUser (\ s a -> s{_aclQuotaUser = a})

-- | Returns response with indentations and line breaks.
aclPrettyPrint :: Lens' AdClientsList' Bool
aclPrettyPrint
  = lens _aclPrettyPrint
      (\ s a -> s{_aclPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aclUserIP :: Lens' AdClientsList' (Maybe Text)
aclUserIP
  = lens _aclUserIP (\ s a -> s{_aclUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aclKey :: Lens' AdClientsList' (Maybe Key)
aclKey = lens _aclKey (\ s a -> s{_aclKey = a})

-- | A continuation token, used to page through ad clients. To retrieve the
-- next page, set this parameter to the value of \"nextPageToken\" from the
-- previous response.
aclPageToken :: Lens' AdClientsList' (Maybe Text)
aclPageToken
  = lens _aclPageToken (\ s a -> s{_aclPageToken = a})

-- | OAuth 2.0 token for the current user.
aclOAuthToken :: Lens' AdClientsList' (Maybe OAuthToken)
aclOAuthToken
  = lens _aclOAuthToken
      (\ s a -> s{_aclOAuthToken = a})

-- | The maximum number of ad clients to include in the response, used for
-- paging.
aclMaxResults :: Lens' AdClientsList' (Maybe Word32)
aclMaxResults
  = lens _aclMaxResults
      (\ s a -> s{_aclMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
aclFields :: Lens' AdClientsList' (Maybe Text)
aclFields
  = lens _aclFields (\ s a -> s{_aclFields = a})

instance GoogleAuth AdClientsList' where
        authKey = aclKey . _Just
        authToken = aclOAuthToken . _Just

instance GoogleRequest AdClientsList' where
        type Rs AdClientsList' = AdClients
        request = requestWithRoute defReq adSenseHostURL
        requestWithRoute r u AdClientsList'{..}
          = go _aclMaxResults _aclPageToken _aclQuotaUser
              (Just _aclPrettyPrint)
              _aclUserIP
              _aclFields
              _aclKey
              _aclOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AdClientsListResource)
                      r
                      u
