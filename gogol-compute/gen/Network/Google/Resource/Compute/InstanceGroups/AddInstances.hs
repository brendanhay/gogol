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
-- Module      : Network.Google.Resource.Compute.InstanceGroups.AddInstances
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds a list of instances to an instance group. All of the instances in
-- the instance group must be in the same network.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstanceGroupsAddInstances@.
module Network.Google.Resource.Compute.InstanceGroups.AddInstances
    (
    -- * REST Resource
      InstanceGroupsAddInstancesResource

    -- * Creating a Request
    , instanceGroupsAddInstances'
    , InstanceGroupsAddInstances'

    -- * Request Lenses
    , igaiQuotaUser
    , igaiPrettyPrint
    , igaiProject
    , igaiUserIP
    , igaiZone
    , igaiPayload
    , igaiKey
    , igaiOAuthToken
    , igaiInstanceGroup
    , igaiFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstanceGroupsAddInstances@ method which the
-- 'InstanceGroupsAddInstances'' request conforms to.
type InstanceGroupsAddInstancesResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instanceGroups" :>
             Capture "instanceGroup" Text :>
               "addInstances" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           Header "Authorization" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] InstanceGroupsAddInstancesRequest
                                 :> Post '[JSON] Operation

-- | Adds a list of instances to an instance group. All of the instances in
-- the instance group must be in the same network.
--
-- /See:/ 'instanceGroupsAddInstances'' smart constructor.
data InstanceGroupsAddInstances' = InstanceGroupsAddInstances'
    { _igaiQuotaUser     :: !(Maybe Text)
    , _igaiPrettyPrint   :: !Bool
    , _igaiProject       :: !Text
    , _igaiUserIP        :: !(Maybe Text)
    , _igaiZone          :: !Text
    , _igaiPayload       :: !InstanceGroupsAddInstancesRequest
    , _igaiKey           :: !(Maybe AuthKey)
    , _igaiOAuthToken    :: !(Maybe OAuthToken)
    , _igaiInstanceGroup :: !Text
    , _igaiFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupsAddInstances'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igaiQuotaUser'
--
-- * 'igaiPrettyPrint'
--
-- * 'igaiProject'
--
-- * 'igaiUserIP'
--
-- * 'igaiZone'
--
-- * 'igaiPayload'
--
-- * 'igaiKey'
--
-- * 'igaiOAuthToken'
--
-- * 'igaiInstanceGroup'
--
-- * 'igaiFields'
instanceGroupsAddInstances'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> InstanceGroupsAddInstancesRequest -- ^ 'payload'
    -> Text -- ^ 'instanceGroup'
    -> InstanceGroupsAddInstances'
instanceGroupsAddInstances' pIgaiProject_ pIgaiZone_ pIgaiPayload_ pIgaiInstanceGroup_ =
    InstanceGroupsAddInstances'
    { _igaiQuotaUser = Nothing
    , _igaiPrettyPrint = True
    , _igaiProject = pIgaiProject_
    , _igaiUserIP = Nothing
    , _igaiZone = pIgaiZone_
    , _igaiPayload = pIgaiPayload_
    , _igaiKey = Nothing
    , _igaiOAuthToken = Nothing
    , _igaiInstanceGroup = pIgaiInstanceGroup_
    , _igaiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
igaiQuotaUser :: Lens' InstanceGroupsAddInstances' (Maybe Text)
igaiQuotaUser
  = lens _igaiQuotaUser
      (\ s a -> s{_igaiQuotaUser = a})

-- | Returns response with indentations and line breaks.
igaiPrettyPrint :: Lens' InstanceGroupsAddInstances' Bool
igaiPrettyPrint
  = lens _igaiPrettyPrint
      (\ s a -> s{_igaiPrettyPrint = a})

-- | The project ID for this request.
igaiProject :: Lens' InstanceGroupsAddInstances' Text
igaiProject
  = lens _igaiProject (\ s a -> s{_igaiProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
igaiUserIP :: Lens' InstanceGroupsAddInstances' (Maybe Text)
igaiUserIP
  = lens _igaiUserIP (\ s a -> s{_igaiUserIP = a})

-- | The URL of the zone where the instance group is located.
igaiZone :: Lens' InstanceGroupsAddInstances' Text
igaiZone = lens _igaiZone (\ s a -> s{_igaiZone = a})

-- | Multipart request metadata.
igaiPayload :: Lens' InstanceGroupsAddInstances' InstanceGroupsAddInstancesRequest
igaiPayload
  = lens _igaiPayload (\ s a -> s{_igaiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igaiKey :: Lens' InstanceGroupsAddInstances' (Maybe AuthKey)
igaiKey = lens _igaiKey (\ s a -> s{_igaiKey = a})

-- | OAuth 2.0 token for the current user.
igaiOAuthToken :: Lens' InstanceGroupsAddInstances' (Maybe OAuthToken)
igaiOAuthToken
  = lens _igaiOAuthToken
      (\ s a -> s{_igaiOAuthToken = a})

-- | The name of the instance group where you are adding instances.
igaiInstanceGroup :: Lens' InstanceGroupsAddInstances' Text
igaiInstanceGroup
  = lens _igaiInstanceGroup
      (\ s a -> s{_igaiInstanceGroup = a})

-- | Selector specifying which fields to include in a partial response.
igaiFields :: Lens' InstanceGroupsAddInstances' (Maybe Text)
igaiFields
  = lens _igaiFields (\ s a -> s{_igaiFields = a})

instance GoogleAuth InstanceGroupsAddInstances' where
        _AuthKey = igaiKey . _Just
        _AuthToken = igaiOAuthToken . _Just

instance GoogleRequest InstanceGroupsAddInstances'
         where
        type Rs InstanceGroupsAddInstances' = Operation
        request = requestWith computeRequest
        requestWith rq InstanceGroupsAddInstances'{..}
          = go _igaiProject _igaiZone _igaiInstanceGroup
              _igaiQuotaUser
              (Just _igaiPrettyPrint)
              _igaiUserIP
              _igaiFields
              _igaiKey
              _igaiOAuthToken
              (Just AltJSON)
              _igaiPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy InstanceGroupsAddInstancesResource)
                      rq
