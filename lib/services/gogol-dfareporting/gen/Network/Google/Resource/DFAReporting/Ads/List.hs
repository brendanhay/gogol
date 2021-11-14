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
-- Module      : Network.Google.Resource.DFAReporting.Ads.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of ads, possibly filtered. This method supports paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.ads.list@.
module Network.Google.Resource.DFAReporting.Ads.List
    (
    -- * REST Resource
      AdsListResource

    -- * Creating a Request
    , adsList
    , AdsList

    -- * Request Lenses
    , alXgafv
    , alRemarketingListIds
    , alLandingPageIds
    , alUploadProtocol
    , alCreativeIds
    , alAccessToken
    , alAdvertiserId
    , alCampaignIds
    , alSearchString
    , alSizeIds
    , alSSLCompliant
    , alUploadType
    , alIds
    , alProFileId
    , alSortOrder
    , alActive
    , alCreativeOptimizationConfigurationIds
    , alPlacementIds
    , alSSLRequired
    , alOverriddenEventTagId
    , alPageToken
    , alSortField
    , alType
    , alDynamicClickTracker
    , alCompatibility
    , alArchived
    , alMaxResults
    , alCallback
    , alAudienceSegmentIds
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.ads.list@ method which the
-- 'AdsList' request conforms to.
type AdsListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "ads" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParams "remarketingListIds" (Textual Int64) :>
                   QueryParams "landingPageIds" (Textual Int64) :>
                     QueryParam "upload_protocol" Text :>
                       QueryParams "creativeIds" (Textual Int64) :>
                         QueryParam "access_token" Text :>
                           QueryParam "advertiserId" (Textual Int64) :>
                             QueryParams "campaignIds" (Textual Int64) :>
                               QueryParam "searchString" Text :>
                                 QueryParams "sizeIds" (Textual Int64) :>
                                   QueryParam "sslCompliant" Bool :>
                                     QueryParam "uploadType" Text :>
                                       QueryParams "ids" (Textual Int64) :>
                                         QueryParam "sortOrder" AdsListSortOrder
                                           :>
                                           QueryParam "active" Bool :>
                                             QueryParams
                                               "creativeOptimizationConfigurationIds"
                                               (Textual Int64)
                                               :>
                                               QueryParams "placementIds"
                                                 (Textual Int64)
                                                 :>
                                                 QueryParam "sslRequired" Bool
                                                   :>
                                                   QueryParam
                                                     "overriddenEventTagId"
                                                     (Textual Int64)
                                                     :>
                                                     QueryParam "pageToken" Text
                                                       :>
                                                       QueryParam "sortField"
                                                         AdsListSortField
                                                         :>
                                                         QueryParams "type"
                                                           AdsListType
                                                           :>
                                                           QueryParam
                                                             "dynamicClickTracker"
                                                             Bool
                                                             :>
                                                             QueryParam
                                                               "compatibility"
                                                               AdsListCompatibility
                                                               :>
                                                               QueryParam
                                                                 "archived"
                                                                 Bool
                                                                 :>
                                                                 QueryParam
                                                                   "maxResults"
                                                                   (Textual
                                                                      Int32)
                                                                   :>
                                                                   QueryParam
                                                                     "callback"
                                                                     Text
                                                                     :>
                                                                     QueryParams
                                                                       "audienceSegmentIds"
                                                                       (Textual
                                                                          Int64)
                                                                       :>
                                                                       QueryParam
                                                                         "alt"
                                                                         AltJSON
                                                                         :>
                                                                         Get
                                                                           '[JSON]
                                                                           AdsListResponse

-- | Retrieves a list of ads, possibly filtered. This method supports paging.
--
-- /See:/ 'adsList' smart constructor.
data AdsList =
  AdsList'
    { _alXgafv :: !(Maybe Xgafv)
    , _alRemarketingListIds :: !(Maybe [Textual Int64])
    , _alLandingPageIds :: !(Maybe [Textual Int64])
    , _alUploadProtocol :: !(Maybe Text)
    , _alCreativeIds :: !(Maybe [Textual Int64])
    , _alAccessToken :: !(Maybe Text)
    , _alAdvertiserId :: !(Maybe (Textual Int64))
    , _alCampaignIds :: !(Maybe [Textual Int64])
    , _alSearchString :: !(Maybe Text)
    , _alSizeIds :: !(Maybe [Textual Int64])
    , _alSSLCompliant :: !(Maybe Bool)
    , _alUploadType :: !(Maybe Text)
    , _alIds :: !(Maybe [Textual Int64])
    , _alProFileId :: !(Textual Int64)
    , _alSortOrder :: !AdsListSortOrder
    , _alActive :: !(Maybe Bool)
    , _alCreativeOptimizationConfigurationIds :: !(Maybe [Textual Int64])
    , _alPlacementIds :: !(Maybe [Textual Int64])
    , _alSSLRequired :: !(Maybe Bool)
    , _alOverriddenEventTagId :: !(Maybe (Textual Int64))
    , _alPageToken :: !(Maybe Text)
    , _alSortField :: !AdsListSortField
    , _alType :: !(Maybe [AdsListType])
    , _alDynamicClickTracker :: !(Maybe Bool)
    , _alCompatibility :: !(Maybe AdsListCompatibility)
    , _alArchived :: !(Maybe Bool)
    , _alMaxResults :: !(Textual Int32)
    , _alCallback :: !(Maybe Text)
    , _alAudienceSegmentIds :: !(Maybe [Textual Int64])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AdsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alXgafv'
--
-- * 'alRemarketingListIds'
--
-- * 'alLandingPageIds'
--
-- * 'alUploadProtocol'
--
-- * 'alCreativeIds'
--
-- * 'alAccessToken'
--
-- * 'alAdvertiserId'
--
-- * 'alCampaignIds'
--
-- * 'alSearchString'
--
-- * 'alSizeIds'
--
-- * 'alSSLCompliant'
--
-- * 'alUploadType'
--
-- * 'alIds'
--
-- * 'alProFileId'
--
-- * 'alSortOrder'
--
-- * 'alActive'
--
-- * 'alCreativeOptimizationConfigurationIds'
--
-- * 'alPlacementIds'
--
-- * 'alSSLRequired'
--
-- * 'alOverriddenEventTagId'
--
-- * 'alPageToken'
--
-- * 'alSortField'
--
-- * 'alType'
--
-- * 'alDynamicClickTracker'
--
-- * 'alCompatibility'
--
-- * 'alArchived'
--
-- * 'alMaxResults'
--
-- * 'alCallback'
--
-- * 'alAudienceSegmentIds'
adsList
    :: Int64 -- ^ 'alProFileId'
    -> AdsList
adsList pAlProFileId_ =
  AdsList'
    { _alXgafv = Nothing
    , _alRemarketingListIds = Nothing
    , _alLandingPageIds = Nothing
    , _alUploadProtocol = Nothing
    , _alCreativeIds = Nothing
    , _alAccessToken = Nothing
    , _alAdvertiserId = Nothing
    , _alCampaignIds = Nothing
    , _alSearchString = Nothing
    , _alSizeIds = Nothing
    , _alSSLCompliant = Nothing
    , _alUploadType = Nothing
    , _alIds = Nothing
    , _alProFileId = _Coerce # pAlProFileId_
    , _alSortOrder = ADSAscending
    , _alActive = Nothing
    , _alCreativeOptimizationConfigurationIds = Nothing
    , _alPlacementIds = Nothing
    , _alSSLRequired = Nothing
    , _alOverriddenEventTagId = Nothing
    , _alPageToken = Nothing
    , _alSortField = ALSFID
    , _alType = Nothing
    , _alDynamicClickTracker = Nothing
    , _alCompatibility = Nothing
    , _alArchived = Nothing
    , _alMaxResults = 1000
    , _alCallback = Nothing
    , _alAudienceSegmentIds = Nothing
    }


-- | V1 error format.
alXgafv :: Lens' AdsList (Maybe Xgafv)
alXgafv = lens _alXgafv (\ s a -> s{_alXgafv = a})

-- | Select only ads whose list targeting expression use these remarketing
-- list IDs.
alRemarketingListIds :: Lens' AdsList [Int64]
alRemarketingListIds
  = lens _alRemarketingListIds
      (\ s a -> s{_alRemarketingListIds = a})
      . _Default
      . _Coerce

-- | Select only ads with these landing page IDs.
alLandingPageIds :: Lens' AdsList [Int64]
alLandingPageIds
  = lens _alLandingPageIds
      (\ s a -> s{_alLandingPageIds = a})
      . _Default
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
alUploadProtocol :: Lens' AdsList (Maybe Text)
alUploadProtocol
  = lens _alUploadProtocol
      (\ s a -> s{_alUploadProtocol = a})

-- | Select only ads with these creative IDs assigned.
alCreativeIds :: Lens' AdsList [Int64]
alCreativeIds
  = lens _alCreativeIds
      (\ s a -> s{_alCreativeIds = a})
      . _Default
      . _Coerce

-- | OAuth access token.
alAccessToken :: Lens' AdsList (Maybe Text)
alAccessToken
  = lens _alAccessToken
      (\ s a -> s{_alAccessToken = a})

-- | Select only ads with this advertiser ID.
alAdvertiserId :: Lens' AdsList (Maybe Int64)
alAdvertiserId
  = lens _alAdvertiserId
      (\ s a -> s{_alAdvertiserId = a})
      . mapping _Coerce

-- | Select only ads with these campaign IDs.
alCampaignIds :: Lens' AdsList [Int64]
alCampaignIds
  = lens _alCampaignIds
      (\ s a -> s{_alCampaignIds = a})
      . _Default
      . _Coerce

-- | Allows searching for objects by name or ID. Wildcards (*) are allowed.
-- For example, \"ad*2015\" will return objects with names like \"ad June
-- 2015\", \"ad April 2015\", or simply \"ad 2015\". Most of the searches
-- also add wildcards implicitly at the start and the end of the search
-- string. For example, a search string of \"ad\" will match objects with
-- name \"my ad\", \"ad 2015\", or simply \"ad\".
alSearchString :: Lens' AdsList (Maybe Text)
alSearchString
  = lens _alSearchString
      (\ s a -> s{_alSearchString = a})

-- | Select only ads with these size IDs.
alSizeIds :: Lens' AdsList [Int64]
alSizeIds
  = lens _alSizeIds (\ s a -> s{_alSizeIds = a}) .
      _Default
      . _Coerce

-- | Select only ads that are SSL-compliant.
alSSLCompliant :: Lens' AdsList (Maybe Bool)
alSSLCompliant
  = lens _alSSLCompliant
      (\ s a -> s{_alSSLCompliant = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
alUploadType :: Lens' AdsList (Maybe Text)
alUploadType
  = lens _alUploadType (\ s a -> s{_alUploadType = a})

-- | Select only ads with these IDs.
alIds :: Lens' AdsList [Int64]
alIds
  = lens _alIds (\ s a -> s{_alIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
alProFileId :: Lens' AdsList Int64
alProFileId
  = lens _alProFileId (\ s a -> s{_alProFileId = a}) .
      _Coerce

-- | Order of sorted results.
alSortOrder :: Lens' AdsList AdsListSortOrder
alSortOrder
  = lens _alSortOrder (\ s a -> s{_alSortOrder = a})

-- | Select only active ads.
alActive :: Lens' AdsList (Maybe Bool)
alActive = lens _alActive (\ s a -> s{_alActive = a})

-- | Select only ads with these creative optimization configuration IDs.
alCreativeOptimizationConfigurationIds :: Lens' AdsList [Int64]
alCreativeOptimizationConfigurationIds
  = lens _alCreativeOptimizationConfigurationIds
      (\ s a ->
         s{_alCreativeOptimizationConfigurationIds = a})
      . _Default
      . _Coerce

-- | Select only ads with these placement IDs assigned.
alPlacementIds :: Lens' AdsList [Int64]
alPlacementIds
  = lens _alPlacementIds
      (\ s a -> s{_alPlacementIds = a})
      . _Default
      . _Coerce

-- | Select only ads that require SSL.
alSSLRequired :: Lens' AdsList (Maybe Bool)
alSSLRequired
  = lens _alSSLRequired
      (\ s a -> s{_alSSLRequired = a})

-- | Select only ads with this event tag override ID.
alOverriddenEventTagId :: Lens' AdsList (Maybe Int64)
alOverriddenEventTagId
  = lens _alOverriddenEventTagId
      (\ s a -> s{_alOverriddenEventTagId = a})
      . mapping _Coerce

-- | Value of the nextPageToken from the previous result page.
alPageToken :: Lens' AdsList (Maybe Text)
alPageToken
  = lens _alPageToken (\ s a -> s{_alPageToken = a})

-- | Field by which to sort the list.
alSortField :: Lens' AdsList AdsListSortField
alSortField
  = lens _alSortField (\ s a -> s{_alSortField = a})

-- | Select only ads with these types.
alType :: Lens' AdsList [AdsListType]
alType
  = lens _alType (\ s a -> s{_alType = a}) . _Default .
      _Coerce

-- | Select only dynamic click trackers. Applicable when type is
-- AD_SERVING_CLICK_TRACKER. If true, select dynamic click trackers. If
-- false, select static click trackers. Leave unset to select both.
alDynamicClickTracker :: Lens' AdsList (Maybe Bool)
alDynamicClickTracker
  = lens _alDynamicClickTracker
      (\ s a -> s{_alDynamicClickTracker = a})

-- | Select default ads with the specified compatibility. Applicable when
-- type is AD_SERVING_DEFAULT_AD. DISPLAY and DISPLAY_INTERSTITIAL refer to
-- rendering either on desktop or on mobile devices for regular or
-- interstitial ads, respectively. APP and APP_INTERSTITIAL are for
-- rendering in mobile apps. IN_STREAM_VIDEO refers to rendering an
-- in-stream video ads developed with the VAST standard.
alCompatibility :: Lens' AdsList (Maybe AdsListCompatibility)
alCompatibility
  = lens _alCompatibility
      (\ s a -> s{_alCompatibility = a})

-- | Select only archived ads.
alArchived :: Lens' AdsList (Maybe Bool)
alArchived
  = lens _alArchived (\ s a -> s{_alArchived = a})

-- | Maximum number of results to return.
alMaxResults :: Lens' AdsList Int32
alMaxResults
  = lens _alMaxResults (\ s a -> s{_alMaxResults = a})
      . _Coerce

-- | JSONP
alCallback :: Lens' AdsList (Maybe Text)
alCallback
  = lens _alCallback (\ s a -> s{_alCallback = a})

-- | Select only ads with these audience segment IDs.
alAudienceSegmentIds :: Lens' AdsList [Int64]
alAudienceSegmentIds
  = lens _alAudienceSegmentIds
      (\ s a -> s{_alAudienceSegmentIds = a})
      . _Default
      . _Coerce

instance GoogleRequest AdsList where
        type Rs AdsList = AdsListResponse
        type Scopes AdsList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AdsList'{..}
          = go _alProFileId _alXgafv
              (_alRemarketingListIds ^. _Default)
              (_alLandingPageIds ^. _Default)
              _alUploadProtocol
              (_alCreativeIds ^. _Default)
              _alAccessToken
              _alAdvertiserId
              (_alCampaignIds ^. _Default)
              _alSearchString
              (_alSizeIds ^. _Default)
              _alSSLCompliant
              _alUploadType
              (_alIds ^. _Default)
              (Just _alSortOrder)
              _alActive
              (_alCreativeOptimizationConfigurationIds ^. _Default)
              (_alPlacementIds ^. _Default)
              _alSSLRequired
              _alOverriddenEventTagId
              _alPageToken
              (Just _alSortField)
              (_alType ^. _Default)
              _alDynamicClickTracker
              _alCompatibility
              _alArchived
              (Just _alMaxResults)
              _alCallback
              (_alAudienceSegmentIds ^. _Default)
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy AdsListResource) mempty
