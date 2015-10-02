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
-- Module      : Network.Google.Resource.Compute.InstanceGroupManagers.DeleteInstances
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified instances. The instances are deleted and removed
-- from the instance group and any target pools where they are a member.
-- The managed instance group automatically reduces its targetSize value by
-- the number of instances that you delete.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstanceGroupManagersDeleteInstances@.
module Network.Google.Resource.Compute.InstanceGroupManagers.DeleteInstances
    (
    -- * REST Resource
      InstanceGroupManagersDeleteInstancesResource

    -- * Creating a Request
    , instanceGroupManagersDeleteInstances'
    , InstanceGroupManagersDeleteInstances'

    -- * Request Lenses
    , igmdiQuotaUser
    , igmdiPrettyPrint
    , igmdiProject
    , igmdiInstanceGroupManager
    , igmdiUserIP
    , igmdiZone
    , igmdiInstanceGroupManagersDeleteInstancesRequest
    , igmdiKey
    , igmdiOAuthToken
    , igmdiFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstanceGroupManagersDeleteInstances@ which the
-- 'InstanceGroupManagersDeleteInstances'' request conforms to.
type InstanceGroupManagersDeleteInstancesResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instanceGroupManagers" :>
             Capture "instanceGroupManager" Text :>
               "deleteInstances" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON]
                                 InstanceGroupManagersDeleteInstancesRequest
                                 :> Post '[JSON] Operation

-- | Deletes the specified instances. The instances are deleted and removed
-- from the instance group and any target pools where they are a member.
-- The managed instance group automatically reduces its targetSize value by
-- the number of instances that you delete.
--
-- /See:/ 'instanceGroupManagersDeleteInstances'' smart constructor.
data InstanceGroupManagersDeleteInstances' = InstanceGroupManagersDeleteInstances'
    { _igmdiQuotaUser                                   :: !(Maybe Text)
    , _igmdiPrettyPrint                                 :: !Bool
    , _igmdiProject                                     :: !Text
    , _igmdiInstanceGroupManager                        :: !Text
    , _igmdiUserIP                                      :: !(Maybe Text)
    , _igmdiZone                                        :: !Text
    , _igmdiInstanceGroupManagersDeleteInstancesRequest :: !InstanceGroupManagersDeleteInstancesRequest
    , _igmdiKey                                         :: !(Maybe Key)
    , _igmdiOAuthToken                                  :: !(Maybe OAuthToken)
    , _igmdiFields                                      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersDeleteInstances'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmdiQuotaUser'
--
-- * 'igmdiPrettyPrint'
--
-- * 'igmdiProject'
--
-- * 'igmdiInstanceGroupManager'
--
-- * 'igmdiUserIP'
--
-- * 'igmdiZone'
--
-- * 'igmdiInstanceGroupManagersDeleteInstancesRequest'
--
-- * 'igmdiKey'
--
-- * 'igmdiOAuthToken'
--
-- * 'igmdiFields'
instanceGroupManagersDeleteInstances'
    :: Text -- ^ 'project'
    -> Text -- ^ 'instanceGroupManager'
    -> Text -- ^ 'zone'
    -> InstanceGroupManagersDeleteInstancesRequest -- ^ 'InstanceGroupManagersDeleteInstancesRequest'
    -> InstanceGroupManagersDeleteInstances'
instanceGroupManagersDeleteInstances' pIgmdiProject_ pIgmdiInstanceGroupManager_ pIgmdiZone_ pIgmdiInstanceGroupManagersDeleteInstancesRequest_ =
    InstanceGroupManagersDeleteInstances'
    { _igmdiQuotaUser = Nothing
    , _igmdiPrettyPrint = True
    , _igmdiProject = pIgmdiProject_
    , _igmdiInstanceGroupManager = pIgmdiInstanceGroupManager_
    , _igmdiUserIP = Nothing
    , _igmdiZone = pIgmdiZone_
    , _igmdiInstanceGroupManagersDeleteInstancesRequest = pIgmdiInstanceGroupManagersDeleteInstancesRequest_
    , _igmdiKey = Nothing
    , _igmdiOAuthToken = Nothing
    , _igmdiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
igmdiQuotaUser :: Lens' InstanceGroupManagersDeleteInstances' (Maybe Text)
igmdiQuotaUser
  = lens _igmdiQuotaUser
      (\ s a -> s{_igmdiQuotaUser = a})

-- | Returns response with indentations and line breaks.
igmdiPrettyPrint :: Lens' InstanceGroupManagersDeleteInstances' Bool
igmdiPrettyPrint
  = lens _igmdiPrettyPrint
      (\ s a -> s{_igmdiPrettyPrint = a})

-- | The project ID for this request.
igmdiProject :: Lens' InstanceGroupManagersDeleteInstances' Text
igmdiProject
  = lens _igmdiProject (\ s a -> s{_igmdiProject = a})

-- | The name of the instance group manager.
igmdiInstanceGroupManager :: Lens' InstanceGroupManagersDeleteInstances' Text
igmdiInstanceGroupManager
  = lens _igmdiInstanceGroupManager
      (\ s a -> s{_igmdiInstanceGroupManager = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
igmdiUserIP :: Lens' InstanceGroupManagersDeleteInstances' (Maybe Text)
igmdiUserIP
  = lens _igmdiUserIP (\ s a -> s{_igmdiUserIP = a})

-- | The URL of the zone where the managed instance group is located.
igmdiZone :: Lens' InstanceGroupManagersDeleteInstances' Text
igmdiZone
  = lens _igmdiZone (\ s a -> s{_igmdiZone = a})

-- | Multipart request metadata.
igmdiInstanceGroupManagersDeleteInstancesRequest :: Lens' InstanceGroupManagersDeleteInstances' InstanceGroupManagersDeleteInstancesRequest
igmdiInstanceGroupManagersDeleteInstancesRequest
  = lens
      _igmdiInstanceGroupManagersDeleteInstancesRequest
      (\ s a ->
         s{_igmdiInstanceGroupManagersDeleteInstancesRequest =
             a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igmdiKey :: Lens' InstanceGroupManagersDeleteInstances' (Maybe Key)
igmdiKey = lens _igmdiKey (\ s a -> s{_igmdiKey = a})

-- | OAuth 2.0 token for the current user.
igmdiOAuthToken :: Lens' InstanceGroupManagersDeleteInstances' (Maybe OAuthToken)
igmdiOAuthToken
  = lens _igmdiOAuthToken
      (\ s a -> s{_igmdiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
igmdiFields :: Lens' InstanceGroupManagersDeleteInstances' (Maybe Text)
igmdiFields
  = lens _igmdiFields (\ s a -> s{_igmdiFields = a})

instance GoogleAuth
         InstanceGroupManagersDeleteInstances' where
        authKey = igmdiKey . _Just
        authToken = igmdiOAuthToken . _Just

instance GoogleRequest
         InstanceGroupManagersDeleteInstances' where
        type Rs InstanceGroupManagersDeleteInstances' =
             Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u
          InstanceGroupManagersDeleteInstances'{..}
          = go _igmdiQuotaUser (Just _igmdiPrettyPrint)
              _igmdiProject
              _igmdiInstanceGroupManager
              _igmdiUserIP
              _igmdiZone
              _igmdiKey
              _igmdiOAuthToken
              _igmdiFields
              (Just AltJSON)
              _igmdiInstanceGroupManagersDeleteInstancesRequest
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy InstanceGroupManagersDeleteInstancesResource)
                      r
                      u
