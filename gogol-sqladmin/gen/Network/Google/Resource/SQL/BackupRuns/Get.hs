{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.SQL.BackupRuns.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a resource containing information about a backup run.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SQLBackupRunsGet@.
module Network.Google.Resource.SQL.BackupRuns.Get
    (
    -- * REST Resource
      BackupRunsGetResource

    -- * Creating a Request
    , backupRunsGet'
    , BackupRunsGet'

    -- * Request Lenses
    , brgQuotaUser
    , brgPrettyPrint
    , brgProject
    , brgUserIP
    , brgKey
    , brgId
    , brgOAuthToken
    , brgFields
    , brgInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SQLBackupRunsGet@ which the
-- 'BackupRunsGet'' request conforms to.
type BackupRunsGetResource =
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
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :> Get '[JSON] BackupRun

-- | Retrieves a resource containing information about a backup run.
--
-- /See:/ 'backupRunsGet'' smart constructor.
data BackupRunsGet' = BackupRunsGet'
    { _brgQuotaUser   :: !(Maybe Text)
    , _brgPrettyPrint :: !Bool
    , _brgProject     :: !Text
    , _brgUserIP      :: !(Maybe Text)
    , _brgKey         :: !(Maybe AuthKey)
    , _brgId          :: !Int64
    , _brgOAuthToken  :: !(Maybe OAuthToken)
    , _brgFields      :: !(Maybe Text)
    , _brgInstance    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BackupRunsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'brgQuotaUser'
--
-- * 'brgPrettyPrint'
--
-- * 'brgProject'
--
-- * 'brgUserIP'
--
-- * 'brgKey'
--
-- * 'brgId'
--
-- * 'brgOAuthToken'
--
-- * 'brgFields'
--
-- * 'brgInstance'
backupRunsGet'
    :: Text -- ^ 'project'
    -> Int64 -- ^ 'id'
    -> Text -- ^ 'instance'
    -> BackupRunsGet'
backupRunsGet' pBrgProject_ pBrgId_ pBrgInstance_ =
    BackupRunsGet'
    { _brgQuotaUser = Nothing
    , _brgPrettyPrint = True
    , _brgProject = pBrgProject_
    , _brgUserIP = Nothing
    , _brgKey = Nothing
    , _brgId = pBrgId_
    , _brgOAuthToken = Nothing
    , _brgFields = Nothing
    , _brgInstance = pBrgInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
brgQuotaUser :: Lens' BackupRunsGet' (Maybe Text)
brgQuotaUser
  = lens _brgQuotaUser (\ s a -> s{_brgQuotaUser = a})

-- | Returns response with indentations and line breaks.
brgPrettyPrint :: Lens' BackupRunsGet' Bool
brgPrettyPrint
  = lens _brgPrettyPrint
      (\ s a -> s{_brgPrettyPrint = a})

-- | Project ID of the project that contains the instance.
brgProject :: Lens' BackupRunsGet' Text
brgProject
  = lens _brgProject (\ s a -> s{_brgProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
brgUserIP :: Lens' BackupRunsGet' (Maybe Text)
brgUserIP
  = lens _brgUserIP (\ s a -> s{_brgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
brgKey :: Lens' BackupRunsGet' (Maybe AuthKey)
brgKey = lens _brgKey (\ s a -> s{_brgKey = a})

-- | The ID of this Backup Run.
brgId :: Lens' BackupRunsGet' Int64
brgId = lens _brgId (\ s a -> s{_brgId = a})

-- | OAuth 2.0 token for the current user.
brgOAuthToken :: Lens' BackupRunsGet' (Maybe OAuthToken)
brgOAuthToken
  = lens _brgOAuthToken
      (\ s a -> s{_brgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
brgFields :: Lens' BackupRunsGet' (Maybe Text)
brgFields
  = lens _brgFields (\ s a -> s{_brgFields = a})

-- | Cloud SQL instance ID. This does not include the project ID.
brgInstance :: Lens' BackupRunsGet' Text
brgInstance
  = lens _brgInstance (\ s a -> s{_brgInstance = a})

instance GoogleAuth BackupRunsGet' where
        authKey = brgKey . _Just
        authToken = brgOAuthToken . _Just

instance GoogleRequest BackupRunsGet' where
        type Rs BackupRunsGet' = BackupRun
        request = requestWith sQLAdminRequest
        requestWith rq BackupRunsGet'{..}
          = go _brgProject _brgInstance _brgId _brgQuotaUser
              (Just _brgPrettyPrint)
              _brgUserIP
              _brgFields
              _brgKey
              _brgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy BackupRunsGetResource)
                      rq
