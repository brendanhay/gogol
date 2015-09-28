{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.TargetableRemarketingLists.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of targetable remarketing lists, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.targetableRemarketingLists.list@.
module Network.Google.API.DFAReporting.TargetableRemarketingLists.List
    (
    -- * REST Resource
      TargetableRemarketingListsListAPI

    -- * Creating a Request
    , targetableRemarketingListsList'
    , TargetableRemarketingListsList'

    -- * Request Lenses
    , trllQuotaUser
    , trllPrettyPrint
    , trllUserIp
    , trllAdvertiserId
    , trllProfileId
    , trllSortOrder
    , trllActive
    , trllKey
    , trllName
    , trllPageToken
    , trllSortField
    , trllOauthToken
    , trllMaxResults
    , trllFields
    , trllAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.targetableRemarketingLists.list which the
-- 'TargetableRemarketingListsList'' request conforms to.
type TargetableRemarketingListsListAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "targetableRemarketingLists" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "advertiserId" Int64 :>
                   QueryParam "sortOrder"
                     TargetableRemarketingListsList'SortOrder
                     :>
                     QueryParam "active" Bool :>
                       QueryParam "key" Text :>
                         QueryParam "name" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "sortField"
                               TargetableRemarketingListsList'SortField
                               :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "maxResults" Int32 :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Alt :>
                                       Get '[JSON]
                                         TargetableRemarketingListsListResponse

-- | Retrieves a list of targetable remarketing lists, possibly filtered.
--
-- /See:/ 'targetableRemarketingListsList'' smart constructor.
data TargetableRemarketingListsList' = TargetableRemarketingListsList'
    { _trllQuotaUser    :: !(Maybe Text)
    , _trllPrettyPrint  :: !Bool
    , _trllUserIp       :: !(Maybe Text)
    , _trllAdvertiserId :: !Int64
    , _trllProfileId    :: !Int64
    , _trllSortOrder    :: !(Maybe TargetableRemarketingListsList'SortOrder)
    , _trllActive       :: !(Maybe Bool)
    , _trllKey          :: !(Maybe Text)
    , _trllName         :: !(Maybe Text)
    , _trllPageToken    :: !(Maybe Text)
    , _trllSortField    :: !(Maybe TargetableRemarketingListsList'SortField)
    , _trllOauthToken   :: !(Maybe Text)
    , _trllMaxResults   :: !(Maybe Int32)
    , _trllFields       :: !(Maybe Text)
    , _trllAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetableRemarketingListsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trllQuotaUser'
--
-- * 'trllPrettyPrint'
--
-- * 'trllUserIp'
--
-- * 'trllAdvertiserId'
--
-- * 'trllProfileId'
--
-- * 'trllSortOrder'
--
-- * 'trllActive'
--
-- * 'trllKey'
--
-- * 'trllName'
--
-- * 'trllPageToken'
--
-- * 'trllSortField'
--
-- * 'trllOauthToken'
--
-- * 'trllMaxResults'
--
-- * 'trllFields'
--
-- * 'trllAlt'
targetableRemarketingListsList'
    :: Int64 -- ^ 'advertiserId'
    -> Int64 -- ^ 'profileId'
    -> TargetableRemarketingListsList'
targetableRemarketingListsList' pTrllAdvertiserId_ pTrllProfileId_ =
    TargetableRemarketingListsList'
    { _trllQuotaUser = Nothing
    , _trllPrettyPrint = True
    , _trllUserIp = Nothing
    , _trllAdvertiserId = pTrllAdvertiserId_
    , _trllProfileId = pTrllProfileId_
    , _trllSortOrder = Nothing
    , _trllActive = Nothing
    , _trllKey = Nothing
    , _trllName = Nothing
    , _trllPageToken = Nothing
    , _trllSortField = Nothing
    , _trllOauthToken = Nothing
    , _trllMaxResults = Nothing
    , _trllFields = Nothing
    , _trllAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
trllQuotaUser :: Lens' TargetableRemarketingListsList' (Maybe Text)
trllQuotaUser
  = lens _trllQuotaUser
      (\ s a -> s{_trllQuotaUser = a})

-- | Returns response with indentations and line breaks.
trllPrettyPrint :: Lens' TargetableRemarketingListsList' Bool
trllPrettyPrint
  = lens _trllPrettyPrint
      (\ s a -> s{_trllPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
trllUserIp :: Lens' TargetableRemarketingListsList' (Maybe Text)
trllUserIp
  = lens _trllUserIp (\ s a -> s{_trllUserIp = a})

-- | Select only targetable remarketing lists targetable by these
-- advertisers.
trllAdvertiserId :: Lens' TargetableRemarketingListsList' Int64
trllAdvertiserId
  = lens _trllAdvertiserId
      (\ s a -> s{_trllAdvertiserId = a})

-- | User profile ID associated with this request.
trllProfileId :: Lens' TargetableRemarketingListsList' Int64
trllProfileId
  = lens _trllProfileId
      (\ s a -> s{_trllProfileId = a})

-- | Order of sorted results, default is ASCENDING.
trllSortOrder :: Lens' TargetableRemarketingListsList' (Maybe TargetableRemarketingListsList'SortOrder)
trllSortOrder
  = lens _trllSortOrder
      (\ s a -> s{_trllSortOrder = a})

-- | Select only active or only inactive targetable remarketing lists.
trllActive :: Lens' TargetableRemarketingListsList' (Maybe Bool)
trllActive
  = lens _trllActive (\ s a -> s{_trllActive = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
trllKey :: Lens' TargetableRemarketingListsList' (Maybe Text)
trllKey = lens _trllKey (\ s a -> s{_trllKey = a})

-- | Allows searching for objects by name or ID. Wildcards (*) are allowed.
-- For example, \"remarketing list*2015\" will return objects with names
-- like \"remarketing list June 2015\", \"remarketing list April 2015\", or
-- simply \"remarketing list 2015\". Most of the searches also add
-- wildcards implicitly at the start and the end of the search string. For
-- example, a search string of \"remarketing list\" will match objects with
-- name \"my remarketing list\", \"remarketing list 2015\", or simply
-- \"remarketing list\".
trllName :: Lens' TargetableRemarketingListsList' (Maybe Text)
trllName = lens _trllName (\ s a -> s{_trllName = a})

-- | Value of the nextPageToken from the previous result page.
trllPageToken :: Lens' TargetableRemarketingListsList' (Maybe Text)
trllPageToken
  = lens _trllPageToken
      (\ s a -> s{_trllPageToken = a})

-- | Field by which to sort the list.
trllSortField :: Lens' TargetableRemarketingListsList' (Maybe TargetableRemarketingListsList'SortField)
trllSortField
  = lens _trllSortField
      (\ s a -> s{_trllSortField = a})

-- | OAuth 2.0 token for the current user.
trllOauthToken :: Lens' TargetableRemarketingListsList' (Maybe Text)
trllOauthToken
  = lens _trllOauthToken
      (\ s a -> s{_trllOauthToken = a})

-- | Maximum number of results to return.
trllMaxResults :: Lens' TargetableRemarketingListsList' (Maybe Int32)
trllMaxResults
  = lens _trllMaxResults
      (\ s a -> s{_trllMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
trllFields :: Lens' TargetableRemarketingListsList' (Maybe Text)
trllFields
  = lens _trllFields (\ s a -> s{_trllFields = a})

-- | Data format for the response.
trllAlt :: Lens' TargetableRemarketingListsList' Alt
trllAlt = lens _trllAlt (\ s a -> s{_trllAlt = a})

instance GoogleRequest
         TargetableRemarketingListsList' where
        type Rs TargetableRemarketingListsList' =
             TargetableRemarketingListsListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u
          TargetableRemarketingListsList'{..}
          = go _trllQuotaUser (Just _trllPrettyPrint)
              _trllUserIp
              (Just _trllAdvertiserId)
              _trllProfileId
              _trllSortOrder
              _trllActive
              _trllKey
              _trllName
              _trllPageToken
              _trllSortField
              _trllOauthToken
              _trllMaxResults
              _trllFields
              (Just _trllAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TargetableRemarketingListsListAPI)
                      r
                      u
