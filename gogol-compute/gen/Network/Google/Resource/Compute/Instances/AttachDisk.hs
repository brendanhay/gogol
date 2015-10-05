{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.Instances.AttachDisk
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Attaches a Disk resource to an instance.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstancesAttachDisk@.
module Network.Google.Resource.Compute.Instances.AttachDisk
    (
    -- * REST Resource
      InstancesAttachDiskResource

    -- * Creating a Request
    , instancesAttachDisk'
    , InstancesAttachDisk'

    -- * Request Lenses
    , iadQuotaUser
    , iadPrettyPrint
    , iadProject
    , iadUserIP
    , iadZone
    , iadPayload
    , iadKey
    , iadOAuthToken
    , iadFields
    , iadInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstancesAttachDisk@ which the
-- 'InstancesAttachDisk'' request conforms to.
type InstancesAttachDiskResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instances" :>
             Capture "instance" Text :>
               "attachDisk" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] AttachedDisk :>
                                 Post '[JSON] Operation

-- | Attaches a Disk resource to an instance.
--
-- /See:/ 'instancesAttachDisk'' smart constructor.
data InstancesAttachDisk' = InstancesAttachDisk'
    { _iadQuotaUser   :: !(Maybe Text)
    , _iadPrettyPrint :: !Bool
    , _iadProject     :: !Text
    , _iadUserIP      :: !(Maybe Text)
    , _iadZone        :: !Text
    , _iadPayload     :: !AttachedDisk
    , _iadKey         :: !(Maybe Key)
    , _iadOAuthToken  :: !(Maybe OAuthToken)
    , _iadFields      :: !(Maybe Text)
    , _iadInstance    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'iadUserIP'
--
-- * 'iadZone'
--
-- * 'iadPayload'
--
-- * 'iadKey'
--
-- * 'iadOAuthToken'
--
-- * 'iadFields'
--
-- * 'iadInstance'
instancesAttachDisk'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> AttachedDisk -- ^ 'payload'
    -> Text -- ^ 'instance'
    -> InstancesAttachDisk'
instancesAttachDisk' pIadProject_ pIadZone_ pIadPayload_ pIadInstance_ =
    InstancesAttachDisk'
    { _iadQuotaUser = Nothing
    , _iadPrettyPrint = True
    , _iadProject = pIadProject_
    , _iadUserIP = Nothing
    , _iadZone = pIadZone_
    , _iadPayload = pIadPayload_
    , _iadKey = Nothing
    , _iadOAuthToken = Nothing
    , _iadFields = Nothing
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
iadUserIP :: Lens' InstancesAttachDisk' (Maybe Text)
iadUserIP
  = lens _iadUserIP (\ s a -> s{_iadUserIP = a})

-- | The name of the zone for this request.
iadZone :: Lens' InstancesAttachDisk' Text
iadZone = lens _iadZone (\ s a -> s{_iadZone = a})

-- | Multipart request metadata.
iadPayload :: Lens' InstancesAttachDisk' AttachedDisk
iadPayload
  = lens _iadPayload (\ s a -> s{_iadPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
iadKey :: Lens' InstancesAttachDisk' (Maybe Key)
iadKey = lens _iadKey (\ s a -> s{_iadKey = a})

-- | OAuth 2.0 token for the current user.
iadOAuthToken :: Lens' InstancesAttachDisk' (Maybe OAuthToken)
iadOAuthToken
  = lens _iadOAuthToken
      (\ s a -> s{_iadOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
iadFields :: Lens' InstancesAttachDisk' (Maybe Text)
iadFields
  = lens _iadFields (\ s a -> s{_iadFields = a})

-- | Instance name.
iadInstance :: Lens' InstancesAttachDisk' Text
iadInstance
  = lens _iadInstance (\ s a -> s{_iadInstance = a})

instance GoogleAuth InstancesAttachDisk' where
        authKey = iadKey . _Just
        authToken = iadOAuthToken . _Just

instance GoogleRequest InstancesAttachDisk' where
        type Rs InstancesAttachDisk' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u InstancesAttachDisk'{..}
          = go _iadProject _iadZone _iadInstance _iadQuotaUser
              (Just _iadPrettyPrint)
              _iadUserIP
              _iadFields
              _iadKey
              _iadOAuthToken
              (Just AltJSON)
              _iadPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstancesAttachDiskResource)
                      r
                      u
