{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Compute.GlobalForwardingRules.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of ForwardingRule resources available to the
-- specified project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeGlobalForwardingRulesList@.
module Network.Google.Resource.Compute.GlobalForwardingRules.List
    (
    -- * REST Resource
      GlobalForwardingRulesListResource

    -- * Creating a Request
    , globalForwardingRulesList'
    , GlobalForwardingRulesList'

    -- * Request Lenses
    , gfrlQuotaUser
    , gfrlPrettyPrint
    , gfrlProject
    , gfrlUserIP
    , gfrlKey
    , gfrlFilter
    , gfrlPageToken
    , gfrlOAuthToken
    , gfrlMaxResults
    , gfrlFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeGlobalForwardingRulesList@ method which the
-- 'GlobalForwardingRulesList'' request conforms to.
type GlobalForwardingRulesListResource =
     Capture "project" Text :>
       "global" :>
         "forwardingRules" :>
           QueryParam "filter" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ForwardingRuleList

-- | Retrieves the list of ForwardingRule resources available to the
-- specified project.
--
-- /See:/ 'globalForwardingRulesList'' smart constructor.
data GlobalForwardingRulesList' = GlobalForwardingRulesList'
    { _gfrlQuotaUser   :: !(Maybe Text)
    , _gfrlPrettyPrint :: !Bool
    , _gfrlProject     :: !Text
    , _gfrlUserIP      :: !(Maybe Text)
    , _gfrlKey         :: !(Maybe AuthKey)
    , _gfrlFilter      :: !(Maybe Text)
    , _gfrlPageToken   :: !(Maybe Text)
    , _gfrlOAuthToken  :: !(Maybe OAuthToken)
    , _gfrlMaxResults  :: !Word32
    , _gfrlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'gfrlUserIP'
--
-- * 'gfrlKey'
--
-- * 'gfrlFilter'
--
-- * 'gfrlPageToken'
--
-- * 'gfrlOAuthToken'
--
-- * 'gfrlMaxResults'
--
-- * 'gfrlFields'
globalForwardingRulesList'
    :: Text -- ^ 'project'
    -> GlobalForwardingRulesList'
globalForwardingRulesList' pGfrlProject_ =
    GlobalForwardingRulesList'
    { _gfrlQuotaUser = Nothing
    , _gfrlPrettyPrint = True
    , _gfrlProject = pGfrlProject_
    , _gfrlUserIP = Nothing
    , _gfrlKey = Nothing
    , _gfrlFilter = Nothing
    , _gfrlPageToken = Nothing
    , _gfrlOAuthToken = Nothing
    , _gfrlMaxResults = 500
    , _gfrlFields = Nothing
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
gfrlUserIP :: Lens' GlobalForwardingRulesList' (Maybe Text)
gfrlUserIP
  = lens _gfrlUserIP (\ s a -> s{_gfrlUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
gfrlKey :: Lens' GlobalForwardingRulesList' (Maybe AuthKey)
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
gfrlOAuthToken :: Lens' GlobalForwardingRulesList' (Maybe OAuthToken)
gfrlOAuthToken
  = lens _gfrlOAuthToken
      (\ s a -> s{_gfrlOAuthToken = a})

-- | Maximum count of results to be returned.
gfrlMaxResults :: Lens' GlobalForwardingRulesList' Word32
gfrlMaxResults
  = lens _gfrlMaxResults
      (\ s a -> s{_gfrlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
gfrlFields :: Lens' GlobalForwardingRulesList' (Maybe Text)
gfrlFields
  = lens _gfrlFields (\ s a -> s{_gfrlFields = a})

instance GoogleAuth GlobalForwardingRulesList' where
        _AuthKey = gfrlKey . _Just
        _AuthToken = gfrlOAuthToken . _Just

instance GoogleRequest GlobalForwardingRulesList'
         where
        type Rs GlobalForwardingRulesList' =
             ForwardingRuleList
        request = requestWith computeRequest
        requestWith rq GlobalForwardingRulesList'{..}
          = go _gfrlProject _gfrlFilter _gfrlPageToken
              (Just _gfrlMaxResults)
              _gfrlQuotaUser
              (Just _gfrlPrettyPrint)
              _gfrlUserIP
              _gfrlFields
              _gfrlKey
              _gfrlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy GlobalForwardingRulesListResource)
                      rq
