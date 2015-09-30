{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.InstanceGroupManagers.SetInstanceTemplate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Specifies the instance template to use when creating new instances in
-- this group. The templates for existing instances in the group do not
-- change unless you recreate them.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstanceGroupManagersSetInstanceTemplate@.
module Compute.InstanceGroupManagers.SetInstanceTemplate
    (
    -- * REST Resource
      InstanceGroupManagersSetInstanceTemplateAPI

    -- * Creating a Request
    , instanceGroupManagersSetInstanceTemplate
    , InstanceGroupManagersSetInstanceTemplate

    -- * Request Lenses
    , igmsitQuotaUser
    , igmsitPrettyPrint
    , igmsitProject
    , igmsitInstanceGroupManager
    , igmsitUserIp
    , igmsitZone
    , igmsitKey
    , igmsitOauthToken
    , igmsitFields
    , igmsitAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstanceGroupManagersSetInstanceTemplate@ which the
-- 'InstanceGroupManagersSetInstanceTemplate' request conforms to.
type InstanceGroupManagersSetInstanceTemplateAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instanceGroupManagers" :>
             Capture "instanceGroupManager" Text :>
               "setInstanceTemplate" :> Post '[JSON] Operation

-- | Specifies the instance template to use when creating new instances in
-- this group. The templates for existing instances in the group do not
-- change unless you recreate them.
--
-- /See:/ 'instanceGroupManagersSetInstanceTemplate' smart constructor.
data InstanceGroupManagersSetInstanceTemplate = InstanceGroupManagersSetInstanceTemplate
    { _igmsitQuotaUser            :: !(Maybe Text)
    , _igmsitPrettyPrint          :: !Bool
    , _igmsitProject              :: !Text
    , _igmsitInstanceGroupManager :: !Text
    , _igmsitUserIp               :: !(Maybe Text)
    , _igmsitZone                 :: !Text
    , _igmsitKey                  :: !(Maybe Text)
    , _igmsitOauthToken           :: !(Maybe Text)
    , _igmsitFields               :: !(Maybe Text)
    , _igmsitAlt                  :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersSetInstanceTemplate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmsitQuotaUser'
--
-- * 'igmsitPrettyPrint'
--
-- * 'igmsitProject'
--
-- * 'igmsitInstanceGroupManager'
--
-- * 'igmsitUserIp'
--
-- * 'igmsitZone'
--
-- * 'igmsitKey'
--
-- * 'igmsitOauthToken'
--
-- * 'igmsitFields'
--
-- * 'igmsitAlt'
instanceGroupManagersSetInstanceTemplate
    :: Text -- ^ 'project'
    -> Text -- ^ 'instanceGroupManager'
    -> Text -- ^ 'zone'
    -> InstanceGroupManagersSetInstanceTemplate
instanceGroupManagersSetInstanceTemplate pIgmsitProject_ pIgmsitInstanceGroupManager_ pIgmsitZone_ =
    InstanceGroupManagersSetInstanceTemplate
    { _igmsitQuotaUser = Nothing
    , _igmsitPrettyPrint = True
    , _igmsitProject = pIgmsitProject_
    , _igmsitInstanceGroupManager = pIgmsitInstanceGroupManager_
    , _igmsitUserIp = Nothing
    , _igmsitZone = pIgmsitZone_
    , _igmsitKey = Nothing
    , _igmsitOauthToken = Nothing
    , _igmsitFields = Nothing
    , _igmsitAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
igmsitQuotaUser :: Lens' InstanceGroupManagersSetInstanceTemplate' (Maybe Text)
igmsitQuotaUser
  = lens _igmsitQuotaUser
      (\ s a -> s{_igmsitQuotaUser = a})

-- | Returns response with indentations and line breaks.
igmsitPrettyPrint :: Lens' InstanceGroupManagersSetInstanceTemplate' Bool
igmsitPrettyPrint
  = lens _igmsitPrettyPrint
      (\ s a -> s{_igmsitPrettyPrint = a})

-- | The project ID for this request.
igmsitProject :: Lens' InstanceGroupManagersSetInstanceTemplate' Text
igmsitProject
  = lens _igmsitProject
      (\ s a -> s{_igmsitProject = a})

-- | The name of the instance group manager.
igmsitInstanceGroupManager :: Lens' InstanceGroupManagersSetInstanceTemplate' Text
igmsitInstanceGroupManager
  = lens _igmsitInstanceGroupManager
      (\ s a -> s{_igmsitInstanceGroupManager = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
igmsitUserIp :: Lens' InstanceGroupManagersSetInstanceTemplate' (Maybe Text)
igmsitUserIp
  = lens _igmsitUserIp (\ s a -> s{_igmsitUserIp = a})

-- | The URL of the zone where the managed instance group is located.
igmsitZone :: Lens' InstanceGroupManagersSetInstanceTemplate' Text
igmsitZone
  = lens _igmsitZone (\ s a -> s{_igmsitZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igmsitKey :: Lens' InstanceGroupManagersSetInstanceTemplate' (Maybe Text)
igmsitKey
  = lens _igmsitKey (\ s a -> s{_igmsitKey = a})

-- | OAuth 2.0 token for the current user.
igmsitOauthToken :: Lens' InstanceGroupManagersSetInstanceTemplate' (Maybe Text)
igmsitOauthToken
  = lens _igmsitOauthToken
      (\ s a -> s{_igmsitOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
igmsitFields :: Lens' InstanceGroupManagersSetInstanceTemplate' (Maybe Text)
igmsitFields
  = lens _igmsitFields (\ s a -> s{_igmsitFields = a})

-- | Data format for the response.
igmsitAlt :: Lens' InstanceGroupManagersSetInstanceTemplate' Text
igmsitAlt
  = lens _igmsitAlt (\ s a -> s{_igmsitAlt = a})

instance GoogleRequest
         InstanceGroupManagersSetInstanceTemplate' where
        type Rs InstanceGroupManagersSetInstanceTemplate' =
             Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u
          InstanceGroupManagersSetInstanceTemplate{..}
          = go _igmsitQuotaUser _igmsitPrettyPrint
              _igmsitProject
              _igmsitInstanceGroupManager
              _igmsitUserIp
              _igmsitZone
              _igmsitKey
              _igmsitOauthToken
              _igmsitFields
              _igmsitAlt
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy InstanceGroupManagersSetInstanceTemplateAPI)
                      r
                      u
