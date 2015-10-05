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
-- Module      : Network.Google.Resource.ReplicaPool.InstanceGroupManagers.Resize
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Resizes the managed instance group up or down. If resized up, new
-- instances are created using the current instance template. If resized
-- down, instances are removed in the order outlined in Resizing a managed
-- instance group.
--
-- /See:/ <https://developers.google.com/compute/docs/instance-groups/manager/v1beta2 Google Compute Engine Instance Group Manager API Reference> for @ReplicapoolInstanceGroupManagersResize@.
module Network.Google.Resource.ReplicaPool.InstanceGroupManagers.Resize
    (
    -- * REST Resource
      InstanceGroupManagersResizeResource

    -- * Creating a Request
    , instanceGroupManagersResize'
    , InstanceGroupManagersResize'

    -- * Request Lenses
    , igmrQuotaUser
    , igmrPrettyPrint
    , igmrProject
    , igmrSize
    , igmrInstanceGroupManager
    , igmrUserIP
    , igmrZone
    , igmrKey
    , igmrOAuthToken
    , igmrFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ReplicaPool.Types

-- | A resource alias for @ReplicapoolInstanceGroupManagersResize@ which the
-- 'InstanceGroupManagersResize'' request conforms to.
type InstanceGroupManagersResizeResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instanceGroupManagers" :>
             Capture "instanceGroupManager" Text :>
               "resize" :>
                 QueryParam "size" Int32 :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 Post '[JSON] Operation

-- | Resizes the managed instance group up or down. If resized up, new
-- instances are created using the current instance template. If resized
-- down, instances are removed in the order outlined in Resizing a managed
-- instance group.
--
-- /See:/ 'instanceGroupManagersResize'' smart constructor.
data InstanceGroupManagersResize' = InstanceGroupManagersResize'
    { _igmrQuotaUser            :: !(Maybe Text)
    , _igmrPrettyPrint          :: !Bool
    , _igmrProject              :: !Text
    , _igmrSize                 :: !Int32
    , _igmrInstanceGroupManager :: !Text
    , _igmrUserIP               :: !(Maybe Text)
    , _igmrZone                 :: !Text
    , _igmrKey                  :: !(Maybe Key)
    , _igmrOAuthToken           :: !(Maybe OAuthToken)
    , _igmrFields               :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersResize'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmrQuotaUser'
--
-- * 'igmrPrettyPrint'
--
-- * 'igmrProject'
--
-- * 'igmrSize'
--
-- * 'igmrInstanceGroupManager'
--
-- * 'igmrUserIP'
--
-- * 'igmrZone'
--
-- * 'igmrKey'
--
-- * 'igmrOAuthToken'
--
-- * 'igmrFields'
instanceGroupManagersResize'
    :: Text -- ^ 'project'
    -> Int32 -- ^ 'size'
    -> Text -- ^ 'instanceGroupManager'
    -> Text -- ^ 'zone'
    -> InstanceGroupManagersResize'
instanceGroupManagersResize' pIgmrProject_ pIgmrSize_ pIgmrInstanceGroupManager_ pIgmrZone_ =
    InstanceGroupManagersResize'
    { _igmrQuotaUser = Nothing
    , _igmrPrettyPrint = True
    , _igmrProject = pIgmrProject_
    , _igmrSize = pIgmrSize_
    , _igmrInstanceGroupManager = pIgmrInstanceGroupManager_
    , _igmrUserIP = Nothing
    , _igmrZone = pIgmrZone_
    , _igmrKey = Nothing
    , _igmrOAuthToken = Nothing
    , _igmrFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
igmrQuotaUser :: Lens' InstanceGroupManagersResize' (Maybe Text)
igmrQuotaUser
  = lens _igmrQuotaUser
      (\ s a -> s{_igmrQuotaUser = a})

-- | Returns response with indentations and line breaks.
igmrPrettyPrint :: Lens' InstanceGroupManagersResize' Bool
igmrPrettyPrint
  = lens _igmrPrettyPrint
      (\ s a -> s{_igmrPrettyPrint = a})

-- | The Google Developers Console project name.
igmrProject :: Lens' InstanceGroupManagersResize' Text
igmrProject
  = lens _igmrProject (\ s a -> s{_igmrProject = a})

-- | Number of instances that should exist in this Instance Group Manager.
igmrSize :: Lens' InstanceGroupManagersResize' Int32
igmrSize = lens _igmrSize (\ s a -> s{_igmrSize = a})

-- | The name of the instance group manager.
igmrInstanceGroupManager :: Lens' InstanceGroupManagersResize' Text
igmrInstanceGroupManager
  = lens _igmrInstanceGroupManager
      (\ s a -> s{_igmrInstanceGroupManager = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
igmrUserIP :: Lens' InstanceGroupManagersResize' (Maybe Text)
igmrUserIP
  = lens _igmrUserIP (\ s a -> s{_igmrUserIP = a})

-- | The name of the zone in which the instance group manager resides.
igmrZone :: Lens' InstanceGroupManagersResize' Text
igmrZone = lens _igmrZone (\ s a -> s{_igmrZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igmrKey :: Lens' InstanceGroupManagersResize' (Maybe Key)
igmrKey = lens _igmrKey (\ s a -> s{_igmrKey = a})

-- | OAuth 2.0 token for the current user.
igmrOAuthToken :: Lens' InstanceGroupManagersResize' (Maybe OAuthToken)
igmrOAuthToken
  = lens _igmrOAuthToken
      (\ s a -> s{_igmrOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
igmrFields :: Lens' InstanceGroupManagersResize' (Maybe Text)
igmrFields
  = lens _igmrFields (\ s a -> s{_igmrFields = a})

instance GoogleAuth InstanceGroupManagersResize'
         where
        authKey = igmrKey . _Just
        authToken = igmrOAuthToken . _Just

instance GoogleRequest InstanceGroupManagersResize'
         where
        type Rs InstanceGroupManagersResize' = Operation
        request = requestWithRoute defReq replicaPoolURL
        requestWithRoute r u InstanceGroupManagersResize'{..}
          = go _igmrProject _igmrZone _igmrInstanceGroupManager
              (Just _igmrSize)
              _igmrQuotaUser
              (Just _igmrPrettyPrint)
              _igmrUserIP
              _igmrFields
              _igmrKey
              _igmrOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstanceGroupManagersResizeResource)
                      r
                      u
