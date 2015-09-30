{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Sql.Databases.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a resource containing information about a database inside a
-- Cloud SQL instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SqlDatabasesInsert@.
module Sql.Databases.Insert
    (
    -- * REST Resource
      DatabasesInsertAPI

    -- * Creating a Request
    , databasesInsert
    , DatabasesInsert

    -- * Request Lenses
    , datQuotaUser
    , datPrettyPrint
    , datProject
    , datUserIp
    , datKey
    , datOauthToken
    , datFields
    , datAlt
    , datInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SqlDatabasesInsert@ which the
-- 'DatabasesInsert' request conforms to.
type DatabasesInsertAPI =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "databases" :> Post '[JSON] Operation

-- | Inserts a resource containing information about a database inside a
-- Cloud SQL instance.
--
-- /See:/ 'databasesInsert' smart constructor.
data DatabasesInsert = DatabasesInsert
    { _datQuotaUser   :: !(Maybe Text)
    , _datPrettyPrint :: !Bool
    , _datProject     :: !Text
    , _datUserIp      :: !(Maybe Text)
    , _datKey         :: !(Maybe Text)
    , _datOauthToken  :: !(Maybe Text)
    , _datFields      :: !(Maybe Text)
    , _datAlt         :: !Text
    , _datInstance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatabasesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'datQuotaUser'
--
-- * 'datPrettyPrint'
--
-- * 'datProject'
--
-- * 'datUserIp'
--
-- * 'datKey'
--
-- * 'datOauthToken'
--
-- * 'datFields'
--
-- * 'datAlt'
--
-- * 'datInstance'
databasesInsert
    :: Text -- ^ 'project'
    -> Text -- ^ 'instance'
    -> DatabasesInsert
databasesInsert pDatProject_ pDatInstance_ =
    DatabasesInsert
    { _datQuotaUser = Nothing
    , _datPrettyPrint = True
    , _datProject = pDatProject_
    , _datUserIp = Nothing
    , _datKey = Nothing
    , _datOauthToken = Nothing
    , _datFields = Nothing
    , _datAlt = "json"
    , _datInstance = pDatInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
datQuotaUser :: Lens' DatabasesInsert' (Maybe Text)
datQuotaUser
  = lens _datQuotaUser (\ s a -> s{_datQuotaUser = a})

-- | Returns response with indentations and line breaks.
datPrettyPrint :: Lens' DatabasesInsert' Bool
datPrettyPrint
  = lens _datPrettyPrint
      (\ s a -> s{_datPrettyPrint = a})

-- | Project ID of the project that contains the instance.
datProject :: Lens' DatabasesInsert' Text
datProject
  = lens _datProject (\ s a -> s{_datProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
datUserIp :: Lens' DatabasesInsert' (Maybe Text)
datUserIp
  = lens _datUserIp (\ s a -> s{_datUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
datKey :: Lens' DatabasesInsert' (Maybe Text)
datKey = lens _datKey (\ s a -> s{_datKey = a})

-- | OAuth 2.0 token for the current user.
datOauthToken :: Lens' DatabasesInsert' (Maybe Text)
datOauthToken
  = lens _datOauthToken
      (\ s a -> s{_datOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
datFields :: Lens' DatabasesInsert' (Maybe Text)
datFields
  = lens _datFields (\ s a -> s{_datFields = a})

-- | Data format for the response.
datAlt :: Lens' DatabasesInsert' Text
datAlt = lens _datAlt (\ s a -> s{_datAlt = a})

-- | Database instance ID. This does not include the project ID.
datInstance :: Lens' DatabasesInsert' Text
datInstance
  = lens _datInstance (\ s a -> s{_datInstance = a})

instance GoogleRequest DatabasesInsert' where
        type Rs DatabasesInsert' = Operation
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u DatabasesInsert{..}
          = go _datQuotaUser _datPrettyPrint _datProject
              _datUserIp
              _datKey
              _datOauthToken
              _datFields
              _datAlt
              _datInstance
          where go
                  = clientWithRoute (Proxy :: Proxy DatabasesInsertAPI)
                      r
                      u
