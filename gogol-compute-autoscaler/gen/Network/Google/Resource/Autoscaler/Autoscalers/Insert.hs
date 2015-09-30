{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Autoscaler.Autoscalers.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds new Autoscaler resource.
--
-- /See:/ <http://developers.google.com/compute/docs/autoscaler Google Compute Engine Autoscaler API Reference> for @AutoscalerAutoscalersInsert@.
module Autoscaler.Autoscalers.Insert
    (
    -- * REST Resource
      AutoscalersInsertAPI

    -- * Creating a Request
    , autoscalersInsert
    , AutoscalersInsert

    -- * Request Lenses
    , aiQuotaUser
    , aiPrettyPrint
    , aiProject
    , aiUserIp
    , aiZone
    , aiKey
    , aiOauthToken
    , aiFields
    , aiAlt
    ) where

import           Network.Google.ComputeAutoscaler.Types
import           Network.Google.Prelude

-- | A resource alias for @AutoscalerAutoscalersInsert@ which the
-- 'AutoscalersInsert' request conforms to.
type AutoscalersInsertAPI =
     "projects" :>
       Capture "project" Text :>
         "zones" :>
           Capture "zone" Text :>
             "autoscalers" :> Post '[JSON] Operation

-- | Adds new Autoscaler resource.
--
-- /See:/ 'autoscalersInsert' smart constructor.
data AutoscalersInsert = AutoscalersInsert
    { _aiQuotaUser   :: !(Maybe Text)
    , _aiPrettyPrint :: !Bool
    , _aiProject     :: !Text
    , _aiUserIp      :: !(Maybe Text)
    , _aiZone        :: !Text
    , _aiKey         :: !(Maybe Text)
    , _aiOauthToken  :: !(Maybe Text)
    , _aiFields      :: !(Maybe Text)
    , _aiAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalersInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiQuotaUser'
--
-- * 'aiPrettyPrint'
--
-- * 'aiProject'
--
-- * 'aiUserIp'
--
-- * 'aiZone'
--
-- * 'aiKey'
--
-- * 'aiOauthToken'
--
-- * 'aiFields'
--
-- * 'aiAlt'
autoscalersInsert
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> AutoscalersInsert
autoscalersInsert pAiProject_ pAiZone_ =
    AutoscalersInsert
    { _aiQuotaUser = Nothing
    , _aiPrettyPrint = True
    , _aiProject = pAiProject_
    , _aiUserIp = Nothing
    , _aiZone = pAiZone_
    , _aiKey = Nothing
    , _aiOauthToken = Nothing
    , _aiFields = Nothing
    , _aiAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aiQuotaUser :: Lens' AutoscalersInsert' (Maybe Text)
aiQuotaUser
  = lens _aiQuotaUser (\ s a -> s{_aiQuotaUser = a})

-- | Returns response with indentations and line breaks.
aiPrettyPrint :: Lens' AutoscalersInsert' Bool
aiPrettyPrint
  = lens _aiPrettyPrint
      (\ s a -> s{_aiPrettyPrint = a})

-- | Project ID of Autoscaler resource.
aiProject :: Lens' AutoscalersInsert' Text
aiProject
  = lens _aiProject (\ s a -> s{_aiProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aiUserIp :: Lens' AutoscalersInsert' (Maybe Text)
aiUserIp = lens _aiUserIp (\ s a -> s{_aiUserIp = a})

-- | Zone name of Autoscaler resource.
aiZone :: Lens' AutoscalersInsert' Text
aiZone = lens _aiZone (\ s a -> s{_aiZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aiKey :: Lens' AutoscalersInsert' (Maybe Text)
aiKey = lens _aiKey (\ s a -> s{_aiKey = a})

-- | OAuth 2.0 token for the current user.
aiOauthToken :: Lens' AutoscalersInsert' (Maybe Text)
aiOauthToken
  = lens _aiOauthToken (\ s a -> s{_aiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aiFields :: Lens' AutoscalersInsert' (Maybe Text)
aiFields = lens _aiFields (\ s a -> s{_aiFields = a})

-- | Data format for the response.
aiAlt :: Lens' AutoscalersInsert' Text
aiAlt = lens _aiAlt (\ s a -> s{_aiAlt = a})

instance GoogleRequest AutoscalersInsert' where
        type Rs AutoscalersInsert' = Operation
        request
          = requestWithRoute defReq computeAutoscalerURL
        requestWithRoute r u AutoscalersInsert{..}
          = go _aiQuotaUser _aiPrettyPrint _aiProject _aiUserIp
              _aiZone
              _aiKey
              _aiOauthToken
              _aiFields
              _aiAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AutoscalersInsertAPI)
                      r
                      u
