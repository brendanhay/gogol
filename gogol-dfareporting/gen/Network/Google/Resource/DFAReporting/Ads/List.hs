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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of ads, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAdsList@.
module Network.Google.Resource.DFAReporting.Ads.List
    (
    -- * REST Resource
      AdsListResource

    -- * Creating a Request
    , adsList'
    , AdsList'

    -- * Request Lenses
    , adsRemarketingListIds
    , adsLandingPageIds
    , adsCreativeIds
    , adsAdvertiserId
    , adsCampaignIds
    , adsSearchString
    , adsSizeIds
    , adsSSLCompliant
    , adsIds
    , adsProFileId
    , adsSortOrder
    , adsActive
    , adsCreativeOptimizationConfigurationIds
    , adsPlacementIds
    , adsSSLRequired
    , adsOverriddenEventTagId
    , adsPageToken
    , adsSortField
    , adsType
    , adsCreativeType
    , adsDynamicClickTracker
    , adsCompatibility
    , adsArchived
    , adsMaxResults
    , adsAudienceSegmentIds
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAdsList@ method which the
-- 'AdsList'' request conforms to.
type AdsListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "ads" :>
           QueryParams "remarketingListIds" Int64 :>
             QueryParams "landingPageIds" Int64 :>
               QueryParams "creativeIds" Int64 :>
                 QueryParam "advertiserId" Int64 :>
                   QueryParams "campaignIds" Int64 :>
                     QueryParam "searchString" Text :>
                       QueryParams "sizeIds" Int64 :>
                         QueryParam "sslCompliant" Bool :>
                           QueryParams "ids" Int64 :>
                             QueryParam "sortOrder" AdsListSortOrder :>
                               QueryParam "active" Bool :>
                                 QueryParams
                                   "creativeOptimizationConfigurationIds"
                                   Int64
                                   :>
                                   QueryParams "placementIds" Int64 :>
                                     QueryParam "sslRequired" Bool :>
                                       QueryParam "overriddenEventTagId" Int64
                                         :>
                                         QueryParam "pageToken" Text :>
                                           QueryParam "sortField"
                                             AdsListSortField
                                             :>
                                             QueryParams "type" AdsListType :>
                                               QueryParam "creativeType"
                                                 AdsListCreativeType
                                                 :>
                                                 QueryParam
                                                   "dynamicClickTracker"
                                                   Bool
                                                   :>
                                                   QueryParam "compatibility"
                                                     AdsListCompatibility
                                                     :>
                                                     QueryParam "archived" Bool
                                                       :>
                                                       QueryParam "maxResults"
                                                         Int32
                                                         :>
                                                         QueryParams
                                                           "audienceSegmentIds"
                                                           Int64
                                                           :>
                                                           QueryParam "alt"
                                                             AltJSON
                                                             :>
                                                             Get '[JSON]
                                                               AdsListResponse

-- | Retrieves a list of ads, possibly filtered.
--
-- /See:/ 'adsList'' smart constructor.
data AdsList' = AdsList'
    { _adsRemarketingListIds                   :: !(Maybe [Int64])
    , _adsLandingPageIds                       :: !(Maybe [Int64])
    , _adsCreativeIds                          :: !(Maybe [Int64])
    , _adsAdvertiserId                         :: !(Maybe Int64)
    , _adsCampaignIds                          :: !(Maybe [Int64])
    , _adsSearchString                         :: !(Maybe Text)
    , _adsSizeIds                              :: !(Maybe [Int64])
    , _adsSSLCompliant                         :: !(Maybe Bool)
    , _adsIds                                  :: !(Maybe [Int64])
    , _adsProFileId                            :: !Int64
    , _adsSortOrder                            :: !(Maybe AdsListSortOrder)
    , _adsActive                               :: !(Maybe Bool)
    , _adsCreativeOptimizationConfigurationIds :: !(Maybe [Int64])
    , _adsPlacementIds                         :: !(Maybe [Int64])
    , _adsSSLRequired                          :: !(Maybe Bool)
    , _adsOverriddenEventTagId                 :: !(Maybe Int64)
    , _adsPageToken                            :: !(Maybe Text)
    , _adsSortField                            :: !(Maybe AdsListSortField)
    , _adsType                                 :: !(Maybe [AdsListType])
    , _adsCreativeType                         :: !(Maybe AdsListCreativeType)
    , _adsDynamicClickTracker                  :: !(Maybe Bool)
    , _adsCompatibility                        :: !(Maybe AdsListCompatibility)
    , _adsArchived                             :: !(Maybe Bool)
    , _adsMaxResults                           :: !(Maybe Int32)
    , _adsAudienceSegmentIds                   :: !(Maybe [Int64])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adsRemarketingListIds'
--
-- * 'adsLandingPageIds'
--
-- * 'adsCreativeIds'
--
-- * 'adsAdvertiserId'
--
-- * 'adsCampaignIds'
--
-- * 'adsSearchString'
--
-- * 'adsSizeIds'
--
-- * 'adsSSLCompliant'
--
-- * 'adsIds'
--
-- * 'adsProFileId'
--
-- * 'adsSortOrder'
--
-- * 'adsActive'
--
-- * 'adsCreativeOptimizationConfigurationIds'
--
-- * 'adsPlacementIds'
--
-- * 'adsSSLRequired'
--
-- * 'adsOverriddenEventTagId'
--
-- * 'adsPageToken'
--
-- * 'adsSortField'
--
-- * 'adsType'
--
-- * 'adsCreativeType'
--
-- * 'adsDynamicClickTracker'
--
-- * 'adsCompatibility'
--
-- * 'adsArchived'
--
-- * 'adsMaxResults'
--
-- * 'adsAudienceSegmentIds'
adsList'
    :: Int64 -- ^ 'profileId'
    -> AdsList'
adsList' pAdsProFileId_ =
    AdsList'
    { _adsRemarketingListIds = Nothing
    , _adsLandingPageIds = Nothing
    , _adsCreativeIds = Nothing
    , _adsAdvertiserId = Nothing
    , _adsCampaignIds = Nothing
    , _adsSearchString = Nothing
    , _adsSizeIds = Nothing
    , _adsSSLCompliant = Nothing
    , _adsIds = Nothing
    , _adsProFileId = pAdsProFileId_
    , _adsSortOrder = Nothing
    , _adsActive = Nothing
    , _adsCreativeOptimizationConfigurationIds = Nothing
    , _adsPlacementIds = Nothing
    , _adsSSLRequired = Nothing
    , _adsOverriddenEventTagId = Nothing
    , _adsPageToken = Nothing
    , _adsSortField = Nothing
    , _adsType = Nothing
    , _adsCreativeType = Nothing
    , _adsDynamicClickTracker = Nothing
    , _adsCompatibility = Nothing
    , _adsArchived = Nothing
    , _adsMaxResults = Nothing
    , _adsAudienceSegmentIds = Nothing
    }

-- | Select only ads whose list targeting expression use these remarketing
-- list IDs.
adsRemarketingListIds :: Lens' AdsList' [Int64]
adsRemarketingListIds
  = lens _adsRemarketingListIds
      (\ s a -> s{_adsRemarketingListIds = a})
      . _Default
      . _Coerce

-- | Select only ads with these landing page IDs.
adsLandingPageIds :: Lens' AdsList' [Int64]
adsLandingPageIds
  = lens _adsLandingPageIds
      (\ s a -> s{_adsLandingPageIds = a})
      . _Default
      . _Coerce

-- | Select only ads with these creative IDs assigned.
adsCreativeIds :: Lens' AdsList' [Int64]
adsCreativeIds
  = lens _adsCreativeIds
      (\ s a -> s{_adsCreativeIds = a})
      . _Default
      . _Coerce

-- | Select only ads with this advertiser ID.
adsAdvertiserId :: Lens' AdsList' (Maybe Int64)
adsAdvertiserId
  = lens _adsAdvertiserId
      (\ s a -> s{_adsAdvertiserId = a})

-- | Select only ads with these campaign IDs.
adsCampaignIds :: Lens' AdsList' [Int64]
adsCampaignIds
  = lens _adsCampaignIds
      (\ s a -> s{_adsCampaignIds = a})
      . _Default
      . _Coerce

-- | Allows searching for objects by name or ID. Wildcards (*) are allowed.
-- For example, \"ad*2015\" will return objects with names like \"ad June
-- 2015\", \"ad April 2015\", or simply \"ad 2015\". Most of the searches
-- also add wildcards implicitly at the start and the end of the search
-- string. For example, a search string of \"ad\" will match objects with
-- name \"my ad\", \"ad 2015\", or simply \"ad\".
adsSearchString :: Lens' AdsList' (Maybe Text)
adsSearchString
  = lens _adsSearchString
      (\ s a -> s{_adsSearchString = a})

-- | Select only ads with these size IDs.
adsSizeIds :: Lens' AdsList' [Int64]
adsSizeIds
  = lens _adsSizeIds (\ s a -> s{_adsSizeIds = a}) .
      _Default
      . _Coerce

-- | Select only ads that are SSL-compliant.
adsSSLCompliant :: Lens' AdsList' (Maybe Bool)
adsSSLCompliant
  = lens _adsSSLCompliant
      (\ s a -> s{_adsSSLCompliant = a})

-- | Select only ads with these IDs.
adsIds :: Lens' AdsList' [Int64]
adsIds
  = lens _adsIds (\ s a -> s{_adsIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
adsProFileId :: Lens' AdsList' Int64
adsProFileId
  = lens _adsProFileId (\ s a -> s{_adsProFileId = a})

-- | Order of sorted results, default is ASCENDING.
adsSortOrder :: Lens' AdsList' (Maybe AdsListSortOrder)
adsSortOrder
  = lens _adsSortOrder (\ s a -> s{_adsSortOrder = a})

-- | Select only active ads.
adsActive :: Lens' AdsList' (Maybe Bool)
adsActive
  = lens _adsActive (\ s a -> s{_adsActive = a})

-- | Select only ads with these creative optimization configuration IDs.
adsCreativeOptimizationConfigurationIds :: Lens' AdsList' [Int64]
adsCreativeOptimizationConfigurationIds
  = lens _adsCreativeOptimizationConfigurationIds
      (\ s a ->
         s{_adsCreativeOptimizationConfigurationIds = a})
      . _Default
      . _Coerce

-- | Select only ads with these placement IDs assigned.
adsPlacementIds :: Lens' AdsList' [Int64]
adsPlacementIds
  = lens _adsPlacementIds
      (\ s a -> s{_adsPlacementIds = a})
      . _Default
      . _Coerce

-- | Select only ads that require SSL.
adsSSLRequired :: Lens' AdsList' (Maybe Bool)
adsSSLRequired
  = lens _adsSSLRequired
      (\ s a -> s{_adsSSLRequired = a})

-- | Select only ads with this event tag override ID.
adsOverriddenEventTagId :: Lens' AdsList' (Maybe Int64)
adsOverriddenEventTagId
  = lens _adsOverriddenEventTagId
      (\ s a -> s{_adsOverriddenEventTagId = a})

-- | Value of the nextPageToken from the previous result page.
adsPageToken :: Lens' AdsList' (Maybe Text)
adsPageToken
  = lens _adsPageToken (\ s a -> s{_adsPageToken = a})

-- | Field by which to sort the list.
adsSortField :: Lens' AdsList' (Maybe AdsListSortField)
adsSortField
  = lens _adsSortField (\ s a -> s{_adsSortField = a})

-- | Select only ads with these types.
adsType :: Lens' AdsList' [AdsListType]
adsType
  = lens _adsType (\ s a -> s{_adsType = a}) . _Default
      . _Coerce

-- | Select only ads with the specified creativeType.
adsCreativeType :: Lens' AdsList' (Maybe AdsListCreativeType)
adsCreativeType
  = lens _adsCreativeType
      (\ s a -> s{_adsCreativeType = a})

-- | Select only dynamic click trackers. Applicable when type is
-- AD_SERVING_CLICK_TRACKER. If true, select dynamic click trackers. If
-- false, select static click trackers. Leave unset to select both.
adsDynamicClickTracker :: Lens' AdsList' (Maybe Bool)
adsDynamicClickTracker
  = lens _adsDynamicClickTracker
      (\ s a -> s{_adsDynamicClickTracker = a})

-- | Select default ads with the specified compatibility. Applicable when
-- type is AD_SERVING_DEFAULT_AD. WEB and WEB_INTERSTITIAL refer to
-- rendering either on desktop or on mobile devices for regular or
-- interstitial ads, respectively. APP and APP_INTERSTITIAL are for
-- rendering in mobile apps. IN_STREAM_VIDEO refers to rendering an
-- in-stream video ads developed with the VAST standard.
adsCompatibility :: Lens' AdsList' (Maybe AdsListCompatibility)
adsCompatibility
  = lens _adsCompatibility
      (\ s a -> s{_adsCompatibility = a})

-- | Select only archived ads.
adsArchived :: Lens' AdsList' (Maybe Bool)
adsArchived
  = lens _adsArchived (\ s a -> s{_adsArchived = a})

-- | Maximum number of results to return.
adsMaxResults :: Lens' AdsList' (Maybe Int32)
adsMaxResults
  = lens _adsMaxResults
      (\ s a -> s{_adsMaxResults = a})

-- | Select only ads with these audience segment IDs.
adsAudienceSegmentIds :: Lens' AdsList' [Int64]
adsAudienceSegmentIds
  = lens _adsAudienceSegmentIds
      (\ s a -> s{_adsAudienceSegmentIds = a})
      . _Default
      . _Coerce

instance GoogleRequest AdsList' where
        type Rs AdsList' = AdsListResponse
        requestClient AdsList'{..}
          = go _adsProFileId
              (_adsRemarketingListIds ^. _Default)
              (_adsLandingPageIds ^. _Default)
              (_adsCreativeIds ^. _Default)
              _adsAdvertiserId
              (_adsCampaignIds ^. _Default)
              _adsSearchString
              (_adsSizeIds ^. _Default)
              _adsSSLCompliant
              (_adsIds ^. _Default)
              _adsSortOrder
              _adsActive
              (_adsCreativeOptimizationConfigurationIds ^.
                 _Default)
              (_adsPlacementIds ^. _Default)
              _adsSSLRequired
              _adsOverriddenEventTagId
              _adsPageToken
              _adsSortField
              (_adsType ^. _Default)
              _adsCreativeType
              _adsDynamicClickTracker
              _adsCompatibility
              _adsArchived
              _adsMaxResults
              (_adsAudienceSegmentIds ^. _Default)
              (Just AltJSON)
              dFAReporting
          where go
                  = buildClient (Proxy :: Proxy AdsListResource) mempty
