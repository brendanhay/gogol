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
module Network.Google.Resource.Sql.Databases.Insert
    (
    -- * REST Resource
      DatabasesInsertResource

    -- * Creating a Request
    , databasesInsert'
    , DatabasesInsert'

    -- * Request Lenses
    , diQuotaUser
    , diPrettyPrint
    , diProject
    , diUserIp
    , diKey
    , diOauthToken
    , diFields
    , diAlt
    , diInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SqlDatabasesInsert@ which the
-- 'DatabasesInsert'' request conforms to.
type DatabasesInsertResource =
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
    { _diQuotaUser   :: !(Maybe Text)
    , _diPrettyPrint :: !Bool
    , _diProject     :: !Text
    , _diUserIp      :: !(Maybe Text)
    , _diKey         :: !(Maybe Text)
    , _diOauthToken  :: !(Maybe Text)
    , _diFields      :: !(Maybe Text)
    , _diAlt         :: !Alt
    , _diInstance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatabasesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diQuotaUser'
--
-- * 'diPrettyPrint'
--
-- * 'diProject'
--
-- * 'diUserIp'
--
-- * 'diKey'
--
-- * 'diOauthToken'
--
-- * 'diFields'
--
-- * 'diAlt'
--
-- * 'diInstance'
databasesInsert'
    :: Text -- ^ 'project'
    -> Text -- ^ 'instance'
    -> DatabasesInsert'
databasesInsert' pDiProject_ pDiInstance_ =
    DatabasesInsert'
    { _diQuotaUser = Nothing
    , _diPrettyPrint = True
    , _diProject = pDiProject_
    , _diUserIp = Nothing
    , _diKey = Nothing
    , _diOauthToken = Nothing
    , _diFields = Nothing
    , _diAlt = JSON
    , _diInstance = pDiInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
diQuotaUser :: Lens' DatabasesInsert' (Maybe Text)
diQuotaUser
  = lens _diQuotaUser (\ s a -> s{_diQuotaUser = a})

-- | Returns response with indentations and line breaks.
diPrettyPrint :: Lens' DatabasesInsert' Bool
diPrettyPrint
  = lens _diPrettyPrint
      (\ s a -> s{_diPrettyPrint = a})

-- | Project ID of the project that contains the instance.
diProject :: Lens' DatabasesInsert' Text
diProject
  = lens _diProject (\ s a -> s{_diProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
diUserIp :: Lens' DatabasesInsert' (Maybe Text)
diUserIp = lens _diUserIp (\ s a -> s{_diUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
diKey :: Lens' DatabasesInsert' (Maybe Text)
diKey = lens _diKey (\ s a -> s{_diKey = a})

-- | OAuth 2.0 token for the current user.
diOauthToken :: Lens' DatabasesInsert' (Maybe Text)
diOauthToken
  = lens _diOauthToken (\ s a -> s{_diOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
diFields :: Lens' DatabasesInsert' (Maybe Text)
diFields = lens _diFields (\ s a -> s{_diFields = a})

-- | Data format for the response.
diAlt :: Lens' DatabasesInsert' Alt
diAlt = lens _diAlt (\ s a -> s{_diAlt = a})

-- | Database instance ID. This does not include the project ID.
diInstance :: Lens' DatabasesInsert' Text
diInstance
  = lens _diInstance (\ s a -> s{_diInstance = a})

instance GoogleRequest DatabasesInsert' where
        type Rs DatabasesInsert' = Operation
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u DatabasesInsert'{..}
          = go _diQuotaUser (Just _diPrettyPrint) _diProject
              _diUserIp
              _diKey
              _diOauthToken
              _diFields
              (Just _diAlt)
              _diInstance
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DatabasesInsertResource)
                      r
                      u
