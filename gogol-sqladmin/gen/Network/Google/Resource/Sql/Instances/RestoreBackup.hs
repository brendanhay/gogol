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
-- Module      : Network.Google.Resource.Sql.Instances.RestoreBackup
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Restores a backup of a Cloud SQL instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SqlInstancesRestoreBackup@.
module Network.Google.Resource.Sql.Instances.RestoreBackup
    (
    -- * REST Resource
      InstancesRestoreBackupResource

    -- * Creating a Request
    , instancesRestoreBackup'
    , InstancesRestoreBackup'

    -- * Request Lenses
    , irbQuotaUser
    , irbPrettyPrint
    , irbProject
    , irbUserIp
    , irbKey
    , irbOauthToken
    , irbFields
    , irbAlt
    , irbInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SqlInstancesRestoreBackup@ which the
-- 'InstancesRestoreBackup'' request conforms to.
type InstancesRestoreBackupResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "restoreBackup" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Restores a backup of a Cloud SQL instance.
--
-- /See:/ 'instancesRestoreBackup'' smart constructor.
data InstancesRestoreBackup' = InstancesRestoreBackup'
    { _irbQuotaUser   :: !(Maybe Text)
    , _irbPrettyPrint :: !Bool
    , _irbProject     :: !Text
    , _irbUserIp      :: !(Maybe Text)
    , _irbKey         :: !(Maybe Text)
    , _irbOauthToken  :: !(Maybe Text)
    , _irbFields      :: !(Maybe Text)
    , _irbAlt         :: !Alt
    , _irbInstance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesRestoreBackup'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irbQuotaUser'
--
-- * 'irbPrettyPrint'
--
-- * 'irbProject'
--
-- * 'irbUserIp'
--
-- * 'irbKey'
--
-- * 'irbOauthToken'
--
-- * 'irbFields'
--
-- * 'irbAlt'
--
-- * 'irbInstance'
instancesRestoreBackup'
    :: Text -- ^ 'project'
    -> Text -- ^ 'instance'
    -> InstancesRestoreBackup'
instancesRestoreBackup' pIrbProject_ pIrbInstance_ =
    InstancesRestoreBackup'
    { _irbQuotaUser = Nothing
    , _irbPrettyPrint = True
    , _irbProject = pIrbProject_
    , _irbUserIp = Nothing
    , _irbKey = Nothing
    , _irbOauthToken = Nothing
    , _irbFields = Nothing
    , _irbAlt = JSON
    , _irbInstance = pIrbInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
irbQuotaUser :: Lens' InstancesRestoreBackup' (Maybe Text)
irbQuotaUser
  = lens _irbQuotaUser (\ s a -> s{_irbQuotaUser = a})

-- | Returns response with indentations and line breaks.
irbPrettyPrint :: Lens' InstancesRestoreBackup' Bool
irbPrettyPrint
  = lens _irbPrettyPrint
      (\ s a -> s{_irbPrettyPrint = a})

-- | Project ID of the project that contains the instance.
irbProject :: Lens' InstancesRestoreBackup' Text
irbProject
  = lens _irbProject (\ s a -> s{_irbProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
irbUserIp :: Lens' InstancesRestoreBackup' (Maybe Text)
irbUserIp
  = lens _irbUserIp (\ s a -> s{_irbUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
irbKey :: Lens' InstancesRestoreBackup' (Maybe Text)
irbKey = lens _irbKey (\ s a -> s{_irbKey = a})

-- | OAuth 2.0 token for the current user.
irbOauthToken :: Lens' InstancesRestoreBackup' (Maybe Text)
irbOauthToken
  = lens _irbOauthToken
      (\ s a -> s{_irbOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
irbFields :: Lens' InstancesRestoreBackup' (Maybe Text)
irbFields
  = lens _irbFields (\ s a -> s{_irbFields = a})

-- | Data format for the response.
irbAlt :: Lens' InstancesRestoreBackup' Alt
irbAlt = lens _irbAlt (\ s a -> s{_irbAlt = a})

-- | Cloud SQL instance ID. This does not include the project ID.
irbInstance :: Lens' InstancesRestoreBackup' Text
irbInstance
  = lens _irbInstance (\ s a -> s{_irbInstance = a})

instance GoogleRequest InstancesRestoreBackup' where
        type Rs InstancesRestoreBackup' = Operation
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u InstancesRestoreBackup'{..}
          = go _irbQuotaUser (Just _irbPrettyPrint) _irbProject
              _irbUserIp
              _irbKey
              _irbOauthToken
              _irbFields
              (Just _irbAlt)
              _irbInstance
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstancesRestoreBackupResource)
                      r
                      u
