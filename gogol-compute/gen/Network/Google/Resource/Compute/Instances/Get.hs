{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.Instances.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified instance resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstancesGet@.
module Compute.Instances.Get
    (
    -- * REST Resource
      InstancesGetAPI

    -- * Creating a Request
    , instancesGet
    , InstancesGet

    -- * Request Lenses
    , iggQuotaUser
    , iggPrettyPrint
    , iggProject
    , iggUserIp
    , iggZone
    , iggKey
    , iggOauthToken
    , iggFields
    , iggAlt
    , iggInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstancesGet@ which the
-- 'InstancesGet' request conforms to.
type InstancesGetAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instances" :>
             Capture "instance" Text :> Get '[JSON] Instance

-- | Returns the specified instance resource.
--
-- /See:/ 'instancesGet' smart constructor.
data InstancesGet = InstancesGet
    { _iggQuotaUser   :: !(Maybe Text)
    , _iggPrettyPrint :: !Bool
    , _iggProject     :: !Text
    , _iggUserIp      :: !(Maybe Text)
    , _iggZone        :: !Text
    , _iggKey         :: !(Maybe Text)
    , _iggOauthToken  :: !(Maybe Text)
    , _iggFields      :: !(Maybe Text)
    , _iggAlt         :: !Text
    , _iggInstance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iggQuotaUser'
--
-- * 'iggPrettyPrint'
--
-- * 'iggProject'
--
-- * 'iggUserIp'
--
-- * 'iggZone'
--
-- * 'iggKey'
--
-- * 'iggOauthToken'
--
-- * 'iggFields'
--
-- * 'iggAlt'
--
-- * 'iggInstance'
instancesGet
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'instance'
    -> InstancesGet
instancesGet pIggProject_ pIggZone_ pIggInstance_ =
    InstancesGet
    { _iggQuotaUser = Nothing
    , _iggPrettyPrint = True
    , _iggProject = pIggProject_
    , _iggUserIp = Nothing
    , _iggZone = pIggZone_
    , _iggKey = Nothing
    , _iggOauthToken = Nothing
    , _iggFields = Nothing
    , _iggAlt = "json"
    , _iggInstance = pIggInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
iggQuotaUser :: Lens' InstancesGet' (Maybe Text)
iggQuotaUser
  = lens _iggQuotaUser (\ s a -> s{_iggQuotaUser = a})

-- | Returns response with indentations and line breaks.
iggPrettyPrint :: Lens' InstancesGet' Bool
iggPrettyPrint
  = lens _iggPrettyPrint
      (\ s a -> s{_iggPrettyPrint = a})

-- | Project ID for this request.
iggProject :: Lens' InstancesGet' Text
iggProject
  = lens _iggProject (\ s a -> s{_iggProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
iggUserIp :: Lens' InstancesGet' (Maybe Text)
iggUserIp
  = lens _iggUserIp (\ s a -> s{_iggUserIp = a})

-- | The name of the zone for this request.
iggZone :: Lens' InstancesGet' Text
iggZone = lens _iggZone (\ s a -> s{_iggZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
iggKey :: Lens' InstancesGet' (Maybe Text)
iggKey = lens _iggKey (\ s a -> s{_iggKey = a})

-- | OAuth 2.0 token for the current user.
iggOauthToken :: Lens' InstancesGet' (Maybe Text)
iggOauthToken
  = lens _iggOauthToken
      (\ s a -> s{_iggOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
iggFields :: Lens' InstancesGet' (Maybe Text)
iggFields
  = lens _iggFields (\ s a -> s{_iggFields = a})

-- | Data format for the response.
iggAlt :: Lens' InstancesGet' Text
iggAlt = lens _iggAlt (\ s a -> s{_iggAlt = a})

-- | Name of the instance resource to return.
iggInstance :: Lens' InstancesGet' Text
iggInstance
  = lens _iggInstance (\ s a -> s{_iggInstance = a})

instance GoogleRequest InstancesGet' where
        type Rs InstancesGet' = Instance
        request = requestWithRoute defReq computeURL
        requestWithRoute r u InstancesGet{..}
          = go _iggQuotaUser _iggPrettyPrint _iggProject
              _iggUserIp
              _iggZone
              _iggKey
              _iggOauthToken
              _iggFields
              _iggAlt
              _iggInstance
          where go
                  = clientWithRoute (Proxy :: Proxy InstancesGetAPI) r
                      u
