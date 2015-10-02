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
-- Module      : Network.Google.Resource.Calendar.Settings.Watch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Watch for changes to Settings resources.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarSettingsWatch@.
module Network.Google.Resource.Calendar.Settings.Watch
    (
    -- * REST Resource
      SettingsWatchResource

    -- * Creating a Request
    , settingsWatch'
    , SettingsWatch'

    -- * Request Lenses
    , swSyncToken
    , swQuotaUser
    , swPrettyPrint
    , swUserIP
    , swChannel
    , swKey
    , swPageToken
    , swOAuthToken
    , swMaxResults
    , swFields
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarSettingsWatch@ which the
-- 'SettingsWatch'' request conforms to.
type SettingsWatchResource =
     "users" :>
       "me" :>
         "settings" :>
           "watch" :>
             QueryParam "syncToken" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Key :>
                       QueryParam "pageToken" Text :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "maxResults" Int32 :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] Channel :> Post '[JSON] Channel

-- | Watch for changes to Settings resources.
--
-- /See:/ 'settingsWatch'' smart constructor.
data SettingsWatch' = SettingsWatch'
    { _swSyncToken   :: !(Maybe Text)
    , _swQuotaUser   :: !(Maybe Text)
    , _swPrettyPrint :: !Bool
    , _swUserIP      :: !(Maybe Text)
    , _swChannel     :: !Channel
    , _swKey         :: !(Maybe Key)
    , _swPageToken   :: !(Maybe Text)
    , _swOAuthToken  :: !(Maybe OAuthToken)
    , _swMaxResults  :: !(Maybe Int32)
    , _swFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SettingsWatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'swSyncToken'
--
-- * 'swQuotaUser'
--
-- * 'swPrettyPrint'
--
-- * 'swUserIP'
--
-- * 'swChannel'
--
-- * 'swKey'
--
-- * 'swPageToken'
--
-- * 'swOAuthToken'
--
-- * 'swMaxResults'
--
-- * 'swFields'
settingsWatch'
    :: Channel -- ^ 'Channel'
    -> SettingsWatch'
settingsWatch' pSwChannel_ =
    SettingsWatch'
    { _swSyncToken = Nothing
    , _swQuotaUser = Nothing
    , _swPrettyPrint = True
    , _swUserIP = Nothing
    , _swChannel = pSwChannel_
    , _swKey = Nothing
    , _swPageToken = Nothing
    , _swOAuthToken = Nothing
    , _swMaxResults = Nothing
    , _swFields = Nothing
    }

-- | Token obtained from the nextSyncToken field returned on the last page of
-- results from the previous list request. It makes the result of this list
-- request contain only entries that have changed since then. If the
-- syncToken expires, the server will respond with a 410 GONE response code
-- and the client should clear its storage and perform a full
-- synchronization without any syncToken. Learn more about incremental
-- synchronization. Optional. The default is to return all entries.
swSyncToken :: Lens' SettingsWatch' (Maybe Text)
swSyncToken
  = lens _swSyncToken (\ s a -> s{_swSyncToken = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
swQuotaUser :: Lens' SettingsWatch' (Maybe Text)
swQuotaUser
  = lens _swQuotaUser (\ s a -> s{_swQuotaUser = a})

-- | Returns response with indentations and line breaks.
swPrettyPrint :: Lens' SettingsWatch' Bool
swPrettyPrint
  = lens _swPrettyPrint
      (\ s a -> s{_swPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
swUserIP :: Lens' SettingsWatch' (Maybe Text)
swUserIP = lens _swUserIP (\ s a -> s{_swUserIP = a})

-- | Multipart request metadata.
swChannel :: Lens' SettingsWatch' Channel
swChannel
  = lens _swChannel (\ s a -> s{_swChannel = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
swKey :: Lens' SettingsWatch' (Maybe Key)
swKey = lens _swKey (\ s a -> s{_swKey = a})

-- | Token specifying which result page to return. Optional.
swPageToken :: Lens' SettingsWatch' (Maybe Text)
swPageToken
  = lens _swPageToken (\ s a -> s{_swPageToken = a})

-- | OAuth 2.0 token for the current user.
swOAuthToken :: Lens' SettingsWatch' (Maybe OAuthToken)
swOAuthToken
  = lens _swOAuthToken (\ s a -> s{_swOAuthToken = a})

-- | Maximum number of entries returned on one result page. By default the
-- value is 100 entries. The page size can never be larger than 250
-- entries. Optional.
swMaxResults :: Lens' SettingsWatch' (Maybe Int32)
swMaxResults
  = lens _swMaxResults (\ s a -> s{_swMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
swFields :: Lens' SettingsWatch' (Maybe Text)
swFields = lens _swFields (\ s a -> s{_swFields = a})

instance GoogleAuth SettingsWatch' where
        authKey = swKey . _Just
        authToken = swOAuthToken . _Just

instance GoogleRequest SettingsWatch' where
        type Rs SettingsWatch' = Channel
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u SettingsWatch'{..}
          = go _swSyncToken _swQuotaUser (Just _swPrettyPrint)
              _swUserIP
              _swKey
              _swPageToken
              _swOAuthToken
              _swMaxResults
              _swFields
              (Just AltJSON)
              _swChannel
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SettingsWatchResource)
                      r
                      u
