{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.GlobalForwardingRules.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified ForwardingRule resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeGlobalForwardingRulesGet@.
module Compute.GlobalForwardingRules.Get
    (
    -- * REST Resource
      GlobalForwardingRulesGetAPI

    -- * Creating a Request
    , globalForwardingRulesGet
    , GlobalForwardingRulesGet

    -- * Request Lenses
    , gfrgQuotaUser
    , gfrgPrettyPrint
    , gfrgProject
    , gfrgForwardingRule
    , gfrgUserIp
    , gfrgKey
    , gfrgOauthToken
    , gfrgFields
    , gfrgAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeGlobalForwardingRulesGet@ which the
-- 'GlobalForwardingRulesGet' request conforms to.
type GlobalForwardingRulesGetAPI =
     Capture "project" Text :>
       "global" :>
         "forwardingRules" :>
           Capture "forwardingRule" Text :>
             Get '[JSON] ForwardingRule

-- | Returns the specified ForwardingRule resource.
--
-- /See:/ 'globalForwardingRulesGet' smart constructor.
data GlobalForwardingRulesGet = GlobalForwardingRulesGet
    { _gfrgQuotaUser      :: !(Maybe Text)
    , _gfrgPrettyPrint    :: !Bool
    , _gfrgProject        :: !Text
    , _gfrgForwardingRule :: !Text
    , _gfrgUserIp         :: !(Maybe Text)
    , _gfrgKey            :: !(Maybe Text)
    , _gfrgOauthToken     :: !(Maybe Text)
    , _gfrgFields         :: !(Maybe Text)
    , _gfrgAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GlobalForwardingRulesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfrgQuotaUser'
--
-- * 'gfrgPrettyPrint'
--
-- * 'gfrgProject'
--
-- * 'gfrgForwardingRule'
--
-- * 'gfrgUserIp'
--
-- * 'gfrgKey'
--
-- * 'gfrgOauthToken'
--
-- * 'gfrgFields'
--
-- * 'gfrgAlt'
globalForwardingRulesGet
    :: Text -- ^ 'project'
    -> Text -- ^ 'forwardingRule'
    -> GlobalForwardingRulesGet
globalForwardingRulesGet pGfrgProject_ pGfrgForwardingRule_ =
    GlobalForwardingRulesGet
    { _gfrgQuotaUser = Nothing
    , _gfrgPrettyPrint = True
    , _gfrgProject = pGfrgProject_
    , _gfrgForwardingRule = pGfrgForwardingRule_
    , _gfrgUserIp = Nothing
    , _gfrgKey = Nothing
    , _gfrgOauthToken = Nothing
    , _gfrgFields = Nothing
    , _gfrgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
gfrgQuotaUser :: Lens' GlobalForwardingRulesGet' (Maybe Text)
gfrgQuotaUser
  = lens _gfrgQuotaUser
      (\ s a -> s{_gfrgQuotaUser = a})

-- | Returns response with indentations and line breaks.
gfrgPrettyPrint :: Lens' GlobalForwardingRulesGet' Bool
gfrgPrettyPrint
  = lens _gfrgPrettyPrint
      (\ s a -> s{_gfrgPrettyPrint = a})

-- | Name of the project scoping this request.
gfrgProject :: Lens' GlobalForwardingRulesGet' Text
gfrgProject
  = lens _gfrgProject (\ s a -> s{_gfrgProject = a})

-- | Name of the ForwardingRule resource to return.
gfrgForwardingRule :: Lens' GlobalForwardingRulesGet' Text
gfrgForwardingRule
  = lens _gfrgForwardingRule
      (\ s a -> s{_gfrgForwardingRule = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
gfrgUserIp :: Lens' GlobalForwardingRulesGet' (Maybe Text)
gfrgUserIp
  = lens _gfrgUserIp (\ s a -> s{_gfrgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
gfrgKey :: Lens' GlobalForwardingRulesGet' (Maybe Text)
gfrgKey = lens _gfrgKey (\ s a -> s{_gfrgKey = a})

-- | OAuth 2.0 token for the current user.
gfrgOauthToken :: Lens' GlobalForwardingRulesGet' (Maybe Text)
gfrgOauthToken
  = lens _gfrgOauthToken
      (\ s a -> s{_gfrgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
gfrgFields :: Lens' GlobalForwardingRulesGet' (Maybe Text)
gfrgFields
  = lens _gfrgFields (\ s a -> s{_gfrgFields = a})

-- | Data format for the response.
gfrgAlt :: Lens' GlobalForwardingRulesGet' Text
gfrgAlt = lens _gfrgAlt (\ s a -> s{_gfrgAlt = a})

instance GoogleRequest GlobalForwardingRulesGet'
         where
        type Rs GlobalForwardingRulesGet' = ForwardingRule
        request = requestWithRoute defReq computeURL
        requestWithRoute r u GlobalForwardingRulesGet{..}
          = go _gfrgQuotaUser _gfrgPrettyPrint _gfrgProject
              _gfrgForwardingRule
              _gfrgUserIp
              _gfrgKey
              _gfrgOauthToken
              _gfrgFields
              _gfrgAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy GlobalForwardingRulesGetAPI)
                      r
                      u
