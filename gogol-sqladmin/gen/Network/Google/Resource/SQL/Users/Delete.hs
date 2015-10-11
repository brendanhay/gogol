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
-- Module      : Network.Google.Resource.SQL.Users.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a user from a Cloud SQL instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SQLUsersDelete@.
module Network.Google.Resource.SQL.Users.Delete
    (
    -- * REST Resource
      UsersDeleteResource

    -- * Creating a Request
    , usersDelete'
    , UsersDelete'

    -- * Request Lenses
    , udQuotaUser
    , udPrettyPrint
    , udProject
    , udUserIP
    , udKey
    , udName
    , udHost
    , udOAuthToken
    , udFields
    , udInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SQLUsersDelete@ method which the
-- 'UsersDelete'' request conforms to.
type UsersDeleteResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "users" :>
               QueryParam "host" Text :>
                 QueryParam "name" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             Header "Authorization" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 Delete '[JSON] Operation

-- | Deletes a user from a Cloud SQL instance.
--
-- /See:/ 'usersDelete'' smart constructor.
data UsersDelete' = UsersDelete'
    { _udQuotaUser   :: !(Maybe Text)
    , _udPrettyPrint :: !Bool
    , _udProject     :: !Text
    , _udUserIP      :: !(Maybe Text)
    , _udKey         :: !(Maybe AuthKey)
    , _udName        :: !Text
    , _udHost        :: !Text
    , _udOAuthToken  :: !(Maybe OAuthToken)
    , _udFields      :: !(Maybe Text)
    , _udInstance    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udQuotaUser'
--
-- * 'udPrettyPrint'
--
-- * 'udProject'
--
-- * 'udUserIP'
--
-- * 'udKey'
--
-- * 'udName'
--
-- * 'udHost'
--
-- * 'udOAuthToken'
--
-- * 'udFields'
--
-- * 'udInstance'
usersDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'name'
    -> Text -- ^ 'host'
    -> Text -- ^ 'instance'
    -> UsersDelete'
usersDelete' pUdProject_ pUdName_ pUdHost_ pUdInstance_ =
    UsersDelete'
    { _udQuotaUser = Nothing
    , _udPrettyPrint = True
    , _udProject = pUdProject_
    , _udUserIP = Nothing
    , _udKey = Nothing
    , _udName = pUdName_
    , _udHost = pUdHost_
    , _udOAuthToken = Nothing
    , _udFields = Nothing
    , _udInstance = pUdInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
udQuotaUser :: Lens' UsersDelete' (Maybe Text)
udQuotaUser
  = lens _udQuotaUser (\ s a -> s{_udQuotaUser = a})

-- | Returns response with indentations and line breaks.
udPrettyPrint :: Lens' UsersDelete' Bool
udPrettyPrint
  = lens _udPrettyPrint
      (\ s a -> s{_udPrettyPrint = a})

-- | Project ID of the project that contains the instance.
udProject :: Lens' UsersDelete' Text
udProject
  = lens _udProject (\ s a -> s{_udProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
udUserIP :: Lens' UsersDelete' (Maybe Text)
udUserIP = lens _udUserIP (\ s a -> s{_udUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
udKey :: Lens' UsersDelete' (Maybe AuthKey)
udKey = lens _udKey (\ s a -> s{_udKey = a})

-- | Name of the user in the instance.
udName :: Lens' UsersDelete' Text
udName = lens _udName (\ s a -> s{_udName = a})

-- | Host of the user in the instance.
udHost :: Lens' UsersDelete' Text
udHost = lens _udHost (\ s a -> s{_udHost = a})

-- | OAuth 2.0 token for the current user.
udOAuthToken :: Lens' UsersDelete' (Maybe OAuthToken)
udOAuthToken
  = lens _udOAuthToken (\ s a -> s{_udOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
udFields :: Lens' UsersDelete' (Maybe Text)
udFields = lens _udFields (\ s a -> s{_udFields = a})

-- | Database instance ID. This does not include the project ID.
udInstance :: Lens' UsersDelete' Text
udInstance
  = lens _udInstance (\ s a -> s{_udInstance = a})

instance GoogleAuth UsersDelete' where
        _AuthKey = udKey . _Just
        _AuthToken = udOAuthToken . _Just

instance GoogleRequest UsersDelete' where
        type Rs UsersDelete' = Operation
        request = requestWith sQLAdminRequest
        requestWith rq UsersDelete'{..}
          = go _udProject _udInstance (Just _udHost)
              (Just _udName)
              _udQuotaUser
              (Just _udPrettyPrint)
              _udUserIP
              _udFields
              _udKey
              _udOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy UsersDeleteResource) rq
