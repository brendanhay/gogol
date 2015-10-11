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
-- Module      : Network.Google.Resource.DFAReporting.DirectorySites.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of directory sites, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingDirectorySitesList@.
module Network.Google.Resource.DFAReporting.DirectorySites.List
    (
    -- * REST Resource
      DirectorySitesListResource

    -- * Creating a Request
    , directorySitesList'
    , DirectorySitesList'

    -- * Request Lenses
    , dslQuotaUser
    , dslPrettyPrint
    , dslUserIP
    , dslSearchString
    , dslAcceptsInterstitialPlacements
    , dslAcceptsPublisherPaidPlacements
    , dslIds
    , dslProFileId
    , dslSortOrder
    , dslActive
    , dslKey
    , dslCountryId
    , dslPageToken
    , dslSortField
    , dslAcceptsInStreamVideoPlacements
    , dslOAuthToken
    , dslMaxResults
    , dslParentId
    , dslDfpNetworkCode
    , dslFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingDirectorySitesList@ method which the
-- 'DirectorySitesList'' request conforms to.
type DirectorySitesListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "directorySites" :>
           QueryParam "searchString" Text :>
             QueryParam "acceptsInterstitialPlacements" Bool :>
               QueryParam "acceptsPublisherPaidPlacements" Bool :>
                 QueryParams "ids" Int64 :>
                   QueryParam "sortOrder" DirectorySitesListSortOrder :>
                     QueryParam "active" Bool :>
                       QueryParam "countryId" Int64 :>
                         QueryParam "pageToken" Text :>
                           QueryParam "sortField" DirectorySitesListSortField :>
                             QueryParam "acceptsInStreamVideoPlacements" Bool :>
                               QueryParam "maxResults" Int32 :>
                                 QueryParam "parentId" Int64 :>
                                   QueryParam "dfp_network_code" Text :>
                                     QueryParam "quotaUser" Text :>
                                       QueryParam "prettyPrint" Bool :>
                                         QueryParam "userIp" Text :>
                                           QueryParam "fields" Text :>
                                             QueryParam "key" AuthKey :>
                                               Header "Authorization" OAuthToken
                                                 :>
                                                 QueryParam "alt" AltJSON :>
                                                   Get '[JSON]
                                                     DirectorySitesListResponse

-- | Retrieves a list of directory sites, possibly filtered.
--
-- /See:/ 'directorySitesList'' smart constructor.
data DirectorySitesList' = DirectorySitesList'
    { _dslQuotaUser                      :: !(Maybe Text)
    , _dslPrettyPrint                    :: !Bool
    , _dslUserIP                         :: !(Maybe Text)
    , _dslSearchString                   :: !(Maybe Text)
    , _dslAcceptsInterstitialPlacements  :: !(Maybe Bool)
    , _dslAcceptsPublisherPaidPlacements :: !(Maybe Bool)
    , _dslIds                            :: !(Maybe [Int64])
    , _dslProFileId                      :: !Int64
    , _dslSortOrder                      :: !(Maybe DirectorySitesListSortOrder)
    , _dslActive                         :: !(Maybe Bool)
    , _dslKey                            :: !(Maybe AuthKey)
    , _dslCountryId                      :: !(Maybe Int64)
    , _dslPageToken                      :: !(Maybe Text)
    , _dslSortField                      :: !(Maybe DirectorySitesListSortField)
    , _dslAcceptsInStreamVideoPlacements :: !(Maybe Bool)
    , _dslOAuthToken                     :: !(Maybe OAuthToken)
    , _dslMaxResults                     :: !(Maybe Int32)
    , _dslParentId                       :: !(Maybe Int64)
    , _dslDfpNetworkCode                 :: !(Maybe Text)
    , _dslFields                         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DirectorySitesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dslQuotaUser'
--
-- * 'dslPrettyPrint'
--
-- * 'dslUserIP'
--
-- * 'dslSearchString'
--
-- * 'dslAcceptsInterstitialPlacements'
--
-- * 'dslAcceptsPublisherPaidPlacements'
--
-- * 'dslIds'
--
-- * 'dslProFileId'
--
-- * 'dslSortOrder'
--
-- * 'dslActive'
--
-- * 'dslKey'
--
-- * 'dslCountryId'
--
-- * 'dslPageToken'
--
-- * 'dslSortField'
--
-- * 'dslAcceptsInStreamVideoPlacements'
--
-- * 'dslOAuthToken'
--
-- * 'dslMaxResults'
--
-- * 'dslParentId'
--
-- * 'dslDfpNetworkCode'
--
-- * 'dslFields'
directorySitesList'
    :: Int64 -- ^ 'profileId'
    -> DirectorySitesList'
directorySitesList' pDslProFileId_ =
    DirectorySitesList'
    { _dslQuotaUser = Nothing
    , _dslPrettyPrint = True
    , _dslUserIP = Nothing
    , _dslSearchString = Nothing
    , _dslAcceptsInterstitialPlacements = Nothing
    , _dslAcceptsPublisherPaidPlacements = Nothing
    , _dslIds = Nothing
    , _dslProFileId = pDslProFileId_
    , _dslSortOrder = Nothing
    , _dslActive = Nothing
    , _dslKey = Nothing
    , _dslCountryId = Nothing
    , _dslPageToken = Nothing
    , _dslSortField = Nothing
    , _dslAcceptsInStreamVideoPlacements = Nothing
    , _dslOAuthToken = Nothing
    , _dslMaxResults = Nothing
    , _dslParentId = Nothing
    , _dslDfpNetworkCode = Nothing
    , _dslFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dslQuotaUser :: Lens' DirectorySitesList' (Maybe Text)
dslQuotaUser
  = lens _dslQuotaUser (\ s a -> s{_dslQuotaUser = a})

-- | Returns response with indentations and line breaks.
dslPrettyPrint :: Lens' DirectorySitesList' Bool
dslPrettyPrint
  = lens _dslPrettyPrint
      (\ s a -> s{_dslPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dslUserIP :: Lens' DirectorySitesList' (Maybe Text)
dslUserIP
  = lens _dslUserIP (\ s a -> s{_dslUserIP = a})

-- | Allows searching for objects by name, ID or URL. Wildcards (*) are
-- allowed. For example, \"directory site*2015\" will return objects with
-- names like \"directory site June 2015\", \"directory site April 2015\",
-- or simply \"directory site 2015\". Most of the searches also add
-- wildcards implicitly at the start and the end of the search string. For
-- example, a search string of \"directory site\" will match objects with
-- name \"my directory site\", \"directory site 2015\" or simply,
-- \"directory site\".
dslSearchString :: Lens' DirectorySitesList' (Maybe Text)
dslSearchString
  = lens _dslSearchString
      (\ s a -> s{_dslSearchString = a})

-- | This search filter is no longer supported and will have no effect on the
-- results returned.
dslAcceptsInterstitialPlacements :: Lens' DirectorySitesList' (Maybe Bool)
dslAcceptsInterstitialPlacements
  = lens _dslAcceptsInterstitialPlacements
      (\ s a -> s{_dslAcceptsInterstitialPlacements = a})

-- | Select only directory sites that accept publisher paid placements. This
-- field can be left blank.
dslAcceptsPublisherPaidPlacements :: Lens' DirectorySitesList' (Maybe Bool)
dslAcceptsPublisherPaidPlacements
  = lens _dslAcceptsPublisherPaidPlacements
      (\ s a -> s{_dslAcceptsPublisherPaidPlacements = a})

-- | Select only directory sites with these IDs.
dslIds :: Lens' DirectorySitesList' [Int64]
dslIds
  = lens _dslIds (\ s a -> s{_dslIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
dslProFileId :: Lens' DirectorySitesList' Int64
dslProFileId
  = lens _dslProFileId (\ s a -> s{_dslProFileId = a})

-- | Order of sorted results, default is ASCENDING.
dslSortOrder :: Lens' DirectorySitesList' (Maybe DirectorySitesListSortOrder)
dslSortOrder
  = lens _dslSortOrder (\ s a -> s{_dslSortOrder = a})

-- | Select only active directory sites. Leave blank to retrieve both active
-- and inactive directory sites.
dslActive :: Lens' DirectorySitesList' (Maybe Bool)
dslActive
  = lens _dslActive (\ s a -> s{_dslActive = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dslKey :: Lens' DirectorySitesList' (Maybe AuthKey)
dslKey = lens _dslKey (\ s a -> s{_dslKey = a})

-- | Select only directory sites with this country ID.
dslCountryId :: Lens' DirectorySitesList' (Maybe Int64)
dslCountryId
  = lens _dslCountryId (\ s a -> s{_dslCountryId = a})

-- | Value of the nextPageToken from the previous result page.
dslPageToken :: Lens' DirectorySitesList' (Maybe Text)
dslPageToken
  = lens _dslPageToken (\ s a -> s{_dslPageToken = a})

-- | Field by which to sort the list.
dslSortField :: Lens' DirectorySitesList' (Maybe DirectorySitesListSortField)
dslSortField
  = lens _dslSortField (\ s a -> s{_dslSortField = a})

-- | This search filter is no longer supported and will have no effect on the
-- results returned.
dslAcceptsInStreamVideoPlacements :: Lens' DirectorySitesList' (Maybe Bool)
dslAcceptsInStreamVideoPlacements
  = lens _dslAcceptsInStreamVideoPlacements
      (\ s a -> s{_dslAcceptsInStreamVideoPlacements = a})

-- | OAuth 2.0 token for the current user.
dslOAuthToken :: Lens' DirectorySitesList' (Maybe OAuthToken)
dslOAuthToken
  = lens _dslOAuthToken
      (\ s a -> s{_dslOAuthToken = a})

-- | Maximum number of results to return.
dslMaxResults :: Lens' DirectorySitesList' (Maybe Int32)
dslMaxResults
  = lens _dslMaxResults
      (\ s a -> s{_dslMaxResults = a})

-- | Select only directory sites with this parent ID.
dslParentId :: Lens' DirectorySitesList' (Maybe Int64)
dslParentId
  = lens _dslParentId (\ s a -> s{_dslParentId = a})

-- | Select only directory sites with this DFP network code.
dslDfpNetworkCode :: Lens' DirectorySitesList' (Maybe Text)
dslDfpNetworkCode
  = lens _dslDfpNetworkCode
      (\ s a -> s{_dslDfpNetworkCode = a})

-- | Selector specifying which fields to include in a partial response.
dslFields :: Lens' DirectorySitesList' (Maybe Text)
dslFields
  = lens _dslFields (\ s a -> s{_dslFields = a})

instance GoogleAuth DirectorySitesList' where
        _AuthKey = dslKey . _Just
        _AuthToken = dslOAuthToken . _Just

instance GoogleRequest DirectorySitesList' where
        type Rs DirectorySitesList' =
             DirectorySitesListResponse
        request = requestWith dFAReportingRequest
        requestWith rq DirectorySitesList'{..}
          = go _dslProFileId _dslSearchString
              _dslAcceptsInterstitialPlacements
              _dslAcceptsPublisherPaidPlacements
              (_dslIds ^. _Default)
              _dslSortOrder
              _dslActive
              _dslCountryId
              _dslPageToken
              _dslSortField
              _dslAcceptsInStreamVideoPlacements
              _dslMaxResults
              _dslParentId
              _dslDfpNetworkCode
              _dslQuotaUser
              (Just _dslPrettyPrint)
              _dslUserIP
              _dslFields
              _dslKey
              _dslOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy DirectorySitesListResource)
                      rq
