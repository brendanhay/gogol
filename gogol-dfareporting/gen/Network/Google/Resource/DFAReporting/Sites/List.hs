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
-- Module      : Network.Google.Resource.DFAReporting.Sites.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of sites, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.sites.list@.
module Network.Google.Resource.DFAReporting.Sites.List
    (
    -- * REST Resource
      SitesListResource

    -- * Creating a Request
    , sitesList'
    , SitesList'

    -- * Request Lenses
    , sitUnmAppedSite
    , sitCampaignIds
    , sitSearchString
    , sitAcceptsInterstitialPlacements
    , sitAcceptsPublisherPaidPlacements
    , sitIds
    , sitProFileId
    , sitDirectorySiteIds
    , sitSortOrder
    , sitPageToken
    , sitSortField
    , sitSubAccountId
    , sitAcceptsInStreamVideoPlacements
    , sitApproved
    , sitAdWordsSite
    , sitMaxResults
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.sites.list@ method which the
-- 'SitesList'' request conforms to.
type SitesListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "sites" :>
           QueryParam "unmappedSite" Bool :>
             QueryParams "campaignIds" Int64 :>
               QueryParam "searchString" Text :>
                 QueryParam "acceptsInterstitialPlacements" Bool :>
                   QueryParam "acceptsPublisherPaidPlacements" Bool :>
                     QueryParams "ids" Int64 :>
                       QueryParams "directorySiteIds" Int64 :>
                         QueryParam "sortOrder" SitesListSortOrder :>
                           QueryParam "pageToken" Text :>
                             QueryParam "sortField" SitesListSortField :>
                               QueryParam "subaccountId" Int64 :>
                                 QueryParam "acceptsInStreamVideoPlacements"
                                   Bool
                                   :>
                                   QueryParam "approved" Bool :>
                                     QueryParam "adWordsSite" Bool :>
                                       QueryParam "maxResults" Int32 :>
                                         QueryParam "alt" AltJSON :>
                                           Get '[JSON] SitesListResponse

-- | Retrieves a list of sites, possibly filtered.
--
-- /See:/ 'sitesList'' smart constructor.
data SitesList' = SitesList'
    { _sitUnmAppedSite                   :: !(Maybe Bool)
    , _sitCampaignIds                    :: !(Maybe [Int64])
    , _sitSearchString                   :: !(Maybe Text)
    , _sitAcceptsInterstitialPlacements  :: !(Maybe Bool)
    , _sitAcceptsPublisherPaidPlacements :: !(Maybe Bool)
    , _sitIds                            :: !(Maybe [Int64])
    , _sitProFileId                      :: !Int64
    , _sitDirectorySiteIds               :: !(Maybe [Int64])
    , _sitSortOrder                      :: !(Maybe SitesListSortOrder)
    , _sitPageToken                      :: !(Maybe Text)
    , _sitSortField                      :: !(Maybe SitesListSortField)
    , _sitSubAccountId                   :: !(Maybe Int64)
    , _sitAcceptsInStreamVideoPlacements :: !(Maybe Bool)
    , _sitApproved                       :: !(Maybe Bool)
    , _sitAdWordsSite                    :: !(Maybe Bool)
    , _sitMaxResults                     :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sitUnmAppedSite'
--
-- * 'sitCampaignIds'
--
-- * 'sitSearchString'
--
-- * 'sitAcceptsInterstitialPlacements'
--
-- * 'sitAcceptsPublisherPaidPlacements'
--
-- * 'sitIds'
--
-- * 'sitProFileId'
--
-- * 'sitDirectorySiteIds'
--
-- * 'sitSortOrder'
--
-- * 'sitPageToken'
--
-- * 'sitSortField'
--
-- * 'sitSubAccountId'
--
-- * 'sitAcceptsInStreamVideoPlacements'
--
-- * 'sitApproved'
--
-- * 'sitAdWordsSite'
--
-- * 'sitMaxResults'
sitesList'
    :: Int64 -- ^ 'sitProFileId'
    -> SitesList'
sitesList' pSitProFileId_ =
    SitesList'
    { _sitUnmAppedSite = Nothing
    , _sitCampaignIds = Nothing
    , _sitSearchString = Nothing
    , _sitAcceptsInterstitialPlacements = Nothing
    , _sitAcceptsPublisherPaidPlacements = Nothing
    , _sitIds = Nothing
    , _sitProFileId = pSitProFileId_
    , _sitDirectorySiteIds = Nothing
    , _sitSortOrder = Nothing
    , _sitPageToken = Nothing
    , _sitSortField = Nothing
    , _sitSubAccountId = Nothing
    , _sitAcceptsInStreamVideoPlacements = Nothing
    , _sitApproved = Nothing
    , _sitAdWordsSite = Nothing
    , _sitMaxResults = Nothing
    }

-- | Select only sites that have not been mapped to a directory site.
sitUnmAppedSite :: Lens' SitesList' (Maybe Bool)
sitUnmAppedSite
  = lens _sitUnmAppedSite
      (\ s a -> s{_sitUnmAppedSite = a})

-- | Select only sites with these campaign IDs.
sitCampaignIds :: Lens' SitesList' [Int64]
sitCampaignIds
  = lens _sitCampaignIds
      (\ s a -> s{_sitCampaignIds = a})
      . _Default
      . _Coerce

-- | Allows searching for objects by name, ID or keyName. Wildcards (*) are
-- allowed. For example, \"site*2015\" will return objects with names like
-- \"site June 2015\", \"site April 2015\", or simply \"site 2015\". Most
-- of the searches also add wildcards implicitly at the start and the end
-- of the search string. For example, a search string of \"site\" will
-- match objects with name \"my site\", \"site 2015\", or simply \"site\".
sitSearchString :: Lens' SitesList' (Maybe Text)
sitSearchString
  = lens _sitSearchString
      (\ s a -> s{_sitSearchString = a})

-- | This search filter is no longer supported and will have no effect on the
-- results returned.
sitAcceptsInterstitialPlacements :: Lens' SitesList' (Maybe Bool)
sitAcceptsInterstitialPlacements
  = lens _sitAcceptsInterstitialPlacements
      (\ s a -> s{_sitAcceptsInterstitialPlacements = a})

-- | Select only sites that accept publisher paid placements.
sitAcceptsPublisherPaidPlacements :: Lens' SitesList' (Maybe Bool)
sitAcceptsPublisherPaidPlacements
  = lens _sitAcceptsPublisherPaidPlacements
      (\ s a -> s{_sitAcceptsPublisherPaidPlacements = a})

-- | Select only sites with these IDs.
sitIds :: Lens' SitesList' [Int64]
sitIds
  = lens _sitIds (\ s a -> s{_sitIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
sitProFileId :: Lens' SitesList' Int64
sitProFileId
  = lens _sitProFileId (\ s a -> s{_sitProFileId = a})

-- | Select only sites with these directory site IDs.
sitDirectorySiteIds :: Lens' SitesList' [Int64]
sitDirectorySiteIds
  = lens _sitDirectorySiteIds
      (\ s a -> s{_sitDirectorySiteIds = a})
      . _Default
      . _Coerce

-- | Order of sorted results, default is ASCENDING.
sitSortOrder :: Lens' SitesList' (Maybe SitesListSortOrder)
sitSortOrder
  = lens _sitSortOrder (\ s a -> s{_sitSortOrder = a})

-- | Value of the nextPageToken from the previous result page.
sitPageToken :: Lens' SitesList' (Maybe Text)
sitPageToken
  = lens _sitPageToken (\ s a -> s{_sitPageToken = a})

-- | Field by which to sort the list.
sitSortField :: Lens' SitesList' (Maybe SitesListSortField)
sitSortField
  = lens _sitSortField (\ s a -> s{_sitSortField = a})

-- | Select only sites with this subaccount ID.
sitSubAccountId :: Lens' SitesList' (Maybe Int64)
sitSubAccountId
  = lens _sitSubAccountId
      (\ s a -> s{_sitSubAccountId = a})

-- | This search filter is no longer supported and will have no effect on the
-- results returned.
sitAcceptsInStreamVideoPlacements :: Lens' SitesList' (Maybe Bool)
sitAcceptsInStreamVideoPlacements
  = lens _sitAcceptsInStreamVideoPlacements
      (\ s a -> s{_sitAcceptsInStreamVideoPlacements = a})

-- | Select only approved sites.
sitApproved :: Lens' SitesList' (Maybe Bool)
sitApproved
  = lens _sitApproved (\ s a -> s{_sitApproved = a})

-- | Select only AdWords sites.
sitAdWordsSite :: Lens' SitesList' (Maybe Bool)
sitAdWordsSite
  = lens _sitAdWordsSite
      (\ s a -> s{_sitAdWordsSite = a})

-- | Maximum number of results to return.
sitMaxResults :: Lens' SitesList' (Maybe Int32)
sitMaxResults
  = lens _sitMaxResults
      (\ s a -> s{_sitMaxResults = a})

instance GoogleRequest SitesList' where
        type Rs SitesList' = SitesListResponse
        requestClient SitesList'{..}
          = go _sitProFileId _sitUnmAppedSite
              (_sitCampaignIds ^. _Default)
              _sitSearchString
              _sitAcceptsInterstitialPlacements
              _sitAcceptsPublisherPaidPlacements
              (_sitIds ^. _Default)
              (_sitDirectorySiteIds ^. _Default)
              _sitSortOrder
              _sitPageToken
              _sitSortField
              _sitSubAccountId
              _sitAcceptsInStreamVideoPlacements
              _sitApproved
              _sitAdWordsSite
              _sitMaxResults
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy SitesListResource)
                      mempty
