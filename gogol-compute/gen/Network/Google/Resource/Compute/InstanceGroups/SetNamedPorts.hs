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
-- Module      : Network.Google.Resource.Compute.InstanceGroups.SetNamedPorts
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sets the named ports in an instance group.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstanceGroupsSetNamedPorts@.
module Network.Google.Resource.Compute.InstanceGroups.SetNamedPorts
    (
    -- * REST Resource
      InstanceGroupsSetNamedPortsResource

    -- * Creating a Request
    , instanceGroupsSetNamedPorts'
    , InstanceGroupsSetNamedPorts'

    -- * Request Lenses
    , igsnpQuotaUser
    , igsnpPrettyPrint
    , igsnpProject
    , igsnpUserIP
    , igsnpZone
    , igsnpPayload
    , igsnpKey
    , igsnpOAuthToken
    , igsnpInstanceGroup
    , igsnpFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstanceGroupsSetNamedPorts@ which the
-- 'InstanceGroupsSetNamedPorts'' request conforms to.
type InstanceGroupsSetNamedPortsResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instanceGroups" :>
             Capture "instanceGroup" Text :>
               "setNamedPorts" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON]
                                 InstanceGroupsSetNamedPortsRequest
                                 :> Post '[JSON] Operation

-- | Sets the named ports in an instance group.
--
-- /See:/ 'instanceGroupsSetNamedPorts'' smart constructor.
data InstanceGroupsSetNamedPorts' = InstanceGroupsSetNamedPorts'
    { _igsnpQuotaUser     :: !(Maybe Text)
    , _igsnpPrettyPrint   :: !Bool
    , _igsnpProject       :: !Text
    , _igsnpUserIP        :: !(Maybe Text)
    , _igsnpZone          :: !Text
    , _igsnpPayload       :: !InstanceGroupsSetNamedPortsRequest
    , _igsnpKey           :: !(Maybe Key)
    , _igsnpOAuthToken    :: !(Maybe OAuthToken)
    , _igsnpInstanceGroup :: !Text
    , _igsnpFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupsSetNamedPorts'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igsnpQuotaUser'
--
-- * 'igsnpPrettyPrint'
--
-- * 'igsnpProject'
--
-- * 'igsnpUserIP'
--
-- * 'igsnpZone'
--
-- * 'igsnpPayload'
--
-- * 'igsnpKey'
--
-- * 'igsnpOAuthToken'
--
-- * 'igsnpInstanceGroup'
--
-- * 'igsnpFields'
instanceGroupsSetNamedPorts'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> InstanceGroupsSetNamedPortsRequest -- ^ 'payload'
    -> Text -- ^ 'instanceGroup'
    -> InstanceGroupsSetNamedPorts'
instanceGroupsSetNamedPorts' pIgsnpProject_ pIgsnpZone_ pIgsnpPayload_ pIgsnpInstanceGroup_ =
    InstanceGroupsSetNamedPorts'
    { _igsnpQuotaUser = Nothing
    , _igsnpPrettyPrint = True
    , _igsnpProject = pIgsnpProject_
    , _igsnpUserIP = Nothing
    , _igsnpZone = pIgsnpZone_
    , _igsnpPayload = pIgsnpPayload_
    , _igsnpKey = Nothing
    , _igsnpOAuthToken = Nothing
    , _igsnpInstanceGroup = pIgsnpInstanceGroup_
    , _igsnpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
igsnpQuotaUser :: Lens' InstanceGroupsSetNamedPorts' (Maybe Text)
igsnpQuotaUser
  = lens _igsnpQuotaUser
      (\ s a -> s{_igsnpQuotaUser = a})

-- | Returns response with indentations and line breaks.
igsnpPrettyPrint :: Lens' InstanceGroupsSetNamedPorts' Bool
igsnpPrettyPrint
  = lens _igsnpPrettyPrint
      (\ s a -> s{_igsnpPrettyPrint = a})

-- | The project ID for this request.
igsnpProject :: Lens' InstanceGroupsSetNamedPorts' Text
igsnpProject
  = lens _igsnpProject (\ s a -> s{_igsnpProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
igsnpUserIP :: Lens' InstanceGroupsSetNamedPorts' (Maybe Text)
igsnpUserIP
  = lens _igsnpUserIP (\ s a -> s{_igsnpUserIP = a})

-- | The URL of the zone where the instance group is located.
igsnpZone :: Lens' InstanceGroupsSetNamedPorts' Text
igsnpZone
  = lens _igsnpZone (\ s a -> s{_igsnpZone = a})

-- | Multipart request metadata.
igsnpPayload :: Lens' InstanceGroupsSetNamedPorts' InstanceGroupsSetNamedPortsRequest
igsnpPayload
  = lens _igsnpPayload (\ s a -> s{_igsnpPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igsnpKey :: Lens' InstanceGroupsSetNamedPorts' (Maybe Key)
igsnpKey = lens _igsnpKey (\ s a -> s{_igsnpKey = a})

-- | OAuth 2.0 token for the current user.
igsnpOAuthToken :: Lens' InstanceGroupsSetNamedPorts' (Maybe OAuthToken)
igsnpOAuthToken
  = lens _igsnpOAuthToken
      (\ s a -> s{_igsnpOAuthToken = a})

-- | The name of the instance group where the named ports are updated.
igsnpInstanceGroup :: Lens' InstanceGroupsSetNamedPorts' Text
igsnpInstanceGroup
  = lens _igsnpInstanceGroup
      (\ s a -> s{_igsnpInstanceGroup = a})

-- | Selector specifying which fields to include in a partial response.
igsnpFields :: Lens' InstanceGroupsSetNamedPorts' (Maybe Text)
igsnpFields
  = lens _igsnpFields (\ s a -> s{_igsnpFields = a})

instance GoogleAuth InstanceGroupsSetNamedPorts'
         where
        authKey = igsnpKey . _Just
        authToken = igsnpOAuthToken . _Just

instance GoogleRequest InstanceGroupsSetNamedPorts'
         where
        type Rs InstanceGroupsSetNamedPorts' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u InstanceGroupsSetNamedPorts'{..}
          = go _igsnpProject _igsnpZone _igsnpInstanceGroup
              _igsnpQuotaUser
              (Just _igsnpPrettyPrint)
              _igsnpUserIP
              _igsnpFields
              _igsnpKey
              _igsnpOAuthToken
              (Just AltJSON)
              _igsnpPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstanceGroupsSetNamedPortsResource)
                      r
                      u
