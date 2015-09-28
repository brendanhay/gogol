{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.ForwardingRules.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a ForwardingRule resource in the specified project and region
-- using the data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.forwardingRules.insert@.
module Network.Google.API.Compute.ForwardingRules.Insert
    (
    -- * REST Resource
      ForwardingRulesInsertAPI

    -- * Creating a Request
    , forwardingRulesInsert'
    , ForwardingRulesInsert'

    -- * Request Lenses
    , friQuotaUser
    , friPrettyPrint
    , friProject
    , friUserIp
    , friKey
    , friRegion
    , friOauthToken
    , friFields
    , friAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.forwardingRules.insert which the
-- 'ForwardingRulesInsert'' request conforms to.
type ForwardingRulesInsertAPI =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "forwardingRules" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Creates a ForwardingRule resource in the specified project and region
-- using the data included in the request.
--
-- /See:/ 'forwardingRulesInsert'' smart constructor.
data ForwardingRulesInsert' = ForwardingRulesInsert'
    { _friQuotaUser   :: !(Maybe Text)
    , _friPrettyPrint :: !Bool
    , _friProject     :: !Text
    , _friUserIp      :: !(Maybe Text)
    , _friKey         :: !(Maybe Text)
    , _friRegion      :: !Text
    , _friOauthToken  :: !(Maybe Text)
    , _friFields      :: !(Maybe Text)
    , _friAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ForwardingRulesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'friQuotaUser'
--
-- * 'friPrettyPrint'
--
-- * 'friProject'
--
-- * 'friUserIp'
--
-- * 'friKey'
--
-- * 'friRegion'
--
-- * 'friOauthToken'
--
-- * 'friFields'
--
-- * 'friAlt'
forwardingRulesInsert'
    :: Text -- ^ 'project'
    -> Text -- ^ 'region'
    -> ForwardingRulesInsert'
forwardingRulesInsert' pFriProject_ pFriRegion_ =
    ForwardingRulesInsert'
    { _friQuotaUser = Nothing
    , _friPrettyPrint = True
    , _friProject = pFriProject_
    , _friUserIp = Nothing
    , _friKey = Nothing
    , _friRegion = pFriRegion_
    , _friOauthToken = Nothing
    , _friFields = Nothing
    , _friAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
friQuotaUser :: Lens' ForwardingRulesInsert' (Maybe Text)
friQuotaUser
  = lens _friQuotaUser (\ s a -> s{_friQuotaUser = a})

-- | Returns response with indentations and line breaks.
friPrettyPrint :: Lens' ForwardingRulesInsert' Bool
friPrettyPrint
  = lens _friPrettyPrint
      (\ s a -> s{_friPrettyPrint = a})

-- | Name of the project scoping this request.
friProject :: Lens' ForwardingRulesInsert' Text
friProject
  = lens _friProject (\ s a -> s{_friProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
friUserIp :: Lens' ForwardingRulesInsert' (Maybe Text)
friUserIp
  = lens _friUserIp (\ s a -> s{_friUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
friKey :: Lens' ForwardingRulesInsert' (Maybe Text)
friKey = lens _friKey (\ s a -> s{_friKey = a})

-- | Name of the region scoping this request.
friRegion :: Lens' ForwardingRulesInsert' Text
friRegion
  = lens _friRegion (\ s a -> s{_friRegion = a})

-- | OAuth 2.0 token for the current user.
friOauthToken :: Lens' ForwardingRulesInsert' (Maybe Text)
friOauthToken
  = lens _friOauthToken
      (\ s a -> s{_friOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
friFields :: Lens' ForwardingRulesInsert' (Maybe Text)
friFields
  = lens _friFields (\ s a -> s{_friFields = a})

-- | Data format for the response.
friAlt :: Lens' ForwardingRulesInsert' Alt
friAlt = lens _friAlt (\ s a -> s{_friAlt = a})

instance GoogleRequest ForwardingRulesInsert' where
        type Rs ForwardingRulesInsert' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u ForwardingRulesInsert'{..}
          = go _friQuotaUser (Just _friPrettyPrint) _friProject
              _friUserIp
              _friKey
              _friRegion
              _friOauthToken
              _friFields
              (Just _friAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ForwardingRulesInsertAPI)
                      r
                      u
