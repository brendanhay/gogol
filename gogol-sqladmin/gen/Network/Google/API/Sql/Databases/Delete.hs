{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Sql.Databases.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a resource containing information about a database inside a
-- Cloud SQL instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @sql.databases.delete@.
module Network.Google.API.Sql.Databases.Delete
    (
    -- * REST Resource
      DatabasesDeleteAPI

    -- * Creating a Request
    , databasesDelete'
    , DatabasesDelete'

    -- * Request Lenses
    , ddQuotaUser
    , ddPrettyPrint
    , ddProject
    , ddDatabase
    , ddUserIp
    , ddKey
    , ddOauthToken
    , ddFields
    , ddAlt
    , ddInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for sql.databases.delete which the
-- 'DatabasesDelete'' request conforms to.
type DatabasesDeleteAPI =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "databases" :>
               Capture "database" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Delete '[JSON] Operation

-- | Deletes a resource containing information about a database inside a
-- Cloud SQL instance.
--
-- /See:/ 'databasesDelete'' smart constructor.
data DatabasesDelete' = DatabasesDelete'
    { _ddQuotaUser   :: !(Maybe Text)
    , _ddPrettyPrint :: !Bool
    , _ddProject     :: !Text
    , _ddDatabase    :: !Text
    , _ddUserIp      :: !(Maybe Text)
    , _ddKey         :: !(Maybe Text)
    , _ddOauthToken  :: !(Maybe Text)
    , _ddFields      :: !(Maybe Text)
    , _ddAlt         :: !Alt
    , _ddInstance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatabasesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddQuotaUser'
--
-- * 'ddPrettyPrint'
--
-- * 'ddProject'
--
-- * 'ddDatabase'
--
-- * 'ddUserIp'
--
-- * 'ddKey'
--
-- * 'ddOauthToken'
--
-- * 'ddFields'
--
-- * 'ddAlt'
--
-- * 'ddInstance'
databasesDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'database'
    -> Text -- ^ 'instance'
    -> DatabasesDelete'
databasesDelete' pDdProject_ pDdDatabase_ pDdInstance_ =
    DatabasesDelete'
    { _ddQuotaUser = Nothing
    , _ddPrettyPrint = True
    , _ddProject = pDdProject_
    , _ddDatabase = pDdDatabase_
    , _ddUserIp = Nothing
    , _ddKey = Nothing
    , _ddOauthToken = Nothing
    , _ddFields = Nothing
    , _ddAlt = JSON
    , _ddInstance = pDdInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ddQuotaUser :: Lens' DatabasesDelete' (Maybe Text)
ddQuotaUser
  = lens _ddQuotaUser (\ s a -> s{_ddQuotaUser = a})

-- | Returns response with indentations and line breaks.
ddPrettyPrint :: Lens' DatabasesDelete' Bool
ddPrettyPrint
  = lens _ddPrettyPrint
      (\ s a -> s{_ddPrettyPrint = a})

-- | Project ID of the project that contains the instance.
ddProject :: Lens' DatabasesDelete' Text
ddProject
  = lens _ddProject (\ s a -> s{_ddProject = a})

-- | Name of the database to be deleted in the instance.
ddDatabase :: Lens' DatabasesDelete' Text
ddDatabase
  = lens _ddDatabase (\ s a -> s{_ddDatabase = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ddUserIp :: Lens' DatabasesDelete' (Maybe Text)
ddUserIp = lens _ddUserIp (\ s a -> s{_ddUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ddKey :: Lens' DatabasesDelete' (Maybe Text)
ddKey = lens _ddKey (\ s a -> s{_ddKey = a})

-- | OAuth 2.0 token for the current user.
ddOauthToken :: Lens' DatabasesDelete' (Maybe Text)
ddOauthToken
  = lens _ddOauthToken (\ s a -> s{_ddOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ddFields :: Lens' DatabasesDelete' (Maybe Text)
ddFields = lens _ddFields (\ s a -> s{_ddFields = a})

-- | Data format for the response.
ddAlt :: Lens' DatabasesDelete' Alt
ddAlt = lens _ddAlt (\ s a -> s{_ddAlt = a})

-- | Database instance ID. This does not include the project ID.
ddInstance :: Lens' DatabasesDelete' Text
ddInstance
  = lens _ddInstance (\ s a -> s{_ddInstance = a})

instance GoogleRequest DatabasesDelete' where
        type Rs DatabasesDelete' = Operation
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u DatabasesDelete'{..}
          = go _ddQuotaUser (Just _ddPrettyPrint) _ddProject
              _ddDatabase
              _ddUserIp
              _ddKey
              _ddOauthToken
              _ddFields
              (Just _ddAlt)
              _ddInstance
          where go
                  = clientWithRoute (Proxy :: Proxy DatabasesDeleteAPI)
                      r
                      u
