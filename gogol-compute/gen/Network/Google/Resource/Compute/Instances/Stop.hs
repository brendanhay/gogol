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
-- Module      : Network.Google.Resource.Compute.Instances.Stop
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
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstancesStop@.
module Network.Google.Resource.Compute.Instances.Stop
    (
    -- * REST Resource
      InstancesStopResource

    -- * Creating a Request
    , instancesStop'
    , InstancesStop'

    -- * Request Lenses
    , isQuotaUser
    , isPrettyPrint
    , isProject
    , isUserIP
    , isZone
    , isKey
    , isOAuthToken
    , isFields
    , isInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstancesStop@ which the
-- 'InstancesStop'' request conforms to.
type InstancesStopResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instances" :>
             Capture "instance" Text :>
               "stop" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | This method stops a running instance, shutting it down cleanly, and
-- allows you to restart the instance at a later time. Stopped instances do
-- not incur per-minute, virtual machine usage charges while they are
-- stopped, but any resources that the virtual machine is using, such as
-- persistent disks and static IP addresses,will continue to be charged
-- until they are deleted. For more information, see Stopping an instance.
--
-- /See:/ 'instancesStop'' smart constructor.
data InstancesStop' = InstancesStop'
    { _isQuotaUser   :: !(Maybe Text)
    , _isPrettyPrint :: !Bool
    , _isProject     :: !Text
    , _isUserIP      :: !(Maybe Text)
    , _isZone        :: !Text
    , _isKey         :: !(Maybe Key)
    , _isOAuthToken  :: !(Maybe OAuthToken)
    , _isFields      :: !(Maybe Text)
    , _isInstance    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesStop'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isQuotaUser'
--
-- * 'isPrettyPrint'
--
-- * 'isProject'
--
-- * 'isUserIP'
--
-- * 'isZone'
--
-- * 'isKey'
--
-- * 'isOAuthToken'
--
-- * 'isFields'
--
-- * 'isInstance'
instancesStop'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'instance'
    -> InstancesStop'
instancesStop' pIsProject_ pIsZone_ pIsInstance_ =
    InstancesStop'
    { _isQuotaUser = Nothing
    , _isPrettyPrint = True
    , _isProject = pIsProject_
    , _isUserIP = Nothing
    , _isZone = pIsZone_
    , _isKey = Nothing
    , _isOAuthToken = Nothing
    , _isFields = Nothing
    , _isInstance = pIsInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
isQuotaUser :: Lens' InstancesStop' (Maybe Text)
isQuotaUser
  = lens _isQuotaUser (\ s a -> s{_isQuotaUser = a})

-- | Returns response with indentations and line breaks.
isPrettyPrint :: Lens' InstancesStop' Bool
isPrettyPrint
  = lens _isPrettyPrint
      (\ s a -> s{_isPrettyPrint = a})

-- | Project ID for this request.
isProject :: Lens' InstancesStop' Text
isProject
  = lens _isProject (\ s a -> s{_isProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
isUserIP :: Lens' InstancesStop' (Maybe Text)
isUserIP = lens _isUserIP (\ s a -> s{_isUserIP = a})

-- | The name of the zone for this request.
isZone :: Lens' InstancesStop' Text
isZone = lens _isZone (\ s a -> s{_isZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
isKey :: Lens' InstancesStop' (Maybe Key)
isKey = lens _isKey (\ s a -> s{_isKey = a})

-- | OAuth 2.0 token for the current user.
isOAuthToken :: Lens' InstancesStop' (Maybe OAuthToken)
isOAuthToken
  = lens _isOAuthToken (\ s a -> s{_isOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
isFields :: Lens' InstancesStop' (Maybe Text)
isFields = lens _isFields (\ s a -> s{_isFields = a})

-- | Name of the instance resource to stop.
isInstance :: Lens' InstancesStop' Text
isInstance
  = lens _isInstance (\ s a -> s{_isInstance = a})

instance GoogleAuth InstancesStop' where
        authKey = isKey . _Just
        authToken = isOAuthToken . _Just

instance GoogleRequest InstancesStop' where
        type Rs InstancesStop' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u InstancesStop'{..}
          = go _isProject _isZone _isInstance _isQuotaUser
              (Just _isPrettyPrint)
              _isUserIP
              _isFields
              _isKey
              _isOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstancesStopResource)
                      r
                      u
