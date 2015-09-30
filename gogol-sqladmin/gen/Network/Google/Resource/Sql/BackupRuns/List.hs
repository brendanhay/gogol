{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Sql.BackupRuns.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all backup runs associated with a given instance and configuration
-- in the reverse chronological order of the enqueued time.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SqlBackupRunsList@.
module Sql.BackupRuns.List
    (
    -- * REST Resource
      BackupRunsListAPI

    -- * Creating a Request
    , backupRunsList
    , BackupRunsList

    -- * Request Lenses
    , brlQuotaUser
    , brlPrettyPrint
    , brlProject
    , brlUserIp
    , brlKey
    , brlPageToken
    , brlOauthToken
    , brlMaxResults
    , brlFields
    , brlAlt
    , brlInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SqlBackupRunsList@ which the
-- 'BackupRunsList' request conforms to.
type BackupRunsListAPI =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "backupRuns" :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Int32 :>
                   Get '[JSON] BackupRunsListResponse

-- | Lists all backup runs associated with a given instance and configuration
-- in the reverse chronological order of the enqueued time.
--
-- /See:/ 'backupRunsList' smart constructor.
data BackupRunsList = BackupRunsList
    { _brlQuotaUser   :: !(Maybe Text)
    , _brlPrettyPrint :: !Bool
    , _brlProject     :: !Text
    , _brlUserIp      :: !(Maybe Text)
    , _brlKey         :: !(Maybe Text)
    , _brlPageToken   :: !(Maybe Text)
    , _brlOauthToken  :: !(Maybe Text)
    , _brlMaxResults  :: !(Maybe Int32)
    , _brlFields      :: !(Maybe Text)
    , _brlAlt         :: !Text
    , _brlInstance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BackupRunsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'brlQuotaUser'
--
-- * 'brlPrettyPrint'
--
-- * 'brlProject'
--
-- * 'brlUserIp'
--
-- * 'brlKey'
--
-- * 'brlPageToken'
--
-- * 'brlOauthToken'
--
-- * 'brlMaxResults'
--
-- * 'brlFields'
--
-- * 'brlAlt'
--
-- * 'brlInstance'
backupRunsList
    :: Text -- ^ 'project'
    -> Text -- ^ 'instance'
    -> BackupRunsList
backupRunsList pBrlProject_ pBrlInstance_ =
    BackupRunsList
    { _brlQuotaUser = Nothing
    , _brlPrettyPrint = True
    , _brlProject = pBrlProject_
    , _brlUserIp = Nothing
    , _brlKey = Nothing
    , _brlPageToken = Nothing
    , _brlOauthToken = Nothing
    , _brlMaxResults = Nothing
    , _brlFields = Nothing
    , _brlAlt = "json"
    , _brlInstance = pBrlInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
brlQuotaUser :: Lens' BackupRunsList' (Maybe Text)
brlQuotaUser
  = lens _brlQuotaUser (\ s a -> s{_brlQuotaUser = a})

-- | Returns response with indentations and line breaks.
brlPrettyPrint :: Lens' BackupRunsList' Bool
brlPrettyPrint
  = lens _brlPrettyPrint
      (\ s a -> s{_brlPrettyPrint = a})

-- | Project ID of the project that contains the instance.
brlProject :: Lens' BackupRunsList' Text
brlProject
  = lens _brlProject (\ s a -> s{_brlProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
brlUserIp :: Lens' BackupRunsList' (Maybe Text)
brlUserIp
  = lens _brlUserIp (\ s a -> s{_brlUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
brlKey :: Lens' BackupRunsList' (Maybe Text)
brlKey = lens _brlKey (\ s a -> s{_brlKey = a})

-- | A previously-returned page token representing part of the larger set of
-- results to view.
brlPageToken :: Lens' BackupRunsList' (Maybe Text)
brlPageToken
  = lens _brlPageToken (\ s a -> s{_brlPageToken = a})

-- | OAuth 2.0 token for the current user.
brlOauthToken :: Lens' BackupRunsList' (Maybe Text)
brlOauthToken
  = lens _brlOauthToken
      (\ s a -> s{_brlOauthToken = a})

-- | Maximum number of backup runs per response.
brlMaxResults :: Lens' BackupRunsList' (Maybe Int32)
brlMaxResults
  = lens _brlMaxResults
      (\ s a -> s{_brlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
brlFields :: Lens' BackupRunsList' (Maybe Text)
brlFields
  = lens _brlFields (\ s a -> s{_brlFields = a})

-- | Data format for the response.
brlAlt :: Lens' BackupRunsList' Text
brlAlt = lens _brlAlt (\ s a -> s{_brlAlt = a})

-- | Cloud SQL instance ID. This does not include the project ID.
brlInstance :: Lens' BackupRunsList' Text
brlInstance
  = lens _brlInstance (\ s a -> s{_brlInstance = a})

instance GoogleRequest BackupRunsList' where
        type Rs BackupRunsList' = BackupRunsListResponse
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u BackupRunsList{..}
          = go _brlQuotaUser _brlPrettyPrint _brlProject
              _brlUserIp
              _brlKey
              _brlPageToken
              _brlOauthToken
              _brlMaxResults
              _brlFields
              _brlAlt
              _brlInstance
          where go
                  = clientWithRoute (Proxy :: Proxy BackupRunsListAPI)
                      r
                      u
