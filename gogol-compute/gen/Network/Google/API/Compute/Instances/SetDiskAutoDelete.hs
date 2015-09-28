{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.Instances.SetDiskAutoDelete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sets the auto-delete flag for a disk attached to an instance.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.setDiskAutoDelete@.
module Network.Google.API.Compute.Instances.SetDiskAutoDelete
    (
    -- * REST Resource
      InstancesSetDiskAutoDeleteAPI

    -- * Creating a Request
    , instancesSetDiskAutoDelete'
    , InstancesSetDiskAutoDelete'

    -- * Request Lenses
    , isdadQuotaUser
    , isdadPrettyPrint
    , isdadProject
    , isdadUserIp
    , isdadAutoDelete
    , isdadZone
    , isdadDeviceName
    , isdadKey
    , isdadOauthToken
    , isdadFields
    , isdadAlt
    , isdadInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.instances.setDiskAutoDelete which the
-- 'InstancesSetDiskAutoDelete'' request conforms to.
type InstancesSetDiskAutoDeleteAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instances" :>
             Capture "instance" Text :>
               "setDiskAutoDelete" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "autoDelete" Bool :>
                         QueryParam "deviceName" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Sets the auto-delete flag for a disk attached to an instance.
--
-- /See:/ 'instancesSetDiskAutoDelete'' smart constructor.
data InstancesSetDiskAutoDelete' = InstancesSetDiskAutoDelete'
    { _isdadQuotaUser   :: !(Maybe Text)
    , _isdadPrettyPrint :: !Bool
    , _isdadProject     :: !Text
    , _isdadUserIp      :: !(Maybe Text)
    , _isdadAutoDelete  :: !Bool
    , _isdadZone        :: !Text
    , _isdadDeviceName  :: !Text
    , _isdadKey         :: !(Maybe Text)
    , _isdadOauthToken  :: !(Maybe Text)
    , _isdadFields      :: !(Maybe Text)
    , _isdadAlt         :: !Alt
    , _isdadInstance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesSetDiskAutoDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isdadQuotaUser'
--
-- * 'isdadPrettyPrint'
--
-- * 'isdadProject'
--
-- * 'isdadUserIp'
--
-- * 'isdadAutoDelete'
--
-- * 'isdadZone'
--
-- * 'isdadDeviceName'
--
-- * 'isdadKey'
--
-- * 'isdadOauthToken'
--
-- * 'isdadFields'
--
-- * 'isdadAlt'
--
-- * 'isdadInstance'
instancesSetDiskAutoDelete'
    :: Text -- ^ 'project'
    -> Bool -- ^ 'autoDelete'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'deviceName'
    -> Text -- ^ 'instance'
    -> InstancesSetDiskAutoDelete'
instancesSetDiskAutoDelete' pIsdadProject_ pIsdadAutoDelete_ pIsdadZone_ pIsdadDeviceName_ pIsdadInstance_ =
    InstancesSetDiskAutoDelete'
    { _isdadQuotaUser = Nothing
    , _isdadPrettyPrint = True
    , _isdadProject = pIsdadProject_
    , _isdadUserIp = Nothing
    , _isdadAutoDelete = pIsdadAutoDelete_
    , _isdadZone = pIsdadZone_
    , _isdadDeviceName = pIsdadDeviceName_
    , _isdadKey = Nothing
    , _isdadOauthToken = Nothing
    , _isdadFields = Nothing
    , _isdadAlt = JSON
    , _isdadInstance = pIsdadInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
isdadQuotaUser :: Lens' InstancesSetDiskAutoDelete' (Maybe Text)
isdadQuotaUser
  = lens _isdadQuotaUser
      (\ s a -> s{_isdadQuotaUser = a})

-- | Returns response with indentations and line breaks.
isdadPrettyPrint :: Lens' InstancesSetDiskAutoDelete' Bool
isdadPrettyPrint
  = lens _isdadPrettyPrint
      (\ s a -> s{_isdadPrettyPrint = a})

-- | Project ID for this request.
isdadProject :: Lens' InstancesSetDiskAutoDelete' Text
isdadProject
  = lens _isdadProject (\ s a -> s{_isdadProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
isdadUserIp :: Lens' InstancesSetDiskAutoDelete' (Maybe Text)
isdadUserIp
  = lens _isdadUserIp (\ s a -> s{_isdadUserIp = a})

-- | Whether to auto-delete the disk when the instance is deleted.
isdadAutoDelete :: Lens' InstancesSetDiskAutoDelete' Bool
isdadAutoDelete
  = lens _isdadAutoDelete
      (\ s a -> s{_isdadAutoDelete = a})

-- | The name of the zone for this request.
isdadZone :: Lens' InstancesSetDiskAutoDelete' Text
isdadZone
  = lens _isdadZone (\ s a -> s{_isdadZone = a})

-- | The device name of the disk to modify.
isdadDeviceName :: Lens' InstancesSetDiskAutoDelete' Text
isdadDeviceName
  = lens _isdadDeviceName
      (\ s a -> s{_isdadDeviceName = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
isdadKey :: Lens' InstancesSetDiskAutoDelete' (Maybe Text)
isdadKey = lens _isdadKey (\ s a -> s{_isdadKey = a})

-- | OAuth 2.0 token for the current user.
isdadOauthToken :: Lens' InstancesSetDiskAutoDelete' (Maybe Text)
isdadOauthToken
  = lens _isdadOauthToken
      (\ s a -> s{_isdadOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
isdadFields :: Lens' InstancesSetDiskAutoDelete' (Maybe Text)
isdadFields
  = lens _isdadFields (\ s a -> s{_isdadFields = a})

-- | Data format for the response.
isdadAlt :: Lens' InstancesSetDiskAutoDelete' Alt
isdadAlt = lens _isdadAlt (\ s a -> s{_isdadAlt = a})

-- | The instance name.
isdadInstance :: Lens' InstancesSetDiskAutoDelete' Text
isdadInstance
  = lens _isdadInstance
      (\ s a -> s{_isdadInstance = a})

instance GoogleRequest InstancesSetDiskAutoDelete'
         where
        type Rs InstancesSetDiskAutoDelete' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u InstancesSetDiskAutoDelete'{..}
          = go _isdadQuotaUser (Just _isdadPrettyPrint)
              _isdadProject
              _isdadUserIp
              (Just _isdadAutoDelete)
              _isdadZone
              (Just _isdadDeviceName)
              _isdadKey
              _isdadOauthToken
              _isdadFields
              (Just _isdadAlt)
              _isdadInstance
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstancesSetDiskAutoDeleteAPI)
                      r
                      u
