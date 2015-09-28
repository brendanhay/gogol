{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.Instances.AttachDisk
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Attaches a Disk resource to an instance.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.attachDisk@.
module Network.Google.API.Compute.Instances.AttachDisk
    (
    -- * REST Resource
      InstancesAttachDiskAPI

    -- * Creating a Request
    , instancesAttachDisk'
    , InstancesAttachDisk'

    -- * Request Lenses
    , iadQuotaUser
    , iadPrettyPrint
    , iadProject
    , iadUserIp
    , iadZone
    , iadKey
    , iadOauthToken
    , iadFields
    , iadAlt
    , iadInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.instances.attachDisk which the
-- 'InstancesAttachDisk'' request conforms to.
type InstancesAttachDiskAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instances" :>
             Capture "instance" Text :>
               "attachDisk" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Attaches a Disk resource to an instance.
--
-- /See:/ 'instancesAttachDisk'' smart constructor.
data InstancesAttachDisk' = InstancesAttachDisk'
    { _iadQuotaUser   :: !(Maybe Text)
    , _iadPrettyPrint :: !Bool
    , _iadProject     :: !Text
    , _iadUserIp      :: !(Maybe Text)
    , _iadZone        :: !Text
    , _iadKey         :: !(Maybe Text)
    , _iadOauthToken  :: !(Maybe Text)
    , _iadFields      :: !(Maybe Text)
    , _iadAlt         :: !Alt
    , _iadInstance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesAttachDisk'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iadQuotaUser'
--
-- * 'iadPrettyPrint'
--
-- * 'iadProject'
--
-- * 'iadUserIp'
--
-- * 'iadZone'
--
-- * 'iadKey'
--
-- * 'iadOauthToken'
--
-- * 'iadFields'
--
-- * 'iadAlt'
--
-- * 'iadInstance'
instancesAttachDisk'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'instance'
    -> InstancesAttachDisk'
instancesAttachDisk' pIadProject_ pIadZone_ pIadInstance_ =
    InstancesAttachDisk'
    { _iadQuotaUser = Nothing
    , _iadPrettyPrint = True
    , _iadProject = pIadProject_
    , _iadUserIp = Nothing
    , _iadZone = pIadZone_
    , _iadKey = Nothing
    , _iadOauthToken = Nothing
    , _iadFields = Nothing
    , _iadAlt = JSON
    , _iadInstance = pIadInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
iadQuotaUser :: Lens' InstancesAttachDisk' (Maybe Text)
iadQuotaUser
  = lens _iadQuotaUser (\ s a -> s{_iadQuotaUser = a})

-- | Returns response with indentations and line breaks.
iadPrettyPrint :: Lens' InstancesAttachDisk' Bool
iadPrettyPrint
  = lens _iadPrettyPrint
      (\ s a -> s{_iadPrettyPrint = a})

-- | Project ID for this request.
iadProject :: Lens' InstancesAttachDisk' Text
iadProject
  = lens _iadProject (\ s a -> s{_iadProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
iadUserIp :: Lens' InstancesAttachDisk' (Maybe Text)
iadUserIp
  = lens _iadUserIp (\ s a -> s{_iadUserIp = a})

-- | The name of the zone for this request.
iadZone :: Lens' InstancesAttachDisk' Text
iadZone = lens _iadZone (\ s a -> s{_iadZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
iadKey :: Lens' InstancesAttachDisk' (Maybe Text)
iadKey = lens _iadKey (\ s a -> s{_iadKey = a})

-- | OAuth 2.0 token for the current user.
iadOauthToken :: Lens' InstancesAttachDisk' (Maybe Text)
iadOauthToken
  = lens _iadOauthToken
      (\ s a -> s{_iadOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
iadFields :: Lens' InstancesAttachDisk' (Maybe Text)
iadFields
  = lens _iadFields (\ s a -> s{_iadFields = a})

-- | Data format for the response.
iadAlt :: Lens' InstancesAttachDisk' Alt
iadAlt = lens _iadAlt (\ s a -> s{_iadAlt = a})

-- | Instance name.
iadInstance :: Lens' InstancesAttachDisk' Text
iadInstance
  = lens _iadInstance (\ s a -> s{_iadInstance = a})

instance GoogleRequest InstancesAttachDisk' where
        type Rs InstancesAttachDisk' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u InstancesAttachDisk'{..}
          = go _iadQuotaUser (Just _iadPrettyPrint) _iadProject
              _iadUserIp
              _iadZone
              _iadKey
              _iadOauthToken
              _iadFields
              (Just _iadAlt)
              _iadInstance
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstancesAttachDiskAPI)
                      r
                      u
