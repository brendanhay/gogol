{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.SQL.BackupRuns.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the backup taken by a backup run.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SQLBackupRunsDelete@.
module Network.Google.Resource.SQL.BackupRuns.Delete
    (
    -- * REST Resource
      BackupRunsDeleteResource

    -- * Creating a Request
    , backupRunsDelete'
    , BackupRunsDelete'

    -- * Request Lenses
    , brdQuotaUser
    , brdPrettyPrint
    , brdProject
    , brdUserIP
    , brdKey
    , brdId
    , brdOAuthToken
    , brdFields
    , brdInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SQLBackupRunsDelete@ which the
-- 'BackupRunsDelete'' request conforms to.
type BackupRunsDeleteResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "backupRuns" :>
               Capture "id" Int64 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Delete '[JSON] Operation

-- | Deletes the backup taken by a backup run.
--
-- /See:/ 'backupRunsDelete'' smart constructor.
data BackupRunsDelete' = BackupRunsDelete'
    { _brdQuotaUser   :: !(Maybe Text)
    , _brdPrettyPrint :: !Bool
    , _brdProject     :: !Text
    , _brdUserIP      :: !(Maybe Text)
    , _brdKey         :: !(Maybe Key)
    , _brdId          :: !Int64
    , _brdOAuthToken  :: !(Maybe OAuthToken)
    , _brdFields      :: !(Maybe Text)
    , _brdInstance    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BackupRunsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'brdQuotaUser'
--
-- * 'brdPrettyPrint'
--
-- * 'brdProject'
--
-- * 'brdUserIP'
--
-- * 'brdKey'
--
-- * 'brdId'
--
-- * 'brdOAuthToken'
--
-- * 'brdFields'
--
-- * 'brdInstance'
backupRunsDelete'
    :: Text -- ^ 'project'
    -> Int64 -- ^ 'id'
    -> Text -- ^ 'instance'
    -> BackupRunsDelete'
backupRunsDelete' pBrdProject_ pBrdId_ pBrdInstance_ =
    BackupRunsDelete'
    { _brdQuotaUser = Nothing
    , _brdPrettyPrint = True
    , _brdProject = pBrdProject_
    , _brdUserIP = Nothing
    , _brdKey = Nothing
    , _brdId = pBrdId_
    , _brdOAuthToken = Nothing
    , _brdFields = Nothing
    , _brdInstance = pBrdInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
brdQuotaUser :: Lens' BackupRunsDelete' (Maybe Text)
brdQuotaUser
  = lens _brdQuotaUser (\ s a -> s{_brdQuotaUser = a})

-- | Returns response with indentations and line breaks.
brdPrettyPrint :: Lens' BackupRunsDelete' Bool
brdPrettyPrint
  = lens _brdPrettyPrint
      (\ s a -> s{_brdPrettyPrint = a})

-- | Project ID of the project that contains the instance.
brdProject :: Lens' BackupRunsDelete' Text
brdProject
  = lens _brdProject (\ s a -> s{_brdProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
brdUserIP :: Lens' BackupRunsDelete' (Maybe Text)
brdUserIP
  = lens _brdUserIP (\ s a -> s{_brdUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
brdKey :: Lens' BackupRunsDelete' (Maybe Key)
brdKey = lens _brdKey (\ s a -> s{_brdKey = a})

-- | The ID of the Backup Run to delete.
brdId :: Lens' BackupRunsDelete' Int64
brdId = lens _brdId (\ s a -> s{_brdId = a})

-- | OAuth 2.0 token for the current user.
brdOAuthToken :: Lens' BackupRunsDelete' (Maybe OAuthToken)
brdOAuthToken
  = lens _brdOAuthToken
      (\ s a -> s{_brdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
brdFields :: Lens' BackupRunsDelete' (Maybe Text)
brdFields
  = lens _brdFields (\ s a -> s{_brdFields = a})

-- | Cloud SQL instance ID. This does not include the project ID.
brdInstance :: Lens' BackupRunsDelete' Text
brdInstance
  = lens _brdInstance (\ s a -> s{_brdInstance = a})

instance GoogleAuth BackupRunsDelete' where
        authKey = brdKey . _Just
        authToken = brdOAuthToken . _Just

instance GoogleRequest BackupRunsDelete' where
        type Rs BackupRunsDelete' = Operation
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u BackupRunsDelete'{..}
          = go _brdProject _brdInstance _brdId _brdQuotaUser
              (Just _brdPrettyPrint)
              _brdUserIP
              _brdFields
              _brdKey
              _brdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BackupRunsDeleteResource)
                      r
                      u
