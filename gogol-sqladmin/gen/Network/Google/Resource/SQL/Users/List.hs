{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.SQL.Users.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists users in the specified Cloud SQL instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SQLUsersList@.
module Network.Google.Resource.SQL.Users.List
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
    , ulUserIP
    , ulKey
    , ulOAuthToken
    , ulFields
    , ulInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SQLUsersList@ method which the
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
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         Header "Authorization" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] UsersListResponse

-- | Lists users in the specified Cloud SQL instance.
--
-- /See:/ 'usersList'' smart constructor.
data UsersList' = UsersList'
    { _ulQuotaUser   :: !(Maybe Text)
    , _ulPrettyPrint :: !Bool
    , _ulProject     :: !Text
    , _ulUserIP      :: !(Maybe Text)
    , _ulKey         :: !(Maybe AuthKey)
    , _ulOAuthToken  :: !(Maybe OAuthToken)
    , _ulFields      :: !(Maybe Text)
    , _ulInstance    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'ulUserIP'
--
-- * 'ulKey'
--
-- * 'ulOAuthToken'
--
-- * 'ulFields'
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
    , _ulUserIP = Nothing
    , _ulKey = Nothing
    , _ulOAuthToken = Nothing
    , _ulFields = Nothing
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
ulUserIP :: Lens' UsersList' (Maybe Text)
ulUserIP = lens _ulUserIP (\ s a -> s{_ulUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ulKey :: Lens' UsersList' (Maybe AuthKey)
ulKey = lens _ulKey (\ s a -> s{_ulKey = a})

-- | OAuth 2.0 token for the current user.
ulOAuthToken :: Lens' UsersList' (Maybe OAuthToken)
ulOAuthToken
  = lens _ulOAuthToken (\ s a -> s{_ulOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ulFields :: Lens' UsersList' (Maybe Text)
ulFields = lens _ulFields (\ s a -> s{_ulFields = a})

-- | Database instance ID. This does not include the project ID.
ulInstance :: Lens' UsersList' Text
ulInstance
  = lens _ulInstance (\ s a -> s{_ulInstance = a})

instance GoogleAuth UsersList' where
        _AuthKey = ulKey . _Just
        _AuthToken = ulOAuthToken . _Just

instance GoogleRequest UsersList' where
        type Rs UsersList' = UsersListResponse
        request = requestWith sQLAdminRequest
        requestWith rq UsersList'{..}
          = go _ulProject _ulInstance _ulQuotaUser
              (Just _ulPrettyPrint)
              _ulUserIP
              _ulFields
              _ulKey
              _ulOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy UsersListResource) rq
