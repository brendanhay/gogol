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
-- Module      : Network.Google.Resource.AdSenseHost.CustomChannels.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all host custom channels in this AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @AdsensehostCustomChannelsList@.
module Network.Google.Resource.AdSenseHost.CustomChannels.List
    (
    -- * REST Resource
      CustomChannelsListResource

    -- * Creating a Request
    , customChannelsList'
    , CustomChannelsList'

    -- * Request Lenses
    , cclQuotaUser
    , cclPrettyPrint
    , cclUserIP
    , cclAdClientId
    , cclKey
    , cclPageToken
    , cclOAuthToken
    , cclMaxResults
    , cclFields
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsensehostCustomChannelsList@ which the
-- 'CustomChannelsList'' request conforms to.
type CustomChannelsListResource =
     "adclients" :>
       Capture "adClientId" Text :>
         "customchannels" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "pageToken" Text :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "maxResults" Word32 :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] CustomChannels

-- | List all host custom channels in this AdSense account.
--
-- /See:/ 'customChannelsList'' smart constructor.
data CustomChannelsList' = CustomChannelsList'
    { _cclQuotaUser   :: !(Maybe Text)
    , _cclPrettyPrint :: !Bool
    , _cclUserIP      :: !(Maybe Text)
    , _cclAdClientId  :: !Text
    , _cclKey         :: !(Maybe Key)
    , _cclPageToken   :: !(Maybe Text)
    , _cclOAuthToken  :: !(Maybe OAuthToken)
    , _cclMaxResults  :: !(Maybe Word32)
    , _cclFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomChannelsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cclQuotaUser'
--
-- * 'cclPrettyPrint'
--
-- * 'cclUserIP'
--
-- * 'cclAdClientId'
--
-- * 'cclKey'
--
-- * 'cclPageToken'
--
-- * 'cclOAuthToken'
--
-- * 'cclMaxResults'
--
-- * 'cclFields'
customChannelsList'
    :: Text -- ^ 'adClientId'
    -> CustomChannelsList'
customChannelsList' pCclAdClientId_ =
    CustomChannelsList'
    { _cclQuotaUser = Nothing
    , _cclPrettyPrint = True
    , _cclUserIP = Nothing
    , _cclAdClientId = pCclAdClientId_
    , _cclKey = Nothing
    , _cclPageToken = Nothing
    , _cclOAuthToken = Nothing
    , _cclMaxResults = Nothing
    , _cclFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cclQuotaUser :: Lens' CustomChannelsList' (Maybe Text)
cclQuotaUser
  = lens _cclQuotaUser (\ s a -> s{_cclQuotaUser = a})

-- | Returns response with indentations and line breaks.
cclPrettyPrint :: Lens' CustomChannelsList' Bool
cclPrettyPrint
  = lens _cclPrettyPrint
      (\ s a -> s{_cclPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cclUserIP :: Lens' CustomChannelsList' (Maybe Text)
cclUserIP
  = lens _cclUserIP (\ s a -> s{_cclUserIP = a})

-- | Ad client for which to list custom channels.
cclAdClientId :: Lens' CustomChannelsList' Text
cclAdClientId
  = lens _cclAdClientId
      (\ s a -> s{_cclAdClientId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cclKey :: Lens' CustomChannelsList' (Maybe Key)
cclKey = lens _cclKey (\ s a -> s{_cclKey = a})

-- | A continuation token, used to page through custom channels. To retrieve
-- the next page, set this parameter to the value of \"nextPageToken\" from
-- the previous response.
cclPageToken :: Lens' CustomChannelsList' (Maybe Text)
cclPageToken
  = lens _cclPageToken (\ s a -> s{_cclPageToken = a})

-- | OAuth 2.0 token for the current user.
cclOAuthToken :: Lens' CustomChannelsList' (Maybe OAuthToken)
cclOAuthToken
  = lens _cclOAuthToken
      (\ s a -> s{_cclOAuthToken = a})

-- | The maximum number of custom channels to include in the response, used
-- for paging.
cclMaxResults :: Lens' CustomChannelsList' (Maybe Word32)
cclMaxResults
  = lens _cclMaxResults
      (\ s a -> s{_cclMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
cclFields :: Lens' CustomChannelsList' (Maybe Text)
cclFields
  = lens _cclFields (\ s a -> s{_cclFields = a})

instance GoogleAuth CustomChannelsList' where
        authKey = cclKey . _Just
        authToken = cclOAuthToken . _Just

instance GoogleRequest CustomChannelsList' where
        type Rs CustomChannelsList' = CustomChannels
        request = requestWithRoute defReq adSenseHostURL
        requestWithRoute r u CustomChannelsList'{..}
          = go _cclQuotaUser (Just _cclPrettyPrint) _cclUserIP
              _cclAdClientId
              _cclKey
              _cclPageToken
              _cclOAuthToken
              _cclMaxResults
              _cclFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CustomChannelsListResource)
                      r
                      u
