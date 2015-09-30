{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.ForwardingRules.SetTarget
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Changes target url for forwarding rule.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeForwardingRulesSetTarget@.
module Compute.ForwardingRules.SetTarget
    (
    -- * REST Resource
      ForwardingRulesSetTargetAPI

    -- * Creating a Request
    , forwardingRulesSetTarget
    , ForwardingRulesSetTarget

    -- * Request Lenses
    , frstQuotaUser
    , frstPrettyPrint
    , frstProject
    , frstForwardingRule
    , frstUserIp
    , frstKey
    , frstRegion
    , frstOauthToken
    , frstFields
    , frstAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeForwardingRulesSetTarget@ which the
-- 'ForwardingRulesSetTarget' request conforms to.
type ForwardingRulesSetTargetAPI =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "forwardingRules" :>
             Capture "forwardingRule" Text :>
               "setTarget" :> Post '[JSON] Operation

-- | Changes target url for forwarding rule.
--
-- /See:/ 'forwardingRulesSetTarget' smart constructor.
data ForwardingRulesSetTarget = ForwardingRulesSetTarget
    { _frstQuotaUser      :: !(Maybe Text)
    , _frstPrettyPrint    :: !Bool
    , _frstProject        :: !Text
    , _frstForwardingRule :: !Text
    , _frstUserIp         :: !(Maybe Text)
    , _frstKey            :: !(Maybe Text)
    , _frstRegion         :: !Text
    , _frstOauthToken     :: !(Maybe Text)
    , _frstFields         :: !(Maybe Text)
    , _frstAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ForwardingRulesSetTarget'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'frstQuotaUser'
--
-- * 'frstPrettyPrint'
--
-- * 'frstProject'
--
-- * 'frstForwardingRule'
--
-- * 'frstUserIp'
--
-- * 'frstKey'
--
-- * 'frstRegion'
--
-- * 'frstOauthToken'
--
-- * 'frstFields'
--
-- * 'frstAlt'
forwardingRulesSetTarget
    :: Text -- ^ 'project'
    -> Text -- ^ 'forwardingRule'
    -> Text -- ^ 'region'
    -> ForwardingRulesSetTarget
forwardingRulesSetTarget pFrstProject_ pFrstForwardingRule_ pFrstRegion_ =
    ForwardingRulesSetTarget
    { _frstQuotaUser = Nothing
    , _frstPrettyPrint = True
    , _frstProject = pFrstProject_
    , _frstForwardingRule = pFrstForwardingRule_
    , _frstUserIp = Nothing
    , _frstKey = Nothing
    , _frstRegion = pFrstRegion_
    , _frstOauthToken = Nothing
    , _frstFields = Nothing
    , _frstAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
frstQuotaUser :: Lens' ForwardingRulesSetTarget' (Maybe Text)
frstQuotaUser
  = lens _frstQuotaUser
      (\ s a -> s{_frstQuotaUser = a})

-- | Returns response with indentations and line breaks.
frstPrettyPrint :: Lens' ForwardingRulesSetTarget' Bool
frstPrettyPrint
  = lens _frstPrettyPrint
      (\ s a -> s{_frstPrettyPrint = a})

-- | Name of the project scoping this request.
frstProject :: Lens' ForwardingRulesSetTarget' Text
frstProject
  = lens _frstProject (\ s a -> s{_frstProject = a})

-- | Name of the ForwardingRule resource in which target is to be set.
frstForwardingRule :: Lens' ForwardingRulesSetTarget' Text
frstForwardingRule
  = lens _frstForwardingRule
      (\ s a -> s{_frstForwardingRule = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
frstUserIp :: Lens' ForwardingRulesSetTarget' (Maybe Text)
frstUserIp
  = lens _frstUserIp (\ s a -> s{_frstUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
frstKey :: Lens' ForwardingRulesSetTarget' (Maybe Text)
frstKey = lens _frstKey (\ s a -> s{_frstKey = a})

-- | Name of the region scoping this request.
frstRegion :: Lens' ForwardingRulesSetTarget' Text
frstRegion
  = lens _frstRegion (\ s a -> s{_frstRegion = a})

-- | OAuth 2.0 token for the current user.
frstOauthToken :: Lens' ForwardingRulesSetTarget' (Maybe Text)
frstOauthToken
  = lens _frstOauthToken
      (\ s a -> s{_frstOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
frstFields :: Lens' ForwardingRulesSetTarget' (Maybe Text)
frstFields
  = lens _frstFields (\ s a -> s{_frstFields = a})

-- | Data format for the response.
frstAlt :: Lens' ForwardingRulesSetTarget' Text
frstAlt = lens _frstAlt (\ s a -> s{_frstAlt = a})

instance GoogleRequest ForwardingRulesSetTarget'
         where
        type Rs ForwardingRulesSetTarget' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u ForwardingRulesSetTarget{..}
          = go _frstQuotaUser _frstPrettyPrint _frstProject
              _frstForwardingRule
              _frstUserIp
              _frstKey
              _frstRegion
              _frstOauthToken
              _frstFields
              _frstAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ForwardingRulesSetTargetAPI)
                      r
                      u
