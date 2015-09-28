{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.GlobalForwardingRules.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of ForwardingRule resources available to the
-- specified project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.globalForwardingRules.list@.
module Network.Google.API.Compute.GlobalForwardingRules.List
    (
    -- * REST Resource
      GlobalForwardingRulesListAPI

    -- * Creating a Request
    , globalForwardingRulesList'
    , GlobalForwardingRulesList'

    -- * Request Lenses
    , gfrlQuotaUser
    , gfrlPrettyPrint
    , gfrlProject
    , gfrlUserIp
    , gfrlKey
    , gfrlFilter
    , gfrlPageToken
    , gfrlOauthToken
    , gfrlMaxResults
    , gfrlFields
    , gfrlAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.globalForwardingRules.list which the
-- 'GlobalForwardingRulesList'' request conforms to.
type GlobalForwardingRulesListAPI =
     Capture "project" Text :>
       "global" :>
         "forwardingRules" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "maxResults" Word32 :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :>
                               Get '[JSON] ForwardingRuleList

-- | Retrieves the list of ForwardingRule resources available to the
-- specified project.
--
-- /See:/ 'globalForwardingRulesList'' smart constructor.
data GlobalForwardingRulesList' = GlobalForwardingRulesList'
    { _gfrlQuotaUser   :: !(Maybe Text)
    , _gfrlPrettyPrint :: !Bool
    , _gfrlProject     :: !Text
    , _gfrlUserIp      :: !(Maybe Text)
    , _gfrlKey         :: !(Maybe Text)
    , _gfrlFilter      :: !(Maybe Text)
    , _gfrlPageToken   :: !(Maybe Text)
    , _gfrlOauthToken  :: !(Maybe Text)
    , _gfrlMaxResults  :: !Word32
    , _gfrlFields      :: !(Maybe Text)
    , _gfrlAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GlobalForwardingRulesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfrlQuotaUser'
--
-- * 'gfrlPrettyPrint'
--
-- * 'gfrlProject'
--
-- * 'gfrlUserIp'
--
-- * 'gfrlKey'
--
-- * 'gfrlFilter'
--
-- * 'gfrlPageToken'
--
-- * 'gfrlOauthToken'
--
-- * 'gfrlMaxResults'
--
-- * 'gfrlFields'
--
-- * 'gfrlAlt'
globalForwardingRulesList'
    :: Text -- ^ 'project'
    -> GlobalForwardingRulesList'
globalForwardingRulesList' pGfrlProject_ =
    GlobalForwardingRulesList'
    { _gfrlQuotaUser = Nothing
    , _gfrlPrettyPrint = True
    , _gfrlProject = pGfrlProject_
    , _gfrlUserIp = Nothing
    , _gfrlKey = Nothing
    , _gfrlFilter = Nothing
    , _gfrlPageToken = Nothing
    , _gfrlOauthToken = Nothing
    , _gfrlMaxResults = 500
    , _gfrlFields = Nothing
    , _gfrlAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
gfrlQuotaUser :: Lens' GlobalForwardingRulesList' (Maybe Text)
gfrlQuotaUser
  = lens _gfrlQuotaUser
      (\ s a -> s{_gfrlQuotaUser = a})

-- | Returns response with indentations and line breaks.
gfrlPrettyPrint :: Lens' GlobalForwardingRulesList' Bool
gfrlPrettyPrint
  = lens _gfrlPrettyPrint
      (\ s a -> s{_gfrlPrettyPrint = a})

-- | Name of the project scoping this request.
gfrlProject :: Lens' GlobalForwardingRulesList' Text
gfrlProject
  = lens _gfrlProject (\ s a -> s{_gfrlProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
gfrlUserIp :: Lens' GlobalForwardingRulesList' (Maybe Text)
gfrlUserIp
  = lens _gfrlUserIp (\ s a -> s{_gfrlUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
gfrlKey :: Lens' GlobalForwardingRulesList' (Maybe Text)
gfrlKey = lens _gfrlKey (\ s a -> s{_gfrlKey = a})

-- | Sets a filter expression for filtering listed resources, in the form
-- filter={expression}. Your {expression} must be in the format: FIELD_NAME
-- COMPARISON_STRING LITERAL_STRING. The FIELD_NAME is the name of the
-- field you want to compare. Only atomic field types are supported
-- (string, number, boolean). The COMPARISON_STRING must be either eq
-- (equals) or ne (not equals). The LITERAL_STRING is the string value to
-- filter to. The literal value must be valid for the type of field
-- (string, number, boolean). For string fields, the literal value is
-- interpreted as a regular expression using RE2 syntax. The literal value
-- must match the entire field. For example, filter=name ne
-- example-instance.
gfrlFilter :: Lens' GlobalForwardingRulesList' (Maybe Text)
gfrlFilter
  = lens _gfrlFilter (\ s a -> s{_gfrlFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
gfrlPageToken :: Lens' GlobalForwardingRulesList' (Maybe Text)
gfrlPageToken
  = lens _gfrlPageToken
      (\ s a -> s{_gfrlPageToken = a})

-- | OAuth 2.0 token for the current user.
gfrlOauthToken :: Lens' GlobalForwardingRulesList' (Maybe Text)
gfrlOauthToken
  = lens _gfrlOauthToken
      (\ s a -> s{_gfrlOauthToken = a})

-- | Maximum count of results to be returned.
gfrlMaxResults :: Lens' GlobalForwardingRulesList' Word32
gfrlMaxResults
  = lens _gfrlMaxResults
      (\ s a -> s{_gfrlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
gfrlFields :: Lens' GlobalForwardingRulesList' (Maybe Text)
gfrlFields
  = lens _gfrlFields (\ s a -> s{_gfrlFields = a})

-- | Data format for the response.
gfrlAlt :: Lens' GlobalForwardingRulesList' Alt
gfrlAlt = lens _gfrlAlt (\ s a -> s{_gfrlAlt = a})

instance GoogleRequest GlobalForwardingRulesList'
         where
        type Rs GlobalForwardingRulesList' =
             ForwardingRuleList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u GlobalForwardingRulesList'{..}
          = go _gfrlQuotaUser (Just _gfrlPrettyPrint)
              _gfrlProject
              _gfrlUserIp
              _gfrlKey
              _gfrlFilter
              _gfrlPageToken
              _gfrlOauthToken
              (Just _gfrlMaxResults)
              _gfrlFields
              (Just _gfrlAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy GlobalForwardingRulesListAPI)
                      r
                      u
