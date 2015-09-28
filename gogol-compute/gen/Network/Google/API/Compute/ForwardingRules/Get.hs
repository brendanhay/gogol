{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.ForwardingRules.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified ForwardingRule resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.forwardingRules.get@.
module Network.Google.API.Compute.ForwardingRules.Get
    (
    -- * REST Resource
      ForwardingRulesGetAPI

    -- * Creating a Request
    , forwardingRulesGet'
    , ForwardingRulesGet'

    -- * Request Lenses
    , frgQuotaUser
    , frgPrettyPrint
    , frgProject
    , frgForwardingRule
    , frgUserIp
    , frgKey
    , frgRegion
    , frgOauthToken
    , frgFields
    , frgAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.forwardingRules.get which the
-- 'ForwardingRulesGet'' request conforms to.
type ForwardingRulesGetAPI =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "forwardingRules" :>
             Capture "forwardingRule" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] ForwardingRule

-- | Returns the specified ForwardingRule resource.
--
-- /See:/ 'forwardingRulesGet'' smart constructor.
data ForwardingRulesGet' = ForwardingRulesGet'
    { _frgQuotaUser      :: !(Maybe Text)
    , _frgPrettyPrint    :: !Bool
    , _frgProject        :: !Text
    , _frgForwardingRule :: !Text
    , _frgUserIp         :: !(Maybe Text)
    , _frgKey            :: !(Maybe Text)
    , _frgRegion         :: !Text
    , _frgOauthToken     :: !(Maybe Text)
    , _frgFields         :: !(Maybe Text)
    , _frgAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ForwardingRulesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'frgQuotaUser'
--
-- * 'frgPrettyPrint'
--
-- * 'frgProject'
--
-- * 'frgForwardingRule'
--
-- * 'frgUserIp'
--
-- * 'frgKey'
--
-- * 'frgRegion'
--
-- * 'frgOauthToken'
--
-- * 'frgFields'
--
-- * 'frgAlt'
forwardingRulesGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'forwardingRule'
    -> Text -- ^ 'region'
    -> ForwardingRulesGet'
forwardingRulesGet' pFrgProject_ pFrgForwardingRule_ pFrgRegion_ =
    ForwardingRulesGet'
    { _frgQuotaUser = Nothing
    , _frgPrettyPrint = True
    , _frgProject = pFrgProject_
    , _frgForwardingRule = pFrgForwardingRule_
    , _frgUserIp = Nothing
    , _frgKey = Nothing
    , _frgRegion = pFrgRegion_
    , _frgOauthToken = Nothing
    , _frgFields = Nothing
    , _frgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
frgQuotaUser :: Lens' ForwardingRulesGet' (Maybe Text)
frgQuotaUser
  = lens _frgQuotaUser (\ s a -> s{_frgQuotaUser = a})

-- | Returns response with indentations and line breaks.
frgPrettyPrint :: Lens' ForwardingRulesGet' Bool
frgPrettyPrint
  = lens _frgPrettyPrint
      (\ s a -> s{_frgPrettyPrint = a})

-- | Name of the project scoping this request.
frgProject :: Lens' ForwardingRulesGet' Text
frgProject
  = lens _frgProject (\ s a -> s{_frgProject = a})

-- | Name of the ForwardingRule resource to return.
frgForwardingRule :: Lens' ForwardingRulesGet' Text
frgForwardingRule
  = lens _frgForwardingRule
      (\ s a -> s{_frgForwardingRule = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
frgUserIp :: Lens' ForwardingRulesGet' (Maybe Text)
frgUserIp
  = lens _frgUserIp (\ s a -> s{_frgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
frgKey :: Lens' ForwardingRulesGet' (Maybe Text)
frgKey = lens _frgKey (\ s a -> s{_frgKey = a})

-- | Name of the region scoping this request.
frgRegion :: Lens' ForwardingRulesGet' Text
frgRegion
  = lens _frgRegion (\ s a -> s{_frgRegion = a})

-- | OAuth 2.0 token for the current user.
frgOauthToken :: Lens' ForwardingRulesGet' (Maybe Text)
frgOauthToken
  = lens _frgOauthToken
      (\ s a -> s{_frgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
frgFields :: Lens' ForwardingRulesGet' (Maybe Text)
frgFields
  = lens _frgFields (\ s a -> s{_frgFields = a})

-- | Data format for the response.
frgAlt :: Lens' ForwardingRulesGet' Alt
frgAlt = lens _frgAlt (\ s a -> s{_frgAlt = a})

instance GoogleRequest ForwardingRulesGet' where
        type Rs ForwardingRulesGet' = ForwardingRule
        request = requestWithRoute defReq computeURL
        requestWithRoute r u ForwardingRulesGet'{..}
          = go _frgQuotaUser (Just _frgPrettyPrint) _frgProject
              _frgForwardingRule
              _frgUserIp
              _frgKey
              _frgRegion
              _frgOauthToken
              _frgFields
              (Just _frgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ForwardingRulesGetAPI)
                      r
                      u
