{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.ReplicaPool.InstanceGroupManagers.SetInstanceTemplate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sets the instance template to use when creating new instances in this
-- group. Existing instances are not affected.
--
-- /See:/ <https://developers.google.com/compute/docs/instance-groups/manager/v1beta2 Google Compute Engine Instance Group Manager API Reference> for @ReplicapoolInstanceGroupManagersSetInstanceTemplate@.
module Network.Google.Resource.ReplicaPool.InstanceGroupManagers.SetInstanceTemplate
    (
    -- * REST Resource
      InstanceGroupManagersSetInstanceTemplateResource

    -- * Creating a Request
    , instanceGroupManagersSetInstanceTemplate'
    , InstanceGroupManagersSetInstanceTemplate'

    -- * Request Lenses
    , igmsitInstanceGroupManagersSetInstanceTemplateRequest
    , igmsitQuotaUser
    , igmsitPrettyPrint
    , igmsitProject
    , igmsitInstanceGroupManager
    , igmsitUserIP
    , igmsitZone
    , igmsitKey
    , igmsitOAuthToken
    , igmsitFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ReplicaPool.Types

-- | A resource alias for @ReplicapoolInstanceGroupManagersSetInstanceTemplate@ which the
-- 'InstanceGroupManagersSetInstanceTemplate'' request conforms to.
type InstanceGroupManagersSetInstanceTemplateResource
     =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instanceGroupManagers" :>
             Capture "instanceGroupManager" Text :>
               "setInstanceTemplate" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON]
                                 InstanceGroupManagersSetInstanceTemplateRequest
                                 :> Post '[JSON] Operation

-- | Sets the instance template to use when creating new instances in this
-- group. Existing instances are not affected.
--
-- /See:/ 'instanceGroupManagersSetInstanceTemplate'' smart constructor.
data InstanceGroupManagersSetInstanceTemplate' = InstanceGroupManagersSetInstanceTemplate'
    { _igmsitInstanceGroupManagersSetInstanceTemplateRequest :: !InstanceGroupManagersSetInstanceTemplateRequest
    , _igmsitQuotaUser                                       :: !(Maybe Text)
    , _igmsitPrettyPrint                                     :: !Bool
    , _igmsitProject                                         :: !Text
    , _igmsitInstanceGroupManager                            :: !Text
    , _igmsitUserIP                                          :: !(Maybe Text)
    , _igmsitZone                                            :: !Text
    , _igmsitKey                                             :: !(Maybe Key)
    , _igmsitOAuthToken                                      :: !(Maybe OAuthToken)
    , _igmsitFields                                          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersSetInstanceTemplate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmsitInstanceGroupManagersSetInstanceTemplateRequest'
--
-- * 'igmsitQuotaUser'
--
-- * 'igmsitPrettyPrint'
--
-- * 'igmsitProject'
--
-- * 'igmsitInstanceGroupManager'
--
-- * 'igmsitUserIP'
--
-- * 'igmsitZone'
--
-- * 'igmsitKey'
--
-- * 'igmsitOAuthToken'
--
-- * 'igmsitFields'
instanceGroupManagersSetInstanceTemplate'
    :: InstanceGroupManagersSetInstanceTemplateRequest -- ^ 'InstanceGroupManagersSetInstanceTemplateRequest'
    -> Text -- ^ 'project'
    -> Text -- ^ 'instanceGroupManager'
    -> Text -- ^ 'zone'
    -> InstanceGroupManagersSetInstanceTemplate'
instanceGroupManagersSetInstanceTemplate' pIgmsitInstanceGroupManagersSetInstanceTemplateRequest_ pIgmsitProject_ pIgmsitInstanceGroupManager_ pIgmsitZone_ =
    InstanceGroupManagersSetInstanceTemplate'
    { _igmsitInstanceGroupManagersSetInstanceTemplateRequest = pIgmsitInstanceGroupManagersSetInstanceTemplateRequest_
    , _igmsitQuotaUser = Nothing
    , _igmsitPrettyPrint = True
    , _igmsitProject = pIgmsitProject_
    , _igmsitInstanceGroupManager = pIgmsitInstanceGroupManager_
    , _igmsitUserIP = Nothing
    , _igmsitZone = pIgmsitZone_
    , _igmsitKey = Nothing
    , _igmsitOAuthToken = Nothing
    , _igmsitFields = Nothing
    }

-- | Multipart request metadata.
igmsitInstanceGroupManagersSetInstanceTemplateRequest :: Lens' InstanceGroupManagersSetInstanceTemplate' InstanceGroupManagersSetInstanceTemplateRequest
igmsitInstanceGroupManagersSetInstanceTemplateRequest
  = lens
      _igmsitInstanceGroupManagersSetInstanceTemplateRequest
      (\ s a ->
         s{_igmsitInstanceGroupManagersSetInstanceTemplateRequest
             = a})

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

-- | The Google Developers Console project name.
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
igmsitUserIP :: Lens' InstanceGroupManagersSetInstanceTemplate' (Maybe Text)
igmsitUserIP
  = lens _igmsitUserIP (\ s a -> s{_igmsitUserIP = a})

-- | The name of the zone in which the instance group manager resides.
igmsitZone :: Lens' InstanceGroupManagersSetInstanceTemplate' Text
igmsitZone
  = lens _igmsitZone (\ s a -> s{_igmsitZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igmsitKey :: Lens' InstanceGroupManagersSetInstanceTemplate' (Maybe Key)
igmsitKey
  = lens _igmsitKey (\ s a -> s{_igmsitKey = a})

-- | OAuth 2.0 token for the current user.
igmsitOAuthToken :: Lens' InstanceGroupManagersSetInstanceTemplate' (Maybe OAuthToken)
igmsitOAuthToken
  = lens _igmsitOAuthToken
      (\ s a -> s{_igmsitOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
igmsitFields :: Lens' InstanceGroupManagersSetInstanceTemplate' (Maybe Text)
igmsitFields
  = lens _igmsitFields (\ s a -> s{_igmsitFields = a})

instance GoogleAuth
         InstanceGroupManagersSetInstanceTemplate' where
        authKey = igmsitKey . _Just
        authToken = igmsitOAuthToken . _Just

instance GoogleRequest
         InstanceGroupManagersSetInstanceTemplate' where
        type Rs InstanceGroupManagersSetInstanceTemplate' =
             Operation
        request = requestWithRoute defReq replicaPoolURL
        requestWithRoute r u
          InstanceGroupManagersSetInstanceTemplate'{..}
          = go _igmsitQuotaUser (Just _igmsitPrettyPrint)
              _igmsitProject
              _igmsitInstanceGroupManager
              _igmsitUserIP
              _igmsitZone
              _igmsitKey
              _igmsitOAuthToken
              _igmsitFields
              (Just AltJSON)
              _igmsitInstanceGroupManagersSetInstanceTemplateRequest
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy
                           InstanceGroupManagersSetInstanceTemplateResource)
                      r
                      u
