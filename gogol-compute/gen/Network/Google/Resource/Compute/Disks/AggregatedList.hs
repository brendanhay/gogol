{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
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
module Network.Google.Resource.Compute.Disks.AggregatedList
    (
    -- * REST Resource
      DisksAggregatedListResource

    -- * Creating a Request
    , disksAggregatedList'
    , DisksAggregatedList'

    -- * Request Lenses
    , dalQuotaUser
    , dalPrettyPrint
    , dalProject
    , dalUserIP
    , dalKey
    , dalFilter
    , dalPageToken
    , dalOAuthToken
    , dalMaxResults
    , dalFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeDisksAggregatedList@ which the
-- 'DisksAggregatedList'' request conforms to.
type DisksAggregatedListResource =
     Capture "project" Text :>
       "aggregated" :>
         "disks" :>
           QueryParam "filter" Text :>
             QueryParam "maxResults" Word32 :>
               QueryParam "pageToken" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] DiskAggregatedList

-- | Retrieves the list of disks grouped by scope.
--
-- /See:/ 'disksAggregatedList'' smart constructor.
data DisksAggregatedList' = DisksAggregatedList'
    { _dalQuotaUser   :: !(Maybe Text)
    , _dalPrettyPrint :: !Bool
    , _dalProject     :: !Text
    , _dalUserIP      :: !(Maybe Text)
    , _dalKey         :: !(Maybe Key)
    , _dalFilter      :: !(Maybe Text)
    , _dalPageToken   :: !(Maybe Text)
    , _dalOAuthToken  :: !(Maybe OAuthToken)
    , _dalMaxResults  :: !Word32
    , _dalFields      :: !(Maybe Text)
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
-- * 'dalUserIP'
--
-- * 'dalKey'
--
-- * 'dalFilter'
--
-- * 'dalPageToken'
--
-- * 'dalOAuthToken'
--
-- * 'dalMaxResults'
--
-- * 'dalFields'
disksAggregatedList'
    :: Text -- ^ 'project'
    -> DisksAggregatedList'
disksAggregatedList' pDalProject_ =
    DisksAggregatedList'
    { _dalQuotaUser = Nothing
    , _dalPrettyPrint = True
    , _dalProject = pDalProject_
    , _dalUserIP = Nothing
    , _dalKey = Nothing
    , _dalFilter = Nothing
    , _dalPageToken = Nothing
    , _dalOAuthToken = Nothing
    , _dalMaxResults = 500
    , _dalFields = Nothing
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
dalUserIP :: Lens' DisksAggregatedList' (Maybe Text)
dalUserIP
  = lens _dalUserIP (\ s a -> s{_dalUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dalKey :: Lens' DisksAggregatedList' (Maybe Key)
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
dalOAuthToken :: Lens' DisksAggregatedList' (Maybe OAuthToken)
dalOAuthToken
  = lens _dalOAuthToken
      (\ s a -> s{_dalOAuthToken = a})

-- | Maximum count of results to be returned.
dalMaxResults :: Lens' DisksAggregatedList' Word32
dalMaxResults
  = lens _dalMaxResults
      (\ s a -> s{_dalMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
dalFields :: Lens' DisksAggregatedList' (Maybe Text)
dalFields
  = lens _dalFields (\ s a -> s{_dalFields = a})

instance GoogleAuth DisksAggregatedList' where
        authKey = dalKey . _Just
        authToken = dalOAuthToken . _Just

instance GoogleRequest DisksAggregatedList' where
        type Rs DisksAggregatedList' = DiskAggregatedList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u DisksAggregatedList'{..}
          = go _dalFilter (Just _dalMaxResults) _dalPageToken
              _dalProject
              _dalQuotaUser
              (Just _dalPrettyPrint)
              _dalUserIP
              _dalFields
              _dalKey
              _dalOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DisksAggregatedListResource)
                      r
                      u
