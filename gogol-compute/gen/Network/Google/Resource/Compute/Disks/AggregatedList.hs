{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.Disks.AggregatedList
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of disks grouped by scope.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeDisksAggregatedList@.
module Compute.Disks.AggregatedList
    (
    -- * REST Resource
      DisksAggregatedListAPI

    -- * Creating a Request
    , disksAggregatedList
    , DisksAggregatedList

    -- * Request Lenses
    , dalQuotaUser
    , dalPrettyPrint
    , dalProject
    , dalUserIp
    , dalKey
    , dalFilter
    , dalPageToken
    , dalOauthToken
    , dalMaxResults
    , dalFields
    , dalAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeDisksAggregatedList@ which the
-- 'DisksAggregatedList' request conforms to.
type DisksAggregatedListAPI =
     Capture "project" Text :>
       "aggregated" :>
         "disks" :>
           QueryParam "filter" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 Get '[JSON] DiskAggregatedList

-- | Retrieves the list of disks grouped by scope.
--
-- /See:/ 'disksAggregatedList' smart constructor.
data DisksAggregatedList = DisksAggregatedList
    { _dalQuotaUser   :: !(Maybe Text)
    , _dalPrettyPrint :: !Bool
    , _dalProject     :: !Text
    , _dalUserIp      :: !(Maybe Text)
    , _dalKey         :: !(Maybe Text)
    , _dalFilter      :: !(Maybe Text)
    , _dalPageToken   :: !(Maybe Text)
    , _dalOauthToken  :: !(Maybe Text)
    , _dalMaxResults  :: !Word32
    , _dalFields      :: !(Maybe Text)
    , _dalAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DisksAggregatedList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dalQuotaUser'
--
-- * 'dalPrettyPrint'
--
-- * 'dalProject'
--
-- * 'dalUserIp'
--
-- * 'dalKey'
--
-- * 'dalFilter'
--
-- * 'dalPageToken'
--
-- * 'dalOauthToken'
--
-- * 'dalMaxResults'
--
-- * 'dalFields'
--
-- * 'dalAlt'
disksAggregatedList
    :: Text -- ^ 'project'
    -> DisksAggregatedList
disksAggregatedList pDalProject_ =
    DisksAggregatedList
    { _dalQuotaUser = Nothing
    , _dalPrettyPrint = True
    , _dalProject = pDalProject_
    , _dalUserIp = Nothing
    , _dalKey = Nothing
    , _dalFilter = Nothing
    , _dalPageToken = Nothing
    , _dalOauthToken = Nothing
    , _dalMaxResults = 500
    , _dalFields = Nothing
    , _dalAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dalQuotaUser :: Lens' DisksAggregatedList' (Maybe Text)
dalQuotaUser
  = lens _dalQuotaUser (\ s a -> s{_dalQuotaUser = a})

-- | Returns response with indentations and line breaks.
dalPrettyPrint :: Lens' DisksAggregatedList' Bool
dalPrettyPrint
  = lens _dalPrettyPrint
      (\ s a -> s{_dalPrettyPrint = a})

-- | Project ID for this request.
dalProject :: Lens' DisksAggregatedList' Text
dalProject
  = lens _dalProject (\ s a -> s{_dalProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dalUserIp :: Lens' DisksAggregatedList' (Maybe Text)
dalUserIp
  = lens _dalUserIp (\ s a -> s{_dalUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dalKey :: Lens' DisksAggregatedList' (Maybe Text)
dalKey = lens _dalKey (\ s a -> s{_dalKey = a})

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
dalFilter :: Lens' DisksAggregatedList' (Maybe Text)
dalFilter
  = lens _dalFilter (\ s a -> s{_dalFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
dalPageToken :: Lens' DisksAggregatedList' (Maybe Text)
dalPageToken
  = lens _dalPageToken (\ s a -> s{_dalPageToken = a})

-- | OAuth 2.0 token for the current user.
dalOauthToken :: Lens' DisksAggregatedList' (Maybe Text)
dalOauthToken
  = lens _dalOauthToken
      (\ s a -> s{_dalOauthToken = a})

-- | Maximum count of results to be returned.
dalMaxResults :: Lens' DisksAggregatedList' Word32
dalMaxResults
  = lens _dalMaxResults
      (\ s a -> s{_dalMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
dalFields :: Lens' DisksAggregatedList' (Maybe Text)
dalFields
  = lens _dalFields (\ s a -> s{_dalFields = a})

-- | Data format for the response.
dalAlt :: Lens' DisksAggregatedList' Text
dalAlt = lens _dalAlt (\ s a -> s{_dalAlt = a})

instance GoogleRequest DisksAggregatedList' where
        type Rs DisksAggregatedList' = DiskAggregatedList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u DisksAggregatedList{..}
          = go _dalQuotaUser _dalPrettyPrint _dalProject
              _dalUserIp
              _dalKey
              _dalFilter
              _dalPageToken
              _dalOauthToken
              (Just _dalMaxResults)
              _dalFields
              _dalAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DisksAggregatedListAPI)
                      r
                      u
