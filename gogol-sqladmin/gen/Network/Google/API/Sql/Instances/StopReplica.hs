{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Sql.Instances.StopReplica
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Stops the replication in the read replica instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @sql.instances.stopReplica@.
module Network.Google.API.Sql.Instances.StopReplica
    (
    -- * REST Resource
      InstancesStopReplicaAPI

    -- * Creating a Request
    , instancesStopReplica'
    , InstancesStopReplica'

    -- * Request Lenses
    , insQuotaUser
    , insPrettyPrint
    , insProject
    , insUserIp
    , insKey
    , insOauthToken
    , insFields
    , insAlt
    , insInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for sql.instances.stopReplica which the
-- 'InstancesStopReplica'' request conforms to.
type InstancesStopReplicaAPI =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "stopReplica" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Stops the replication in the read replica instance.
--
-- /See:/ 'instancesStopReplica'' smart constructor.
data InstancesStopReplica' = InstancesStopReplica'
    { _insQuotaUser   :: !(Maybe Text)
    , _insPrettyPrint :: !Bool
    , _insProject     :: !Text
    , _insUserIp      :: !(Maybe Text)
    , _insKey         :: !(Maybe Text)
    , _insOauthToken  :: !(Maybe Text)
    , _insFields      :: !(Maybe Text)
    , _insAlt         :: !Alt
    , _insInstance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesStopReplica'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'insQuotaUser'
--
-- * 'insPrettyPrint'
--
-- * 'insProject'
--
-- * 'insUserIp'
--
-- * 'insKey'
--
-- * 'insOauthToken'
--
-- * 'insFields'
--
-- * 'insAlt'
--
-- * 'insInstance'
instancesStopReplica'
    :: Text -- ^ 'project'
    -> Text -- ^ 'instance'
    -> InstancesStopReplica'
instancesStopReplica' pInsProject_ pInsInstance_ =
    InstancesStopReplica'
    { _insQuotaUser = Nothing
    , _insPrettyPrint = True
    , _insProject = pInsProject_
    , _insUserIp = Nothing
    , _insKey = Nothing
    , _insOauthToken = Nothing
    , _insFields = Nothing
    , _insAlt = JSON
    , _insInstance = pInsInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
insQuotaUser :: Lens' InstancesStopReplica' (Maybe Text)
insQuotaUser
  = lens _insQuotaUser (\ s a -> s{_insQuotaUser = a})

-- | Returns response with indentations and line breaks.
insPrettyPrint :: Lens' InstancesStopReplica' Bool
insPrettyPrint
  = lens _insPrettyPrint
      (\ s a -> s{_insPrettyPrint = a})

-- | ID of the project that contains the read replica.
insProject :: Lens' InstancesStopReplica' Text
insProject
  = lens _insProject (\ s a -> s{_insProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
insUserIp :: Lens' InstancesStopReplica' (Maybe Text)
insUserIp
  = lens _insUserIp (\ s a -> s{_insUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
insKey :: Lens' InstancesStopReplica' (Maybe Text)
insKey = lens _insKey (\ s a -> s{_insKey = a})

-- | OAuth 2.0 token for the current user.
insOauthToken :: Lens' InstancesStopReplica' (Maybe Text)
insOauthToken
  = lens _insOauthToken
      (\ s a -> s{_insOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
insFields :: Lens' InstancesStopReplica' (Maybe Text)
insFields
  = lens _insFields (\ s a -> s{_insFields = a})

-- | Data format for the response.
insAlt :: Lens' InstancesStopReplica' Alt
insAlt = lens _insAlt (\ s a -> s{_insAlt = a})

-- | Cloud SQL read replica instance name.
insInstance :: Lens' InstancesStopReplica' Text
insInstance
  = lens _insInstance (\ s a -> s{_insInstance = a})

instance GoogleRequest InstancesStopReplica' where
        type Rs InstancesStopReplica' = Operation
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u InstancesStopReplica'{..}
          = go _insQuotaUser (Just _insPrettyPrint) _insProject
              _insUserIp
              _insKey
              _insOauthToken
              _insFields
              (Just _insAlt)
              _insInstance
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstancesStopReplicaAPI)
                      r
                      u
