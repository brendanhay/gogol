{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Clouduseraccounts.Linux.GetAuthorizedKeysView
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a list of authorized public keys for a specific user account.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference> for @clouduseraccounts.linux.getAuthorizedKeysView@.
module Network.Google.API.Clouduseraccounts.Linux.GetAuthorizedKeysView
    (
    -- * REST Resource
      LinuxGetAuthorizedKeysViewAPI

    -- * Creating a Request
    , linuxGetAuthorizedKeysView'
    , LinuxGetAuthorizedKeysView'

    -- * Request Lenses
    , lgakvQuotaUser
    , lgakvPrettyPrint
    , lgakvProject
    , lgakvUserIp
    , lgakvZone
    , lgakvUser
    , lgakvKey
    , lgakvOauthToken
    , lgakvLogin
    , lgakvFields
    , lgakvAlt
    , lgakvInstance
    ) where

import           Network.Google.Compute.UserAccounts.Types
import           Network.Google.Prelude

-- | A resource alias for clouduseraccounts.linux.getAuthorizedKeysView which the
-- 'LinuxGetAuthorizedKeysView'' request conforms to.
type LinuxGetAuthorizedKeysViewAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "authorizedKeysView" :>
             Capture "user" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "login" Bool :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :>
                               QueryParam "instance" Text :>
                                 Post '[JSON] LinuxGetAuthorizedKeysViewResponse

-- | Returns a list of authorized public keys for a specific user account.
--
-- /See:/ 'linuxGetAuthorizedKeysView'' smart constructor.
data LinuxGetAuthorizedKeysView' = LinuxGetAuthorizedKeysView'
    { _lgakvQuotaUser   :: !(Maybe Text)
    , _lgakvPrettyPrint :: !Bool
    , _lgakvProject     :: !Text
    , _lgakvUserIp      :: !(Maybe Text)
    , _lgakvZone        :: !Text
    , _lgakvUser        :: !Text
    , _lgakvKey         :: !(Maybe Text)
    , _lgakvOauthToken  :: !(Maybe Text)
    , _lgakvLogin       :: !(Maybe Bool)
    , _lgakvFields      :: !(Maybe Text)
    , _lgakvAlt         :: !Alt
    , _lgakvInstance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LinuxGetAuthorizedKeysView'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgakvQuotaUser'
--
-- * 'lgakvPrettyPrint'
--
-- * 'lgakvProject'
--
-- * 'lgakvUserIp'
--
-- * 'lgakvZone'
--
-- * 'lgakvUser'
--
-- * 'lgakvKey'
--
-- * 'lgakvOauthToken'
--
-- * 'lgakvLogin'
--
-- * 'lgakvFields'
--
-- * 'lgakvAlt'
--
-- * 'lgakvInstance'
linuxGetAuthorizedKeysView'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'user'
    -> Text -- ^ 'instance'
    -> LinuxGetAuthorizedKeysView'
linuxGetAuthorizedKeysView' pLgakvProject_ pLgakvZone_ pLgakvUser_ pLgakvInstance_ =
    LinuxGetAuthorizedKeysView'
    { _lgakvQuotaUser = Nothing
    , _lgakvPrettyPrint = True
    , _lgakvProject = pLgakvProject_
    , _lgakvUserIp = Nothing
    , _lgakvZone = pLgakvZone_
    , _lgakvUser = pLgakvUser_
    , _lgakvKey = Nothing
    , _lgakvOauthToken = Nothing
    , _lgakvLogin = Nothing
    , _lgakvFields = Nothing
    , _lgakvAlt = JSON
    , _lgakvInstance = pLgakvInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lgakvQuotaUser :: Lens' LinuxGetAuthorizedKeysView' (Maybe Text)
lgakvQuotaUser
  = lens _lgakvQuotaUser
      (\ s a -> s{_lgakvQuotaUser = a})

-- | Returns response with indentations and line breaks.
lgakvPrettyPrint :: Lens' LinuxGetAuthorizedKeysView' Bool
lgakvPrettyPrint
  = lens _lgakvPrettyPrint
      (\ s a -> s{_lgakvPrettyPrint = a})

-- | Project ID for this request.
lgakvProject :: Lens' LinuxGetAuthorizedKeysView' Text
lgakvProject
  = lens _lgakvProject (\ s a -> s{_lgakvProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lgakvUserIp :: Lens' LinuxGetAuthorizedKeysView' (Maybe Text)
lgakvUserIp
  = lens _lgakvUserIp (\ s a -> s{_lgakvUserIp = a})

-- | Name of the zone for this request.
lgakvZone :: Lens' LinuxGetAuthorizedKeysView' Text
lgakvZone
  = lens _lgakvZone (\ s a -> s{_lgakvZone = a})

-- | The user account for which you want to get a list of authorized public
-- keys.
lgakvUser :: Lens' LinuxGetAuthorizedKeysView' Text
lgakvUser
  = lens _lgakvUser (\ s a -> s{_lgakvUser = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lgakvKey :: Lens' LinuxGetAuthorizedKeysView' (Maybe Text)
lgakvKey = lens _lgakvKey (\ s a -> s{_lgakvKey = a})

-- | OAuth 2.0 token for the current user.
lgakvOauthToken :: Lens' LinuxGetAuthorizedKeysView' (Maybe Text)
lgakvOauthToken
  = lens _lgakvOauthToken
      (\ s a -> s{_lgakvOauthToken = a})

-- | Whether the view was requested as part of a user-initiated login.
lgakvLogin :: Lens' LinuxGetAuthorizedKeysView' (Maybe Bool)
lgakvLogin
  = lens _lgakvLogin (\ s a -> s{_lgakvLogin = a})

-- | Selector specifying which fields to include in a partial response.
lgakvFields :: Lens' LinuxGetAuthorizedKeysView' (Maybe Text)
lgakvFields
  = lens _lgakvFields (\ s a -> s{_lgakvFields = a})

-- | Data format for the response.
lgakvAlt :: Lens' LinuxGetAuthorizedKeysView' Alt
lgakvAlt = lens _lgakvAlt (\ s a -> s{_lgakvAlt = a})

-- | The fully-qualified URL of the virtual machine requesting the view.
lgakvInstance :: Lens' LinuxGetAuthorizedKeysView' Text
lgakvInstance
  = lens _lgakvInstance
      (\ s a -> s{_lgakvInstance = a})

instance GoogleRequest LinuxGetAuthorizedKeysView'
         where
        type Rs LinuxGetAuthorizedKeysView' =
             LinuxGetAuthorizedKeysViewResponse
        request
          = requestWithRoute defReq computeUserAccountsURL
        requestWithRoute r u LinuxGetAuthorizedKeysView'{..}
          = go _lgakvQuotaUser (Just _lgakvPrettyPrint)
              _lgakvProject
              _lgakvUserIp
              _lgakvZone
              _lgakvUser
              _lgakvKey
              _lgakvOauthToken
              _lgakvLogin
              _lgakvFields
              (Just _lgakvAlt)
              (Just _lgakvInstance)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LinuxGetAuthorizedKeysViewAPI)
                      r
                      u
