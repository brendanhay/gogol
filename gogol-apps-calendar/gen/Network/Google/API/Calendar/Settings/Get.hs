{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Calendar.Settings.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a single user setting.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.settings.get@.
module Network.Google.API.Calendar.Settings.Get
    (
    -- * REST Resource
      SettingsGetAPI

    -- * Creating a Request
    , settingsGet'
    , SettingsGet'

    -- * Request Lenses
    , sgQuotaUser
    , sgPrettyPrint
    , sgUserIp
    , sgSetting
    , sgKey
    , sgOauthToken
    , sgFields
    , sgAlt
    ) where

import           Network.Google.Apps.Calendar.Types
import           Network.Google.Prelude

-- | A resource alias for calendar.settings.get which the
-- 'SettingsGet'' request conforms to.
type SettingsGetAPI =
     "users" :>
       "me" :>
         "settings" :>
           Capture "setting" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] Setting

-- | Returns a single user setting.
--
-- /See:/ 'settingsGet'' smart constructor.
data SettingsGet' = SettingsGet'
    { _sgQuotaUser   :: !(Maybe Text)
    , _sgPrettyPrint :: !Bool
    , _sgUserIp      :: !(Maybe Text)
    , _sgSetting     :: !Text
    , _sgKey         :: !(Maybe Text)
    , _sgOauthToken  :: !(Maybe Text)
    , _sgFields      :: !(Maybe Text)
    , _sgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SettingsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgQuotaUser'
--
-- * 'sgPrettyPrint'
--
-- * 'sgUserIp'
--
-- * 'sgSetting'
--
-- * 'sgKey'
--
-- * 'sgOauthToken'
--
-- * 'sgFields'
--
-- * 'sgAlt'
settingsGet'
    :: Text -- ^ 'setting'
    -> SettingsGet'
settingsGet' pSgSetting_ =
    SettingsGet'
    { _sgQuotaUser = Nothing
    , _sgPrettyPrint = True
    , _sgUserIp = Nothing
    , _sgSetting = pSgSetting_
    , _sgKey = Nothing
    , _sgOauthToken = Nothing
    , _sgFields = Nothing
    , _sgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sgQuotaUser :: Lens' SettingsGet' (Maybe Text)
sgQuotaUser
  = lens _sgQuotaUser (\ s a -> s{_sgQuotaUser = a})

-- | Returns response with indentations and line breaks.
sgPrettyPrint :: Lens' SettingsGet' Bool
sgPrettyPrint
  = lens _sgPrettyPrint
      (\ s a -> s{_sgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sgUserIp :: Lens' SettingsGet' (Maybe Text)
sgUserIp = lens _sgUserIp (\ s a -> s{_sgUserIp = a})

-- | The id of the user setting.
sgSetting :: Lens' SettingsGet' Text
sgSetting
  = lens _sgSetting (\ s a -> s{_sgSetting = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sgKey :: Lens' SettingsGet' (Maybe Text)
sgKey = lens _sgKey (\ s a -> s{_sgKey = a})

-- | OAuth 2.0 token for the current user.
sgOauthToken :: Lens' SettingsGet' (Maybe Text)
sgOauthToken
  = lens _sgOauthToken (\ s a -> s{_sgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
sgFields :: Lens' SettingsGet' (Maybe Text)
sgFields = lens _sgFields (\ s a -> s{_sgFields = a})

-- | Data format for the response.
sgAlt :: Lens' SettingsGet' Alt
sgAlt = lens _sgAlt (\ s a -> s{_sgAlt = a})

instance GoogleRequest SettingsGet' where
        type Rs SettingsGet' = Setting
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u SettingsGet'{..}
          = go _sgQuotaUser (Just _sgPrettyPrint) _sgUserIp
              _sgSetting
              _sgKey
              _sgOauthToken
              _sgFields
              (Just _sgAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy SettingsGetAPI) r u
