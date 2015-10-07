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
-- Module      : Network.Google.Resource.Compute.InstanceGroupManagers.ListManagedInstances
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists managed instances.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstanceGroupManagersListManagedInstances@.
module Network.Google.Resource.Compute.InstanceGroupManagers.ListManagedInstances
    (
    -- * REST Resource
      InstanceGroupManagersListManagedInstancesResource

    -- * Creating a Request
    , instanceGroupManagersListManagedInstances'
    , InstanceGroupManagersListManagedInstances'

    -- * Request Lenses
    , igmlmiQuotaUser
    , igmlmiPrettyPrint
    , igmlmiProject
    , igmlmiInstanceGroupManager
    , igmlmiUserIP
    , igmlmiZone
    , igmlmiKey
    , igmlmiOAuthToken
    , igmlmiFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstanceGroupManagersListManagedInstances@ method which the
-- 'InstanceGroupManagersListManagedInstances'' request conforms to.
type InstanceGroupManagersListManagedInstancesResource
     =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instanceGroupManagers" :>
             Capture "instanceGroupManager" Text :>
               "listManagedInstances" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Post '[JSON]
                                 InstanceGroupManagersListManagedInstancesResponse

-- | Lists managed instances.
--
-- /See:/ 'instanceGroupManagersListManagedInstances'' smart constructor.
data InstanceGroupManagersListManagedInstances' = InstanceGroupManagersListManagedInstances'
    { _igmlmiQuotaUser            :: !(Maybe Text)
    , _igmlmiPrettyPrint          :: !Bool
    , _igmlmiProject              :: !Text
    , _igmlmiInstanceGroupManager :: !Text
    , _igmlmiUserIP               :: !(Maybe Text)
    , _igmlmiZone                 :: !Text
    , _igmlmiKey                  :: !(Maybe AuthKey)
    , _igmlmiOAuthToken           :: !(Maybe OAuthToken)
    , _igmlmiFields               :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersListManagedInstances'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmlmiQuotaUser'
--
-- * 'igmlmiPrettyPrint'
--
-- * 'igmlmiProject'
--
-- * 'igmlmiInstanceGroupManager'
--
-- * 'igmlmiUserIP'
--
-- * 'igmlmiZone'
--
-- * 'igmlmiKey'
--
-- * 'igmlmiOAuthToken'
--
-- * 'igmlmiFields'
instanceGroupManagersListManagedInstances'
    :: Text -- ^ 'project'
    -> Text -- ^ 'instanceGroupManager'
    -> Text -- ^ 'zone'
    -> InstanceGroupManagersListManagedInstances'
instanceGroupManagersListManagedInstances' pIgmlmiProject_ pIgmlmiInstanceGroupManager_ pIgmlmiZone_ =
    InstanceGroupManagersListManagedInstances'
    { _igmlmiQuotaUser = Nothing
    , _igmlmiPrettyPrint = True
    , _igmlmiProject = pIgmlmiProject_
    , _igmlmiInstanceGroupManager = pIgmlmiInstanceGroupManager_
    , _igmlmiUserIP = Nothing
    , _igmlmiZone = pIgmlmiZone_
    , _igmlmiKey = Nothing
    , _igmlmiOAuthToken = Nothing
    , _igmlmiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
igmlmiQuotaUser :: Lens' InstanceGroupManagersListManagedInstances' (Maybe Text)
igmlmiQuotaUser
  = lens _igmlmiQuotaUser
      (\ s a -> s{_igmlmiQuotaUser = a})

-- | Returns response with indentations and line breaks.
igmlmiPrettyPrint :: Lens' InstanceGroupManagersListManagedInstances' Bool
igmlmiPrettyPrint
  = lens _igmlmiPrettyPrint
      (\ s a -> s{_igmlmiPrettyPrint = a})

-- | The project ID for this request.
igmlmiProject :: Lens' InstanceGroupManagersListManagedInstances' Text
igmlmiProject
  = lens _igmlmiProject
      (\ s a -> s{_igmlmiProject = a})

-- | The name of the managed instance group.
igmlmiInstanceGroupManager :: Lens' InstanceGroupManagersListManagedInstances' Text
igmlmiInstanceGroupManager
  = lens _igmlmiInstanceGroupManager
      (\ s a -> s{_igmlmiInstanceGroupManager = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
igmlmiUserIP :: Lens' InstanceGroupManagersListManagedInstances' (Maybe Text)
igmlmiUserIP
  = lens _igmlmiUserIP (\ s a -> s{_igmlmiUserIP = a})

-- | The URL of the zone where the managed instance group is located.
igmlmiZone :: Lens' InstanceGroupManagersListManagedInstances' Text
igmlmiZone
  = lens _igmlmiZone (\ s a -> s{_igmlmiZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igmlmiKey :: Lens' InstanceGroupManagersListManagedInstances' (Maybe AuthKey)
igmlmiKey
  = lens _igmlmiKey (\ s a -> s{_igmlmiKey = a})

-- | OAuth 2.0 token for the current user.
igmlmiOAuthToken :: Lens' InstanceGroupManagersListManagedInstances' (Maybe OAuthToken)
igmlmiOAuthToken
  = lens _igmlmiOAuthToken
      (\ s a -> s{_igmlmiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
igmlmiFields :: Lens' InstanceGroupManagersListManagedInstances' (Maybe Text)
igmlmiFields
  = lens _igmlmiFields (\ s a -> s{_igmlmiFields = a})

instance GoogleAuth
         InstanceGroupManagersListManagedInstances' where
        _AuthKey = igmlmiKey . _Just
        _AuthToken = igmlmiOAuthToken . _Just

instance GoogleRequest
         InstanceGroupManagersListManagedInstances' where
        type Rs InstanceGroupManagersListManagedInstances' =
             InstanceGroupManagersListManagedInstancesResponse
        request = requestWith computeRequest
        requestWith rq
          InstanceGroupManagersListManagedInstances'{..}
          = go _igmlmiProject _igmlmiZone
              _igmlmiInstanceGroupManager
              _igmlmiQuotaUser
              (Just _igmlmiPrettyPrint)
              _igmlmiUserIP
              _igmlmiFields
              _igmlmiKey
              _igmlmiOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy
                           InstanceGroupManagersListManagedInstancesResource)
                      rq
