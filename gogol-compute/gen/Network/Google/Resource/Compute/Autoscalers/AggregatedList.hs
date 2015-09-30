{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.Autoscalers.AggregatedList
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of autoscalers grouped by scope.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeAutoscalersAggregatedList@.
module Compute.Autoscalers.AggregatedList
    (
    -- * REST Resource
      AutoscalersAggregatedListAPI

    -- * Creating a Request
    , autoscalersAggregatedList
    , AutoscalersAggregatedList

    -- * Request Lenses
    , aQuotaUser
    , aPrettyPrint
    , aProject
    , aUserIp
    , aKey
    , aFilter
    , aPageToken
    , aOauthToken
    , aMaxResults
    , aFields
    , aAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeAutoscalersAggregatedList@ which the
-- 'AutoscalersAggregatedList' request conforms to.
type AutoscalersAggregatedListAPI =
     Capture "project" Text :>
       "aggregated" :>
         "autoscalers" :>
           QueryParam "filter" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 Get '[JSON] AutoscalerAggregatedList

-- | Retrieves the list of autoscalers grouped by scope.
--
-- /See:/ 'autoscalersAggregatedList' smart constructor.
data AutoscalersAggregatedList = AutoscalersAggregatedList
    { _aQuotaUser   :: !(Maybe Text)
    , _aPrettyPrint :: !Bool
    , _aProject     :: !Text
    , _aUserIp      :: !(Maybe Text)
    , _aKey         :: !(Maybe Text)
    , _aFilter      :: !(Maybe Text)
    , _aPageToken   :: !(Maybe Text)
    , _aOauthToken  :: !(Maybe Text)
    , _aMaxResults  :: !Word32
    , _aFields      :: !(Maybe Text)
    , _aAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalersAggregatedList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aQuotaUser'
--
-- * 'aPrettyPrint'
--
-- * 'aProject'
--
-- * 'aUserIp'
--
-- * 'aKey'
--
-- * 'aFilter'
--
-- * 'aPageToken'
--
-- * 'aOauthToken'
--
-- * 'aMaxResults'
--
-- * 'aFields'
--
-- * 'aAlt'
autoscalersAggregatedList
    :: Text -- ^ 'project'
    -> AutoscalersAggregatedList
autoscalersAggregatedList pAProject_ =
    AutoscalersAggregatedList
    { _aQuotaUser = Nothing
    , _aPrettyPrint = True
    , _aProject = pAProject_
    , _aUserIp = Nothing
    , _aKey = Nothing
    , _aFilter = Nothing
    , _aPageToken = Nothing
    , _aOauthToken = Nothing
    , _aMaxResults = 500
    , _aFields = Nothing
    , _aAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aQuotaUser :: Lens' AutoscalersAggregatedList' (Maybe Text)
aQuotaUser
  = lens _aQuotaUser (\ s a -> s{_aQuotaUser = a})

-- | Returns response with indentations and line breaks.
aPrettyPrint :: Lens' AutoscalersAggregatedList' Bool
aPrettyPrint
  = lens _aPrettyPrint (\ s a -> s{_aPrettyPrint = a})

-- | Name of the project scoping this request.
aProject :: Lens' AutoscalersAggregatedList' Text
aProject = lens _aProject (\ s a -> s{_aProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aUserIp :: Lens' AutoscalersAggregatedList' (Maybe Text)
aUserIp = lens _aUserIp (\ s a -> s{_aUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aKey :: Lens' AutoscalersAggregatedList' (Maybe Text)
aKey = lens _aKey (\ s a -> s{_aKey = a})

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
aFilter :: Lens' AutoscalersAggregatedList' (Maybe Text)
aFilter = lens _aFilter (\ s a -> s{_aFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
aPageToken :: Lens' AutoscalersAggregatedList' (Maybe Text)
aPageToken
  = lens _aPageToken (\ s a -> s{_aPageToken = a})

-- | OAuth 2.0 token for the current user.
aOauthToken :: Lens' AutoscalersAggregatedList' (Maybe Text)
aOauthToken
  = lens _aOauthToken (\ s a -> s{_aOauthToken = a})

-- | Maximum count of results to be returned.
aMaxResults :: Lens' AutoscalersAggregatedList' Word32
aMaxResults
  = lens _aMaxResults (\ s a -> s{_aMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
aFields :: Lens' AutoscalersAggregatedList' (Maybe Text)
aFields = lens _aFields (\ s a -> s{_aFields = a})

-- | Data format for the response.
aAlt :: Lens' AutoscalersAggregatedList' Text
aAlt = lens _aAlt (\ s a -> s{_aAlt = a})

instance GoogleRequest AutoscalersAggregatedList'
         where
        type Rs AutoscalersAggregatedList' =
             AutoscalerAggregatedList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u AutoscalersAggregatedList{..}
          = go _aQuotaUser _aPrettyPrint _aProject _aUserIp
              _aKey
              _aFilter
              _aPageToken
              _aOauthToken
              (Just _aMaxResults)
              _aFields
              _aAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AutoscalersAggregatedListAPI)
                      r
                      u
