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
-- Module      : Network.Google.Resource.AdSenseHost.URLChannels.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all host URL channels in the host AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @AdsensehostURLChannelsList@.
module Network.Google.Resource.AdSenseHost.URLChannels.List
    (
    -- * REST Resource
      URLChannelsListResource

    -- * Creating a Request
    , urlChannelsList'
    , URLChannelsList'

    -- * Request Lenses
    , uclQuotaUser
    , uclPrettyPrint
    , uclUserIP
    , uclAdClientId
    , uclKey
    , uclPageToken
    , uclOAuthToken
    , uclMaxResults
    , uclFields
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsensehostURLChannelsList@ which the
-- 'URLChannelsList'' request conforms to.
type URLChannelsListResource =
     "adclients" :>
       Capture "adClientId" Text :>
         "urlchannels" :>
           QueryParam "pageToken" Text :>
             QueryParam "maxResults" Word32 :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Get '[JSON] URLChannels

-- | List all host URL channels in the host AdSense account.
--
-- /See:/ 'urlChannelsList'' smart constructor.
data URLChannelsList' = URLChannelsList'
    { _uclQuotaUser   :: !(Maybe Text)
    , _uclPrettyPrint :: !Bool
    , _uclUserIP      :: !(Maybe Text)
    , _uclAdClientId  :: !Text
    , _uclKey         :: !(Maybe AuthKey)
    , _uclPageToken   :: !(Maybe Text)
    , _uclOAuthToken  :: !(Maybe OAuthToken)
    , _uclMaxResults  :: !(Maybe Word32)
    , _uclFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLChannelsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uclQuotaUser'
--
-- * 'uclPrettyPrint'
--
-- * 'uclUserIP'
--
-- * 'uclAdClientId'
--
-- * 'uclKey'
--
-- * 'uclPageToken'
--
-- * 'uclOAuthToken'
--
-- * 'uclMaxResults'
--
-- * 'uclFields'
urlChannelsList'
    :: Text -- ^ 'adClientId'
    -> URLChannelsList'
urlChannelsList' pUclAdClientId_ =
    URLChannelsList'
    { _uclQuotaUser = Nothing
    , _uclPrettyPrint = True
    , _uclUserIP = Nothing
    , _uclAdClientId = pUclAdClientId_
    , _uclKey = Nothing
    , _uclPageToken = Nothing
    , _uclOAuthToken = Nothing
    , _uclMaxResults = Nothing
    , _uclFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uclQuotaUser :: Lens' URLChannelsList' (Maybe Text)
uclQuotaUser
  = lens _uclQuotaUser (\ s a -> s{_uclQuotaUser = a})

-- | Returns response with indentations and line breaks.
uclPrettyPrint :: Lens' URLChannelsList' Bool
uclPrettyPrint
  = lens _uclPrettyPrint
      (\ s a -> s{_uclPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uclUserIP :: Lens' URLChannelsList' (Maybe Text)
uclUserIP
  = lens _uclUserIP (\ s a -> s{_uclUserIP = a})

-- | Ad client for which to list URL channels.
uclAdClientId :: Lens' URLChannelsList' Text
uclAdClientId
  = lens _uclAdClientId
      (\ s a -> s{_uclAdClientId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uclKey :: Lens' URLChannelsList' (Maybe AuthKey)
uclKey = lens _uclKey (\ s a -> s{_uclKey = a})

-- | A continuation token, used to page through URL channels. To retrieve the
-- next page, set this parameter to the value of \"nextPageToken\" from the
-- previous response.
uclPageToken :: Lens' URLChannelsList' (Maybe Text)
uclPageToken
  = lens _uclPageToken (\ s a -> s{_uclPageToken = a})

-- | OAuth 2.0 token for the current user.
uclOAuthToken :: Lens' URLChannelsList' (Maybe OAuthToken)
uclOAuthToken
  = lens _uclOAuthToken
      (\ s a -> s{_uclOAuthToken = a})

-- | The maximum number of URL channels to include in the response, used for
-- paging.
uclMaxResults :: Lens' URLChannelsList' (Maybe Word32)
uclMaxResults
  = lens _uclMaxResults
      (\ s a -> s{_uclMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
uclFields :: Lens' URLChannelsList' (Maybe Text)
uclFields
  = lens _uclFields (\ s a -> s{_uclFields = a})

instance GoogleAuth URLChannelsList' where
        authKey = uclKey . _Just
        authToken = uclOAuthToken . _Just

instance GoogleRequest URLChannelsList' where
        type Rs URLChannelsList' = URLChannels
        request = requestWithRoute defReq adSenseHostURL
        requestWithRoute r u URLChannelsList'{..}
          = go _uclAdClientId _uclPageToken _uclMaxResults
              _uclQuotaUser
              (Just _uclPrettyPrint)
              _uclUserIP
              _uclFields
              _uclKey
              _uclOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy URLChannelsListResource)
                      r
                      u
