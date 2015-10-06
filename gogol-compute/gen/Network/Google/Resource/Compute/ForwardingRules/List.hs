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
-- Module      : Network.Google.Resource.Compute.ForwardingRules.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of ForwardingRule resources available to the
-- specified project and region.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeForwardingRulesList@.
module Network.Google.Resource.Compute.ForwardingRules.List
    (
    -- * REST Resource
      ForwardingRulesListResource

    -- * Creating a Request
    , forwardingRulesList'
    , ForwardingRulesList'

    -- * Request Lenses
    , frlQuotaUser
    , frlPrettyPrint
    , frlProject
    , frlUserIP
    , frlKey
    , frlFilter
    , frlRegion
    , frlPageToken
    , frlOAuthToken
    , frlMaxResults
    , frlFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeForwardingRulesList@ which the
-- 'ForwardingRulesList'' request conforms to.
type ForwardingRulesListResource =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
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
-- specified project and region.
--
-- /See:/ 'forwardingRulesList'' smart constructor.
data ForwardingRulesList' = ForwardingRulesList'
    { _frlQuotaUser   :: !(Maybe Text)
    , _frlPrettyPrint :: !Bool
    , _frlProject     :: !Text
    , _frlUserIP      :: !(Maybe Text)
    , _frlKey         :: !(Maybe AuthKey)
    , _frlFilter      :: !(Maybe Text)
    , _frlRegion      :: !Text
    , _frlPageToken   :: !(Maybe Text)
    , _frlOAuthToken  :: !(Maybe OAuthToken)
    , _frlMaxResults  :: !Word32
    , _frlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ForwardingRulesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'frlQuotaUser'
--
-- * 'frlPrettyPrint'
--
-- * 'frlProject'
--
-- * 'frlUserIP'
--
-- * 'frlKey'
--
-- * 'frlFilter'
--
-- * 'frlRegion'
--
-- * 'frlPageToken'
--
-- * 'frlOAuthToken'
--
-- * 'frlMaxResults'
--
-- * 'frlFields'
forwardingRulesList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'region'
    -> ForwardingRulesList'
forwardingRulesList' pFrlProject_ pFrlRegion_ =
    ForwardingRulesList'
    { _frlQuotaUser = Nothing
    , _frlPrettyPrint = True
    , _frlProject = pFrlProject_
    , _frlUserIP = Nothing
    , _frlKey = Nothing
    , _frlFilter = Nothing
    , _frlRegion = pFrlRegion_
    , _frlPageToken = Nothing
    , _frlOAuthToken = Nothing
    , _frlMaxResults = 500
    , _frlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
frlQuotaUser :: Lens' ForwardingRulesList' (Maybe Text)
frlQuotaUser
  = lens _frlQuotaUser (\ s a -> s{_frlQuotaUser = a})

-- | Returns response with indentations and line breaks.
frlPrettyPrint :: Lens' ForwardingRulesList' Bool
frlPrettyPrint
  = lens _frlPrettyPrint
      (\ s a -> s{_frlPrettyPrint = a})

-- | Name of the project scoping this request.
frlProject :: Lens' ForwardingRulesList' Text
frlProject
  = lens _frlProject (\ s a -> s{_frlProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
frlUserIP :: Lens' ForwardingRulesList' (Maybe Text)
frlUserIP
  = lens _frlUserIP (\ s a -> s{_frlUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
frlKey :: Lens' ForwardingRulesList' (Maybe AuthKey)
frlKey = lens _frlKey (\ s a -> s{_frlKey = a})

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
frlFilter :: Lens' ForwardingRulesList' (Maybe Text)
frlFilter
  = lens _frlFilter (\ s a -> s{_frlFilter = a})

-- | Name of the region scoping this request.
frlRegion :: Lens' ForwardingRulesList' Text
frlRegion
  = lens _frlRegion (\ s a -> s{_frlRegion = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
frlPageToken :: Lens' ForwardingRulesList' (Maybe Text)
frlPageToken
  = lens _frlPageToken (\ s a -> s{_frlPageToken = a})

-- | OAuth 2.0 token for the current user.
frlOAuthToken :: Lens' ForwardingRulesList' (Maybe OAuthToken)
frlOAuthToken
  = lens _frlOAuthToken
      (\ s a -> s{_frlOAuthToken = a})

-- | Maximum count of results to be returned.
frlMaxResults :: Lens' ForwardingRulesList' Word32
frlMaxResults
  = lens _frlMaxResults
      (\ s a -> s{_frlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
frlFields :: Lens' ForwardingRulesList' (Maybe Text)
frlFields
  = lens _frlFields (\ s a -> s{_frlFields = a})

instance GoogleAuth ForwardingRulesList' where
        authKey = frlKey . _Just
        authToken = frlOAuthToken . _Just

instance GoogleRequest ForwardingRulesList' where
        type Rs ForwardingRulesList' = ForwardingRuleList
        request = requestWith computeRequest
        requestWith rq ForwardingRulesList'{..}
          = go _frlProject _frlRegion _frlFilter _frlPageToken
              (Just _frlMaxResults)
              _frlQuotaUser
              (Just _frlPrettyPrint)
              _frlUserIP
              _frlFields
              _frlKey
              _frlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ForwardingRulesListResource)
                      rq
