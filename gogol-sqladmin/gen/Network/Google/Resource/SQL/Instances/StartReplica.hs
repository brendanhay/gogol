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
-- Module      : Network.Google.Resource.SQL.Instances.StartReplica
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Starts the replication in the read replica instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SQLInstancesStartReplica@.
module Network.Google.Resource.SQL.Instances.StartReplica
    (
    -- * REST Resource
      InstancesStartReplicaResource

    -- * Creating a Request
    , instancesStartReplica'
    , InstancesStartReplica'

    -- * Request Lenses
    , iQuotaUser
    , iPrettyPrint
    , iProject
    , iUserIP
    , iKey
    , iOAuthToken
    , iFields
    , iInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SQLInstancesStartReplica@ which the
-- 'InstancesStartReplica'' request conforms to.
type InstancesStartReplicaResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "startReplica" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Starts the replication in the read replica instance.
--
-- /See:/ 'instancesStartReplica'' smart constructor.
data InstancesStartReplica' = InstancesStartReplica'
    { _iQuotaUser   :: !(Maybe Text)
    , _iPrettyPrint :: !Bool
    , _iProject     :: !Text
    , _iUserIP      :: !(Maybe Text)
    , _iKey         :: !(Maybe Key)
    , _iOAuthToken  :: !(Maybe OAuthToken)
    , _iFields      :: !(Maybe Text)
    , _iInstance    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesStartReplica'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iQuotaUser'
--
-- * 'iPrettyPrint'
--
-- * 'iProject'
--
-- * 'iUserIP'
--
-- * 'iKey'
--
-- * 'iOAuthToken'
--
-- * 'iFields'
--
-- * 'iInstance'
instancesStartReplica'
    :: Text -- ^ 'project'
    -> Text -- ^ 'instance'
    -> InstancesStartReplica'
instancesStartReplica' pIProject_ pIInstance_ =
    InstancesStartReplica'
    { _iQuotaUser = Nothing
    , _iPrettyPrint = True
    , _iProject = pIProject_
    , _iUserIP = Nothing
    , _iKey = Nothing
    , _iOAuthToken = Nothing
    , _iFields = Nothing
    , _iInstance = pIInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
iQuotaUser :: Lens' InstancesStartReplica' (Maybe Text)
iQuotaUser
  = lens _iQuotaUser (\ s a -> s{_iQuotaUser = a})

-- | Returns response with indentations and line breaks.
iPrettyPrint :: Lens' InstancesStartReplica' Bool
iPrettyPrint
  = lens _iPrettyPrint (\ s a -> s{_iPrettyPrint = a})

-- | ID of the project that contains the read replica.
iProject :: Lens' InstancesStartReplica' Text
iProject = lens _iProject (\ s a -> s{_iProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
iUserIP :: Lens' InstancesStartReplica' (Maybe Text)
iUserIP = lens _iUserIP (\ s a -> s{_iUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
iKey :: Lens' InstancesStartReplica' (Maybe Key)
iKey = lens _iKey (\ s a -> s{_iKey = a})

-- | OAuth 2.0 token for the current user.
iOAuthToken :: Lens' InstancesStartReplica' (Maybe OAuthToken)
iOAuthToken
  = lens _iOAuthToken (\ s a -> s{_iOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
iFields :: Lens' InstancesStartReplica' (Maybe Text)
iFields = lens _iFields (\ s a -> s{_iFields = a})

-- | Cloud SQL read replica instance name.
iInstance :: Lens' InstancesStartReplica' Text
iInstance
  = lens _iInstance (\ s a -> s{_iInstance = a})

instance GoogleAuth InstancesStartReplica' where
        authKey = iKey . _Just
        authToken = iOAuthToken . _Just

instance GoogleRequest InstancesStartReplica' where
        type Rs InstancesStartReplica' = Operation
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u InstancesStartReplica'{..}
          = go _iProject _iInstance _iQuotaUser
              (Just _iPrettyPrint)
              _iUserIP
              _iFields
              _iKey
              _iOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstancesStartReplicaResource)
                      r
                      u
