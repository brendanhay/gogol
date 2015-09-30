{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.Autoscalers.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified autoscaler resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeAutoscalersGet@.
module Compute.Autoscalers.Get
    (
    -- * REST Resource
      AutoscalersGetAPI

    -- * Creating a Request
    , autoscalersGet
    , AutoscalersGet

    -- * Request Lenses
    , aggQuotaUser
    , aggPrettyPrint
    , aggProject
    , aggUserIp
    , aggZone
    , aggKey
    , aggAutoscaler
    , aggOauthToken
    , aggFields
    , aggAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeAutoscalersGet@ which the
-- 'AutoscalersGet' request conforms to.
type AutoscalersGetAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "autoscalers" :>
             Capture "autoscaler" Text :> Get '[JSON] Autoscaler

-- | Returns the specified autoscaler resource.
--
-- /See:/ 'autoscalersGet' smart constructor.
data AutoscalersGet = AutoscalersGet
    { _aggQuotaUser   :: !(Maybe Text)
    , _aggPrettyPrint :: !Bool
    , _aggProject     :: !Text
    , _aggUserIp      :: !(Maybe Text)
    , _aggZone        :: !Text
    , _aggKey         :: !(Maybe Text)
    , _aggAutoscaler  :: !Text
    , _aggOauthToken  :: !(Maybe Text)
    , _aggFields      :: !(Maybe Text)
    , _aggAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aggQuotaUser'
--
-- * 'aggPrettyPrint'
--
-- * 'aggProject'
--
-- * 'aggUserIp'
--
-- * 'aggZone'
--
-- * 'aggKey'
--
-- * 'aggAutoscaler'
--
-- * 'aggOauthToken'
--
-- * 'aggFields'
--
-- * 'aggAlt'
autoscalersGet
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'autoscaler'
    -> AutoscalersGet
autoscalersGet pAggProject_ pAggZone_ pAggAutoscaler_ =
    AutoscalersGet
    { _aggQuotaUser = Nothing
    , _aggPrettyPrint = True
    , _aggProject = pAggProject_
    , _aggUserIp = Nothing
    , _aggZone = pAggZone_
    , _aggKey = Nothing
    , _aggAutoscaler = pAggAutoscaler_
    , _aggOauthToken = Nothing
    , _aggFields = Nothing
    , _aggAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aggQuotaUser :: Lens' AutoscalersGet' (Maybe Text)
aggQuotaUser
  = lens _aggQuotaUser (\ s a -> s{_aggQuotaUser = a})

-- | Returns response with indentations and line breaks.
aggPrettyPrint :: Lens' AutoscalersGet' Bool
aggPrettyPrint
  = lens _aggPrettyPrint
      (\ s a -> s{_aggPrettyPrint = a})

-- | Name of the project scoping this request.
aggProject :: Lens' AutoscalersGet' Text
aggProject
  = lens _aggProject (\ s a -> s{_aggProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aggUserIp :: Lens' AutoscalersGet' (Maybe Text)
aggUserIp
  = lens _aggUserIp (\ s a -> s{_aggUserIp = a})

-- | Name of the zone scoping this request.
aggZone :: Lens' AutoscalersGet' Text
aggZone = lens _aggZone (\ s a -> s{_aggZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aggKey :: Lens' AutoscalersGet' (Maybe Text)
aggKey = lens _aggKey (\ s a -> s{_aggKey = a})

-- | Name of the persistent autoscaler resource to return.
aggAutoscaler :: Lens' AutoscalersGet' Text
aggAutoscaler
  = lens _aggAutoscaler
      (\ s a -> s{_aggAutoscaler = a})

-- | OAuth 2.0 token for the current user.
aggOauthToken :: Lens' AutoscalersGet' (Maybe Text)
aggOauthToken
  = lens _aggOauthToken
      (\ s a -> s{_aggOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aggFields :: Lens' AutoscalersGet' (Maybe Text)
aggFields
  = lens _aggFields (\ s a -> s{_aggFields = a})

-- | Data format for the response.
aggAlt :: Lens' AutoscalersGet' Text
aggAlt = lens _aggAlt (\ s a -> s{_aggAlt = a})

instance GoogleRequest AutoscalersGet' where
        type Rs AutoscalersGet' = Autoscaler
        request = requestWithRoute defReq computeURL
        requestWithRoute r u AutoscalersGet{..}
          = go _aggQuotaUser _aggPrettyPrint _aggProject
              _aggUserIp
              _aggZone
              _aggKey
              _aggAutoscaler
              _aggOauthToken
              _aggFields
              _aggAlt
          where go
                  = clientWithRoute (Proxy :: Proxy AutoscalersGetAPI)
                      r
                      u
