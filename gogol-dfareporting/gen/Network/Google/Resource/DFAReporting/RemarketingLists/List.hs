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
-- Module      : Network.Google.Resource.DFAReporting.RemarketingLists.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of remarketing lists, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingRemarketingListsList@.
module Network.Google.Resource.DFAReporting.RemarketingLists.List
    (
    -- * REST Resource
      RemarketingListsListResource

    -- * Creating a Request
    , remarketingListsList'
    , RemarketingListsList'

    -- * Request Lenses
    , rllQuotaUser
    , rllPrettyPrint
    , rllUserIp
    , rllFloodlightActivityId
    , rllAdvertiserId
    , rllProfileId
    , rllSortOrder
    , rllActive
    , rllKey
    , rllName
    , rllPageToken
    , rllSortField
    , rllOauthToken
    , rllMaxResults
    , rllFields
    , rllAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingRemarketingListsList@ which the
-- 'RemarketingListsList'' request conforms to.
type RemarketingListsListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "remarketingLists" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "floodlightActivityId" Int64 :>
                   QueryParam "advertiserId" Int64 :>
                     QueryParam "sortOrder"
                       DfareportingRemarketingListsListSortOrder
                       :>
                       QueryParam "active" Bool :>
                         QueryParam "key" Text :>
                           QueryParam "name" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "sortField"
                                 DfareportingRemarketingListsListSortField
                                 :>
                                 QueryParam "oauth_token" Text :>
                                   QueryParam "maxResults" Int32 :>
                                     QueryParam "fields" Text :>
                                       QueryParam "alt" Alt :>
                                         Get '[JSON]
                                           RemarketingListsListResponse

-- | Retrieves a list of remarketing lists, possibly filtered.
--
-- /See:/ 'remarketingListsList'' smart constructor.
data RemarketingListsList' = RemarketingListsList'
    { _rllQuotaUser            :: !(Maybe Text)
    , _rllPrettyPrint          :: !Bool
    , _rllUserIp               :: !(Maybe Text)
    , _rllFloodlightActivityId :: !(Maybe Int64)
    , _rllAdvertiserId         :: !Int64
    , _rllProfileId            :: !Int64
    , _rllSortOrder            :: !(Maybe DfareportingRemarketingListsListSortOrder)
    , _rllActive               :: !(Maybe Bool)
    , _rllKey                  :: !(Maybe Text)
    , _rllName                 :: !(Maybe Text)
    , _rllPageToken            :: !(Maybe Text)
    , _rllSortField            :: !(Maybe DfareportingRemarketingListsListSortField)
    , _rllOauthToken           :: !(Maybe Text)
    , _rllMaxResults           :: !(Maybe Int32)
    , _rllFields               :: !(Maybe Text)
    , _rllAlt                  :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RemarketingListsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rllQuotaUser'
--
-- * 'rllPrettyPrint'
--
-- * 'rllUserIp'
--
-- * 'rllFloodlightActivityId'
--
-- * 'rllAdvertiserId'
--
-- * 'rllProfileId'
--
-- * 'rllSortOrder'
--
-- * 'rllActive'
--
-- * 'rllKey'
--
-- * 'rllName'
--
-- * 'rllPageToken'
--
-- * 'rllSortField'
--
-- * 'rllOauthToken'
--
-- * 'rllMaxResults'
--
-- * 'rllFields'
--
-- * 'rllAlt'
remarketingListsList'
    :: Int64 -- ^ 'advertiserId'
    -> Int64 -- ^ 'profileId'
    -> RemarketingListsList'
remarketingListsList' pRllAdvertiserId_ pRllProfileId_ =
    RemarketingListsList'
    { _rllQuotaUser = Nothing
    , _rllPrettyPrint = True
    , _rllUserIp = Nothing
    , _rllFloodlightActivityId = Nothing
    , _rllAdvertiserId = pRllAdvertiserId_
    , _rllProfileId = pRllProfileId_
    , _rllSortOrder = Nothing
    , _rllActive = Nothing
    , _rllKey = Nothing
    , _rllName = Nothing
    , _rllPageToken = Nothing
    , _rllSortField = Nothing
    , _rllOauthToken = Nothing
    , _rllMaxResults = Nothing
    , _rllFields = Nothing
    , _rllAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rllQuotaUser :: Lens' RemarketingListsList' (Maybe Text)
rllQuotaUser
  = lens _rllQuotaUser (\ s a -> s{_rllQuotaUser = a})

-- | Returns response with indentations and line breaks.
rllPrettyPrint :: Lens' RemarketingListsList' Bool
rllPrettyPrint
  = lens _rllPrettyPrint
      (\ s a -> s{_rllPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rllUserIp :: Lens' RemarketingListsList' (Maybe Text)
rllUserIp
  = lens _rllUserIp (\ s a -> s{_rllUserIp = a})

-- | Select only remarketing lists that have this floodlight activity ID.
rllFloodlightActivityId :: Lens' RemarketingListsList' (Maybe Int64)
rllFloodlightActivityId
  = lens _rllFloodlightActivityId
      (\ s a -> s{_rllFloodlightActivityId = a})

-- | Select only remarketing lists owned by this advertiser.
rllAdvertiserId :: Lens' RemarketingListsList' Int64
rllAdvertiserId
  = lens _rllAdvertiserId
      (\ s a -> s{_rllAdvertiserId = a})

-- | User profile ID associated with this request.
rllProfileId :: Lens' RemarketingListsList' Int64
rllProfileId
  = lens _rllProfileId (\ s a -> s{_rllProfileId = a})

-- | Order of sorted results, default is ASCENDING.
rllSortOrder :: Lens' RemarketingListsList' (Maybe DfareportingRemarketingListsListSortOrder)
rllSortOrder
  = lens _rllSortOrder (\ s a -> s{_rllSortOrder = a})

-- | Select only active or only inactive remarketing lists.
rllActive :: Lens' RemarketingListsList' (Maybe Bool)
rllActive
  = lens _rllActive (\ s a -> s{_rllActive = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rllKey :: Lens' RemarketingListsList' (Maybe Text)
rllKey = lens _rllKey (\ s a -> s{_rllKey = a})

-- | Allows searching for objects by name or ID. Wildcards (*) are allowed.
-- For example, \"remarketing list*2015\" will return objects with names
-- like \"remarketing list June 2015\", \"remarketing list April 2015\", or
-- simply \"remarketing list 2015\". Most of the searches also add
-- wildcards implicitly at the start and the end of the search string. For
-- example, a search string of \"remarketing list\" will match objects with
-- name \"my remarketing list\", \"remarketing list 2015\", or simply
-- \"remarketing list\".
rllName :: Lens' RemarketingListsList' (Maybe Text)
rllName = lens _rllName (\ s a -> s{_rllName = a})

-- | Value of the nextPageToken from the previous result page.
rllPageToken :: Lens' RemarketingListsList' (Maybe Text)
rllPageToken
  = lens _rllPageToken (\ s a -> s{_rllPageToken = a})

-- | Field by which to sort the list.
rllSortField :: Lens' RemarketingListsList' (Maybe DfareportingRemarketingListsListSortField)
rllSortField
  = lens _rllSortField (\ s a -> s{_rllSortField = a})

-- | OAuth 2.0 token for the current user.
rllOauthToken :: Lens' RemarketingListsList' (Maybe Text)
rllOauthToken
  = lens _rllOauthToken
      (\ s a -> s{_rllOauthToken = a})

-- | Maximum number of results to return.
rllMaxResults :: Lens' RemarketingListsList' (Maybe Int32)
rllMaxResults
  = lens _rllMaxResults
      (\ s a -> s{_rllMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
rllFields :: Lens' RemarketingListsList' (Maybe Text)
rllFields
  = lens _rllFields (\ s a -> s{_rllFields = a})

-- | Data format for the response.
rllAlt :: Lens' RemarketingListsList' Alt
rllAlt = lens _rllAlt (\ s a -> s{_rllAlt = a})

instance GoogleRequest RemarketingListsList' where
        type Rs RemarketingListsList' =
             RemarketingListsListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u RemarketingListsList'{..}
          = go _rllQuotaUser (Just _rllPrettyPrint) _rllUserIp
              _rllFloodlightActivityId
              (Just _rllAdvertiserId)
              _rllProfileId
              _rllSortOrder
              _rllActive
              _rllKey
              _rllName
              _rllPageToken
              _rllSortField
              _rllOauthToken
              _rllMaxResults
              _rllFields
              (Just _rllAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RemarketingListsListResource)
                      r
                      u
