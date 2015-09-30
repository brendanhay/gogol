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
-- Module      : Network.Google.Resource.Sql.Users.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists users in the specified Cloud SQL instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SqlUsersList@.
module Network.Google.Resource.Sql.Users.List
    (
    -- * REST Resource
      UsersListResource

    -- * Creating a Request
    , usersList'
    , UsersList'

    -- * Request Lenses
    , ulQuotaUser
    , ulPrettyPrint
    , ulProject
    , ulUserIp
    , ulKey
    , ulOauthToken
    , ulFields
    , ulAlt
    , ulInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SqlUsersList@ which the
-- 'UsersList'' request conforms to.
type UsersListResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "users" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] UsersListResponse

-- | Lists users in the specified Cloud SQL instance.
--
-- /See:/ 'usersList'' smart constructor.
data UsersList' = UsersList'
    { _ulQuotaUser   :: !(Maybe Text)
    , _ulPrettyPrint :: !Bool
    , _ulProject     :: !Text
    , _ulUserIp      :: !(Maybe Text)
    , _ulKey         :: !(Maybe Text)
    , _ulOauthToken  :: !(Maybe Text)
    , _ulFields      :: !(Maybe Text)
    , _ulAlt         :: !Alt
    , _ulInstance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ulQuotaUser'
--
-- * 'ulPrettyPrint'
--
-- * 'ulProject'
--
-- * 'ulUserIp'
--
-- * 'ulKey'
--
-- * 'ulOauthToken'
--
-- * 'ulFields'
--
-- * 'ulAlt'
--
-- * 'ulInstance'
usersList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'instance'
    -> UsersList'
usersList' pUlProject_ pUlInstance_ =
    UsersList'
    { _ulQuotaUser = Nothing
    , _ulPrettyPrint = True
    , _ulProject = pUlProject_
    , _ulUserIp = Nothing
    , _ulKey = Nothing
    , _ulOauthToken = Nothing
    , _ulFields = Nothing
    , _ulAlt = JSON
    , _ulInstance = pUlInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ulQuotaUser :: Lens' UsersList' (Maybe Text)
ulQuotaUser
  = lens _ulQuotaUser (\ s a -> s{_ulQuotaUser = a})

-- | Returns response with indentations and line breaks.
ulPrettyPrint :: Lens' UsersList' Bool
ulPrettyPrint
  = lens _ulPrettyPrint
      (\ s a -> s{_ulPrettyPrint = a})

-- | Project ID of the project that contains the instance.
ulProject :: Lens' UsersList' Text
ulProject
  = lens _ulProject (\ s a -> s{_ulProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ulUserIp :: Lens' UsersList' (Maybe Text)
ulUserIp = lens _ulUserIp (\ s a -> s{_ulUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ulKey :: Lens' UsersList' (Maybe Text)
ulKey = lens _ulKey (\ s a -> s{_ulKey = a})

-- | OAuth 2.0 token for the current user.
ulOauthToken :: Lens' UsersList' (Maybe Text)
ulOauthToken
  = lens _ulOauthToken (\ s a -> s{_ulOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ulFields :: Lens' UsersList' (Maybe Text)
ulFields = lens _ulFields (\ s a -> s{_ulFields = a})

-- | Data format for the response.
ulAlt :: Lens' UsersList' Alt
ulAlt = lens _ulAlt (\ s a -> s{_ulAlt = a})

-- | Database instance ID. This does not include the project ID.
ulInstance :: Lens' UsersList' Text
ulInstance
  = lens _ulInstance (\ s a -> s{_ulInstance = a})

instance GoogleRequest UsersList' where
        type Rs UsersList' = UsersListResponse
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u UsersList'{..}
          = go _ulQuotaUser (Just _ulPrettyPrint) _ulProject
              _ulUserIp
              _ulKey
              _ulOauthToken
              _ulFields
              (Just _ulAlt)
              _ulInstance
          where go
                  = clientWithRoute (Proxy :: Proxy UsersListResource)
                      r
                      u
