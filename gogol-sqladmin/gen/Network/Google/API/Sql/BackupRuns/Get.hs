{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Sql.BackupRuns.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a resource containing information about a backup run.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @sql.backupRuns.get@.
module Network.Google.API.Sql.BackupRuns.Get
    (
    -- * REST Resource
      BackupRunsGetAPI

    -- * Creating a Request
    , backupRunsGet'
    , BackupRunsGet'

    -- * Request Lenses
    , brgQuotaUser
    , brgPrettyPrint
    , brgProject
    , brgUserIp
    , brgKey
    , brgId
    , brgOauthToken
    , brgFields
    , brgAlt
    , brgInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for sql.backupRuns.get which the
-- 'BackupRunsGet'' request conforms to.
type BackupRunsGetAPI =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "backupRuns" :>
               Capture "id" Int64 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Get '[JSON] BackupRun

-- | Retrieves a resource containing information about a backup run.
--
-- /See:/ 'backupRunsGet'' smart constructor.
data BackupRunsGet' = BackupRunsGet'
    { _brgQuotaUser   :: !(Maybe Text)
    , _brgPrettyPrint :: !Bool
    , _brgProject     :: !Text
    , _brgUserIp      :: !(Maybe Text)
    , _brgKey         :: !(Maybe Text)
    , _brgId          :: !Int64
    , _brgOauthToken  :: !(Maybe Text)
    , _brgFields      :: !(Maybe Text)
    , _brgAlt         :: !Alt
    , _brgInstance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'brgUserIp'
--
-- * 'brgKey'
--
-- * 'brgId'
--
-- * 'brgOauthToken'
--
-- * 'brgFields'
--
-- * 'brgAlt'
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
    , _brgUserIp = Nothing
    , _brgKey = Nothing
    , _brgId = pBrgId_
    , _brgOauthToken = Nothing
    , _brgFields = Nothing
    , _brgAlt = JSON
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
brgUserIp :: Lens' BackupRunsGet' (Maybe Text)
brgUserIp
  = lens _brgUserIp (\ s a -> s{_brgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
brgKey :: Lens' BackupRunsGet' (Maybe Text)
brgKey = lens _brgKey (\ s a -> s{_brgKey = a})

-- | The ID of this Backup Run.
brgId :: Lens' BackupRunsGet' Int64
brgId = lens _brgId (\ s a -> s{_brgId = a})

-- | OAuth 2.0 token for the current user.
brgOauthToken :: Lens' BackupRunsGet' (Maybe Text)
brgOauthToken
  = lens _brgOauthToken
      (\ s a -> s{_brgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
brgFields :: Lens' BackupRunsGet' (Maybe Text)
brgFields
  = lens _brgFields (\ s a -> s{_brgFields = a})

-- | Data format for the response.
brgAlt :: Lens' BackupRunsGet' Alt
brgAlt = lens _brgAlt (\ s a -> s{_brgAlt = a})

-- | Cloud SQL instance ID. This does not include the project ID.
brgInstance :: Lens' BackupRunsGet' Text
brgInstance
  = lens _brgInstance (\ s a -> s{_brgInstance = a})

instance GoogleRequest BackupRunsGet' where
        type Rs BackupRunsGet' = BackupRun
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u BackupRunsGet'{..}
          = go _brgQuotaUser (Just _brgPrettyPrint) _brgProject
              _brgUserIp
              _brgKey
              _brgId
              _brgOauthToken
              _brgFields
              (Just _brgAlt)
              _brgInstance
          where go
                  = clientWithRoute (Proxy :: Proxy BackupRunsGetAPI) r
                      u
