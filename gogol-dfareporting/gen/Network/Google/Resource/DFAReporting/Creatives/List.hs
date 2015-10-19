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
-- Module      : Network.Google.Resource.DFAReporting.Creatives.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of creatives, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.creatives.list@.
module Network.Google.Resource.DFAReporting.Creatives.List
    (
    -- * REST Resource
      CreativesListResource

    -- * Creating a Request
    , creativesList'
    , CreativesList'

    -- * Request Lenses
    , clRenderingIds
    , clAdvertiserId
    , clSearchString
    , clSizeIds
    , clCompanionCreativeIds
    , clCampaignId
    , clTypes
    , clIds
    , clProFileId
    , clSortOrder
    , clActive
    , clCreativeFieldIds
    , clPageToken
    , clSortField
    , clStudioCreativeId
    , clArchived
    , clMaxResults
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.creatives.list@ method which the
-- 'CreativesList'' request conforms to.
type CreativesListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creatives" :>
           QueryParams "renderingIds" Int64 :>
             QueryParam "advertiserId" Int64 :>
               QueryParam "searchString" Text :>
                 QueryParams "sizeIds" Int64 :>
                   QueryParams "companionCreativeIds" Int64 :>
                     QueryParam "campaignId" Int64 :>
                       QueryParams "types" CreativesListTypes :>
                         QueryParams "ids" Int64 :>
                           QueryParam "sortOrder" CreativesListSortOrder :>
                             QueryParam "active" Bool :>
                               QueryParams "creativeFieldIds" Int64 :>
                                 QueryParam "pageToken" Text :>
                                   QueryParam "sortField" CreativesListSortField
                                     :>
                                     QueryParam "studioCreativeId" Int64 :>
                                       QueryParam "archived" Bool :>
                                         QueryParam "maxResults" Int32 :>
                                           QueryParam "alt" AltJSON :>
                                             Get '[JSON] CreativesListResponse

-- | Retrieves a list of creatives, possibly filtered.
--
-- /See:/ 'creativesList'' smart constructor.
data CreativesList' = CreativesList'
    { _clRenderingIds         :: !(Maybe [Int64])
    , _clAdvertiserId         :: !(Maybe Int64)
    , _clSearchString         :: !(Maybe Text)
    , _clSizeIds              :: !(Maybe [Int64])
    , _clCompanionCreativeIds :: !(Maybe [Int64])
    , _clCampaignId           :: !(Maybe Int64)
    , _clTypes                :: !(Maybe [CreativesListTypes])
    , _clIds                  :: !(Maybe [Int64])
    , _clProFileId            :: !Int64
    , _clSortOrder            :: !(Maybe CreativesListSortOrder)
    , _clActive               :: !(Maybe Bool)
    , _clCreativeFieldIds     :: !(Maybe [Int64])
    , _clPageToken            :: !(Maybe Text)
    , _clSortField            :: !(Maybe CreativesListSortField)
    , _clStudioCreativeId     :: !(Maybe Int64)
    , _clArchived             :: !(Maybe Bool)
    , _clMaxResults           :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clRenderingIds'
--
-- * 'clAdvertiserId'
--
-- * 'clSearchString'
--
-- * 'clSizeIds'
--
-- * 'clCompanionCreativeIds'
--
-- * 'clCampaignId'
--
-- * 'clTypes'
--
-- * 'clIds'
--
-- * 'clProFileId'
--
-- * 'clSortOrder'
--
-- * 'clActive'
--
-- * 'clCreativeFieldIds'
--
-- * 'clPageToken'
--
-- * 'clSortField'
--
-- * 'clStudioCreativeId'
--
-- * 'clArchived'
--
-- * 'clMaxResults'
creativesList'
    :: Int64 -- ^ 'clProFileId'
    -> CreativesList'
creativesList' pClProFileId_ =
    CreativesList'
    { _clRenderingIds = Nothing
    , _clAdvertiserId = Nothing
    , _clSearchString = Nothing
    , _clSizeIds = Nothing
    , _clCompanionCreativeIds = Nothing
    , _clCampaignId = Nothing
    , _clTypes = Nothing
    , _clIds = Nothing
    , _clProFileId = pClProFileId_
    , _clSortOrder = Nothing
    , _clActive = Nothing
    , _clCreativeFieldIds = Nothing
    , _clPageToken = Nothing
    , _clSortField = Nothing
    , _clStudioCreativeId = Nothing
    , _clArchived = Nothing
    , _clMaxResults = Nothing
    }

-- | Select only creatives with these rendering IDs.
clRenderingIds :: Lens' CreativesList' [Int64]
clRenderingIds
  = lens _clRenderingIds
      (\ s a -> s{_clRenderingIds = a})
      . _Default
      . _Coerce

-- | Select only creatives with this advertiser ID.
clAdvertiserId :: Lens' CreativesList' (Maybe Int64)
clAdvertiserId
  = lens _clAdvertiserId
      (\ s a -> s{_clAdvertiserId = a})

-- | Allows searching for objects by name or ID. Wildcards (*) are allowed.
-- For example, \"creative*2015\" will return objects with names like
-- \"creative June 2015\", \"creative April 2015\", or simply \"creative
-- 2015\". Most of the searches also add wildcards implicitly at the start
-- and the end of the search string. For example, a search string of
-- \"creative\" will match objects with name \"my creative\", \"creative
-- 2015\", or simply \"creative\".
clSearchString :: Lens' CreativesList' (Maybe Text)
clSearchString
  = lens _clSearchString
      (\ s a -> s{_clSearchString = a})

-- | Select only creatives with these size IDs.
clSizeIds :: Lens' CreativesList' [Int64]
clSizeIds
  = lens _clSizeIds (\ s a -> s{_clSizeIds = a}) .
      _Default
      . _Coerce

-- | Select only in-stream video creatives with these companion IDs.
clCompanionCreativeIds :: Lens' CreativesList' [Int64]
clCompanionCreativeIds
  = lens _clCompanionCreativeIds
      (\ s a -> s{_clCompanionCreativeIds = a})
      . _Default
      . _Coerce

-- | Select only creatives with this campaign ID.
clCampaignId :: Lens' CreativesList' (Maybe Int64)
clCampaignId
  = lens _clCampaignId (\ s a -> s{_clCampaignId = a})

-- | Select only creatives with these creative types.
clTypes :: Lens' CreativesList' [CreativesListTypes]
clTypes
  = lens _clTypes (\ s a -> s{_clTypes = a}) . _Default
      . _Coerce

-- | Select only creatives with these IDs.
clIds :: Lens' CreativesList' [Int64]
clIds
  = lens _clIds (\ s a -> s{_clIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
clProFileId :: Lens' CreativesList' Int64
clProFileId
  = lens _clProFileId (\ s a -> s{_clProFileId = a})

-- | Order of sorted results, default is ASCENDING.
clSortOrder :: Lens' CreativesList' (Maybe CreativesListSortOrder)
clSortOrder
  = lens _clSortOrder (\ s a -> s{_clSortOrder = a})

-- | Select only active creatives. Leave blank to select active and inactive
-- creatives.
clActive :: Lens' CreativesList' (Maybe Bool)
clActive = lens _clActive (\ s a -> s{_clActive = a})

-- | Select only creatives with these creative field IDs.
clCreativeFieldIds :: Lens' CreativesList' [Int64]
clCreativeFieldIds
  = lens _clCreativeFieldIds
      (\ s a -> s{_clCreativeFieldIds = a})
      . _Default
      . _Coerce

-- | Value of the nextPageToken from the previous result page.
clPageToken :: Lens' CreativesList' (Maybe Text)
clPageToken
  = lens _clPageToken (\ s a -> s{_clPageToken = a})

-- | Field by which to sort the list.
clSortField :: Lens' CreativesList' (Maybe CreativesListSortField)
clSortField
  = lens _clSortField (\ s a -> s{_clSortField = a})

-- | Select only creatives corresponding to this Studio creative ID.
clStudioCreativeId :: Lens' CreativesList' (Maybe Int64)
clStudioCreativeId
  = lens _clStudioCreativeId
      (\ s a -> s{_clStudioCreativeId = a})

-- | Select only archived creatives. Leave blank to select archived and
-- unarchived creatives.
clArchived :: Lens' CreativesList' (Maybe Bool)
clArchived
  = lens _clArchived (\ s a -> s{_clArchived = a})

-- | Maximum number of results to return.
clMaxResults :: Lens' CreativesList' (Maybe Int32)
clMaxResults
  = lens _clMaxResults (\ s a -> s{_clMaxResults = a})

instance GoogleRequest CreativesList' where
        type Rs CreativesList' = CreativesListResponse
        requestClient CreativesList'{..}
          = go _clProFileId (_clRenderingIds ^. _Default)
              _clAdvertiserId
              _clSearchString
              (_clSizeIds ^. _Default)
              (_clCompanionCreativeIds ^. _Default)
              _clCampaignId
              (_clTypes ^. _Default)
              (_clIds ^. _Default)
              _clSortOrder
              _clActive
              (_clCreativeFieldIds ^. _Default)
              _clPageToken
              _clSortField
              _clStudioCreativeId
              _clArchived
              _clMaxResults
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy CreativesListResource)
                      mempty
