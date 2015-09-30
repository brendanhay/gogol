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
-- Module      : Network.Google.Resource.DFAReporting.PlacementStrategies.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of placement strategies, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingPlacementStrategiesList@.
module Network.Google.Resource.DFAReporting.PlacementStrategies.List
    (
    -- * REST Resource
      PlacementStrategiesListResource

    -- * Creating a Request
    , placementStrategiesList'
    , PlacementStrategiesList'

    -- * Request Lenses
    , pslQuotaUser
    , pslPrettyPrint
    , pslUserIp
    , pslSearchString
    , pslIds
    , pslProfileId
    , pslSortOrder
    , pslKey
    , pslPageToken
    , pslSortField
    , pslOauthToken
    , pslMaxResults
    , pslFields
    , pslAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingPlacementStrategiesList@ which the
-- 'PlacementStrategiesList'' request conforms to.
type PlacementStrategiesListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "placementStrategies" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "searchString" Text :>
                   QueryParams "ids" Int64 :>
                     QueryParam "sortOrder"
                       DfareportingPlacementStrategiesListSortOrder
                       :>
                       QueryParam "key" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "sortField"
                             DfareportingPlacementStrategiesListSortField
                             :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "maxResults" Int32 :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Alt :>
                                     Get '[JSON] PlacementStrategiesListResponse

-- | Retrieves a list of placement strategies, possibly filtered.
--
-- /See:/ 'placementStrategiesList'' smart constructor.
data PlacementStrategiesList' = PlacementStrategiesList'
    { _pslQuotaUser    :: !(Maybe Text)
    , _pslPrettyPrint  :: !Bool
    , _pslUserIp       :: !(Maybe Text)
    , _pslSearchString :: !(Maybe Text)
    , _pslIds          :: !(Maybe Int64)
    , _pslProfileId    :: !Int64
    , _pslSortOrder    :: !(Maybe DfareportingPlacementStrategiesListSortOrder)
    , _pslKey          :: !(Maybe Text)
    , _pslPageToken    :: !(Maybe Text)
    , _pslSortField    :: !(Maybe DfareportingPlacementStrategiesListSortField)
    , _pslOauthToken   :: !(Maybe Text)
    , _pslMaxResults   :: !(Maybe Int32)
    , _pslFields       :: !(Maybe Text)
    , _pslAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementStrategiesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pslQuotaUser'
--
-- * 'pslPrettyPrint'
--
-- * 'pslUserIp'
--
-- * 'pslSearchString'
--
-- * 'pslIds'
--
-- * 'pslProfileId'
--
-- * 'pslSortOrder'
--
-- * 'pslKey'
--
-- * 'pslPageToken'
--
-- * 'pslSortField'
--
-- * 'pslOauthToken'
--
-- * 'pslMaxResults'
--
-- * 'pslFields'
--
-- * 'pslAlt'
placementStrategiesList'
    :: Int64 -- ^ 'profileId'
    -> PlacementStrategiesList'
placementStrategiesList' pPslProfileId_ =
    PlacementStrategiesList'
    { _pslQuotaUser = Nothing
    , _pslPrettyPrint = True
    , _pslUserIp = Nothing
    , _pslSearchString = Nothing
    , _pslIds = Nothing
    , _pslProfileId = pPslProfileId_
    , _pslSortOrder = Nothing
    , _pslKey = Nothing
    , _pslPageToken = Nothing
    , _pslSortField = Nothing
    , _pslOauthToken = Nothing
    , _pslMaxResults = Nothing
    , _pslFields = Nothing
    , _pslAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pslQuotaUser :: Lens' PlacementStrategiesList' (Maybe Text)
pslQuotaUser
  = lens _pslQuotaUser (\ s a -> s{_pslQuotaUser = a})

-- | Returns response with indentations and line breaks.
pslPrettyPrint :: Lens' PlacementStrategiesList' Bool
pslPrettyPrint
  = lens _pslPrettyPrint
      (\ s a -> s{_pslPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pslUserIp :: Lens' PlacementStrategiesList' (Maybe Text)
pslUserIp
  = lens _pslUserIp (\ s a -> s{_pslUserIp = a})

-- | Allows searching for objects by name or ID. Wildcards (*) are allowed.
-- For example, \"placementstrategy*2015\" will return objects with names
-- like \"placementstrategy June 2015\", \"placementstrategy April 2015\",
-- or simply \"placementstrategy 2015\". Most of the searches also add
-- wildcards implicitly at the start and the end of the search string. For
-- example, a search string of \"placementstrategy\" will match objects
-- with name \"my placementstrategy\", \"placementstrategy 2015\", or
-- simply \"placementstrategy\".
pslSearchString :: Lens' PlacementStrategiesList' (Maybe Text)
pslSearchString
  = lens _pslSearchString
      (\ s a -> s{_pslSearchString = a})

-- | Select only placement strategies with these IDs.
pslIds :: Lens' PlacementStrategiesList' (Maybe Int64)
pslIds = lens _pslIds (\ s a -> s{_pslIds = a})

-- | User profile ID associated with this request.
pslProfileId :: Lens' PlacementStrategiesList' Int64
pslProfileId
  = lens _pslProfileId (\ s a -> s{_pslProfileId = a})

-- | Order of sorted results, default is ASCENDING.
pslSortOrder :: Lens' PlacementStrategiesList' (Maybe DfareportingPlacementStrategiesListSortOrder)
pslSortOrder
  = lens _pslSortOrder (\ s a -> s{_pslSortOrder = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pslKey :: Lens' PlacementStrategiesList' (Maybe Text)
pslKey = lens _pslKey (\ s a -> s{_pslKey = a})

-- | Value of the nextPageToken from the previous result page.
pslPageToken :: Lens' PlacementStrategiesList' (Maybe Text)
pslPageToken
  = lens _pslPageToken (\ s a -> s{_pslPageToken = a})

-- | Field by which to sort the list.
pslSortField :: Lens' PlacementStrategiesList' (Maybe DfareportingPlacementStrategiesListSortField)
pslSortField
  = lens _pslSortField (\ s a -> s{_pslSortField = a})

-- | OAuth 2.0 token for the current user.
pslOauthToken :: Lens' PlacementStrategiesList' (Maybe Text)
pslOauthToken
  = lens _pslOauthToken
      (\ s a -> s{_pslOauthToken = a})

-- | Maximum number of results to return.
pslMaxResults :: Lens' PlacementStrategiesList' (Maybe Int32)
pslMaxResults
  = lens _pslMaxResults
      (\ s a -> s{_pslMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
pslFields :: Lens' PlacementStrategiesList' (Maybe Text)
pslFields
  = lens _pslFields (\ s a -> s{_pslFields = a})

-- | Data format for the response.
pslAlt :: Lens' PlacementStrategiesList' Alt
pslAlt = lens _pslAlt (\ s a -> s{_pslAlt = a})

instance GoogleRequest PlacementStrategiesList' where
        type Rs PlacementStrategiesList' =
             PlacementStrategiesListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u PlacementStrategiesList'{..}
          = go _pslQuotaUser (Just _pslPrettyPrint) _pslUserIp
              _pslSearchString
              _pslIds
              _pslProfileId
              _pslSortOrder
              _pslKey
              _pslPageToken
              _pslSortField
              _pslOauthToken
              _pslMaxResults
              _pslFields
              (Just _pslAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PlacementStrategiesListResource)
                      r
                      u
