{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Sql.Databases.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a resource containing information about a database inside a
-- Cloud SQL instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @sql.databases.insert@.
module Network.Google.API.Sql.Databases.Insert
    (
    -- * REST Resource
      DatabasesInsertAPI

    -- * Creating a Request
    , databasesInsert'
    , DatabasesInsert'

    -- * Request Lenses
    , dQuotaUser
    , dPrettyPrint
    , dProject
    , dUserIp
    , dKey
    , dOauthToken
    , dFields
    , dAlt
    , dInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for sql.databases.insert which the
-- 'DatabasesInsert'' request conforms to.
type DatabasesInsertAPI =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "databases" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Inserts a resource containing information about a database inside a
-- Cloud SQL instance.
--
-- /See:/ 'databasesInsert'' smart constructor.
data DatabasesInsert' = DatabasesInsert'
    { _dQuotaUser   :: !(Maybe Text)
    , _dPrettyPrint :: !Bool
    , _dProject     :: !Text
    , _dUserIp      :: !(Maybe Text)
    , _dKey         :: !(Maybe Text)
    , _dOauthToken  :: !(Maybe Text)
    , _dFields      :: !(Maybe Text)
    , _dAlt         :: !Alt
    , _dInstance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatabasesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dQuotaUser'
--
-- * 'dPrettyPrint'
--
-- * 'dProject'
--
-- * 'dUserIp'
--
-- * 'dKey'
--
-- * 'dOauthToken'
--
-- * 'dFields'
--
-- * 'dAlt'
--
-- * 'dInstance'
databasesInsert'
    :: Text -- ^ 'project'
    -> Text -- ^ 'instance'
    -> DatabasesInsert'
databasesInsert' pDProject_ pDInstance_ =
    DatabasesInsert'
    { _dQuotaUser = Nothing
    , _dPrettyPrint = True
    , _dProject = pDProject_
    , _dUserIp = Nothing
    , _dKey = Nothing
    , _dOauthToken = Nothing
    , _dFields = Nothing
    , _dAlt = JSON
    , _dInstance = pDInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dQuotaUser :: Lens' DatabasesInsert' (Maybe Text)
dQuotaUser
  = lens _dQuotaUser (\ s a -> s{_dQuotaUser = a})

-- | Returns response with indentations and line breaks.
dPrettyPrint :: Lens' DatabasesInsert' Bool
dPrettyPrint
  = lens _dPrettyPrint (\ s a -> s{_dPrettyPrint = a})

-- | Project ID of the project that contains the instance.
dProject :: Lens' DatabasesInsert' Text
dProject = lens _dProject (\ s a -> s{_dProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dUserIp :: Lens' DatabasesInsert' (Maybe Text)
dUserIp = lens _dUserIp (\ s a -> s{_dUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dKey :: Lens' DatabasesInsert' (Maybe Text)
dKey = lens _dKey (\ s a -> s{_dKey = a})

-- | OAuth 2.0 token for the current user.
dOauthToken :: Lens' DatabasesInsert' (Maybe Text)
dOauthToken
  = lens _dOauthToken (\ s a -> s{_dOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
dFields :: Lens' DatabasesInsert' (Maybe Text)
dFields = lens _dFields (\ s a -> s{_dFields = a})

-- | Data format for the response.
dAlt :: Lens' DatabasesInsert' Alt
dAlt = lens _dAlt (\ s a -> s{_dAlt = a})

-- | Database instance ID. This does not include the project ID.
dInstance :: Lens' DatabasesInsert' Text
dInstance
  = lens _dInstance (\ s a -> s{_dInstance = a})

instance GoogleRequest DatabasesInsert' where
        type Rs DatabasesInsert' = Operation
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u DatabasesInsert'{..}
          = go _dQuotaUser (Just _dPrettyPrint) _dProject
              _dUserIp
              _dKey
              _dOauthToken
              _dFields
              (Just _dAlt)
              _dInstance
          where go
                  = clientWithRoute (Proxy :: Proxy DatabasesInsertAPI)
                      r
                      u
