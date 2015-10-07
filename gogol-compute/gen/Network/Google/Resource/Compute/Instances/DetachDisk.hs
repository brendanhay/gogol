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
-- Module      : Network.Google.Resource.Compute.Instances.DetachDisk
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Detaches a disk from an instance.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstancesDetachDisk@.
module Network.Google.Resource.Compute.Instances.DetachDisk
    (
    -- * REST Resource
      InstancesDetachDiskResource

    -- * Creating a Request
    , instancesDetachDisk'
    , InstancesDetachDisk'

    -- * Request Lenses
    , iddQuotaUser
    , iddPrettyPrint
    , iddProject
    , iddUserIP
    , iddZone
    , iddDeviceName
    , iddKey
    , iddOAuthToken
    , iddFields
    , iddInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstancesDetachDisk@ method which the
-- 'InstancesDetachDisk'' request conforms to.
type InstancesDetachDiskResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instances" :>
             Capture "instance" Text :>
               "detachDisk" :>
                 QueryParam "deviceName" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 Post '[JSON] Operation

-- | Detaches a disk from an instance.
--
-- /See:/ 'instancesDetachDisk'' smart constructor.
data InstancesDetachDisk' = InstancesDetachDisk'
    { _iddQuotaUser   :: !(Maybe Text)
    , _iddPrettyPrint :: !Bool
    , _iddProject     :: !Text
    , _iddUserIP      :: !(Maybe Text)
    , _iddZone        :: !Text
    , _iddDeviceName  :: !Text
    , _iddKey         :: !(Maybe AuthKey)
    , _iddOAuthToken  :: !(Maybe OAuthToken)
    , _iddFields      :: !(Maybe Text)
    , _iddInstance    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesDetachDisk'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iddQuotaUser'
--
-- * 'iddPrettyPrint'
--
-- * 'iddProject'
--
-- * 'iddUserIP'
--
-- * 'iddZone'
--
-- * 'iddDeviceName'
--
-- * 'iddKey'
--
-- * 'iddOAuthToken'
--
-- * 'iddFields'
--
-- * 'iddInstance'
instancesDetachDisk'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'deviceName'
    -> Text -- ^ 'instance'
    -> InstancesDetachDisk'
instancesDetachDisk' pIddProject_ pIddZone_ pIddDeviceName_ pIddInstance_ =
    InstancesDetachDisk'
    { _iddQuotaUser = Nothing
    , _iddPrettyPrint = True
    , _iddProject = pIddProject_
    , _iddUserIP = Nothing
    , _iddZone = pIddZone_
    , _iddDeviceName = pIddDeviceName_
    , _iddKey = Nothing
    , _iddOAuthToken = Nothing
    , _iddFields = Nothing
    , _iddInstance = pIddInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
iddQuotaUser :: Lens' InstancesDetachDisk' (Maybe Text)
iddQuotaUser
  = lens _iddQuotaUser (\ s a -> s{_iddQuotaUser = a})

-- | Returns response with indentations and line breaks.
iddPrettyPrint :: Lens' InstancesDetachDisk' Bool
iddPrettyPrint
  = lens _iddPrettyPrint
      (\ s a -> s{_iddPrettyPrint = a})

-- | Project ID for this request.
iddProject :: Lens' InstancesDetachDisk' Text
iddProject
  = lens _iddProject (\ s a -> s{_iddProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
iddUserIP :: Lens' InstancesDetachDisk' (Maybe Text)
iddUserIP
  = lens _iddUserIP (\ s a -> s{_iddUserIP = a})

-- | The name of the zone for this request.
iddZone :: Lens' InstancesDetachDisk' Text
iddZone = lens _iddZone (\ s a -> s{_iddZone = a})

-- | Disk device name to detach.
iddDeviceName :: Lens' InstancesDetachDisk' Text
iddDeviceName
  = lens _iddDeviceName
      (\ s a -> s{_iddDeviceName = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
iddKey :: Lens' InstancesDetachDisk' (Maybe AuthKey)
iddKey = lens _iddKey (\ s a -> s{_iddKey = a})

-- | OAuth 2.0 token for the current user.
iddOAuthToken :: Lens' InstancesDetachDisk' (Maybe OAuthToken)
iddOAuthToken
  = lens _iddOAuthToken
      (\ s a -> s{_iddOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
iddFields :: Lens' InstancesDetachDisk' (Maybe Text)
iddFields
  = lens _iddFields (\ s a -> s{_iddFields = a})

-- | Instance name.
iddInstance :: Lens' InstancesDetachDisk' Text
iddInstance
  = lens _iddInstance (\ s a -> s{_iddInstance = a})

instance GoogleAuth InstancesDetachDisk' where
        _AuthKey = iddKey . _Just
        _AuthToken = iddOAuthToken . _Just

instance GoogleRequest InstancesDetachDisk' where
        type Rs InstancesDetachDisk' = Operation
        request = requestWith computeRequest
        requestWith rq InstancesDetachDisk'{..}
          = go _iddProject _iddZone _iddInstance
              (Just _iddDeviceName)
              _iddQuotaUser
              (Just _iddPrettyPrint)
              _iddUserIP
              _iddFields
              _iddKey
              _iddOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy InstancesDetachDiskResource)
                      rq
