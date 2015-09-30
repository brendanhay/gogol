{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.Instances.SetTags
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sets tags for the specified instance to the data included in the
-- request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstancesSetTags@.
module Compute.Instances.SetTags
    (
    -- * REST Resource
      InstancesSetTagsAPI

    -- * Creating a Request
    , instancesSetTags
    , InstancesSetTags

    -- * Request Lenses
    , istQuotaUser
    , istPrettyPrint
    , istProject
    , istUserIp
    , istZone
    , istKey
    , istOauthToken
    , istFields
    , istAlt
    , istInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstancesSetTags@ which the
-- 'InstancesSetTags' request conforms to.
type InstancesSetTagsAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instances" :>
             Capture "instance" Text :>
               "setTags" :> Post '[JSON] Operation

-- | Sets tags for the specified instance to the data included in the
-- request.
--
-- /See:/ 'instancesSetTags' smart constructor.
data InstancesSetTags = InstancesSetTags
    { _istQuotaUser   :: !(Maybe Text)
    , _istPrettyPrint :: !Bool
    , _istProject     :: !Text
    , _istUserIp      :: !(Maybe Text)
    , _istZone        :: !Text
    , _istKey         :: !(Maybe Text)
    , _istOauthToken  :: !(Maybe Text)
    , _istFields      :: !(Maybe Text)
    , _istAlt         :: !Text
    , _istInstance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesSetTags'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'istQuotaUser'
--
-- * 'istPrettyPrint'
--
-- * 'istProject'
--
-- * 'istUserIp'
--
-- * 'istZone'
--
-- * 'istKey'
--
-- * 'istOauthToken'
--
-- * 'istFields'
--
-- * 'istAlt'
--
-- * 'istInstance'
instancesSetTags
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'instance'
    -> InstancesSetTags
instancesSetTags pIstProject_ pIstZone_ pIstInstance_ =
    InstancesSetTags
    { _istQuotaUser = Nothing
    , _istPrettyPrint = True
    , _istProject = pIstProject_
    , _istUserIp = Nothing
    , _istZone = pIstZone_
    , _istKey = Nothing
    , _istOauthToken = Nothing
    , _istFields = Nothing
    , _istAlt = "json"
    , _istInstance = pIstInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
istQuotaUser :: Lens' InstancesSetTags' (Maybe Text)
istQuotaUser
  = lens _istQuotaUser (\ s a -> s{_istQuotaUser = a})

-- | Returns response with indentations and line breaks.
istPrettyPrint :: Lens' InstancesSetTags' Bool
istPrettyPrint
  = lens _istPrettyPrint
      (\ s a -> s{_istPrettyPrint = a})

-- | Project ID for this request.
istProject :: Lens' InstancesSetTags' Text
istProject
  = lens _istProject (\ s a -> s{_istProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
istUserIp :: Lens' InstancesSetTags' (Maybe Text)
istUserIp
  = lens _istUserIp (\ s a -> s{_istUserIp = a})

-- | The name of the zone for this request.
istZone :: Lens' InstancesSetTags' Text
istZone = lens _istZone (\ s a -> s{_istZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
istKey :: Lens' InstancesSetTags' (Maybe Text)
istKey = lens _istKey (\ s a -> s{_istKey = a})

-- | OAuth 2.0 token for the current user.
istOauthToken :: Lens' InstancesSetTags' (Maybe Text)
istOauthToken
  = lens _istOauthToken
      (\ s a -> s{_istOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
istFields :: Lens' InstancesSetTags' (Maybe Text)
istFields
  = lens _istFields (\ s a -> s{_istFields = a})

-- | Data format for the response.
istAlt :: Lens' InstancesSetTags' Text
istAlt = lens _istAlt (\ s a -> s{_istAlt = a})

-- | Name of the instance scoping this request.
istInstance :: Lens' InstancesSetTags' Text
istInstance
  = lens _istInstance (\ s a -> s{_istInstance = a})

instance GoogleRequest InstancesSetTags' where
        type Rs InstancesSetTags' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u InstancesSetTags{..}
          = go _istQuotaUser _istPrettyPrint _istProject
              _istUserIp
              _istZone
              _istKey
              _istOauthToken
              _istFields
              _istAlt
              _istInstance
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstancesSetTagsAPI)
                      r
                      u
