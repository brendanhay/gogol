{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.Instances.SetMetadata
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sets metadata for the specified instance to the data included in the
-- request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.setMetadata@.
module Network.Google.API.Compute.Instances.SetMetadata
    (
    -- * REST Resource
      InstancesSetMetadataAPI

    -- * Creating a Request
    , instancesSetMetadata'
    , InstancesSetMetadata'

    -- * Request Lenses
    , ismQuotaUser
    , ismPrettyPrint
    , ismProject
    , ismUserIp
    , ismZone
    , ismKey
    , ismOauthToken
    , ismFields
    , ismAlt
    , ismInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.instances.setMetadata which the
-- 'InstancesSetMetadata'' request conforms to.
type InstancesSetMetadataAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instances" :>
             Capture "instance" Text :>
               "setMetadata" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Sets metadata for the specified instance to the data included in the
-- request.
--
-- /See:/ 'instancesSetMetadata'' smart constructor.
data InstancesSetMetadata' = InstancesSetMetadata'
    { _ismQuotaUser   :: !(Maybe Text)
    , _ismPrettyPrint :: !Bool
    , _ismProject     :: !Text
    , _ismUserIp      :: !(Maybe Text)
    , _ismZone        :: !Text
    , _ismKey         :: !(Maybe Text)
    , _ismOauthToken  :: !(Maybe Text)
    , _ismFields      :: !(Maybe Text)
    , _ismAlt         :: !Alt
    , _ismInstance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'ismUserIp'
--
-- * 'ismZone'
--
-- * 'ismKey'
--
-- * 'ismOauthToken'
--
-- * 'ismFields'
--
-- * 'ismAlt'
--
-- * 'ismInstance'
instancesSetMetadata'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'instance'
    -> InstancesSetMetadata'
instancesSetMetadata' pIsmProject_ pIsmZone_ pIsmInstance_ =
    InstancesSetMetadata'
    { _ismQuotaUser = Nothing
    , _ismPrettyPrint = True
    , _ismProject = pIsmProject_
    , _ismUserIp = Nothing
    , _ismZone = pIsmZone_
    , _ismKey = Nothing
    , _ismOauthToken = Nothing
    , _ismFields = Nothing
    , _ismAlt = JSON
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
ismUserIp :: Lens' InstancesSetMetadata' (Maybe Text)
ismUserIp
  = lens _ismUserIp (\ s a -> s{_ismUserIp = a})

-- | The name of the zone for this request.
ismZone :: Lens' InstancesSetMetadata' Text
ismZone = lens _ismZone (\ s a -> s{_ismZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ismKey :: Lens' InstancesSetMetadata' (Maybe Text)
ismKey = lens _ismKey (\ s a -> s{_ismKey = a})

-- | OAuth 2.0 token for the current user.
ismOauthToken :: Lens' InstancesSetMetadata' (Maybe Text)
ismOauthToken
  = lens _ismOauthToken
      (\ s a -> s{_ismOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ismFields :: Lens' InstancesSetMetadata' (Maybe Text)
ismFields
  = lens _ismFields (\ s a -> s{_ismFields = a})

-- | Data format for the response.
ismAlt :: Lens' InstancesSetMetadata' Alt
ismAlt = lens _ismAlt (\ s a -> s{_ismAlt = a})

-- | Name of the instance scoping this request.
ismInstance :: Lens' InstancesSetMetadata' Text
ismInstance
  = lens _ismInstance (\ s a -> s{_ismInstance = a})

instance GoogleRequest InstancesSetMetadata' where
        type Rs InstancesSetMetadata' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u InstancesSetMetadata'{..}
          = go _ismQuotaUser (Just _ismPrettyPrint) _ismProject
              _ismUserIp
              _ismZone
              _ismKey
              _ismOauthToken
              _ismFields
              (Just _ismAlt)
              _ismInstance
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstancesSetMetadataAPI)
                      r
                      u
