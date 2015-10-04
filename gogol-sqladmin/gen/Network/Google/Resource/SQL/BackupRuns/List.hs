{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.SQL.BackupRuns.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all backup runs associated with a given instance and configuration
-- in the reverse chronological order of the enqueued time.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SQLBackupRunsList@.
module Network.Google.Resource.SQL.BackupRuns.List
    (
    -- * REST Resource
      BackupRunsListResource

    -- * Creating a Request
    , backupRunsList'
    , BackupRunsList'

    -- * Request Lenses
    , brlQuotaUser
    , brlPrettyPrint
    , brlProject
    , brlUserIP
    , brlKey
    , brlPageToken
    , brlOAuthToken
    , brlMaxResults
    , brlFields
    , brlInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SQLBackupRunsList@ which the
-- 'BackupRunsList'' request conforms to.
type BackupRunsListResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "backupRuns" :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Int32 :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] BackupRunsListResponse

-- | Lists all backup runs associated with a given instance and configuration
-- in the reverse chronological order of the enqueued time.
--
-- /See:/ 'backupRunsList'' smart constructor.
data BackupRunsList' = BackupRunsList'
    { _brlQuotaUser   :: !(Maybe Text)
    , _brlPrettyPrint :: !Bool
    , _brlProject     :: !Text
    , _brlUserIP      :: !(Maybe Text)
    , _brlKey         :: !(Maybe Key)
    , _brlPageToken   :: !(Maybe Text)
    , _brlOAuthToken  :: !(Maybe OAuthToken)
    , _brlMaxResults  :: !(Maybe Int32)
    , _brlFields      :: !(Maybe Text)
    , _brlInstance    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'brlUserIP'
--
-- * 'brlKey'
--
-- * 'brlPageToken'
--
-- * 'brlOAuthToken'
--
-- * 'brlMaxResults'
--
-- * 'brlFields'
--
-- * 'brlInstance'
backupRunsList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'instance'
    -> BackupRunsList'
backupRunsList' pBrlProject_ pBrlInstance_ =
    BackupRunsList'
    { _brlQuotaUser = Nothing
    , _brlPrettyPrint = True
    , _brlProject = pBrlProject_
    , _brlUserIP = Nothing
    , _brlKey = Nothing
    , _brlPageToken = Nothing
    , _brlOAuthToken = Nothing
    , _brlMaxResults = Nothing
    , _brlFields = Nothing
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
brlUserIP :: Lens' BackupRunsList' (Maybe Text)
brlUserIP
  = lens _brlUserIP (\ s a -> s{_brlUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
brlKey :: Lens' BackupRunsList' (Maybe Key)
brlKey = lens _brlKey (\ s a -> s{_brlKey = a})

-- | A previously-returned page token representing part of the larger set of
-- results to view.
brlPageToken :: Lens' BackupRunsList' (Maybe Text)
brlPageToken
  = lens _brlPageToken (\ s a -> s{_brlPageToken = a})

-- | OAuth 2.0 token for the current user.
brlOAuthToken :: Lens' BackupRunsList' (Maybe OAuthToken)
brlOAuthToken
  = lens _brlOAuthToken
      (\ s a -> s{_brlOAuthToken = a})

-- | Maximum number of backup runs per response.
brlMaxResults :: Lens' BackupRunsList' (Maybe Int32)
brlMaxResults
  = lens _brlMaxResults
      (\ s a -> s{_brlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
brlFields :: Lens' BackupRunsList' (Maybe Text)
brlFields
  = lens _brlFields (\ s a -> s{_brlFields = a})

-- | Cloud SQL instance ID. This does not include the project ID.
brlInstance :: Lens' BackupRunsList' Text
brlInstance
  = lens _brlInstance (\ s a -> s{_brlInstance = a})

instance GoogleAuth BackupRunsList' where
        authKey = brlKey . _Just
        authToken = brlOAuthToken . _Just

instance GoogleRequest BackupRunsList' where
        type Rs BackupRunsList' = BackupRunsListResponse
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u BackupRunsList'{..}
          = go _brlProject _brlInstance _brlPageToken
              _brlMaxResults
              _brlQuotaUser
              (Just _brlPrettyPrint)
              _brlUserIP
              _brlFields
              _brlKey
              _brlOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BackupRunsListResource)
                      r
                      u
