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
-- Module      : Network.Google.Resource.Compute.InstanceGroups.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified instance group resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstanceGroupsGet@.
module Network.Google.Resource.Compute.InstanceGroups.Get
    (
    -- * REST Resource
      InstanceGroupsGetResource

    -- * Creating a Request
    , instanceGroupsGet'
    , InstanceGroupsGet'

    -- * Request Lenses
    , iggQuotaUser
    , iggPrettyPrint
    , iggProject
    , iggUserIP
    , iggZone
    , iggKey
    , iggOAuthToken
    , iggInstanceGroup
    , iggFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstanceGroupsGet@ which the
-- 'InstanceGroupsGet'' request conforms to.
type InstanceGroupsGetResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instanceGroups" :>
             Capture "instanceGroup" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Get '[JSON] InstanceGroup

-- | Returns the specified instance group resource.
--
-- /See:/ 'instanceGroupsGet'' smart constructor.
data InstanceGroupsGet' = InstanceGroupsGet'
    { _iggQuotaUser     :: !(Maybe Text)
    , _iggPrettyPrint   :: !Bool
    , _iggProject       :: !Text
    , _iggUserIP        :: !(Maybe Text)
    , _iggZone          :: !Text
    , _iggKey           :: !(Maybe Key)
    , _iggOAuthToken    :: !(Maybe OAuthToken)
    , _iggInstanceGroup :: !Text
    , _iggFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iggQuotaUser'
--
-- * 'iggPrettyPrint'
--
-- * 'iggProject'
--
-- * 'iggUserIP'
--
-- * 'iggZone'
--
-- * 'iggKey'
--
-- * 'iggOAuthToken'
--
-- * 'iggInstanceGroup'
--
-- * 'iggFields'
instanceGroupsGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'instanceGroup'
    -> InstanceGroupsGet'
instanceGroupsGet' pIggProject_ pIggZone_ pIggInstanceGroup_ =
    InstanceGroupsGet'
    { _iggQuotaUser = Nothing
    , _iggPrettyPrint = True
    , _iggProject = pIggProject_
    , _iggUserIP = Nothing
    , _iggZone = pIggZone_
    , _iggKey = Nothing
    , _iggOAuthToken = Nothing
    , _iggInstanceGroup = pIggInstanceGroup_
    , _iggFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
iggQuotaUser :: Lens' InstanceGroupsGet' (Maybe Text)
iggQuotaUser
  = lens _iggQuotaUser (\ s a -> s{_iggQuotaUser = a})

-- | Returns response with indentations and line breaks.
iggPrettyPrint :: Lens' InstanceGroupsGet' Bool
iggPrettyPrint
  = lens _iggPrettyPrint
      (\ s a -> s{_iggPrettyPrint = a})

-- | The project ID for this request.
iggProject :: Lens' InstanceGroupsGet' Text
iggProject
  = lens _iggProject (\ s a -> s{_iggProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
iggUserIP :: Lens' InstanceGroupsGet' (Maybe Text)
iggUserIP
  = lens _iggUserIP (\ s a -> s{_iggUserIP = a})

-- | The URL of the zone where the instance group is located.
iggZone :: Lens' InstanceGroupsGet' Text
iggZone = lens _iggZone (\ s a -> s{_iggZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
iggKey :: Lens' InstanceGroupsGet' (Maybe Key)
iggKey = lens _iggKey (\ s a -> s{_iggKey = a})

-- | OAuth 2.0 token for the current user.
iggOAuthToken :: Lens' InstanceGroupsGet' (Maybe OAuthToken)
iggOAuthToken
  = lens _iggOAuthToken
      (\ s a -> s{_iggOAuthToken = a})

-- | The name of the instance group.
iggInstanceGroup :: Lens' InstanceGroupsGet' Text
iggInstanceGroup
  = lens _iggInstanceGroup
      (\ s a -> s{_iggInstanceGroup = a})

-- | Selector specifying which fields to include in a partial response.
iggFields :: Lens' InstanceGroupsGet' (Maybe Text)
iggFields
  = lens _iggFields (\ s a -> s{_iggFields = a})

instance GoogleAuth InstanceGroupsGet' where
        authKey = iggKey . _Just
        authToken = iggOAuthToken . _Just

instance GoogleRequest InstanceGroupsGet' where
        type Rs InstanceGroupsGet' = InstanceGroup
        request = requestWithRoute defReq computeURL
        requestWithRoute r u InstanceGroupsGet'{..}
          = go _iggProject _iggZone _iggInstanceGroup
              _iggQuotaUser
              (Just _iggPrettyPrint)
              _iggUserIP
              _iggFields
              _iggKey
              _iggOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstanceGroupsGetResource)
                      r
                      u
