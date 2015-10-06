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
-- Module      : Network.Google.Resource.Compute.GlobalOperations.AggregatedList
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of all operations grouped by scope.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeGlobalOperationsAggregatedList@.
module Network.Google.Resource.Compute.GlobalOperations.AggregatedList
    (
    -- * REST Resource
      GlobalOperationsAggregatedListResource

    -- * Creating a Request
    , globalOperationsAggregatedList'
    , GlobalOperationsAggregatedList'

    -- * Request Lenses
    , goalQuotaUser
    , goalPrettyPrint
    , goalProject
    , goalUserIP
    , goalKey
    , goalFilter
    , goalPageToken
    , goalOAuthToken
    , goalMaxResults
    , goalFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeGlobalOperationsAggregatedList@ which the
-- 'GlobalOperationsAggregatedList'' request conforms to.
type GlobalOperationsAggregatedListResource =
     Capture "project" Text :>
       "aggregated" :>
         "operations" :>
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
                               Get '[JSON] OperationAggregatedList

-- | Retrieves the list of all operations grouped by scope.
--
-- /See:/ 'globalOperationsAggregatedList'' smart constructor.
data GlobalOperationsAggregatedList' = GlobalOperationsAggregatedList'
    { _goalQuotaUser   :: !(Maybe Text)
    , _goalPrettyPrint :: !Bool
    , _goalProject     :: !Text
    , _goalUserIP      :: !(Maybe Text)
    , _goalKey         :: !(Maybe AuthKey)
    , _goalFilter      :: !(Maybe Text)
    , _goalPageToken   :: !(Maybe Text)
    , _goalOAuthToken  :: !(Maybe OAuthToken)
    , _goalMaxResults  :: !Word32
    , _goalFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GlobalOperationsAggregatedList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'goalQuotaUser'
--
-- * 'goalPrettyPrint'
--
-- * 'goalProject'
--
-- * 'goalUserIP'
--
-- * 'goalKey'
--
-- * 'goalFilter'
--
-- * 'goalPageToken'
--
-- * 'goalOAuthToken'
--
-- * 'goalMaxResults'
--
-- * 'goalFields'
globalOperationsAggregatedList'
    :: Text -- ^ 'project'
    -> GlobalOperationsAggregatedList'
globalOperationsAggregatedList' pGoalProject_ =
    GlobalOperationsAggregatedList'
    { _goalQuotaUser = Nothing
    , _goalPrettyPrint = True
    , _goalProject = pGoalProject_
    , _goalUserIP = Nothing
    , _goalKey = Nothing
    , _goalFilter = Nothing
    , _goalPageToken = Nothing
    , _goalOAuthToken = Nothing
    , _goalMaxResults = 500
    , _goalFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
goalQuotaUser :: Lens' GlobalOperationsAggregatedList' (Maybe Text)
goalQuotaUser
  = lens _goalQuotaUser
      (\ s a -> s{_goalQuotaUser = a})

-- | Returns response with indentations and line breaks.
goalPrettyPrint :: Lens' GlobalOperationsAggregatedList' Bool
goalPrettyPrint
  = lens _goalPrettyPrint
      (\ s a -> s{_goalPrettyPrint = a})

-- | Project ID for this request.
goalProject :: Lens' GlobalOperationsAggregatedList' Text
goalProject
  = lens _goalProject (\ s a -> s{_goalProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
goalUserIP :: Lens' GlobalOperationsAggregatedList' (Maybe Text)
goalUserIP
  = lens _goalUserIP (\ s a -> s{_goalUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
goalKey :: Lens' GlobalOperationsAggregatedList' (Maybe AuthKey)
goalKey = lens _goalKey (\ s a -> s{_goalKey = a})

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
goalFilter :: Lens' GlobalOperationsAggregatedList' (Maybe Text)
goalFilter
  = lens _goalFilter (\ s a -> s{_goalFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
goalPageToken :: Lens' GlobalOperationsAggregatedList' (Maybe Text)
goalPageToken
  = lens _goalPageToken
      (\ s a -> s{_goalPageToken = a})

-- | OAuth 2.0 token for the current user.
goalOAuthToken :: Lens' GlobalOperationsAggregatedList' (Maybe OAuthToken)
goalOAuthToken
  = lens _goalOAuthToken
      (\ s a -> s{_goalOAuthToken = a})

-- | Maximum count of results to be returned.
goalMaxResults :: Lens' GlobalOperationsAggregatedList' Word32
goalMaxResults
  = lens _goalMaxResults
      (\ s a -> s{_goalMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
goalFields :: Lens' GlobalOperationsAggregatedList' (Maybe Text)
goalFields
  = lens _goalFields (\ s a -> s{_goalFields = a})

instance GoogleAuth GlobalOperationsAggregatedList'
         where
        _AuthKey = goalKey . _Just
        _AuthToken = goalOAuthToken . _Just

instance GoogleRequest
         GlobalOperationsAggregatedList' where
        type Rs GlobalOperationsAggregatedList' =
             OperationAggregatedList
        request = requestWith computeRequest
        requestWith rq GlobalOperationsAggregatedList'{..}
          = go _goalProject _goalFilter _goalPageToken
              (Just _goalMaxResults)
              _goalQuotaUser
              (Just _goalPrettyPrint)
              _goalUserIP
              _goalFields
              _goalKey
              _goalOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy GlobalOperationsAggregatedListResource)
                      rq
