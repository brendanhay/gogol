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
-- Module      : Network.Google.Resource.SQL.Databases.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a resource containing information about a database inside a
-- Cloud SQL instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SQLDatabasesGet@.
module Network.Google.Resource.SQL.Databases.Get
    (
    -- * REST Resource
      DatabasesGetResource

    -- * Creating a Request
    , databasesGet'
    , DatabasesGet'

    -- * Request Lenses
    , dgQuotaUser
    , dgPrettyPrint
    , dgProject
    , dgDatabase
    , dgUserIP
    , dgKey
    , dgOAuthToken
    , dgFields
    , dgInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SQLDatabasesGet@ which the
-- 'DatabasesGet'' request conforms to.
type DatabasesGetResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "databases" :>
               Capture "database" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Database

-- | Retrieves a resource containing information about a database inside a
-- Cloud SQL instance.
--
-- /See:/ 'databasesGet'' smart constructor.
data DatabasesGet' = DatabasesGet'
    { _dgQuotaUser   :: !(Maybe Text)
    , _dgPrettyPrint :: !Bool
    , _dgProject     :: !Text
    , _dgDatabase    :: !Text
    , _dgUserIP      :: !(Maybe Text)
    , _dgKey         :: !(Maybe AuthKey)
    , _dgOAuthToken  :: !(Maybe OAuthToken)
    , _dgFields      :: !(Maybe Text)
    , _dgInstance    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatabasesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgQuotaUser'
--
-- * 'dgPrettyPrint'
--
-- * 'dgProject'
--
-- * 'dgDatabase'
--
-- * 'dgUserIP'
--
-- * 'dgKey'
--
-- * 'dgOAuthToken'
--
-- * 'dgFields'
--
-- * 'dgInstance'
databasesGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'database'
    -> Text -- ^ 'instance'
    -> DatabasesGet'
databasesGet' pDgProject_ pDgDatabase_ pDgInstance_ =
    DatabasesGet'
    { _dgQuotaUser = Nothing
    , _dgPrettyPrint = True
    , _dgProject = pDgProject_
    , _dgDatabase = pDgDatabase_
    , _dgUserIP = Nothing
    , _dgKey = Nothing
    , _dgOAuthToken = Nothing
    , _dgFields = Nothing
    , _dgInstance = pDgInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dgQuotaUser :: Lens' DatabasesGet' (Maybe Text)
dgQuotaUser
  = lens _dgQuotaUser (\ s a -> s{_dgQuotaUser = a})

-- | Returns response with indentations and line breaks.
dgPrettyPrint :: Lens' DatabasesGet' Bool
dgPrettyPrint
  = lens _dgPrettyPrint
      (\ s a -> s{_dgPrettyPrint = a})

-- | Project ID of the project that contains the instance.
dgProject :: Lens' DatabasesGet' Text
dgProject
  = lens _dgProject (\ s a -> s{_dgProject = a})

-- | Name of the database in the instance.
dgDatabase :: Lens' DatabasesGet' Text
dgDatabase
  = lens _dgDatabase (\ s a -> s{_dgDatabase = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dgUserIP :: Lens' DatabasesGet' (Maybe Text)
dgUserIP = lens _dgUserIP (\ s a -> s{_dgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dgKey :: Lens' DatabasesGet' (Maybe AuthKey)
dgKey = lens _dgKey (\ s a -> s{_dgKey = a})

-- | OAuth 2.0 token for the current user.
dgOAuthToken :: Lens' DatabasesGet' (Maybe OAuthToken)
dgOAuthToken
  = lens _dgOAuthToken (\ s a -> s{_dgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
dgFields :: Lens' DatabasesGet' (Maybe Text)
dgFields = lens _dgFields (\ s a -> s{_dgFields = a})

-- | Database instance ID. This does not include the project ID.
dgInstance :: Lens' DatabasesGet' Text
dgInstance
  = lens _dgInstance (\ s a -> s{_dgInstance = a})

instance GoogleAuth DatabasesGet' where
        _AuthKey = dgKey . _Just
        _AuthToken = dgOAuthToken . _Just

instance GoogleRequest DatabasesGet' where
        type Rs DatabasesGet' = Database
        request = requestWith sQLAdminRequest
        requestWith rq DatabasesGet'{..}
          = go _dgProject _dgInstance _dgDatabase _dgQuotaUser
              (Just _dgPrettyPrint)
              _dgUserIP
              _dgFields
              _dgKey
              _dgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy DatabasesGetResource)
                      rq
