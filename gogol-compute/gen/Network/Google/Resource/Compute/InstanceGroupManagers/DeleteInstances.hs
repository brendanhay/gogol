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
    , igmdiPayload
    , igmdiKey
    , igmdiOAuthToken
    , igmdiFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstanceGroupManagersDeleteInstances@ method which the
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
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
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
    { _igmdiQuotaUser            :: !(Maybe Text)
    , _igmdiPrettyPrint          :: !Bool
    , _igmdiProject              :: !Text
    , _igmdiInstanceGroupManager :: !Text
    , _igmdiUserIP               :: !(Maybe Text)
    , _igmdiZone                 :: !Text
    , _igmdiPayload              :: !InstanceGroupManagersDeleteInstancesRequest
    , _igmdiKey                  :: !(Maybe AuthKey)
    , _igmdiOAuthToken           :: !(Maybe OAuthToken)
    , _igmdiFields               :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'igmdiPayload'
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
    -> InstanceGroupManagersDeleteInstancesRequest -- ^ 'payload'
    -> InstanceGroupManagersDeleteInstances'
instanceGroupManagersDeleteInstances' pIgmdiProject_ pIgmdiInstanceGroupManager_ pIgmdiZone_ pIgmdiPayload_ =
    InstanceGroupManagersDeleteInstances'
    { _igmdiQuotaUser = Nothing
    , _igmdiPrettyPrint = True
    , _igmdiProject = pIgmdiProject_
    , _igmdiInstanceGroupManager = pIgmdiInstanceGroupManager_
    , _igmdiUserIP = Nothing
    , _igmdiZone = pIgmdiZone_
    , _igmdiPayload = pIgmdiPayload_
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
igmdiPayload :: Lens' InstanceGroupManagersDeleteInstances' InstanceGroupManagersDeleteInstancesRequest
igmdiPayload
  = lens _igmdiPayload (\ s a -> s{_igmdiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igmdiKey :: Lens' InstanceGroupManagersDeleteInstances' (Maybe AuthKey)
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
        _AuthKey = igmdiKey . _Just
        _AuthToken = igmdiOAuthToken . _Just

instance GoogleRequest
         InstanceGroupManagersDeleteInstances' where
        type Rs InstanceGroupManagersDeleteInstances' =
             Operation
        request = requestWith computeRequest
        requestWith rq
          InstanceGroupManagersDeleteInstances'{..}
          = go _igmdiProject _igmdiZone
              _igmdiInstanceGroupManager
              _igmdiQuotaUser
              (Just _igmdiPrettyPrint)
              _igmdiUserIP
              _igmdiFields
              _igmdiKey
              _igmdiOAuthToken
              (Just AltJSON)
              _igmdiPayload
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy InstanceGroupManagersDeleteInstancesResource)
                      rq
