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
-- Retrieves a list of directory sites, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.directorySites.list@.
module Network.Google.Resource.DFAReporting.DirectorySites.List
    (
    -- * REST Resource
      DirectorySitesListResource

    -- * Creating a Request
    , directorySitesList
    , DirectorySitesList

    -- * Request Lenses
    , dslSearchString
    , dslAcceptsInterstitialPlacements
    , dslAcceptsPublisherPaidPlacements
    , dslIds
    , dslProFileId
    , dslSortOrder
    , dslActive
    , dslCountryId
    , dslPageToken
    , dslSortField
    , dslAcceptsInStreamVideoPlacements
    , dslMaxResults
    , dslParentId
    , dslDfpNetworkCode
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.directorySites.list@ method which the
-- 'DirectorySitesList' request conforms to.
type DirectorySitesListResource =
     "dfareporting" :>
       "v2.2" :>
         "userprofiles" :>
           Capture "profileId" (JSONText Int64) :>
             "directorySites" :>
               QueryParam "searchString" Text :>
                 QueryParam "acceptsInterstitialPlacements" Bool :>
                   QueryParam "acceptsPublisherPaidPlacements" Bool :>
                     QueryParams "ids" (JSONText Int64) :>
                       QueryParam "sortOrder" DirectorySitesListSortOrder :>
                         QueryParam "active" Bool :>
                           QueryParam "countryId" (JSONText Int64) :>
                             QueryParam "pageToken" Text :>
                               QueryParam "sortField"
                                 DirectorySitesListSortField
                                 :>
                                 QueryParam "acceptsInStreamVideoPlacements"
                                   Bool
                                   :>
                                   QueryParam "maxResults" (JSONText Int32) :>
                                     QueryParam "parentId" (JSONText Int64) :>
                                       QueryParam "dfp_network_code" Text :>
                                         QueryParam "alt" AltJSON :>
                                           Get '[JSON]
                                             DirectorySitesListResponse

-- | Retrieves a list of directory sites, possibly filtered.
--
-- /See:/ 'directorySitesList' smart constructor.
data DirectorySitesList = DirectorySitesList
    { _dslSearchString                   :: !(Maybe Text)
    , _dslAcceptsInterstitialPlacements  :: !(Maybe Bool)
    , _dslAcceptsPublisherPaidPlacements :: !(Maybe Bool)
    , _dslIds                            :: !(Maybe [JSONText Int64])
    , _dslProFileId                      :: !(JSONText Int64)
    , _dslSortOrder                      :: !(Maybe DirectorySitesListSortOrder)
    , _dslActive                         :: !(Maybe Bool)
    , _dslCountryId                      :: !(Maybe (JSONText Int64))
    , _dslPageToken                      :: !(Maybe Text)
    , _dslSortField                      :: !(Maybe DirectorySitesListSortField)
    , _dslAcceptsInStreamVideoPlacements :: !(Maybe Bool)
    , _dslMaxResults                     :: !(Maybe (JSONText Int32))
    , _dslParentId                       :: !(Maybe (JSONText Int64))
    , _dslDfpNetworkCode                 :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DirectorySitesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
-- * 'dslCountryId'
--
-- * 'dslPageToken'
--
-- * 'dslSortField'
--
-- * 'dslAcceptsInStreamVideoPlacements'
--
-- * 'dslMaxResults'
--
-- * 'dslParentId'
--
-- * 'dslDfpNetworkCode'
directorySitesList
    :: Int64 -- ^ 'dslProFileId'
    -> DirectorySitesList
directorySitesList pDslProFileId_ =
    DirectorySitesList
    { _dslSearchString = Nothing
    , _dslAcceptsInterstitialPlacements = Nothing
    , _dslAcceptsPublisherPaidPlacements = Nothing
    , _dslIds = Nothing
    , _dslProFileId = pDslProFileId_
    , _dslSortOrder = Nothing
    , _dslActive = Nothing
    , _dslCountryId = Nothing
    , _dslPageToken = Nothing
    , _dslSortField = Nothing
    , _dslAcceptsInStreamVideoPlacements = Nothing
    , _dslMaxResults = Nothing
    , _dslParentId = Nothing
    , _dslDfpNetworkCode = Nothing
    }

-- | Allows searching for objects by name, ID or URL. Wildcards (*) are
-- allowed. For example, \"directory site*2015\" will return objects with
-- names like \"directory site June 2015\", \"directory site April 2015\",
-- or simply \"directory site 2015\". Most of the searches also add
-- wildcards implicitly at the start and the end of the search string. For
-- example, a search string of \"directory site\" will match objects with
-- name \"my directory site\", \"directory site 2015\" or simply,
-- \"directory site\".
dslSearchString :: Lens' DirectorySitesList (Maybe Text)
dslSearchString
  = lens _dslSearchString
      (\ s a -> s{_dslSearchString = a})

-- | This search filter is no longer supported and will have no effect on the
-- results returned.
dslAcceptsInterstitialPlacements :: Lens' DirectorySitesList (Maybe Bool)
dslAcceptsInterstitialPlacements
  = lens _dslAcceptsInterstitialPlacements
      (\ s a -> s{_dslAcceptsInterstitialPlacements = a})

-- | Select only directory sites that accept publisher paid placements. This
-- field can be left blank.
dslAcceptsPublisherPaidPlacements :: Lens' DirectorySitesList (Maybe Bool)
dslAcceptsPublisherPaidPlacements
  = lens _dslAcceptsPublisherPaidPlacements
      (\ s a -> s{_dslAcceptsPublisherPaidPlacements = a})

-- | Select only directory sites with these IDs.
dslIds :: Lens' DirectorySitesList [Int64]
dslIds
  = lens _dslIds (\ s a -> s{_dslIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
dslProFileId :: Lens' DirectorySitesList Int64
dslProFileId
  = lens _dslProFileId (\ s a -> s{_dslProFileId = a})
      . _Coerce

-- | Order of sorted results, default is ASCENDING.
dslSortOrder :: Lens' DirectorySitesList (Maybe DirectorySitesListSortOrder)
dslSortOrder
  = lens _dslSortOrder (\ s a -> s{_dslSortOrder = a})

-- | Select only active directory sites. Leave blank to retrieve both active
-- and inactive directory sites.
dslActive :: Lens' DirectorySitesList (Maybe Bool)
dslActive
  = lens _dslActive (\ s a -> s{_dslActive = a})

-- | Select only directory sites with this country ID.
dslCountryId :: Lens' DirectorySitesList (Maybe Int64)
dslCountryId
  = lens _dslCountryId (\ s a -> s{_dslCountryId = a})
      . mapping _Coerce

-- | Value of the nextPageToken from the previous result page.
dslPageToken :: Lens' DirectorySitesList (Maybe Text)
dslPageToken
  = lens _dslPageToken (\ s a -> s{_dslPageToken = a})

-- | Field by which to sort the list.
dslSortField :: Lens' DirectorySitesList (Maybe DirectorySitesListSortField)
dslSortField
  = lens _dslSortField (\ s a -> s{_dslSortField = a})

-- | This search filter is no longer supported and will have no effect on the
-- results returned.
dslAcceptsInStreamVideoPlacements :: Lens' DirectorySitesList (Maybe Bool)
dslAcceptsInStreamVideoPlacements
  = lens _dslAcceptsInStreamVideoPlacements
      (\ s a -> s{_dslAcceptsInStreamVideoPlacements = a})

-- | Maximum number of results to return.
dslMaxResults :: Lens' DirectorySitesList (Maybe Int32)
dslMaxResults
  = lens _dslMaxResults
      (\ s a -> s{_dslMaxResults = a})
      . mapping _Coerce

-- | Select only directory sites with this parent ID.
dslParentId :: Lens' DirectorySitesList (Maybe Int64)
dslParentId
  = lens _dslParentId (\ s a -> s{_dslParentId = a}) .
      mapping _Coerce

-- | Select only directory sites with this DFP network code.
dslDfpNetworkCode :: Lens' DirectorySitesList (Maybe Text)
dslDfpNetworkCode
  = lens _dslDfpNetworkCode
      (\ s a -> s{_dslDfpNetworkCode = a})

instance GoogleRequest DirectorySitesList where
        type Rs DirectorySitesList =
             DirectorySitesListResponse
        requestClient DirectorySitesList{..}
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
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy DirectorySitesListResource)
                      mempty
