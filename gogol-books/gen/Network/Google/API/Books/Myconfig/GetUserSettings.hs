{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Books.Myconfig.GetUserSettings
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the current settings for the user.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @books.myconfig.getUserSettings@.
module Network.Google.API.Books.Myconfig.GetUserSettings
    (
    -- * REST Resource
      MyconfigGetUserSettingsAPI

    -- * Creating a Request
    , myconfigGetUserSettings'
    , MyconfigGetUserSettings'

    -- * Request Lenses
    , mgusQuotaUser
    , mgusPrettyPrint
    , mgusUserIp
    , mgusKey
    , mgusOauthToken
    , mgusFields
    , mgusAlt
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for books.myconfig.getUserSettings which the
-- 'MyconfigGetUserSettings'' request conforms to.
type MyconfigGetUserSettingsAPI =
     "myconfig" :>
       "getUserSettings" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Get '[JSON] Usersettings

-- | Gets the current settings for the user.
--
-- /See:/ 'myconfigGetUserSettings'' smart constructor.
data MyconfigGetUserSettings' = MyconfigGetUserSettings'
    { _mgusQuotaUser   :: !(Maybe Text)
    , _mgusPrettyPrint :: !Bool
    , _mgusUserIp      :: !(Maybe Text)
    , _mgusKey         :: !(Maybe Text)
    , _mgusOauthToken  :: !(Maybe Text)
    , _mgusFields      :: !(Maybe Text)
    , _mgusAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MyconfigGetUserSettings'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mgusQuotaUser'
--
-- * 'mgusPrettyPrint'
--
-- * 'mgusUserIp'
--
-- * 'mgusKey'
--
-- * 'mgusOauthToken'
--
-- * 'mgusFields'
--
-- * 'mgusAlt'
myconfigGetUserSettings'
    :: MyconfigGetUserSettings'
myconfigGetUserSettings' =
    MyconfigGetUserSettings'
    { _mgusQuotaUser = Nothing
    , _mgusPrettyPrint = True
    , _mgusUserIp = Nothing
    , _mgusKey = Nothing
    , _mgusOauthToken = Nothing
    , _mgusFields = Nothing
    , _mgusAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mgusQuotaUser :: Lens' MyconfigGetUserSettings' (Maybe Text)
mgusQuotaUser
  = lens _mgusQuotaUser
      (\ s a -> s{_mgusQuotaUser = a})

-- | Returns response with indentations and line breaks.
mgusPrettyPrint :: Lens' MyconfigGetUserSettings' Bool
mgusPrettyPrint
  = lens _mgusPrettyPrint
      (\ s a -> s{_mgusPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mgusUserIp :: Lens' MyconfigGetUserSettings' (Maybe Text)
mgusUserIp
  = lens _mgusUserIp (\ s a -> s{_mgusUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mgusKey :: Lens' MyconfigGetUserSettings' (Maybe Text)
mgusKey = lens _mgusKey (\ s a -> s{_mgusKey = a})

-- | OAuth 2.0 token for the current user.
mgusOauthToken :: Lens' MyconfigGetUserSettings' (Maybe Text)
mgusOauthToken
  = lens _mgusOauthToken
      (\ s a -> s{_mgusOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mgusFields :: Lens' MyconfigGetUserSettings' (Maybe Text)
mgusFields
  = lens _mgusFields (\ s a -> s{_mgusFields = a})

-- | Data format for the response.
mgusAlt :: Lens' MyconfigGetUserSettings' Alt
mgusAlt = lens _mgusAlt (\ s a -> s{_mgusAlt = a})

instance GoogleRequest MyconfigGetUserSettings' where
        type Rs MyconfigGetUserSettings' = Usersettings
        request = requestWithRoute defReq booksURL
        requestWithRoute r u MyconfigGetUserSettings'{..}
          = go _mgusQuotaUser (Just _mgusPrettyPrint)
              _mgusUserIp
              _mgusKey
              _mgusOauthToken
              _mgusFields
              (Just _mgusAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MyconfigGetUserSettingsAPI)
                      r
                      u
