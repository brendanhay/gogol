{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Calendar.Settings.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns all user settings for the authenticated user.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.settings.list@.
module Network.Google.API.Calendar.Settings.List
    (
    -- * REST Resource
      SettingsListAPI

    -- * Creating a Request
    , settingsList'
    , SettingsList'

    -- * Request Lenses
    , slSyncToken
    , slQuotaUser
    , slPrettyPrint
    , slUserIp
    , slKey
    , slPageToken
    , slOauthToken
    , slMaxResults
    , slFields
    , slAlt
    ) where

import           Network.Google.Apps.Calendar.Types
import           Network.Google.Prelude

-- | A resource alias for calendar.settings.list which the
-- 'SettingsList'' request conforms to.
type SettingsListAPI =
     "users" :>
       "me" :>
         "settings" :>
           QueryParam "syncToken" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "maxResults" Nat :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Get '[JSON] Settings

-- | Returns all user settings for the authenticated user.
--
-- /See:/ 'settingsList'' smart constructor.
data SettingsList' = SettingsList'
    { _slSyncToken   :: !(Maybe Text)
    , _slQuotaUser   :: !(Maybe Text)
    , _slPrettyPrint :: !Bool
    , _slUserIp      :: !(Maybe Text)
    , _slKey         :: !(Maybe Text)
    , _slPageToken   :: !(Maybe Text)
    , _slOauthToken  :: !(Maybe Text)
    , _slMaxResults  :: !(Maybe Nat)
    , _slFields      :: !(Maybe Text)
    , _slAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SettingsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slSyncToken'
--
-- * 'slQuotaUser'
--
-- * 'slPrettyPrint'
--
-- * 'slUserIp'
--
-- * 'slKey'
--
-- * 'slPageToken'
--
-- * 'slOauthToken'
--
-- * 'slMaxResults'
--
-- * 'slFields'
--
-- * 'slAlt'
settingsList'
    :: SettingsList'
settingsList' =
    SettingsList'
    { _slSyncToken = Nothing
    , _slQuotaUser = Nothing
    , _slPrettyPrint = True
    , _slUserIp = Nothing
    , _slKey = Nothing
    , _slPageToken = Nothing
    , _slOauthToken = Nothing
    , _slMaxResults = Nothing
    , _slFields = Nothing
    , _slAlt = JSON
    }

-- | Token obtained from the nextSyncToken field returned on the last page of
-- results from the previous list request. It makes the result of this list
-- request contain only entries that have changed since then. If the
-- syncToken expires, the server will respond with a 410 GONE response code
-- and the client should clear its storage and perform a full
-- synchronization without any syncToken. Learn more about incremental
-- synchronization. Optional. The default is to return all entries.
slSyncToken :: Lens' SettingsList' (Maybe Text)
slSyncToken
  = lens _slSyncToken (\ s a -> s{_slSyncToken = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
slQuotaUser :: Lens' SettingsList' (Maybe Text)
slQuotaUser
  = lens _slQuotaUser (\ s a -> s{_slQuotaUser = a})

-- | Returns response with indentations and line breaks.
slPrettyPrint :: Lens' SettingsList' Bool
slPrettyPrint
  = lens _slPrettyPrint
      (\ s a -> s{_slPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
slUserIp :: Lens' SettingsList' (Maybe Text)
slUserIp = lens _slUserIp (\ s a -> s{_slUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
slKey :: Lens' SettingsList' (Maybe Text)
slKey = lens _slKey (\ s a -> s{_slKey = a})

-- | Token specifying which result page to return. Optional.
slPageToken :: Lens' SettingsList' (Maybe Text)
slPageToken
  = lens _slPageToken (\ s a -> s{_slPageToken = a})

-- | OAuth 2.0 token for the current user.
slOauthToken :: Lens' SettingsList' (Maybe Text)
slOauthToken
  = lens _slOauthToken (\ s a -> s{_slOauthToken = a})

-- | Maximum number of entries returned on one result page. By default the
-- value is 100 entries. The page size can never be larger than 250
-- entries. Optional.
slMaxResults :: Lens' SettingsList' (Maybe Natural)
slMaxResults
  = lens _slMaxResults (\ s a -> s{_slMaxResults = a})
      . mapping _Nat

-- | Selector specifying which fields to include in a partial response.
slFields :: Lens' SettingsList' (Maybe Text)
slFields = lens _slFields (\ s a -> s{_slFields = a})

-- | Data format for the response.
slAlt :: Lens' SettingsList' Alt
slAlt = lens _slAlt (\ s a -> s{_slAlt = a})

instance GoogleRequest SettingsList' where
        type Rs SettingsList' = Settings
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u SettingsList'{..}
          = go _slSyncToken _slQuotaUser (Just _slPrettyPrint)
              _slUserIp
              _slKey
              _slPageToken
              _slOauthToken
              _slMaxResults
              _slFields
              (Just _slAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy SettingsListAPI) r
                      u
