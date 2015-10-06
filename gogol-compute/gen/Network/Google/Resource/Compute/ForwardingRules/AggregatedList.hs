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
-- Module      : Network.Google.Resource.Compute.ForwardingRules.AggregatedList
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of forwarding rules grouped by scope.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeForwardingRulesAggregatedList@.
module Network.Google.Resource.Compute.ForwardingRules.AggregatedList
    (
    -- * REST Resource
      ForwardingRulesAggregatedListResource

    -- * Creating a Request
    , forwardingRulesAggregatedList'
    , ForwardingRulesAggregatedList'

    -- * Request Lenses
    , fralQuotaUser
    , fralPrettyPrint
    , fralProject
    , fralUserIP
    , fralKey
    , fralFilter
    , fralPageToken
    , fralOAuthToken
    , fralMaxResults
    , fralFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeForwardingRulesAggregatedList@ which the
-- 'ForwardingRulesAggregatedList'' request conforms to.
type ForwardingRulesAggregatedListResource =
     Capture "project" Text :>
       "aggregated" :>
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
                               Get '[JSON] ForwardingRuleAggregatedList

-- | Retrieves the list of forwarding rules grouped by scope.
--
-- /See:/ 'forwardingRulesAggregatedList'' smart constructor.
data ForwardingRulesAggregatedList' = ForwardingRulesAggregatedList'
    { _fralQuotaUser   :: !(Maybe Text)
    , _fralPrettyPrint :: !Bool
    , _fralProject     :: !Text
    , _fralUserIP      :: !(Maybe Text)
    , _fralKey         :: !(Maybe AuthKey)
    , _fralFilter      :: !(Maybe Text)
    , _fralPageToken   :: !(Maybe Text)
    , _fralOAuthToken  :: !(Maybe OAuthToken)
    , _fralMaxResults  :: !Word32
    , _fralFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ForwardingRulesAggregatedList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fralQuotaUser'
--
-- * 'fralPrettyPrint'
--
-- * 'fralProject'
--
-- * 'fralUserIP'
--
-- * 'fralKey'
--
-- * 'fralFilter'
--
-- * 'fralPageToken'
--
-- * 'fralOAuthToken'
--
-- * 'fralMaxResults'
--
-- * 'fralFields'
forwardingRulesAggregatedList'
    :: Text -- ^ 'project'
    -> ForwardingRulesAggregatedList'
forwardingRulesAggregatedList' pFralProject_ =
    ForwardingRulesAggregatedList'
    { _fralQuotaUser = Nothing
    , _fralPrettyPrint = True
    , _fralProject = pFralProject_
    , _fralUserIP = Nothing
    , _fralKey = Nothing
    , _fralFilter = Nothing
    , _fralPageToken = Nothing
    , _fralOAuthToken = Nothing
    , _fralMaxResults = 500
    , _fralFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
fralQuotaUser :: Lens' ForwardingRulesAggregatedList' (Maybe Text)
fralQuotaUser
  = lens _fralQuotaUser
      (\ s a -> s{_fralQuotaUser = a})

-- | Returns response with indentations and line breaks.
fralPrettyPrint :: Lens' ForwardingRulesAggregatedList' Bool
fralPrettyPrint
  = lens _fralPrettyPrint
      (\ s a -> s{_fralPrettyPrint = a})

-- | Name of the project scoping this request.
fralProject :: Lens' ForwardingRulesAggregatedList' Text
fralProject
  = lens _fralProject (\ s a -> s{_fralProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
fralUserIP :: Lens' ForwardingRulesAggregatedList' (Maybe Text)
fralUserIP
  = lens _fralUserIP (\ s a -> s{_fralUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fralKey :: Lens' ForwardingRulesAggregatedList' (Maybe AuthKey)
fralKey = lens _fralKey (\ s a -> s{_fralKey = a})

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
fralFilter :: Lens' ForwardingRulesAggregatedList' (Maybe Text)
fralFilter
  = lens _fralFilter (\ s a -> s{_fralFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
fralPageToken :: Lens' ForwardingRulesAggregatedList' (Maybe Text)
fralPageToken
  = lens _fralPageToken
      (\ s a -> s{_fralPageToken = a})

-- | OAuth 2.0 token for the current user.
fralOAuthToken :: Lens' ForwardingRulesAggregatedList' (Maybe OAuthToken)
fralOAuthToken
  = lens _fralOAuthToken
      (\ s a -> s{_fralOAuthToken = a})

-- | Maximum count of results to be returned.
fralMaxResults :: Lens' ForwardingRulesAggregatedList' Word32
fralMaxResults
  = lens _fralMaxResults
      (\ s a -> s{_fralMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
fralFields :: Lens' ForwardingRulesAggregatedList' (Maybe Text)
fralFields
  = lens _fralFields (\ s a -> s{_fralFields = a})

instance GoogleAuth ForwardingRulesAggregatedList'
         where
        authKey = fralKey . _Just
        authToken = fralOAuthToken . _Just

instance GoogleRequest ForwardingRulesAggregatedList'
         where
        type Rs ForwardingRulesAggregatedList' =
             ForwardingRuleAggregatedList
        request = requestWith computeRequest
        requestWith rq ForwardingRulesAggregatedList'{..}
          = go _fralProject _fralFilter _fralPageToken
              (Just _fralMaxResults)
              _fralQuotaUser
              (Just _fralPrettyPrint)
              _fralUserIP
              _fralFields
              _fralKey
              _fralOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy ForwardingRulesAggregatedListResource)
                      rq
