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
-- Module      : Network.Google.Resource.ReplicaPool.InstanceGroupManagers.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified Instance Group Manager resource.
--
-- /See:/ <https://developers.google.com/compute/docs/instance-groups/manager/v1beta2 Google Compute Engine Instance Group Manager API Reference> for @ReplicapoolInstanceGroupManagersGet@.
module Network.Google.Resource.ReplicaPool.InstanceGroupManagers.Get
    (
    -- * REST Resource
      InstanceGroupManagersGetResource

    -- * Creating a Request
    , instanceGroupManagersGet'
    , InstanceGroupManagersGet'

    -- * Request Lenses
    , igmgQuotaUser
    , igmgPrettyPrint
    , igmgProject
    , igmgInstanceGroupManager
    , igmgUserIP
    , igmgZone
    , igmgKey
    , igmgOAuthToken
    , igmgFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ReplicaPool.Types

-- | A resource alias for @ReplicapoolInstanceGroupManagersGet@ which the
-- 'InstanceGroupManagersGet'' request conforms to.
type InstanceGroupManagersGetResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instanceGroupManagers" :>
             Capture "instanceGroupManager" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] InstanceGroupManager

-- | Returns the specified Instance Group Manager resource.
--
-- /See:/ 'instanceGroupManagersGet'' smart constructor.
data InstanceGroupManagersGet' = InstanceGroupManagersGet'
    { _igmgQuotaUser            :: !(Maybe Text)
    , _igmgPrettyPrint          :: !Bool
    , _igmgProject              :: !Text
    , _igmgInstanceGroupManager :: !Text
    , _igmgUserIP               :: !(Maybe Text)
    , _igmgZone                 :: !Text
    , _igmgKey                  :: !(Maybe Key)
    , _igmgOAuthToken           :: !(Maybe OAuthToken)
    , _igmgFields               :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmgQuotaUser'
--
-- * 'igmgPrettyPrint'
--
-- * 'igmgProject'
--
-- * 'igmgInstanceGroupManager'
--
-- * 'igmgUserIP'
--
-- * 'igmgZone'
--
-- * 'igmgKey'
--
-- * 'igmgOAuthToken'
--
-- * 'igmgFields'
instanceGroupManagersGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'instanceGroupManager'
    -> Text -- ^ 'zone'
    -> InstanceGroupManagersGet'
instanceGroupManagersGet' pIgmgProject_ pIgmgInstanceGroupManager_ pIgmgZone_ =
    InstanceGroupManagersGet'
    { _igmgQuotaUser = Nothing
    , _igmgPrettyPrint = True
    , _igmgProject = pIgmgProject_
    , _igmgInstanceGroupManager = pIgmgInstanceGroupManager_
    , _igmgUserIP = Nothing
    , _igmgZone = pIgmgZone_
    , _igmgKey = Nothing
    , _igmgOAuthToken = Nothing
    , _igmgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
igmgQuotaUser :: Lens' InstanceGroupManagersGet' (Maybe Text)
igmgQuotaUser
  = lens _igmgQuotaUser
      (\ s a -> s{_igmgQuotaUser = a})

-- | Returns response with indentations and line breaks.
igmgPrettyPrint :: Lens' InstanceGroupManagersGet' Bool
igmgPrettyPrint
  = lens _igmgPrettyPrint
      (\ s a -> s{_igmgPrettyPrint = a})

-- | The Google Developers Console project name.
igmgProject :: Lens' InstanceGroupManagersGet' Text
igmgProject
  = lens _igmgProject (\ s a -> s{_igmgProject = a})

-- | Name of the instance resource to return.
igmgInstanceGroupManager :: Lens' InstanceGroupManagersGet' Text
igmgInstanceGroupManager
  = lens _igmgInstanceGroupManager
      (\ s a -> s{_igmgInstanceGroupManager = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
igmgUserIP :: Lens' InstanceGroupManagersGet' (Maybe Text)
igmgUserIP
  = lens _igmgUserIP (\ s a -> s{_igmgUserIP = a})

-- | The name of the zone in which the instance group manager resides.
igmgZone :: Lens' InstanceGroupManagersGet' Text
igmgZone = lens _igmgZone (\ s a -> s{_igmgZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igmgKey :: Lens' InstanceGroupManagersGet' (Maybe Key)
igmgKey = lens _igmgKey (\ s a -> s{_igmgKey = a})

-- | OAuth 2.0 token for the current user.
igmgOAuthToken :: Lens' InstanceGroupManagersGet' (Maybe OAuthToken)
igmgOAuthToken
  = lens _igmgOAuthToken
      (\ s a -> s{_igmgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
igmgFields :: Lens' InstanceGroupManagersGet' (Maybe Text)
igmgFields
  = lens _igmgFields (\ s a -> s{_igmgFields = a})

instance GoogleAuth InstanceGroupManagersGet' where
        authKey = igmgKey . _Just
        authToken = igmgOAuthToken . _Just

instance GoogleRequest InstanceGroupManagersGet'
         where
        type Rs InstanceGroupManagersGet' =
             InstanceGroupManager
        request = requestWithRoute defReq replicaPoolURL
        requestWithRoute r u InstanceGroupManagersGet'{..}
          = go _igmgProject _igmgZone _igmgInstanceGroupManager
              _igmgQuotaUser
              (Just _igmgPrettyPrint)
              _igmgUserIP
              _igmgFields
              _igmgKey
              _igmgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstanceGroupManagersGetResource)
                      r
                      u
