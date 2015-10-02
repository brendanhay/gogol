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
    , gfrstTargetReference
    , gfrstProject
    , gfrstForwardingRule
    , gfrstUserIP
    , gfrstKey
    , gfrstOAuthToken
    , gfrstFields
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
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] TargetReference :>
                               Post '[JSON] Operation

-- | Changes target url for forwarding rule.
--
-- /See:/ 'globalForwardingRulesSetTarget'' smart constructor.
data GlobalForwardingRulesSetTarget' = GlobalForwardingRulesSetTarget'
    { _gfrstQuotaUser       :: !(Maybe Text)
    , _gfrstPrettyPrint     :: !Bool
    , _gfrstTargetReference :: !TargetReference
    , _gfrstProject         :: !Text
    , _gfrstForwardingRule  :: !Text
    , _gfrstUserIP          :: !(Maybe Text)
    , _gfrstKey             :: !(Maybe Key)
    , _gfrstOAuthToken      :: !(Maybe OAuthToken)
    , _gfrstFields          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GlobalForwardingRulesSetTarget'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfrstQuotaUser'
--
-- * 'gfrstPrettyPrint'
--
-- * 'gfrstTargetReference'
--
-- * 'gfrstProject'
--
-- * 'gfrstForwardingRule'
--
-- * 'gfrstUserIP'
--
-- * 'gfrstKey'
--
-- * 'gfrstOAuthToken'
--
-- * 'gfrstFields'
globalForwardingRulesSetTarget'
    :: TargetReference -- ^ 'TargetReference'
    -> Text -- ^ 'project'
    -> Text -- ^ 'forwardingRule'
    -> GlobalForwardingRulesSetTarget'
globalForwardingRulesSetTarget' pGfrstTargetReference_ pGfrstProject_ pGfrstForwardingRule_ =
    GlobalForwardingRulesSetTarget'
    { _gfrstQuotaUser = Nothing
    , _gfrstPrettyPrint = True
    , _gfrstTargetReference = pGfrstTargetReference_
    , _gfrstProject = pGfrstProject_
    , _gfrstForwardingRule = pGfrstForwardingRule_
    , _gfrstUserIP = Nothing
    , _gfrstKey = Nothing
    , _gfrstOAuthToken = Nothing
    , _gfrstFields = Nothing
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

-- | Multipart request metadata.
gfrstTargetReference :: Lens' GlobalForwardingRulesSetTarget' TargetReference
gfrstTargetReference
  = lens _gfrstTargetReference
      (\ s a -> s{_gfrstTargetReference = a})

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
gfrstUserIP :: Lens' GlobalForwardingRulesSetTarget' (Maybe Text)
gfrstUserIP
  = lens _gfrstUserIP (\ s a -> s{_gfrstUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
gfrstKey :: Lens' GlobalForwardingRulesSetTarget' (Maybe Key)
gfrstKey = lens _gfrstKey (\ s a -> s{_gfrstKey = a})

-- | OAuth 2.0 token for the current user.
gfrstOAuthToken :: Lens' GlobalForwardingRulesSetTarget' (Maybe OAuthToken)
gfrstOAuthToken
  = lens _gfrstOAuthToken
      (\ s a -> s{_gfrstOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
gfrstFields :: Lens' GlobalForwardingRulesSetTarget' (Maybe Text)
gfrstFields
  = lens _gfrstFields (\ s a -> s{_gfrstFields = a})

instance GoogleAuth GlobalForwardingRulesSetTarget'
         where
        authKey = gfrstKey . _Just
        authToken = gfrstOAuthToken . _Just

instance GoogleRequest
         GlobalForwardingRulesSetTarget' where
        type Rs GlobalForwardingRulesSetTarget' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u
          GlobalForwardingRulesSetTarget'{..}
          = go _gfrstProject _gfrstForwardingRule
              _gfrstQuotaUser
              (Just _gfrstPrettyPrint)
              _gfrstUserIP
              _gfrstFields
              _gfrstKey
              _gfrstOAuthToken
              (Just AltJSON)
              _gfrstTargetReference
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy GlobalForwardingRulesSetTargetResource)
                      r
                      u
