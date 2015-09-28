{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Sql.Instances.StartReplica
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Starts the replication in the read replica instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @sql.instances.startReplica@.
module Network.Google.API.Sql.Instances.StartReplica
    (
    -- * REST Resource
      InstancesStartReplicaAPI

    -- * Creating a Request
    , instancesStartReplica'
    , InstancesStartReplica'

    -- * Request Lenses
    , isrQuotaUser
    , isrPrettyPrint
    , isrProject
    , isrUserIp
    , isrKey
    , isrOauthToken
    , isrFields
    , isrAlt
    , isrInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for sql.instances.startReplica which the
-- 'InstancesStartReplica'' request conforms to.
type InstancesStartReplicaAPI =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "startReplica" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Starts the replication in the read replica instance.
--
-- /See:/ 'instancesStartReplica'' smart constructor.
data InstancesStartReplica' = InstancesStartReplica'
    { _isrQuotaUser   :: !(Maybe Text)
    , _isrPrettyPrint :: !Bool
    , _isrProject     :: !Text
    , _isrUserIp      :: !(Maybe Text)
    , _isrKey         :: !(Maybe Text)
    , _isrOauthToken  :: !(Maybe Text)
    , _isrFields      :: !(Maybe Text)
    , _isrAlt         :: !Alt
    , _isrInstance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesStartReplica'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isrQuotaUser'
--
-- * 'isrPrettyPrint'
--
-- * 'isrProject'
--
-- * 'isrUserIp'
--
-- * 'isrKey'
--
-- * 'isrOauthToken'
--
-- * 'isrFields'
--
-- * 'isrAlt'
--
-- * 'isrInstance'
instancesStartReplica'
    :: Text -- ^ 'project'
    -> Text -- ^ 'instance'
    -> InstancesStartReplica'
instancesStartReplica' pIsrProject_ pIsrInstance_ =
    InstancesStartReplica'
    { _isrQuotaUser = Nothing
    , _isrPrettyPrint = True
    , _isrProject = pIsrProject_
    , _isrUserIp = Nothing
    , _isrKey = Nothing
    , _isrOauthToken = Nothing
    , _isrFields = Nothing
    , _isrAlt = JSON
    , _isrInstance = pIsrInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
isrQuotaUser :: Lens' InstancesStartReplica' (Maybe Text)
isrQuotaUser
  = lens _isrQuotaUser (\ s a -> s{_isrQuotaUser = a})

-- | Returns response with indentations and line breaks.
isrPrettyPrint :: Lens' InstancesStartReplica' Bool
isrPrettyPrint
  = lens _isrPrettyPrint
      (\ s a -> s{_isrPrettyPrint = a})

-- | ID of the project that contains the read replica.
isrProject :: Lens' InstancesStartReplica' Text
isrProject
  = lens _isrProject (\ s a -> s{_isrProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
isrUserIp :: Lens' InstancesStartReplica' (Maybe Text)
isrUserIp
  = lens _isrUserIp (\ s a -> s{_isrUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
isrKey :: Lens' InstancesStartReplica' (Maybe Text)
isrKey = lens _isrKey (\ s a -> s{_isrKey = a})

-- | OAuth 2.0 token for the current user.
isrOauthToken :: Lens' InstancesStartReplica' (Maybe Text)
isrOauthToken
  = lens _isrOauthToken
      (\ s a -> s{_isrOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
isrFields :: Lens' InstancesStartReplica' (Maybe Text)
isrFields
  = lens _isrFields (\ s a -> s{_isrFields = a})

-- | Data format for the response.
isrAlt :: Lens' InstancesStartReplica' Alt
isrAlt = lens _isrAlt (\ s a -> s{_isrAlt = a})

-- | Cloud SQL read replica instance name.
isrInstance :: Lens' InstancesStartReplica' Text
isrInstance
  = lens _isrInstance (\ s a -> s{_isrInstance = a})

instance GoogleRequest InstancesStartReplica' where
        type Rs InstancesStartReplica' = Operation
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u InstancesStartReplica'{..}
          = go _isrQuotaUser (Just _isrPrettyPrint) _isrProject
              _isrUserIp
              _isrKey
              _isrOauthToken
              _isrFields
              (Just _isrAlt)
              _isrInstance
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstancesStartReplicaAPI)
                      r
                      u
