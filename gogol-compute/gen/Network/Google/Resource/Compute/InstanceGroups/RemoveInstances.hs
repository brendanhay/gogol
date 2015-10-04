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
-- Module      : Network.Google.Resource.Compute.InstanceGroups.RemoveInstances
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Removes a list of instances from an instance group.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstanceGroupsRemoveInstances@.
module Network.Google.Resource.Compute.InstanceGroups.RemoveInstances
    (
    -- * REST Resource
      InstanceGroupsRemoveInstancesResource

    -- * Creating a Request
    , instanceGroupsRemoveInstances'
    , InstanceGroupsRemoveInstances'

    -- * Request Lenses
    , igriQuotaUser
    , igriPrettyPrint
    , igriProject
    , igriUserIP
    , igriZone
    , igriPayload
    , igriKey
    , igriOAuthToken
    , igriInstanceGroup
    , igriFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstanceGroupsRemoveInstances@ which the
-- 'InstanceGroupsRemoveInstances'' request conforms to.
type InstanceGroupsRemoveInstancesResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instanceGroups" :>
             Capture "instanceGroup" Text :>
               "removeInstances" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON]
                                 InstanceGroupsRemoveInstancesRequest
                                 :> Post '[JSON] Operation

-- | Removes a list of instances from an instance group.
--
-- /See:/ 'instanceGroupsRemoveInstances'' smart constructor.
data InstanceGroupsRemoveInstances' = InstanceGroupsRemoveInstances'
    { _igriQuotaUser     :: !(Maybe Text)
    , _igriPrettyPrint   :: !Bool
    , _igriProject       :: !Text
    , _igriUserIP        :: !(Maybe Text)
    , _igriZone          :: !Text
    , _igriPayload       :: !InstanceGroupsRemoveInstancesRequest
    , _igriKey           :: !(Maybe Key)
    , _igriOAuthToken    :: !(Maybe OAuthToken)
    , _igriInstanceGroup :: !Text
    , _igriFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupsRemoveInstances'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igriQuotaUser'
--
-- * 'igriPrettyPrint'
--
-- * 'igriProject'
--
-- * 'igriUserIP'
--
-- * 'igriZone'
--
-- * 'igriPayload'
--
-- * 'igriKey'
--
-- * 'igriOAuthToken'
--
-- * 'igriInstanceGroup'
--
-- * 'igriFields'
instanceGroupsRemoveInstances'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> InstanceGroupsRemoveInstancesRequest -- ^ 'payload'
    -> Text -- ^ 'instanceGroup'
    -> InstanceGroupsRemoveInstances'
instanceGroupsRemoveInstances' pIgriProject_ pIgriZone_ pIgriPayload_ pIgriInstanceGroup_ =
    InstanceGroupsRemoveInstances'
    { _igriQuotaUser = Nothing
    , _igriPrettyPrint = True
    , _igriProject = pIgriProject_
    , _igriUserIP = Nothing
    , _igriZone = pIgriZone_
    , _igriPayload = pIgriPayload_
    , _igriKey = Nothing
    , _igriOAuthToken = Nothing
    , _igriInstanceGroup = pIgriInstanceGroup_
    , _igriFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
igriQuotaUser :: Lens' InstanceGroupsRemoveInstances' (Maybe Text)
igriQuotaUser
  = lens _igriQuotaUser
      (\ s a -> s{_igriQuotaUser = a})

-- | Returns response with indentations and line breaks.
igriPrettyPrint :: Lens' InstanceGroupsRemoveInstances' Bool
igriPrettyPrint
  = lens _igriPrettyPrint
      (\ s a -> s{_igriPrettyPrint = a})

-- | The project ID for this request.
igriProject :: Lens' InstanceGroupsRemoveInstances' Text
igriProject
  = lens _igriProject (\ s a -> s{_igriProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
igriUserIP :: Lens' InstanceGroupsRemoveInstances' (Maybe Text)
igriUserIP
  = lens _igriUserIP (\ s a -> s{_igriUserIP = a})

-- | The URL of the zone where the instance group is located.
igriZone :: Lens' InstanceGroupsRemoveInstances' Text
igriZone = lens _igriZone (\ s a -> s{_igriZone = a})

-- | Multipart request metadata.
igriPayload :: Lens' InstanceGroupsRemoveInstances' InstanceGroupsRemoveInstancesRequest
igriPayload
  = lens _igriPayload (\ s a -> s{_igriPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igriKey :: Lens' InstanceGroupsRemoveInstances' (Maybe Key)
igriKey = lens _igriKey (\ s a -> s{_igriKey = a})

-- | OAuth 2.0 token for the current user.
igriOAuthToken :: Lens' InstanceGroupsRemoveInstances' (Maybe OAuthToken)
igriOAuthToken
  = lens _igriOAuthToken
      (\ s a -> s{_igriOAuthToken = a})

-- | The name of the instance group where the specified instances will be
-- removed.
igriInstanceGroup :: Lens' InstanceGroupsRemoveInstances' Text
igriInstanceGroup
  = lens _igriInstanceGroup
      (\ s a -> s{_igriInstanceGroup = a})

-- | Selector specifying which fields to include in a partial response.
igriFields :: Lens' InstanceGroupsRemoveInstances' (Maybe Text)
igriFields
  = lens _igriFields (\ s a -> s{_igriFields = a})

instance GoogleAuth InstanceGroupsRemoveInstances'
         where
        authKey = igriKey . _Just
        authToken = igriOAuthToken . _Just

instance GoogleRequest InstanceGroupsRemoveInstances'
         where
        type Rs InstanceGroupsRemoveInstances' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u
          InstanceGroupsRemoveInstances'{..}
          = go _igriProject _igriZone _igriInstanceGroup
              _igriQuotaUser
              (Just _igriPrettyPrint)
              _igriUserIP
              _igriFields
              _igriKey
              _igriOAuthToken
              (Just AltJSON)
              _igriPayload
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy InstanceGroupsRemoveInstancesResource)
                      r
                      u
