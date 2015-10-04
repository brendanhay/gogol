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
-- Module      : Network.Google.Resource.Compute.Instances.SetMetadata
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sets metadata for the specified instance to the data included in the
-- request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstancesSetMetadata@.
module Network.Google.Resource.Compute.Instances.SetMetadata
    (
    -- * REST Resource
      InstancesSetMetadataResource

    -- * Creating a Request
    , instancesSetMetadata'
    , InstancesSetMetadata'

    -- * Request Lenses
    , ismQuotaUser
    , ismPrettyPrint
    , ismProject
    , ismUserIP
    , ismZone
    , ismPayload
    , ismKey
    , ismOAuthToken
    , ismFields
    , ismInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstancesSetMetadata@ which the
-- 'InstancesSetMetadata'' request conforms to.
type InstancesSetMetadataResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instances" :>
             Capture "instance" Text :>
               "setMetadata" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] Metadata :>
                                 Post '[JSON] Operation

-- | Sets metadata for the specified instance to the data included in the
-- request.
--
-- /See:/ 'instancesSetMetadata'' smart constructor.
data InstancesSetMetadata' = InstancesSetMetadata'
    { _ismQuotaUser   :: !(Maybe Text)
    , _ismPrettyPrint :: !Bool
    , _ismProject     :: !Text
    , _ismUserIP      :: !(Maybe Text)
    , _ismZone        :: !Text
    , _ismPayload     :: !Metadata
    , _ismKey         :: !(Maybe Key)
    , _ismOAuthToken  :: !(Maybe OAuthToken)
    , _ismFields      :: !(Maybe Text)
    , _ismInstance    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesSetMetadata'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ismQuotaUser'
--
-- * 'ismPrettyPrint'
--
-- * 'ismProject'
--
-- * 'ismUserIP'
--
-- * 'ismZone'
--
-- * 'ismPayload'
--
-- * 'ismKey'
--
-- * 'ismOAuthToken'
--
-- * 'ismFields'
--
-- * 'ismInstance'
instancesSetMetadata'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Metadata -- ^ 'payload'
    -> Text -- ^ 'instance'
    -> InstancesSetMetadata'
instancesSetMetadata' pIsmProject_ pIsmZone_ pIsmPayload_ pIsmInstance_ =
    InstancesSetMetadata'
    { _ismQuotaUser = Nothing
    , _ismPrettyPrint = True
    , _ismProject = pIsmProject_
    , _ismUserIP = Nothing
    , _ismZone = pIsmZone_
    , _ismPayload = pIsmPayload_
    , _ismKey = Nothing
    , _ismOAuthToken = Nothing
    , _ismFields = Nothing
    , _ismInstance = pIsmInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ismQuotaUser :: Lens' InstancesSetMetadata' (Maybe Text)
ismQuotaUser
  = lens _ismQuotaUser (\ s a -> s{_ismQuotaUser = a})

-- | Returns response with indentations and line breaks.
ismPrettyPrint :: Lens' InstancesSetMetadata' Bool
ismPrettyPrint
  = lens _ismPrettyPrint
      (\ s a -> s{_ismPrettyPrint = a})

-- | Project ID for this request.
ismProject :: Lens' InstancesSetMetadata' Text
ismProject
  = lens _ismProject (\ s a -> s{_ismProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ismUserIP :: Lens' InstancesSetMetadata' (Maybe Text)
ismUserIP
  = lens _ismUserIP (\ s a -> s{_ismUserIP = a})

-- | The name of the zone for this request.
ismZone :: Lens' InstancesSetMetadata' Text
ismZone = lens _ismZone (\ s a -> s{_ismZone = a})

-- | Multipart request metadata.
ismPayload :: Lens' InstancesSetMetadata' Metadata
ismPayload
  = lens _ismPayload (\ s a -> s{_ismPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ismKey :: Lens' InstancesSetMetadata' (Maybe Key)
ismKey = lens _ismKey (\ s a -> s{_ismKey = a})

-- | OAuth 2.0 token for the current user.
ismOAuthToken :: Lens' InstancesSetMetadata' (Maybe OAuthToken)
ismOAuthToken
  = lens _ismOAuthToken
      (\ s a -> s{_ismOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ismFields :: Lens' InstancesSetMetadata' (Maybe Text)
ismFields
  = lens _ismFields (\ s a -> s{_ismFields = a})

-- | Name of the instance scoping this request.
ismInstance :: Lens' InstancesSetMetadata' Text
ismInstance
  = lens _ismInstance (\ s a -> s{_ismInstance = a})

instance GoogleAuth InstancesSetMetadata' where
        authKey = ismKey . _Just
        authToken = ismOAuthToken . _Just

instance GoogleRequest InstancesSetMetadata' where
        type Rs InstancesSetMetadata' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u InstancesSetMetadata'{..}
          = go _ismProject _ismZone _ismInstance _ismQuotaUser
              (Just _ismPrettyPrint)
              _ismUserIP
              _ismFields
              _ismKey
              _ismOAuthToken
              (Just AltJSON)
              _ismPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstancesSetMetadataResource)
                      r
                      u
