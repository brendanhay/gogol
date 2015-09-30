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
-- Module      : Network.Google.Resource.Compute.GlobalForwardingRules.SetTarget
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Changes target url for forwarding rule.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeGlobalForwardingRulesSetTarget@.
module Network.Google.Resource.Compute.GlobalForwardingRules.SetTarget
    (
    -- * REST Resource
      GlobalForwardingRulesSetTargetResource

    -- * Creating a Request
    , globalForwardingRulesSetTarget'
    , GlobalForwardingRulesSetTarget'

    -- * Request Lenses
    , gfrstQuotaUser
    , gfrstPrettyPrint
    , gfrstProject
    , gfrstForwardingRule
    , gfrstUserIp
    , gfrstKey
    , gfrstOauthToken
    , gfrstFields
    , gfrstAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeGlobalForwardingRulesSetTarget@ which the
-- 'GlobalForwardingRulesSetTarget'' request conforms to.
type GlobalForwardingRulesSetTargetResource =
     Capture "project" Text :>
       "global" :>
         "forwardingRules" :>
           Capture "forwardingRule" Text :>
             "setTarget" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Changes target url for forwarding rule.
--
-- /See:/ 'globalForwardingRulesSetTarget'' smart constructor.
data GlobalForwardingRulesSetTarget' = GlobalForwardingRulesSetTarget'
    { _gfrstQuotaUser      :: !(Maybe Text)
    , _gfrstPrettyPrint    :: !Bool
    , _gfrstProject        :: !Text
    , _gfrstForwardingRule :: !Text
    , _gfrstUserIp         :: !(Maybe Text)
    , _gfrstKey            :: !(Maybe Text)
    , _gfrstOauthToken     :: !(Maybe Text)
    , _gfrstFields         :: !(Maybe Text)
    , _gfrstAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GlobalForwardingRulesSetTarget'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfrstQuotaUser'
--
-- * 'gfrstPrettyPrint'
--
-- * 'gfrstProject'
--
-- * 'gfrstForwardingRule'
--
-- * 'gfrstUserIp'
--
-- * 'gfrstKey'
--
-- * 'gfrstOauthToken'
--
-- * 'gfrstFields'
--
-- * 'gfrstAlt'
globalForwardingRulesSetTarget'
    :: Text -- ^ 'project'
    -> Text -- ^ 'forwardingRule'
    -> GlobalForwardingRulesSetTarget'
globalForwardingRulesSetTarget' pGfrstProject_ pGfrstForwardingRule_ =
    GlobalForwardingRulesSetTarget'
    { _gfrstQuotaUser = Nothing
    , _gfrstPrettyPrint = True
    , _gfrstProject = pGfrstProject_
    , _gfrstForwardingRule = pGfrstForwardingRule_
    , _gfrstUserIp = Nothing
    , _gfrstKey = Nothing
    , _gfrstOauthToken = Nothing
    , _gfrstFields = Nothing
    , _gfrstAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
gfrstQuotaUser :: Lens' GlobalForwardingRulesSetTarget' (Maybe Text)
gfrstQuotaUser
  = lens _gfrstQuotaUser
      (\ s a -> s{_gfrstQuotaUser = a})

-- | Returns response with indentations and line breaks.
gfrstPrettyPrint :: Lens' GlobalForwardingRulesSetTarget' Bool
gfrstPrettyPrint
  = lens _gfrstPrettyPrint
      (\ s a -> s{_gfrstPrettyPrint = a})

-- | Name of the project scoping this request.
gfrstProject :: Lens' GlobalForwardingRulesSetTarget' Text
gfrstProject
  = lens _gfrstProject (\ s a -> s{_gfrstProject = a})

-- | Name of the ForwardingRule resource in which target is to be set.
gfrstForwardingRule :: Lens' GlobalForwardingRulesSetTarget' Text
gfrstForwardingRule
  = lens _gfrstForwardingRule
      (\ s a -> s{_gfrstForwardingRule = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
gfrstUserIp :: Lens' GlobalForwardingRulesSetTarget' (Maybe Text)
gfrstUserIp
  = lens _gfrstUserIp (\ s a -> s{_gfrstUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
gfrstKey :: Lens' GlobalForwardingRulesSetTarget' (Maybe Text)
gfrstKey = lens _gfrstKey (\ s a -> s{_gfrstKey = a})

-- | OAuth 2.0 token for the current user.
gfrstOauthToken :: Lens' GlobalForwardingRulesSetTarget' (Maybe Text)
gfrstOauthToken
  = lens _gfrstOauthToken
      (\ s a -> s{_gfrstOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
gfrstFields :: Lens' GlobalForwardingRulesSetTarget' (Maybe Text)
gfrstFields
  = lens _gfrstFields (\ s a -> s{_gfrstFields = a})

-- | Data format for the response.
gfrstAlt :: Lens' GlobalForwardingRulesSetTarget' Alt
gfrstAlt = lens _gfrstAlt (\ s a -> s{_gfrstAlt = a})

instance GoogleRequest
         GlobalForwardingRulesSetTarget' where
        type Rs GlobalForwardingRulesSetTarget' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u
          GlobalForwardingRulesSetTarget'{..}
          = go _gfrstQuotaUser (Just _gfrstPrettyPrint)
              _gfrstProject
              _gfrstForwardingRule
              _gfrstUserIp
              _gfrstKey
              _gfrstOauthToken
              _gfrstFields
              (Just _gfrstAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy GlobalForwardingRulesSetTargetResource)
                      r
                      u
