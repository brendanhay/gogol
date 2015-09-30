{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Sql.Databases.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a resource containing information about a database inside a
-- Cloud SQL instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SqlDatabasesGet@.
module Sql.Databases.Get
    (
    -- * REST Resource
      DatabasesGetAPI

    -- * Creating a Request
    , databasesGet
    , DatabasesGet

    -- * Request Lenses
    , dgQuotaUser
    , dgPrettyPrint
    , dgProject
    , dgDatabase
    , dgUserIp
    , dgKey
    , dgOauthToken
    , dgFields
    , dgAlt
    , dgInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SqlDatabasesGet@ which the
-- 'DatabasesGet' request conforms to.
type DatabasesGetAPI =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "databases" :>
               Capture "database" Text :> Get '[JSON] Database

-- | Retrieves a resource containing information about a database inside a
-- Cloud SQL instance.
--
-- /See:/ 'databasesGet' smart constructor.
data DatabasesGet = DatabasesGet
    { _dgQuotaUser   :: !(Maybe Text)
    , _dgPrettyPrint :: !Bool
    , _dgProject     :: !Text
    , _dgDatabase    :: !Text
    , _dgUserIp      :: !(Maybe Text)
    , _dgKey         :: !(Maybe Text)
    , _dgOauthToken  :: !(Maybe Text)
    , _dgFields      :: !(Maybe Text)
    , _dgAlt         :: !Text
    , _dgInstance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'dgUserIp'
--
-- * 'dgKey'
--
-- * 'dgOauthToken'
--
-- * 'dgFields'
--
-- * 'dgAlt'
--
-- * 'dgInstance'
databasesGet
    :: Text -- ^ 'project'
    -> Text -- ^ 'database'
    -> Text -- ^ 'instance'
    -> DatabasesGet
databasesGet pDgProject_ pDgDatabase_ pDgInstance_ =
    DatabasesGet
    { _dgQuotaUser = Nothing
    , _dgPrettyPrint = True
    , _dgProject = pDgProject_
    , _dgDatabase = pDgDatabase_
    , _dgUserIp = Nothing
    , _dgKey = Nothing
    , _dgOauthToken = Nothing
    , _dgFields = Nothing
    , _dgAlt = "json"
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
dgUserIp :: Lens' DatabasesGet' (Maybe Text)
dgUserIp = lens _dgUserIp (\ s a -> s{_dgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dgKey :: Lens' DatabasesGet' (Maybe Text)
dgKey = lens _dgKey (\ s a -> s{_dgKey = a})

-- | OAuth 2.0 token for the current user.
dgOauthToken :: Lens' DatabasesGet' (Maybe Text)
dgOauthToken
  = lens _dgOauthToken (\ s a -> s{_dgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
dgFields :: Lens' DatabasesGet' (Maybe Text)
dgFields = lens _dgFields (\ s a -> s{_dgFields = a})

-- | Data format for the response.
dgAlt :: Lens' DatabasesGet' Text
dgAlt = lens _dgAlt (\ s a -> s{_dgAlt = a})

-- | Database instance ID. This does not include the project ID.
dgInstance :: Lens' DatabasesGet' Text
dgInstance
  = lens _dgInstance (\ s a -> s{_dgInstance = a})

instance GoogleRequest DatabasesGet' where
        type Rs DatabasesGet' = Database
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u DatabasesGet{..}
          = go _dgQuotaUser _dgPrettyPrint _dgProject
              _dgDatabase
              _dgUserIp
              _dgKey
              _dgOauthToken
              _dgFields
              _dgAlt
              _dgInstance
          where go
                  = clientWithRoute (Proxy :: Proxy DatabasesGetAPI) r
                      u
