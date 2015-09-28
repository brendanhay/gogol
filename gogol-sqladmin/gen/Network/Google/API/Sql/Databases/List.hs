{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Sql.Databases.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists databases in the specified Cloud SQL instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @sql.databases.list@.
module Network.Google.API.Sql.Databases.List
    (
    -- * REST Resource
      DatabasesListAPI

    -- * Creating a Request
    , databasesList'
    , DatabasesList'

    -- * Request Lenses
    , dlQuotaUser
    , dlPrettyPrint
    , dlProject
    , dlUserIp
    , dlKey
    , dlOauthToken
    , dlFields
    , dlAlt
    , dlInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for sql.databases.list which the
-- 'DatabasesList'' request conforms to.
type DatabasesListAPI =
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
                           QueryParam "alt" Alt :>
                             Get '[JSON] DatabasesListResponse

-- | Lists databases in the specified Cloud SQL instance.
--
-- /See:/ 'databasesList'' smart constructor.
data DatabasesList' = DatabasesList'
    { _dlQuotaUser   :: !(Maybe Text)
    , _dlPrettyPrint :: !Bool
    , _dlProject     :: !Text
    , _dlUserIp      :: !(Maybe Text)
    , _dlKey         :: !(Maybe Text)
    , _dlOauthToken  :: !(Maybe Text)
    , _dlFields      :: !(Maybe Text)
    , _dlAlt         :: !Alt
    , _dlInstance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatabasesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlQuotaUser'
--
-- * 'dlPrettyPrint'
--
-- * 'dlProject'
--
-- * 'dlUserIp'
--
-- * 'dlKey'
--
-- * 'dlOauthToken'
--
-- * 'dlFields'
--
-- * 'dlAlt'
--
-- * 'dlInstance'
databasesList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'instance'
    -> DatabasesList'
databasesList' pDlProject_ pDlInstance_ =
    DatabasesList'
    { _dlQuotaUser = Nothing
    , _dlPrettyPrint = True
    , _dlProject = pDlProject_
    , _dlUserIp = Nothing
    , _dlKey = Nothing
    , _dlOauthToken = Nothing
    , _dlFields = Nothing
    , _dlAlt = JSON
    , _dlInstance = pDlInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dlQuotaUser :: Lens' DatabasesList' (Maybe Text)
dlQuotaUser
  = lens _dlQuotaUser (\ s a -> s{_dlQuotaUser = a})

-- | Returns response with indentations and line breaks.
dlPrettyPrint :: Lens' DatabasesList' Bool
dlPrettyPrint
  = lens _dlPrettyPrint
      (\ s a -> s{_dlPrettyPrint = a})

-- | Project ID of the project for which to list Cloud SQL instances.
dlProject :: Lens' DatabasesList' Text
dlProject
  = lens _dlProject (\ s a -> s{_dlProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dlUserIp :: Lens' DatabasesList' (Maybe Text)
dlUserIp = lens _dlUserIp (\ s a -> s{_dlUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dlKey :: Lens' DatabasesList' (Maybe Text)
dlKey = lens _dlKey (\ s a -> s{_dlKey = a})

-- | OAuth 2.0 token for the current user.
dlOauthToken :: Lens' DatabasesList' (Maybe Text)
dlOauthToken
  = lens _dlOauthToken (\ s a -> s{_dlOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
dlFields :: Lens' DatabasesList' (Maybe Text)
dlFields = lens _dlFields (\ s a -> s{_dlFields = a})

-- | Data format for the response.
dlAlt :: Lens' DatabasesList' Alt
dlAlt = lens _dlAlt (\ s a -> s{_dlAlt = a})

-- | Cloud SQL instance ID. This does not include the project ID.
dlInstance :: Lens' DatabasesList' Text
dlInstance
  = lens _dlInstance (\ s a -> s{_dlInstance = a})

instance GoogleRequest DatabasesList' where
        type Rs DatabasesList' = DatabasesListResponse
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u DatabasesList'{..}
          = go _dlQuotaUser (Just _dlPrettyPrint) _dlProject
              _dlUserIp
              _dlKey
              _dlOauthToken
              _dlFields
              (Just _dlAlt)
              _dlInstance
          where go
                  = clientWithRoute (Proxy :: Proxy DatabasesListAPI) r
                      u
