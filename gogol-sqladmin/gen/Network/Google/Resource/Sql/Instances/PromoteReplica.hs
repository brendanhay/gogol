{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Sql.Instances.PromoteReplica
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Promotes the read replica instance to be a stand-alone Cloud SQL
-- instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SqlInstancesPromoteReplica@.
module Sql.Instances.PromoteReplica
    (
    -- * REST Resource
      InstancesPromoteReplicaAPI

    -- * Creating a Request
    , instancesPromoteReplica
    , InstancesPromoteReplica

    -- * Request Lenses
    , iprQuotaUser
    , iprPrettyPrint
    , iprProject
    , iprUserIp
    , iprKey
    , iprOauthToken
    , iprFields
    , iprAlt
    , iprInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SqlInstancesPromoteReplica@ which the
-- 'InstancesPromoteReplica' request conforms to.
type InstancesPromoteReplicaAPI =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "promoteReplica" :> Post '[JSON] Operation

-- | Promotes the read replica instance to be a stand-alone Cloud SQL
-- instance.
--
-- /See:/ 'instancesPromoteReplica' smart constructor.
data InstancesPromoteReplica = InstancesPromoteReplica
    { _iprQuotaUser   :: !(Maybe Text)
    , _iprPrettyPrint :: !Bool
    , _iprProject     :: !Text
    , _iprUserIp      :: !(Maybe Text)
    , _iprKey         :: !(Maybe Text)
    , _iprOauthToken  :: !(Maybe Text)
    , _iprFields      :: !(Maybe Text)
    , _iprAlt         :: !Text
    , _iprInstance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesPromoteReplica'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iprQuotaUser'
--
-- * 'iprPrettyPrint'
--
-- * 'iprProject'
--
-- * 'iprUserIp'
--
-- * 'iprKey'
--
-- * 'iprOauthToken'
--
-- * 'iprFields'
--
-- * 'iprAlt'
--
-- * 'iprInstance'
instancesPromoteReplica
    :: Text -- ^ 'project'
    -> Text -- ^ 'instance'
    -> InstancesPromoteReplica
instancesPromoteReplica pIprProject_ pIprInstance_ =
    InstancesPromoteReplica
    { _iprQuotaUser = Nothing
    , _iprPrettyPrint = True
    , _iprProject = pIprProject_
    , _iprUserIp = Nothing
    , _iprKey = Nothing
    , _iprOauthToken = Nothing
    , _iprFields = Nothing
    , _iprAlt = "json"
    , _iprInstance = pIprInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
iprQuotaUser :: Lens' InstancesPromoteReplica' (Maybe Text)
iprQuotaUser
  = lens _iprQuotaUser (\ s a -> s{_iprQuotaUser = a})

-- | Returns response with indentations and line breaks.
iprPrettyPrint :: Lens' InstancesPromoteReplica' Bool
iprPrettyPrint
  = lens _iprPrettyPrint
      (\ s a -> s{_iprPrettyPrint = a})

-- | ID of the project that contains the read replica.
iprProject :: Lens' InstancesPromoteReplica' Text
iprProject
  = lens _iprProject (\ s a -> s{_iprProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
iprUserIp :: Lens' InstancesPromoteReplica' (Maybe Text)
iprUserIp
  = lens _iprUserIp (\ s a -> s{_iprUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
iprKey :: Lens' InstancesPromoteReplica' (Maybe Text)
iprKey = lens _iprKey (\ s a -> s{_iprKey = a})

-- | OAuth 2.0 token for the current user.
iprOauthToken :: Lens' InstancesPromoteReplica' (Maybe Text)
iprOauthToken
  = lens _iprOauthToken
      (\ s a -> s{_iprOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
iprFields :: Lens' InstancesPromoteReplica' (Maybe Text)
iprFields
  = lens _iprFields (\ s a -> s{_iprFields = a})

-- | Data format for the response.
iprAlt :: Lens' InstancesPromoteReplica' Text
iprAlt = lens _iprAlt (\ s a -> s{_iprAlt = a})

-- | Cloud SQL read replica instance name.
iprInstance :: Lens' InstancesPromoteReplica' Text
iprInstance
  = lens _iprInstance (\ s a -> s{_iprInstance = a})

instance GoogleRequest InstancesPromoteReplica' where
        type Rs InstancesPromoteReplica' = Operation
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u InstancesPromoteReplica{..}
          = go _iprQuotaUser _iprPrettyPrint _iprProject
              _iprUserIp
              _iprKey
              _iprOauthToken
              _iprFields
              _iprAlt
              _iprInstance
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstancesPromoteReplicaAPI)
                      r
                      u
