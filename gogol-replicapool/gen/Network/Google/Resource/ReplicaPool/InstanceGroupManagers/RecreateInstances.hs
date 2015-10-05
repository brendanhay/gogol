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
-- Module      : Network.Google.Resource.ReplicaPool.InstanceGroupManagers.RecreateInstances
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Recreates the specified instances. The instances are deleted, then
-- recreated using the instance group manager\'s current instance template.
--
-- /See:/ <https://developers.google.com/compute/docs/instance-groups/manager/v1beta2 Google Compute Engine Instance Group Manager API Reference> for @ReplicapoolInstanceGroupManagersRecreateInstances@.
module Network.Google.Resource.ReplicaPool.InstanceGroupManagers.RecreateInstances
    (
    -- * REST Resource
      InstanceGroupManagersRecreateInstancesResource

    -- * Creating a Request
    , instanceGroupManagersRecreateInstances'
    , InstanceGroupManagersRecreateInstances'

    -- * Request Lenses
    , igmriQuotaUser
    , igmriPrettyPrint
    , igmriProject
    , igmriInstanceGroupManager
    , igmriUserIP
    , igmriZone
    , igmriPayload
    , igmriKey
    , igmriOAuthToken
    , igmriFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ReplicaPool.Types

-- | A resource alias for @ReplicapoolInstanceGroupManagersRecreateInstances@ which the
-- 'InstanceGroupManagersRecreateInstances'' request conforms to.
type InstanceGroupManagersRecreateInstancesResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instanceGroupManagers" :>
             Capture "instanceGroupManager" Text :>
               "recreateInstances" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON]
                                 InstanceGroupManagersRecreateInstancesRequest
                                 :> Post '[JSON] Operation

-- | Recreates the specified instances. The instances are deleted, then
-- recreated using the instance group manager\'s current instance template.
--
-- /See:/ 'instanceGroupManagersRecreateInstances'' smart constructor.
data InstanceGroupManagersRecreateInstances' = InstanceGroupManagersRecreateInstances'
    { _igmriQuotaUser            :: !(Maybe Text)
    , _igmriPrettyPrint          :: !Bool
    , _igmriProject              :: !Text
    , _igmriInstanceGroupManager :: !Text
    , _igmriUserIP               :: !(Maybe Text)
    , _igmriZone                 :: !Text
    , _igmriPayload              :: !InstanceGroupManagersRecreateInstancesRequest
    , _igmriKey                  :: !(Maybe Key)
    , _igmriOAuthToken           :: !(Maybe OAuthToken)
    , _igmriFields               :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersRecreateInstances'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmriQuotaUser'
--
-- * 'igmriPrettyPrint'
--
-- * 'igmriProject'
--
-- * 'igmriInstanceGroupManager'
--
-- * 'igmriUserIP'
--
-- * 'igmriZone'
--
-- * 'igmriPayload'
--
-- * 'igmriKey'
--
-- * 'igmriOAuthToken'
--
-- * 'igmriFields'
instanceGroupManagersRecreateInstances'
    :: Text -- ^ 'project'
    -> Text -- ^ 'instanceGroupManager'
    -> Text -- ^ 'zone'
    -> InstanceGroupManagersRecreateInstancesRequest -- ^ 'payload'
    -> InstanceGroupManagersRecreateInstances'
instanceGroupManagersRecreateInstances' pIgmriProject_ pIgmriInstanceGroupManager_ pIgmriZone_ pIgmriPayload_ =
    InstanceGroupManagersRecreateInstances'
    { _igmriQuotaUser = Nothing
    , _igmriPrettyPrint = True
    , _igmriProject = pIgmriProject_
    , _igmriInstanceGroupManager = pIgmriInstanceGroupManager_
    , _igmriUserIP = Nothing
    , _igmriZone = pIgmriZone_
    , _igmriPayload = pIgmriPayload_
    , _igmriKey = Nothing
    , _igmriOAuthToken = Nothing
    , _igmriFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
igmriQuotaUser :: Lens' InstanceGroupManagersRecreateInstances' (Maybe Text)
igmriQuotaUser
  = lens _igmriQuotaUser
      (\ s a -> s{_igmriQuotaUser = a})

-- | Returns response with indentations and line breaks.
igmriPrettyPrint :: Lens' InstanceGroupManagersRecreateInstances' Bool
igmriPrettyPrint
  = lens _igmriPrettyPrint
      (\ s a -> s{_igmriPrettyPrint = a})

-- | The Google Developers Console project name.
igmriProject :: Lens' InstanceGroupManagersRecreateInstances' Text
igmriProject
  = lens _igmriProject (\ s a -> s{_igmriProject = a})

-- | The name of the instance group manager.
igmriInstanceGroupManager :: Lens' InstanceGroupManagersRecreateInstances' Text
igmriInstanceGroupManager
  = lens _igmriInstanceGroupManager
      (\ s a -> s{_igmriInstanceGroupManager = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
igmriUserIP :: Lens' InstanceGroupManagersRecreateInstances' (Maybe Text)
igmriUserIP
  = lens _igmriUserIP (\ s a -> s{_igmriUserIP = a})

-- | The name of the zone in which the instance group manager resides.
igmriZone :: Lens' InstanceGroupManagersRecreateInstances' Text
igmriZone
  = lens _igmriZone (\ s a -> s{_igmriZone = a})

-- | Multipart request metadata.
igmriPayload :: Lens' InstanceGroupManagersRecreateInstances' InstanceGroupManagersRecreateInstancesRequest
igmriPayload
  = lens _igmriPayload (\ s a -> s{_igmriPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igmriKey :: Lens' InstanceGroupManagersRecreateInstances' (Maybe Key)
igmriKey = lens _igmriKey (\ s a -> s{_igmriKey = a})

-- | OAuth 2.0 token for the current user.
igmriOAuthToken :: Lens' InstanceGroupManagersRecreateInstances' (Maybe OAuthToken)
igmriOAuthToken
  = lens _igmriOAuthToken
      (\ s a -> s{_igmriOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
igmriFields :: Lens' InstanceGroupManagersRecreateInstances' (Maybe Text)
igmriFields
  = lens _igmriFields (\ s a -> s{_igmriFields = a})

instance GoogleAuth
         InstanceGroupManagersRecreateInstances' where
        authKey = igmriKey . _Just
        authToken = igmriOAuthToken . _Just

instance GoogleRequest
         InstanceGroupManagersRecreateInstances' where
        type Rs InstanceGroupManagersRecreateInstances' =
             Operation
        request = requestWithRoute defReq replicaPoolURL
        requestWithRoute r u
          InstanceGroupManagersRecreateInstances'{..}
          = go _igmriProject _igmriZone
              _igmriInstanceGroupManager
              _igmriQuotaUser
              (Just _igmriPrettyPrint)
              _igmriUserIP
              _igmriFields
              _igmriKey
              _igmriOAuthToken
              (Just AltJSON)
              _igmriPayload
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy InstanceGroupManagersRecreateInstancesResource)
                      r
                      u
