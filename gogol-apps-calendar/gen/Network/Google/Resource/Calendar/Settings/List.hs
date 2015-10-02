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
-- Module      : Network.Google.Resource.Calendar.Settings.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns all user settings for the authenticated user.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarSettingsList@.
module Network.Google.Resource.Calendar.Settings.List
    (
    -- * REST Resource
      SettingsListResource

    -- * Creating a Request
    , settingsList'
    , SettingsList'

    -- * Request Lenses
    , slSyncToken
    , slQuotaUser
    , slPrettyPrint
    , slUserIP
    , slKey
    , slPageToken
    , slOAuthToken
    , slMaxResults
    , slFields
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarSettingsList@ which the
-- 'SettingsList'' request conforms to.
type SettingsListResource =
     "users" :>
       "me" :>
         "settings" :>
           QueryParam "maxResults" Int32 :>
             QueryParam "pageToken" Text :>
               QueryParam "syncToken" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Settings

-- | Returns all user settings for the authenticated user.
--
-- /See:/ 'settingsList'' smart constructor.
data SettingsList' = SettingsList'
    { _slSyncToken   :: !(Maybe Text)
    , _slQuotaUser   :: !(Maybe Text)
    , _slPrettyPrint :: !Bool
    , _slUserIP      :: !(Maybe Text)
    , _slKey         :: !(Maybe Key)
    , _slPageToken   :: !(Maybe Text)
    , _slOAuthToken  :: !(Maybe OAuthToken)
    , _slMaxResults  :: !(Maybe Int32)
    , _slFields      :: !(Maybe Text)
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
-- * 'slUserIP'
--
-- * 'slKey'
--
-- * 'slPageToken'
--
-- * 'slOAuthToken'
--
-- * 'slMaxResults'
--
-- * 'slFields'
settingsList'
    :: SettingsList'
settingsList' =
    SettingsList'
    { _slSyncToken = Nothing
    , _slQuotaUser = Nothing
    , _slPrettyPrint = True
    , _slUserIP = Nothing
    , _slKey = Nothing
    , _slPageToken = Nothing
    , _slOAuthToken = Nothing
    , _slMaxResults = Nothing
    , _slFields = Nothing
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
slUserIP :: Lens' SettingsList' (Maybe Text)
slUserIP = lens _slUserIP (\ s a -> s{_slUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
slKey :: Lens' SettingsList' (Maybe Key)
slKey = lens _slKey (\ s a -> s{_slKey = a})

-- | Token specifying which result page to return. Optional.
slPageToken :: Lens' SettingsList' (Maybe Text)
slPageToken
  = lens _slPageToken (\ s a -> s{_slPageToken = a})

-- | OAuth 2.0 token for the current user.
slOAuthToken :: Lens' SettingsList' (Maybe OAuthToken)
slOAuthToken
  = lens _slOAuthToken (\ s a -> s{_slOAuthToken = a})

-- | Maximum number of entries returned on one result page. By default the
-- value is 100 entries. The page size can never be larger than 250
-- entries. Optional.
slMaxResults :: Lens' SettingsList' (Maybe Int32)
slMaxResults
  = lens _slMaxResults (\ s a -> s{_slMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
slFields :: Lens' SettingsList' (Maybe Text)
slFields = lens _slFields (\ s a -> s{_slFields = a})

instance GoogleAuth SettingsList' where
        authKey = slKey . _Just
        authToken = slOAuthToken . _Just

instance GoogleRequest SettingsList' where
        type Rs SettingsList' = Settings
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u SettingsList'{..}
          = go _slMaxResults _slPageToken _slSyncToken
              _slQuotaUser
              (Just _slPrettyPrint)
              _slUserIP
              _slFields
              _slKey
              _slOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SettingsListResource)
                      r
                      u
