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
-- Module      : Network.Google.Resource.SQL.Instances.StopReplica
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Stops the replication in the read replica instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SQLInstancesStopReplica@.
module Network.Google.Resource.SQL.Instances.StopReplica
    (
    -- * REST Resource
      InstancesStopReplicaResource

    -- * Creating a Request
    , instancesStopReplica'
    , InstancesStopReplica'

    -- * Request Lenses
    , isrQuotaUser
    , isrPrettyPrint
    , isrProject
    , isrUserIP
    , isrKey
    , isrOAuthToken
    , isrFields
    , isrInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SQLInstancesStopReplica@ which the
-- 'InstancesStopReplica'' request conforms to.
type InstancesStopReplicaResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "stopReplica" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Stops the replication in the read replica instance.
--
-- /See:/ 'instancesStopReplica'' smart constructor.
data InstancesStopReplica' = InstancesStopReplica'
    { _isrQuotaUser   :: !(Maybe Text)
    , _isrPrettyPrint :: !Bool
    , _isrProject     :: !Text
    , _isrUserIP      :: !(Maybe Text)
    , _isrKey         :: !(Maybe Key)
    , _isrOAuthToken  :: !(Maybe OAuthToken)
    , _isrFields      :: !(Maybe Text)
    , _isrInstance    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesStopReplica'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isrQuotaUser'
--
-- * 'isrPrettyPrint'
--
-- * 'isrProject'
--
-- * 'isrUserIP'
--
-- * 'isrKey'
--
-- * 'isrOAuthToken'
--
-- * 'isrFields'
--
-- * 'isrInstance'
instancesStopReplica'
    :: Text -- ^ 'project'
    -> Text -- ^ 'instance'
    -> InstancesStopReplica'
instancesStopReplica' pIsrProject_ pIsrInstance_ =
    InstancesStopReplica'
    { _isrQuotaUser = Nothing
    , _isrPrettyPrint = True
    , _isrProject = pIsrProject_
    , _isrUserIP = Nothing
    , _isrKey = Nothing
    , _isrOAuthToken = Nothing
    , _isrFields = Nothing
    , _isrInstance = pIsrInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
isrQuotaUser :: Lens' InstancesStopReplica' (Maybe Text)
isrQuotaUser
  = lens _isrQuotaUser (\ s a -> s{_isrQuotaUser = a})

-- | Returns response with indentations and line breaks.
isrPrettyPrint :: Lens' InstancesStopReplica' Bool
isrPrettyPrint
  = lens _isrPrettyPrint
      (\ s a -> s{_isrPrettyPrint = a})

-- | ID of the project that contains the read replica.
isrProject :: Lens' InstancesStopReplica' Text
isrProject
  = lens _isrProject (\ s a -> s{_isrProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
isrUserIP :: Lens' InstancesStopReplica' (Maybe Text)
isrUserIP
  = lens _isrUserIP (\ s a -> s{_isrUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
isrKey :: Lens' InstancesStopReplica' (Maybe Key)
isrKey = lens _isrKey (\ s a -> s{_isrKey = a})

-- | OAuth 2.0 token for the current user.
isrOAuthToken :: Lens' InstancesStopReplica' (Maybe OAuthToken)
isrOAuthToken
  = lens _isrOAuthToken
      (\ s a -> s{_isrOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
isrFields :: Lens' InstancesStopReplica' (Maybe Text)
isrFields
  = lens _isrFields (\ s a -> s{_isrFields = a})

-- | Cloud SQL read replica instance name.
isrInstance :: Lens' InstancesStopReplica' Text
isrInstance
  = lens _isrInstance (\ s a -> s{_isrInstance = a})

instance GoogleAuth InstancesStopReplica' where
        authKey = isrKey . _Just
        authToken = isrOAuthToken . _Just

instance GoogleRequest InstancesStopReplica' where
        type Rs InstancesStopReplica' = Operation
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u InstancesStopReplica'{..}
          = go _isrProject _isrInstance _isrQuotaUser
              (Just _isrPrettyPrint)
              _isrUserIP
              _isrFields
              _isrKey
              _isrOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstancesStopReplicaResource)
                      r
                      u
