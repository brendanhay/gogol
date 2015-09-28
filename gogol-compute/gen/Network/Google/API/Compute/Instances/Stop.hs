{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.Instances.Stop
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | This method stops a running instance, shutting it down cleanly, and
-- allows you to restart the instance at a later time. Stopped instances do
-- not incur per-minute, virtual machine usage charges while they are
-- stopped, but any resources that the virtual machine is using, such as
-- persistent disks and static IP addresses,will continue to be charged
-- until they are deleted. For more information, see Stopping an instance.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.stop@.
module Network.Google.API.Compute.Instances.Stop
    (
    -- * REST Resource
      InstancesStopAPI

    -- * Creating a Request
    , instancesStop'
    , InstancesStop'

    -- * Request Lenses
    , insnQuotaUser
    , insnPrettyPrint
    , insnProject
    , insnUserIp
    , insnZone
    , insnKey
    , insnOauthToken
    , insnFields
    , insnAlt
    , insnInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.instances.stop which the
-- 'InstancesStop'' request conforms to.
type InstancesStopAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instances" :>
             Capture "instance" Text :>
               "stop" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Post '[JSON] Operation

-- | This method stops a running instance, shutting it down cleanly, and
-- allows you to restart the instance at a later time. Stopped instances do
-- not incur per-minute, virtual machine usage charges while they are
-- stopped, but any resources that the virtual machine is using, such as
-- persistent disks and static IP addresses,will continue to be charged
-- until they are deleted. For more information, see Stopping an instance.
--
-- /See:/ 'instancesStop'' smart constructor.
data InstancesStop' = InstancesStop'
    { _insnQuotaUser   :: !(Maybe Text)
    , _insnPrettyPrint :: !Bool
    , _insnProject     :: !Text
    , _insnUserIp      :: !(Maybe Text)
    , _insnZone        :: !Text
    , _insnKey         :: !(Maybe Text)
    , _insnOauthToken  :: !(Maybe Text)
    , _insnFields      :: !(Maybe Text)
    , _insnAlt         :: !Alt
    , _insnInstance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesStop'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'insnQuotaUser'
--
-- * 'insnPrettyPrint'
--
-- * 'insnProject'
--
-- * 'insnUserIp'
--
-- * 'insnZone'
--
-- * 'insnKey'
--
-- * 'insnOauthToken'
--
-- * 'insnFields'
--
-- * 'insnAlt'
--
-- * 'insnInstance'
instancesStop'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'instance'
    -> InstancesStop'
instancesStop' pInsnProject_ pInsnZone_ pInsnInstance_ =
    InstancesStop'
    { _insnQuotaUser = Nothing
    , _insnPrettyPrint = True
    , _insnProject = pInsnProject_
    , _insnUserIp = Nothing
    , _insnZone = pInsnZone_
    , _insnKey = Nothing
    , _insnOauthToken = Nothing
    , _insnFields = Nothing
    , _insnAlt = JSON
    , _insnInstance = pInsnInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
insnQuotaUser :: Lens' InstancesStop' (Maybe Text)
insnQuotaUser
  = lens _insnQuotaUser
      (\ s a -> s{_insnQuotaUser = a})

-- | Returns response with indentations and line breaks.
insnPrettyPrint :: Lens' InstancesStop' Bool
insnPrettyPrint
  = lens _insnPrettyPrint
      (\ s a -> s{_insnPrettyPrint = a})

-- | Project ID for this request.
insnProject :: Lens' InstancesStop' Text
insnProject
  = lens _insnProject (\ s a -> s{_insnProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
insnUserIp :: Lens' InstancesStop' (Maybe Text)
insnUserIp
  = lens _insnUserIp (\ s a -> s{_insnUserIp = a})

-- | The name of the zone for this request.
insnZone :: Lens' InstancesStop' Text
insnZone = lens _insnZone (\ s a -> s{_insnZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
insnKey :: Lens' InstancesStop' (Maybe Text)
insnKey = lens _insnKey (\ s a -> s{_insnKey = a})

-- | OAuth 2.0 token for the current user.
insnOauthToken :: Lens' InstancesStop' (Maybe Text)
insnOauthToken
  = lens _insnOauthToken
      (\ s a -> s{_insnOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
insnFields :: Lens' InstancesStop' (Maybe Text)
insnFields
  = lens _insnFields (\ s a -> s{_insnFields = a})

-- | Data format for the response.
insnAlt :: Lens' InstancesStop' Alt
insnAlt = lens _insnAlt (\ s a -> s{_insnAlt = a})

-- | Name of the instance resource to stop.
insnInstance :: Lens' InstancesStop' Text
insnInstance
  = lens _insnInstance (\ s a -> s{_insnInstance = a})

instance GoogleRequest InstancesStop' where
        type Rs InstancesStop' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u InstancesStop'{..}
          = go _insnQuotaUser (Just _insnPrettyPrint)
              _insnProject
              _insnUserIp
              _insnZone
              _insnKey
              _insnOauthToken
              _insnFields
              (Just _insnAlt)
              _insnInstance
          where go
                  = clientWithRoute (Proxy :: Proxy InstancesStopAPI) r
                      u
