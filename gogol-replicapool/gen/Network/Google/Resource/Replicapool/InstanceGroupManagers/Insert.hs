{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Replicapool.InstanceGroupManagers.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates an instance group manager, as well as the instance group and the
-- specified number of instances.
--
-- /See:/ <https://developers.google.com/compute/docs/instance-groups/manager/v1beta2 Google Compute Engine Instance Group Manager API Reference> for @ReplicapoolInstanceGroupManagersInsert@.
module Replicapool.InstanceGroupManagers.Insert
    (
    -- * REST Resource
      InstanceGroupManagersInsertAPI

    -- * Creating a Request
    , instanceGroupManagersInsert
    , InstanceGroupManagersInsert

    -- * Request Lenses
    , igmiQuotaUser
    , igmiPrettyPrint
    , igmiProject
    , igmiSize
    , igmiUserIp
    , igmiZone
    , igmiKey
    , igmiOauthToken
    , igmiFields
    , igmiAlt
    ) where

import           Network.Google.InstanceGroupsManager.Types
import           Network.Google.Prelude

-- | A resource alias for @ReplicapoolInstanceGroupManagersInsert@ which the
-- 'InstanceGroupManagersInsert' request conforms to.
type InstanceGroupManagersInsertAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instanceGroupManagers" :>
             QueryParam "size" Int32 :> Post '[JSON] Operation

-- | Creates an instance group manager, as well as the instance group and the
-- specified number of instances.
--
-- /See:/ 'instanceGroupManagersInsert' smart constructor.
data InstanceGroupManagersInsert = InstanceGroupManagersInsert
    { _igmiQuotaUser   :: !(Maybe Text)
    , _igmiPrettyPrint :: !Bool
    , _igmiProject     :: !Text
    , _igmiSize        :: !Int32
    , _igmiUserIp      :: !(Maybe Text)
    , _igmiZone        :: !Text
    , _igmiKey         :: !(Maybe Text)
    , _igmiOauthToken  :: !(Maybe Text)
    , _igmiFields      :: !(Maybe Text)
    , _igmiAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmiQuotaUser'
--
-- * 'igmiPrettyPrint'
--
-- * 'igmiProject'
--
-- * 'igmiSize'
--
-- * 'igmiUserIp'
--
-- * 'igmiZone'
--
-- * 'igmiKey'
--
-- * 'igmiOauthToken'
--
-- * 'igmiFields'
--
-- * 'igmiAlt'
instanceGroupManagersInsert
    :: Text -- ^ 'project'
    -> Int32 -- ^ 'size'
    -> Text -- ^ 'zone'
    -> InstanceGroupManagersInsert
instanceGroupManagersInsert pIgmiProject_ pIgmiSize_ pIgmiZone_ =
    InstanceGroupManagersInsert
    { _igmiQuotaUser = Nothing
    , _igmiPrettyPrint = True
    , _igmiProject = pIgmiProject_
    , _igmiSize = pIgmiSize_
    , _igmiUserIp = Nothing
    , _igmiZone = pIgmiZone_
    , _igmiKey = Nothing
    , _igmiOauthToken = Nothing
    , _igmiFields = Nothing
    , _igmiAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
igmiQuotaUser :: Lens' InstanceGroupManagersInsert' (Maybe Text)
igmiQuotaUser
  = lens _igmiQuotaUser
      (\ s a -> s{_igmiQuotaUser = a})

-- | Returns response with indentations and line breaks.
igmiPrettyPrint :: Lens' InstanceGroupManagersInsert' Bool
igmiPrettyPrint
  = lens _igmiPrettyPrint
      (\ s a -> s{_igmiPrettyPrint = a})

-- | The Google Developers Console project name.
igmiProject :: Lens' InstanceGroupManagersInsert' Text
igmiProject
  = lens _igmiProject (\ s a -> s{_igmiProject = a})

-- | Number of instances that should exist.
igmiSize :: Lens' InstanceGroupManagersInsert' Int32
igmiSize = lens _igmiSize (\ s a -> s{_igmiSize = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
igmiUserIp :: Lens' InstanceGroupManagersInsert' (Maybe Text)
igmiUserIp
  = lens _igmiUserIp (\ s a -> s{_igmiUserIp = a})

-- | The name of the zone in which the instance group manager resides.
igmiZone :: Lens' InstanceGroupManagersInsert' Text
igmiZone = lens _igmiZone (\ s a -> s{_igmiZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igmiKey :: Lens' InstanceGroupManagersInsert' (Maybe Text)
igmiKey = lens _igmiKey (\ s a -> s{_igmiKey = a})

-- | OAuth 2.0 token for the current user.
igmiOauthToken :: Lens' InstanceGroupManagersInsert' (Maybe Text)
igmiOauthToken
  = lens _igmiOauthToken
      (\ s a -> s{_igmiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
igmiFields :: Lens' InstanceGroupManagersInsert' (Maybe Text)
igmiFields
  = lens _igmiFields (\ s a -> s{_igmiFields = a})

-- | Data format for the response.
igmiAlt :: Lens' InstanceGroupManagersInsert' Text
igmiAlt = lens _igmiAlt (\ s a -> s{_igmiAlt = a})

instance GoogleRequest InstanceGroupManagersInsert'
         where
        type Rs InstanceGroupManagersInsert' = Operation
        request
          = requestWithRoute defReq instanceGroupsManagerURL
        requestWithRoute r u InstanceGroupManagersInsert{..}
          = go _igmiQuotaUser _igmiPrettyPrint _igmiProject
              (Just _igmiSize)
              _igmiUserIp
              _igmiZone
              _igmiKey
              _igmiOauthToken
              _igmiFields
              _igmiAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstanceGroupManagersInsertAPI)
                      r
                      u
