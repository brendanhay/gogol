{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Calendar.Channels.Stop
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Stop watching resources through this channel
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.channels.stop@.
module Network.Google.API.Calendar.Channels.Stop
    (
    -- * REST Resource
      ChannelsStopAPI

    -- * Creating a Request
    , channelsStop'
    , ChannelsStop'

    -- * Request Lenses
    , csQuotaUser
    , csPrettyPrint
    , csUserIp
    , csKey
    , csOauthToken
    , csFields
    , csAlt
    ) where

import           Network.Google.Apps.Calendar.Types
import           Network.Google.Prelude

-- | A resource alias for calendar.channels.stop which the
-- 'ChannelsStop'' request conforms to.
type ChannelsStopAPI =
     "channels" :>
       "stop" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Post '[JSON] ()

-- | Stop watching resources through this channel
--
-- /See:/ 'channelsStop'' smart constructor.
data ChannelsStop' = ChannelsStop'
    { _csQuotaUser   :: !(Maybe Text)
    , _csPrettyPrint :: !Bool
    , _csUserIp      :: !(Maybe Text)
    , _csKey         :: !(Maybe Text)
    , _csOauthToken  :: !(Maybe Text)
    , _csFields      :: !(Maybe Text)
    , _csAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelsStop'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csQuotaUser'
--
-- * 'csPrettyPrint'
--
-- * 'csUserIp'
--
-- * 'csKey'
--
-- * 'csOauthToken'
--
-- * 'csFields'
--
-- * 'csAlt'
channelsStop'
    :: ChannelsStop'
channelsStop' =
    ChannelsStop'
    { _csQuotaUser = Nothing
    , _csPrettyPrint = True
    , _csUserIp = Nothing
    , _csKey = Nothing
    , _csOauthToken = Nothing
    , _csFields = Nothing
    , _csAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
csQuotaUser :: Lens' ChannelsStop' (Maybe Text)
csQuotaUser
  = lens _csQuotaUser (\ s a -> s{_csQuotaUser = a})

-- | Returns response with indentations and line breaks.
csPrettyPrint :: Lens' ChannelsStop' Bool
csPrettyPrint
  = lens _csPrettyPrint
      (\ s a -> s{_csPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
csUserIp :: Lens' ChannelsStop' (Maybe Text)
csUserIp = lens _csUserIp (\ s a -> s{_csUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
csKey :: Lens' ChannelsStop' (Maybe Text)
csKey = lens _csKey (\ s a -> s{_csKey = a})

-- | OAuth 2.0 token for the current user.
csOauthToken :: Lens' ChannelsStop' (Maybe Text)
csOauthToken
  = lens _csOauthToken (\ s a -> s{_csOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
csFields :: Lens' ChannelsStop' (Maybe Text)
csFields = lens _csFields (\ s a -> s{_csFields = a})

-- | Data format for the response.
csAlt :: Lens' ChannelsStop' Alt
csAlt = lens _csAlt (\ s a -> s{_csAlt = a})

instance GoogleRequest ChannelsStop' where
        type Rs ChannelsStop' = ()
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u ChannelsStop'{..}
          = go _csQuotaUser (Just _csPrettyPrint) _csUserIp
              _csKey
              _csOauthToken
              _csFields
              (Just _csAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy ChannelsStopAPI) r
                      u
