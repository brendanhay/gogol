{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Sql.Databases.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a resource containing information about a database inside a
-- Cloud SQL instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @sql.databases.update@.
module Network.Google.API.Sql.Databases.Update
    (
    -- * REST Resource
      DatabasesUpdateAPI

    -- * Creating a Request
    , databasesUpdate'
    , DatabasesUpdate'

    -- * Request Lenses
    , duQuotaUser
    , duPrettyPrint
    , duProject
    , duDatabase
    , duUserIp
    , duKey
    , duOauthToken
    , duFields
    , duAlt
    , duInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for sql.databases.update which the
-- 'DatabasesUpdate'' request conforms to.
type DatabasesUpdateAPI =
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
                             QueryParam "alt" Alt :> Put '[JSON] Operation

-- | Updates a resource containing information about a database inside a
-- Cloud SQL instance.
--
-- /See:/ 'databasesUpdate'' smart constructor.
data DatabasesUpdate' = DatabasesUpdate'
    { _duQuotaUser   :: !(Maybe Text)
    , _duPrettyPrint :: !Bool
    , _duProject     :: !Text
    , _duDatabase    :: !Text
    , _duUserIp      :: !(Maybe Text)
    , _duKey         :: !(Maybe Text)
    , _duOauthToken  :: !(Maybe Text)
    , _duFields      :: !(Maybe Text)
    , _duAlt         :: !Alt
    , _duInstance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatabasesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'duQuotaUser'
--
-- * 'duPrettyPrint'
--
-- * 'duProject'
--
-- * 'duDatabase'
--
-- * 'duUserIp'
--
-- * 'duKey'
--
-- * 'duOauthToken'
--
-- * 'duFields'
--
-- * 'duAlt'
--
-- * 'duInstance'
databasesUpdate'
    :: Text -- ^ 'project'
    -> Text -- ^ 'database'
    -> Text -- ^ 'instance'
    -> DatabasesUpdate'
databasesUpdate' pDuProject_ pDuDatabase_ pDuInstance_ =
    DatabasesUpdate'
    { _duQuotaUser = Nothing
    , _duPrettyPrint = True
    , _duProject = pDuProject_
    , _duDatabase = pDuDatabase_
    , _duUserIp = Nothing
    , _duKey = Nothing
    , _duOauthToken = Nothing
    , _duFields = Nothing
    , _duAlt = JSON
    , _duInstance = pDuInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
duQuotaUser :: Lens' DatabasesUpdate' (Maybe Text)
duQuotaUser
  = lens _duQuotaUser (\ s a -> s{_duQuotaUser = a})

-- | Returns response with indentations and line breaks.
duPrettyPrint :: Lens' DatabasesUpdate' Bool
duPrettyPrint
  = lens _duPrettyPrint
      (\ s a -> s{_duPrettyPrint = a})

-- | Project ID of the project that contains the instance.
duProject :: Lens' DatabasesUpdate' Text
duProject
  = lens _duProject (\ s a -> s{_duProject = a})

-- | Name of the database to be updated in the instance.
duDatabase :: Lens' DatabasesUpdate' Text
duDatabase
  = lens _duDatabase (\ s a -> s{_duDatabase = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
duUserIp :: Lens' DatabasesUpdate' (Maybe Text)
duUserIp = lens _duUserIp (\ s a -> s{_duUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
duKey :: Lens' DatabasesUpdate' (Maybe Text)
duKey = lens _duKey (\ s a -> s{_duKey = a})

-- | OAuth 2.0 token for the current user.
duOauthToken :: Lens' DatabasesUpdate' (Maybe Text)
duOauthToken
  = lens _duOauthToken (\ s a -> s{_duOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
duFields :: Lens' DatabasesUpdate' (Maybe Text)
duFields = lens _duFields (\ s a -> s{_duFields = a})

-- | Data format for the response.
duAlt :: Lens' DatabasesUpdate' Alt
duAlt = lens _duAlt (\ s a -> s{_duAlt = a})

-- | Database instance ID. This does not include the project ID.
duInstance :: Lens' DatabasesUpdate' Text
duInstance
  = lens _duInstance (\ s a -> s{_duInstance = a})

instance GoogleRequest DatabasesUpdate' where
        type Rs DatabasesUpdate' = Operation
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u DatabasesUpdate'{..}
          = go _duQuotaUser (Just _duPrettyPrint) _duProject
              _duDatabase
              _duUserIp
              _duKey
              _duOauthToken
              _duFields
              (Just _duAlt)
              _duInstance
          where go
                  = clientWithRoute (Proxy :: Proxy DatabasesUpdateAPI)
                      r
                      u
