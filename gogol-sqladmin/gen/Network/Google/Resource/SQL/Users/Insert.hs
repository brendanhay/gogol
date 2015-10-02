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
-- Module      : Network.Google.Resource.SQL.Users.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new user in a Cloud SQL instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SQLUsersInsert@.
module Network.Google.Resource.SQL.Users.Insert
    (
    -- * REST Resource
      UsersInsertResource

    -- * Creating a Request
    , usersInsert'
    , UsersInsert'

    -- * Request Lenses
    , uiQuotaUser
    , uiPrettyPrint
    , uiProject
    , uiUserIP
    , uiUser
    , uiKey
    , uiOAuthToken
    , uiFields
    , uiInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SQLUsersInsert@ which the
-- 'UsersInsert'' request conforms to.
type UsersInsertResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "users" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] User :> Post '[JSON] Operation

-- | Creates a new user in a Cloud SQL instance.
--
-- /See:/ 'usersInsert'' smart constructor.
data UsersInsert' = UsersInsert'
    { _uiQuotaUser   :: !(Maybe Text)
    , _uiPrettyPrint :: !Bool
    , _uiProject     :: !Text
    , _uiUserIP      :: !(Maybe Text)
    , _uiUser        :: !User
    , _uiKey         :: !(Maybe Key)
    , _uiOAuthToken  :: !(Maybe OAuthToken)
    , _uiFields      :: !(Maybe Text)
    , _uiInstance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uiQuotaUser'
--
-- * 'uiPrettyPrint'
--
-- * 'uiProject'
--
-- * 'uiUserIP'
--
-- * 'uiUser'
--
-- * 'uiKey'
--
-- * 'uiOAuthToken'
--
-- * 'uiFields'
--
-- * 'uiInstance'
usersInsert'
    :: Text -- ^ 'project'
    -> User -- ^ 'User'
    -> Text -- ^ 'instance'
    -> UsersInsert'
usersInsert' pUiProject_ pUiUser_ pUiInstance_ =
    UsersInsert'
    { _uiQuotaUser = Nothing
    , _uiPrettyPrint = True
    , _uiProject = pUiProject_
    , _uiUserIP = Nothing
    , _uiUser = pUiUser_
    , _uiKey = Nothing
    , _uiOAuthToken = Nothing
    , _uiFields = Nothing
    , _uiInstance = pUiInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uiQuotaUser :: Lens' UsersInsert' (Maybe Text)
uiQuotaUser
  = lens _uiQuotaUser (\ s a -> s{_uiQuotaUser = a})

-- | Returns response with indentations and line breaks.
uiPrettyPrint :: Lens' UsersInsert' Bool
uiPrettyPrint
  = lens _uiPrettyPrint
      (\ s a -> s{_uiPrettyPrint = a})

-- | Project ID of the project that contains the instance.
uiProject :: Lens' UsersInsert' Text
uiProject
  = lens _uiProject (\ s a -> s{_uiProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uiUserIP :: Lens' UsersInsert' (Maybe Text)
uiUserIP = lens _uiUserIP (\ s a -> s{_uiUserIP = a})

-- | Multipart request metadata.
uiUser :: Lens' UsersInsert' User
uiUser = lens _uiUser (\ s a -> s{_uiUser = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uiKey :: Lens' UsersInsert' (Maybe Key)
uiKey = lens _uiKey (\ s a -> s{_uiKey = a})

-- | OAuth 2.0 token for the current user.
uiOAuthToken :: Lens' UsersInsert' (Maybe OAuthToken)
uiOAuthToken
  = lens _uiOAuthToken (\ s a -> s{_uiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
uiFields :: Lens' UsersInsert' (Maybe Text)
uiFields = lens _uiFields (\ s a -> s{_uiFields = a})

-- | Database instance ID. This does not include the project ID.
uiInstance :: Lens' UsersInsert' Text
uiInstance
  = lens _uiInstance (\ s a -> s{_uiInstance = a})

instance GoogleAuth UsersInsert' where
        authKey = uiKey . _Just
        authToken = uiOAuthToken . _Just

instance GoogleRequest UsersInsert' where
        type Rs UsersInsert' = Operation
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u UsersInsert'{..}
          = go _uiProject _uiInstance _uiQuotaUser
              (Just _uiPrettyPrint)
              _uiUserIP
              _uiFields
              _uiKey
              _uiOAuthToken
              (Just AltJSON)
              _uiUser
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersInsertResource)
                      r
                      u
