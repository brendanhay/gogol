{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Sql.Databases.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a resource containing information about a database inside a
-- Cloud SQL instance. This method supports patch semantics.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SqlDatabasesPatch@.
module Sql.Databases.Patch
    (
    -- * REST Resource
      DatabasesPatchAPI

    -- * Creating a Request
    , databasesPatch
    , DatabasesPatch

    -- * Request Lenses
    , dpQuotaUser
    , dpPrettyPrint
    , dpProject
    , dpDatabase
    , dpUserIp
    , dpKey
    , dpOauthToken
    , dpFields
    , dpAlt
    , dpInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SqlDatabasesPatch@ which the
-- 'DatabasesPatch' request conforms to.
type DatabasesPatchAPI =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "databases" :>
               Capture "database" Text :> Patch '[JSON] Operation

-- | Updates a resource containing information about a database inside a
-- Cloud SQL instance. This method supports patch semantics.
--
-- /See:/ 'databasesPatch' smart constructor.
data DatabasesPatch = DatabasesPatch
    { _dpQuotaUser   :: !(Maybe Text)
    , _dpPrettyPrint :: !Bool
    , _dpProject     :: !Text
    , _dpDatabase    :: !Text
    , _dpUserIp      :: !(Maybe Text)
    , _dpKey         :: !(Maybe Text)
    , _dpOauthToken  :: !(Maybe Text)
    , _dpFields      :: !(Maybe Text)
    , _dpAlt         :: !Text
    , _dpInstance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatabasesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpQuotaUser'
--
-- * 'dpPrettyPrint'
--
-- * 'dpProject'
--
-- * 'dpDatabase'
--
-- * 'dpUserIp'
--
-- * 'dpKey'
--
-- * 'dpOauthToken'
--
-- * 'dpFields'
--
-- * 'dpAlt'
--
-- * 'dpInstance'
databasesPatch
    :: Text -- ^ 'project'
    -> Text -- ^ 'database'
    -> Text -- ^ 'instance'
    -> DatabasesPatch
databasesPatch pDpProject_ pDpDatabase_ pDpInstance_ =
    DatabasesPatch
    { _dpQuotaUser = Nothing
    , _dpPrettyPrint = True
    , _dpProject = pDpProject_
    , _dpDatabase = pDpDatabase_
    , _dpUserIp = Nothing
    , _dpKey = Nothing
    , _dpOauthToken = Nothing
    , _dpFields = Nothing
    , _dpAlt = "json"
    , _dpInstance = pDpInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dpQuotaUser :: Lens' DatabasesPatch' (Maybe Text)
dpQuotaUser
  = lens _dpQuotaUser (\ s a -> s{_dpQuotaUser = a})

-- | Returns response with indentations and line breaks.
dpPrettyPrint :: Lens' DatabasesPatch' Bool
dpPrettyPrint
  = lens _dpPrettyPrint
      (\ s a -> s{_dpPrettyPrint = a})

-- | Project ID of the project that contains the instance.
dpProject :: Lens' DatabasesPatch' Text
dpProject
  = lens _dpProject (\ s a -> s{_dpProject = a})

-- | Name of the database to be updated in the instance.
dpDatabase :: Lens' DatabasesPatch' Text
dpDatabase
  = lens _dpDatabase (\ s a -> s{_dpDatabase = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dpUserIp :: Lens' DatabasesPatch' (Maybe Text)
dpUserIp = lens _dpUserIp (\ s a -> s{_dpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dpKey :: Lens' DatabasesPatch' (Maybe Text)
dpKey = lens _dpKey (\ s a -> s{_dpKey = a})

-- | OAuth 2.0 token for the current user.
dpOauthToken :: Lens' DatabasesPatch' (Maybe Text)
dpOauthToken
  = lens _dpOauthToken (\ s a -> s{_dpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
dpFields :: Lens' DatabasesPatch' (Maybe Text)
dpFields = lens _dpFields (\ s a -> s{_dpFields = a})

-- | Data format for the response.
dpAlt :: Lens' DatabasesPatch' Text
dpAlt = lens _dpAlt (\ s a -> s{_dpAlt = a})

-- | Database instance ID. This does not include the project ID.
dpInstance :: Lens' DatabasesPatch' Text
dpInstance
  = lens _dpInstance (\ s a -> s{_dpInstance = a})

instance GoogleRequest DatabasesPatch' where
        type Rs DatabasesPatch' = Operation
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u DatabasesPatch{..}
          = go _dpQuotaUser _dpPrettyPrint _dpProject
              _dpDatabase
              _dpUserIp
              _dpKey
              _dpOauthToken
              _dpFields
              _dpAlt
              _dpInstance
          where go
                  = clientWithRoute (Proxy :: Proxy DatabasesPatchAPI)
                      r
                      u
