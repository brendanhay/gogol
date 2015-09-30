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
-- Module      : Network.Google.Resource.Sql.Users.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing user in a Cloud SQL instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SqlUsersUpdate@.
module Network.Google.Resource.Sql.Users.Update
    (
    -- * REST Resource
      UsersUpdateResource

    -- * Creating a Request
    , usersUpdate'
    , UsersUpdate'

    -- * Request Lenses
    , uuQuotaUser
    , uuPrettyPrint
    , uuProject
    , uuUserIp
    , uuKey
    , uuName
    , uuHost
    , uuOauthToken
    , uuFields
    , uuAlt
    , uuInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SqlUsersUpdate@ which the
-- 'UsersUpdate'' request conforms to.
type UsersUpdateResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "users" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "name" Text :>
                         QueryParam "host" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :> Put '[JSON] Operation

-- | Updates an existing user in a Cloud SQL instance.
--
-- /See:/ 'usersUpdate'' smart constructor.
data UsersUpdate' = UsersUpdate'
    { _uuQuotaUser   :: !(Maybe Text)
    , _uuPrettyPrint :: !Bool
    , _uuProject     :: !Text
    , _uuUserIp      :: !(Maybe Text)
    , _uuKey         :: !(Maybe Text)
    , _uuName        :: !Text
    , _uuHost        :: !Text
    , _uuOauthToken  :: !(Maybe Text)
    , _uuFields      :: !(Maybe Text)
    , _uuAlt         :: !Alt
    , _uuInstance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uuQuotaUser'
--
-- * 'uuPrettyPrint'
--
-- * 'uuProject'
--
-- * 'uuUserIp'
--
-- * 'uuKey'
--
-- * 'uuName'
--
-- * 'uuHost'
--
-- * 'uuOauthToken'
--
-- * 'uuFields'
--
-- * 'uuAlt'
--
-- * 'uuInstance'
usersUpdate'
    :: Text -- ^ 'project'
    -> Text -- ^ 'name'
    -> Text -- ^ 'host'
    -> Text -- ^ 'instance'
    -> UsersUpdate'
usersUpdate' pUuProject_ pUuName_ pUuHost_ pUuInstance_ =
    UsersUpdate'
    { _uuQuotaUser = Nothing
    , _uuPrettyPrint = True
    , _uuProject = pUuProject_
    , _uuUserIp = Nothing
    , _uuKey = Nothing
    , _uuName = pUuName_
    , _uuHost = pUuHost_
    , _uuOauthToken = Nothing
    , _uuFields = Nothing
    , _uuAlt = JSON
    , _uuInstance = pUuInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uuQuotaUser :: Lens' UsersUpdate' (Maybe Text)
uuQuotaUser
  = lens _uuQuotaUser (\ s a -> s{_uuQuotaUser = a})

-- | Returns response with indentations and line breaks.
uuPrettyPrint :: Lens' UsersUpdate' Bool
uuPrettyPrint
  = lens _uuPrettyPrint
      (\ s a -> s{_uuPrettyPrint = a})

-- | Project ID of the project that contains the instance.
uuProject :: Lens' UsersUpdate' Text
uuProject
  = lens _uuProject (\ s a -> s{_uuProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uuUserIp :: Lens' UsersUpdate' (Maybe Text)
uuUserIp = lens _uuUserIp (\ s a -> s{_uuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uuKey :: Lens' UsersUpdate' (Maybe Text)
uuKey = lens _uuKey (\ s a -> s{_uuKey = a})

-- | Name of the user in the instance.
uuName :: Lens' UsersUpdate' Text
uuName = lens _uuName (\ s a -> s{_uuName = a})

-- | Host of the user in the instance.
uuHost :: Lens' UsersUpdate' Text
uuHost = lens _uuHost (\ s a -> s{_uuHost = a})

-- | OAuth 2.0 token for the current user.
uuOauthToken :: Lens' UsersUpdate' (Maybe Text)
uuOauthToken
  = lens _uuOauthToken (\ s a -> s{_uuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
uuFields :: Lens' UsersUpdate' (Maybe Text)
uuFields = lens _uuFields (\ s a -> s{_uuFields = a})

-- | Data format for the response.
uuAlt :: Lens' UsersUpdate' Alt
uuAlt = lens _uuAlt (\ s a -> s{_uuAlt = a})

-- | Database instance ID. This does not include the project ID.
uuInstance :: Lens' UsersUpdate' Text
uuInstance
  = lens _uuInstance (\ s a -> s{_uuInstance = a})

instance GoogleRequest UsersUpdate' where
        type Rs UsersUpdate' = Operation
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u UsersUpdate'{..}
          = go _uuQuotaUser (Just _uuPrettyPrint) _uuProject
              _uuUserIp
              _uuKey
              (Just _uuName)
              (Just _uuHost)
              _uuOauthToken
              _uuFields
              (Just _uuAlt)
              _uuInstance
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersUpdateResource)
                      r
                      u
