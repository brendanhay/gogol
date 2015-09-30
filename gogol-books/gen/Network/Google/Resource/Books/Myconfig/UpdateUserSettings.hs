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
-- Module      : Network.Google.Resource.Books.Myconfig.UpdateUserSettings
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sets the settings for the user. If a sub-object is specified, it will
-- overwrite the existing sub-object stored in the server. Unspecified
-- sub-objects will retain the existing value.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksMyconfigUpdateUserSettings@.
module Network.Google.Resource.Books.Myconfig.UpdateUserSettings
    (
    -- * REST Resource
      MyconfigUpdateUserSettingsResource

    -- * Creating a Request
    , myconfigUpdateUserSettings'
    , MyconfigUpdateUserSettings'

    -- * Request Lenses
    , muusQuotaUser
    , muusPrettyPrint
    , muusUserIp
    , muusKey
    , muusOauthToken
    , muusFields
    , muusAlt
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksMyconfigUpdateUserSettings@ which the
-- 'MyconfigUpdateUserSettings'' request conforms to.
type MyconfigUpdateUserSettingsResource =
     "myconfig" :>
       "updateUserSettings" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Post '[JSON] Usersettings

-- | Sets the settings for the user. If a sub-object is specified, it will
-- overwrite the existing sub-object stored in the server. Unspecified
-- sub-objects will retain the existing value.
--
-- /See:/ 'myconfigUpdateUserSettings'' smart constructor.
data MyconfigUpdateUserSettings' = MyconfigUpdateUserSettings'
    { _muusQuotaUser   :: !(Maybe Text)
    , _muusPrettyPrint :: !Bool
    , _muusUserIp      :: !(Maybe Text)
    , _muusKey         :: !(Maybe Text)
    , _muusOauthToken  :: !(Maybe Text)
    , _muusFields      :: !(Maybe Text)
    , _muusAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MyconfigUpdateUserSettings'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'muusQuotaUser'
--
-- * 'muusPrettyPrint'
--
-- * 'muusUserIp'
--
-- * 'muusKey'
--
-- * 'muusOauthToken'
--
-- * 'muusFields'
--
-- * 'muusAlt'
myconfigUpdateUserSettings'
    :: MyconfigUpdateUserSettings'
myconfigUpdateUserSettings' =
    MyconfigUpdateUserSettings'
    { _muusQuotaUser = Nothing
    , _muusPrettyPrint = True
    , _muusUserIp = Nothing
    , _muusKey = Nothing
    , _muusOauthToken = Nothing
    , _muusFields = Nothing
    , _muusAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
muusQuotaUser :: Lens' MyconfigUpdateUserSettings' (Maybe Text)
muusQuotaUser
  = lens _muusQuotaUser
      (\ s a -> s{_muusQuotaUser = a})

-- | Returns response with indentations and line breaks.
muusPrettyPrint :: Lens' MyconfigUpdateUserSettings' Bool
muusPrettyPrint
  = lens _muusPrettyPrint
      (\ s a -> s{_muusPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
muusUserIp :: Lens' MyconfigUpdateUserSettings' (Maybe Text)
muusUserIp
  = lens _muusUserIp (\ s a -> s{_muusUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
muusKey :: Lens' MyconfigUpdateUserSettings' (Maybe Text)
muusKey = lens _muusKey (\ s a -> s{_muusKey = a})

-- | OAuth 2.0 token for the current user.
muusOauthToken :: Lens' MyconfigUpdateUserSettings' (Maybe Text)
muusOauthToken
  = lens _muusOauthToken
      (\ s a -> s{_muusOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
muusFields :: Lens' MyconfigUpdateUserSettings' (Maybe Text)
muusFields
  = lens _muusFields (\ s a -> s{_muusFields = a})

-- | Data format for the response.
muusAlt :: Lens' MyconfigUpdateUserSettings' Alt
muusAlt = lens _muusAlt (\ s a -> s{_muusAlt = a})

instance GoogleRequest MyconfigUpdateUserSettings'
         where
        type Rs MyconfigUpdateUserSettings' = Usersettings
        request = requestWithRoute defReq booksURL
        requestWithRoute r u MyconfigUpdateUserSettings'{..}
          = go _muusQuotaUser (Just _muusPrettyPrint)
              _muusUserIp
              _muusKey
              _muusOauthToken
              _muusFields
              (Just _muusAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MyconfigUpdateUserSettingsResource)
                      r
                      u
