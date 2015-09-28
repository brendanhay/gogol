{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.AdSenseHost.URLchannels.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete a URL channel from the host AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.urlchannels.delete@.
module Network.Google.API.AdSenseHost.URLchannels.Delete
    (
    -- * REST Resource
      URLchannelsDeleteAPI

    -- * Creating a Request
    , uRLchannelsDelete'
    , URLchannelsDelete'

    -- * Request Lenses
    , udQuotaUser
    , udPrettyPrint
    , udUrlChannelId
    , udUserIp
    , udAdClientId
    , udKey
    , udOauthToken
    , udFields
    , udAlt
    ) where

import           Network.Google.AdSense.Host.Types
import           Network.Google.Prelude

-- | A resource alias for adsensehost.urlchannels.delete which the
-- 'URLchannelsDelete'' request conforms to.
type URLchannelsDeleteAPI =
     "adclients" :>
       Capture "adClientId" Text :>
         "urlchannels" :>
           Capture "urlChannelId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Delete '[JSON] UrlChannel

-- | Delete a URL channel from the host AdSense account.
--
-- /See:/ 'uRLchannelsDelete'' smart constructor.
data URLchannelsDelete' = URLchannelsDelete'
    { _udQuotaUser    :: !(Maybe Text)
    , _udPrettyPrint  :: !Bool
    , _udUrlChannelId :: !Text
    , _udUserIp       :: !(Maybe Text)
    , _udAdClientId   :: !Text
    , _udKey          :: !(Maybe Text)
    , _udOauthToken   :: !(Maybe Text)
    , _udFields       :: !(Maybe Text)
    , _udAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLchannelsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udQuotaUser'
--
-- * 'udPrettyPrint'
--
-- * 'udUrlChannelId'
--
-- * 'udUserIp'
--
-- * 'udAdClientId'
--
-- * 'udKey'
--
-- * 'udOauthToken'
--
-- * 'udFields'
--
-- * 'udAlt'
uRLchannelsDelete'
    :: Text -- ^ 'urlChannelId'
    -> Text -- ^ 'adClientId'
    -> URLchannelsDelete'
uRLchannelsDelete' pUdUrlChannelId_ pUdAdClientId_ =
    URLchannelsDelete'
    { _udQuotaUser = Nothing
    , _udPrettyPrint = True
    , _udUrlChannelId = pUdUrlChannelId_
    , _udUserIp = Nothing
    , _udAdClientId = pUdAdClientId_
    , _udKey = Nothing
    , _udOauthToken = Nothing
    , _udFields = Nothing
    , _udAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
udQuotaUser :: Lens' URLchannelsDelete' (Maybe Text)
udQuotaUser
  = lens _udQuotaUser (\ s a -> s{_udQuotaUser = a})

-- | Returns response with indentations and line breaks.
udPrettyPrint :: Lens' URLchannelsDelete' Bool
udPrettyPrint
  = lens _udPrettyPrint
      (\ s a -> s{_udPrettyPrint = a})

-- | URL channel to delete.
udUrlChannelId :: Lens' URLchannelsDelete' Text
udUrlChannelId
  = lens _udUrlChannelId
      (\ s a -> s{_udUrlChannelId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
udUserIp :: Lens' URLchannelsDelete' (Maybe Text)
udUserIp = lens _udUserIp (\ s a -> s{_udUserIp = a})

-- | Ad client from which to delete the URL channel.
udAdClientId :: Lens' URLchannelsDelete' Text
udAdClientId
  = lens _udAdClientId (\ s a -> s{_udAdClientId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
udKey :: Lens' URLchannelsDelete' (Maybe Text)
udKey = lens _udKey (\ s a -> s{_udKey = a})

-- | OAuth 2.0 token for the current user.
udOauthToken :: Lens' URLchannelsDelete' (Maybe Text)
udOauthToken
  = lens _udOauthToken (\ s a -> s{_udOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
udFields :: Lens' URLchannelsDelete' (Maybe Text)
udFields = lens _udFields (\ s a -> s{_udFields = a})

-- | Data format for the response.
udAlt :: Lens' URLchannelsDelete' Alt
udAlt = lens _udAlt (\ s a -> s{_udAlt = a})

instance GoogleRequest URLchannelsDelete' where
        type Rs URLchannelsDelete' = UrlChannel
        request = requestWithRoute defReq adSenseHostURL
        requestWithRoute r u URLchannelsDelete'{..}
          = go _udQuotaUser (Just _udPrettyPrint)
              _udUrlChannelId
              _udUserIp
              _udAdClientId
              _udKey
              _udOauthToken
              _udFields
              (Just _udAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy URLchannelsDeleteAPI)
                      r
                      u
