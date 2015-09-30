{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.Instances.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates an instance resource in the specified project using the data
-- included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstancesInsert@.
module Compute.Instances.Insert
    (
    -- * REST Resource
      InstancesInsertAPI

    -- * Creating a Request
    , instancesInsert
    , InstancesInsert

    -- * Request Lenses
    , insQuotaUser
    , insPrettyPrint
    , insProject
    , insUserIp
    , insZone
    , insKey
    , insOauthToken
    , insFields
    , insAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstancesInsert@ which the
-- 'InstancesInsert' request conforms to.
type InstancesInsertAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instances" :> Post '[JSON] Operation

-- | Creates an instance resource in the specified project using the data
-- included in the request.
--
-- /See:/ 'instancesInsert' smart constructor.
data InstancesInsert = InstancesInsert
    { _insQuotaUser   :: !(Maybe Text)
    , _insPrettyPrint :: !Bool
    , _insProject     :: !Text
    , _insUserIp      :: !(Maybe Text)
    , _insZone        :: !Text
    , _insKey         :: !(Maybe Text)
    , _insOauthToken  :: !(Maybe Text)
    , _insFields      :: !(Maybe Text)
    , _insAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'insQuotaUser'
--
-- * 'insPrettyPrint'
--
-- * 'insProject'
--
-- * 'insUserIp'
--
-- * 'insZone'
--
-- * 'insKey'
--
-- * 'insOauthToken'
--
-- * 'insFields'
--
-- * 'insAlt'
instancesInsert
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> InstancesInsert
instancesInsert pInsProject_ pInsZone_ =
    InstancesInsert
    { _insQuotaUser = Nothing
    , _insPrettyPrint = True
    , _insProject = pInsProject_
    , _insUserIp = Nothing
    , _insZone = pInsZone_
    , _insKey = Nothing
    , _insOauthToken = Nothing
    , _insFields = Nothing
    , _insAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
insQuotaUser :: Lens' InstancesInsert' (Maybe Text)
insQuotaUser
  = lens _insQuotaUser (\ s a -> s{_insQuotaUser = a})

-- | Returns response with indentations and line breaks.
insPrettyPrint :: Lens' InstancesInsert' Bool
insPrettyPrint
  = lens _insPrettyPrint
      (\ s a -> s{_insPrettyPrint = a})

-- | Project ID for this request.
insProject :: Lens' InstancesInsert' Text
insProject
  = lens _insProject (\ s a -> s{_insProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
insUserIp :: Lens' InstancesInsert' (Maybe Text)
insUserIp
  = lens _insUserIp (\ s a -> s{_insUserIp = a})

-- | The name of the zone for this request.
insZone :: Lens' InstancesInsert' Text
insZone = lens _insZone (\ s a -> s{_insZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
insKey :: Lens' InstancesInsert' (Maybe Text)
insKey = lens _insKey (\ s a -> s{_insKey = a})

-- | OAuth 2.0 token for the current user.
insOauthToken :: Lens' InstancesInsert' (Maybe Text)
insOauthToken
  = lens _insOauthToken
      (\ s a -> s{_insOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
insFields :: Lens' InstancesInsert' (Maybe Text)
insFields
  = lens _insFields (\ s a -> s{_insFields = a})

-- | Data format for the response.
insAlt :: Lens' InstancesInsert' Text
insAlt = lens _insAlt (\ s a -> s{_insAlt = a})

instance GoogleRequest InstancesInsert' where
        type Rs InstancesInsert' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u InstancesInsert{..}
          = go _insQuotaUser _insPrettyPrint _insProject
              _insUserIp
              _insZone
              _insKey
              _insOauthToken
              _insFields
              _insAlt
          where go
                  = clientWithRoute (Proxy :: Proxy InstancesInsertAPI)
                      r
                      u
