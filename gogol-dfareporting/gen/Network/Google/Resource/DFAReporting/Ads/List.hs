{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
module DFAReporting.Ads.List
    (
    -- * REST Resource
      AdsListAPI

    -- * Creating a Request
    , adsList
    , AdsList

    -- * Request Lenses
    , allQuotaUser
    , allPrettyPrint
    , allRemarketingListIds
    , allLandingPageIds
    , allCreativeIds
    , allUserIp
    , allAdvertiserId
    , allCampaignIds
    , allSearchString
    , allSizeIds
    , allSslCompliant
    , allIds
    , allProfileId
    , allSortOrder
    , allActive
    , allCreativeOptimizationConfigurationIds
    , allKey
    , allPlacementIds
    , allSslRequired
    , allOverriddenEventTagId
    , allPageToken
    , allSortField
    , allType
    , allOauthToken
    , allCreativeType
    , allDynamicClickTracker
    , allCompatibility
    , allArchived
    , allMaxResults
    , allFields
    , allAlt
    , allAudienceSegmentIds
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAdsList@ which the
-- 'AdsList' request conforms to.
type AdsListAPI =
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
                             QueryParam "sortOrder" Text :>
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
                                           QueryParam "sortField" Text :>
                                             QueryParams "type" Text :>
                                               QueryParam "creativeType" Text :>
                                                 QueryParam
                                                   "dynamicClickTracker"
                                                   Bool
                                                   :>
                                                   QueryParam "compatibility"
                                                     Text
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
                                                           Get '[JSON]
                                                             AdsListResponse

-- | Retrieves a list of ads, possibly filtered.
--
-- /See:/ 'adsList' smart constructor.
data AdsList = AdsList
    { _allQuotaUser                            :: !(Maybe Text)
    , _allPrettyPrint                          :: !Bool
    , _allRemarketingListIds                   :: !(Maybe Int64)
    , _allLandingPageIds                       :: !(Maybe Int64)
    , _allCreativeIds                          :: !(Maybe Int64)
    , _allUserIp                               :: !(Maybe Text)
    , _allAdvertiserId                         :: !(Maybe Int64)
    , _allCampaignIds                          :: !(Maybe Int64)
    , _allSearchString                         :: !(Maybe Text)
    , _allSizeIds                              :: !(Maybe Int64)
    , _allSslCompliant                         :: !(Maybe Bool)
    , _allIds                                  :: !(Maybe Int64)
    , _allProfileId                            :: !Int64
    , _allSortOrder                            :: !(Maybe Text)
    , _allActive                               :: !(Maybe Bool)
    , _allCreativeOptimizationConfigurationIds :: !(Maybe Int64)
    , _allKey                                  :: !(Maybe Text)
    , _allPlacementIds                         :: !(Maybe Int64)
    , _allSslRequired                          :: !(Maybe Bool)
    , _allOverriddenEventTagId                 :: !(Maybe Int64)
    , _allPageToken                            :: !(Maybe Text)
    , _allSortField                            :: !(Maybe Text)
    , _allType                                 :: !(Maybe Text)
    , _allOauthToken                           :: !(Maybe Text)
    , _allCreativeType                         :: !(Maybe Text)
    , _allDynamicClickTracker                  :: !(Maybe Bool)
    , _allCompatibility                        :: !(Maybe Text)
    , _allArchived                             :: !(Maybe Bool)
    , _allMaxResults                           :: !(Maybe Int32)
    , _allFields                               :: !(Maybe Text)
    , _allAlt                                  :: !Text
    , _allAudienceSegmentIds                   :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'allQuotaUser'
--
-- * 'allPrettyPrint'
--
-- * 'allRemarketingListIds'
--
-- * 'allLandingPageIds'
--
-- * 'allCreativeIds'
--
-- * 'allUserIp'
--
-- * 'allAdvertiserId'
--
-- * 'allCampaignIds'
--
-- * 'allSearchString'
--
-- * 'allSizeIds'
--
-- * 'allSslCompliant'
--
-- * 'allIds'
--
-- * 'allProfileId'
--
-- * 'allSortOrder'
--
-- * 'allActive'
--
-- * 'allCreativeOptimizationConfigurationIds'
--
-- * 'allKey'
--
-- * 'allPlacementIds'
--
-- * 'allSslRequired'
--
-- * 'allOverriddenEventTagId'
--
-- * 'allPageToken'
--
-- * 'allSortField'
--
-- * 'allType'
--
-- * 'allOauthToken'
--
-- * 'allCreativeType'
--
-- * 'allDynamicClickTracker'
--
-- * 'allCompatibility'
--
-- * 'allArchived'
--
-- * 'allMaxResults'
--
-- * 'allFields'
--
-- * 'allAlt'
--
-- * 'allAudienceSegmentIds'
adsList
    :: Int64 -- ^ 'profileId'
    -> AdsList
adsList pAllProfileId_ =
    AdsList
    { _allQuotaUser = Nothing
    , _allPrettyPrint = True
    , _allRemarketingListIds = Nothing
    , _allLandingPageIds = Nothing
    , _allCreativeIds = Nothing
    , _allUserIp = Nothing
    , _allAdvertiserId = Nothing
    , _allCampaignIds = Nothing
    , _allSearchString = Nothing
    , _allSizeIds = Nothing
    , _allSslCompliant = Nothing
    , _allIds = Nothing
    , _allProfileId = pAllProfileId_
    , _allSortOrder = Nothing
    , _allActive = Nothing
    , _allCreativeOptimizationConfigurationIds = Nothing
    , _allKey = Nothing
    , _allPlacementIds = Nothing
    , _allSslRequired = Nothing
    , _allOverriddenEventTagId = Nothing
    , _allPageToken = Nothing
    , _allSortField = Nothing
    , _allType = Nothing
    , _allOauthToken = Nothing
    , _allCreativeType = Nothing
    , _allDynamicClickTracker = Nothing
    , _allCompatibility = Nothing
    , _allArchived = Nothing
    , _allMaxResults = Nothing
    , _allFields = Nothing
    , _allAlt = "json"
    , _allAudienceSegmentIds = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
allQuotaUser :: Lens' AdsList' (Maybe Text)
allQuotaUser
  = lens _allQuotaUser (\ s a -> s{_allQuotaUser = a})

-- | Returns response with indentations and line breaks.
allPrettyPrint :: Lens' AdsList' Bool
allPrettyPrint
  = lens _allPrettyPrint
      (\ s a -> s{_allPrettyPrint = a})

-- | Select only ads whose list targeting expression use these remarketing
-- list IDs.
allRemarketingListIds :: Lens' AdsList' (Maybe Int64)
allRemarketingListIds
  = lens _allRemarketingListIds
      (\ s a -> s{_allRemarketingListIds = a})

-- | Select only ads with these landing page IDs.
allLandingPageIds :: Lens' AdsList' (Maybe Int64)
allLandingPageIds
  = lens _allLandingPageIds
      (\ s a -> s{_allLandingPageIds = a})

-- | Select only ads with these creative IDs assigned.
allCreativeIds :: Lens' AdsList' (Maybe Int64)
allCreativeIds
  = lens _allCreativeIds
      (\ s a -> s{_allCreativeIds = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
allUserIp :: Lens' AdsList' (Maybe Text)
allUserIp
  = lens _allUserIp (\ s a -> s{_allUserIp = a})

-- | Select only ads with this advertiser ID.
allAdvertiserId :: Lens' AdsList' (Maybe Int64)
allAdvertiserId
  = lens _allAdvertiserId
      (\ s a -> s{_allAdvertiserId = a})

-- | Select only ads with these campaign IDs.
allCampaignIds :: Lens' AdsList' (Maybe Int64)
allCampaignIds
  = lens _allCampaignIds
      (\ s a -> s{_allCampaignIds = a})

-- | Allows searching for objects by name or ID. Wildcards (*) are allowed.
-- For example, \"ad*2015\" will return objects with names like \"ad June
-- 2015\", \"ad April 2015\", or simply \"ad 2015\". Most of the searches
-- also add wildcards implicitly at the start and the end of the search
-- string. For example, a search string of \"ad\" will match objects with
-- name \"my ad\", \"ad 2015\", or simply \"ad\".
allSearchString :: Lens' AdsList' (Maybe Text)
allSearchString
  = lens _allSearchString
      (\ s a -> s{_allSearchString = a})

-- | Select only ads with these size IDs.
allSizeIds :: Lens' AdsList' (Maybe Int64)
allSizeIds
  = lens _allSizeIds (\ s a -> s{_allSizeIds = a})

-- | Select only ads that are SSL-compliant.
allSslCompliant :: Lens' AdsList' (Maybe Bool)
allSslCompliant
  = lens _allSslCompliant
      (\ s a -> s{_allSslCompliant = a})

-- | Select only ads with these IDs.
allIds :: Lens' AdsList' (Maybe Int64)
allIds = lens _allIds (\ s a -> s{_allIds = a})

-- | User profile ID associated with this request.
allProfileId :: Lens' AdsList' Int64
allProfileId
  = lens _allProfileId (\ s a -> s{_allProfileId = a})

-- | Order of sorted results, default is ASCENDING.
allSortOrder :: Lens' AdsList' (Maybe Text)
allSortOrder
  = lens _allSortOrder (\ s a -> s{_allSortOrder = a})

-- | Select only active ads.
allActive :: Lens' AdsList' (Maybe Bool)
allActive
  = lens _allActive (\ s a -> s{_allActive = a})

-- | Select only ads with these creative optimization configuration IDs.
allCreativeOptimizationConfigurationIds :: Lens' AdsList' (Maybe Int64)
allCreativeOptimizationConfigurationIds
  = lens _allCreativeOptimizationConfigurationIds
      (\ s a ->
         s{_allCreativeOptimizationConfigurationIds = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
allKey :: Lens' AdsList' (Maybe Text)
allKey = lens _allKey (\ s a -> s{_allKey = a})

-- | Select only ads with these placement IDs assigned.
allPlacementIds :: Lens' AdsList' (Maybe Int64)
allPlacementIds
  = lens _allPlacementIds
      (\ s a -> s{_allPlacementIds = a})

-- | Select only ads that require SSL.
allSslRequired :: Lens' AdsList' (Maybe Bool)
allSslRequired
  = lens _allSslRequired
      (\ s a -> s{_allSslRequired = a})

-- | Select only ads with this event tag override ID.
allOverriddenEventTagId :: Lens' AdsList' (Maybe Int64)
allOverriddenEventTagId
  = lens _allOverriddenEventTagId
      (\ s a -> s{_allOverriddenEventTagId = a})

-- | Value of the nextPageToken from the previous result page.
allPageToken :: Lens' AdsList' (Maybe Text)
allPageToken
  = lens _allPageToken (\ s a -> s{_allPageToken = a})

-- | Field by which to sort the list.
allSortField :: Lens' AdsList' (Maybe Text)
allSortField
  = lens _allSortField (\ s a -> s{_allSortField = a})

-- | Select only ads with these types.
allType :: Lens' AdsList' (Maybe Text)
allType = lens _allType (\ s a -> s{_allType = a})

-- | OAuth 2.0 token for the current user.
allOauthToken :: Lens' AdsList' (Maybe Text)
allOauthToken
  = lens _allOauthToken
      (\ s a -> s{_allOauthToken = a})

-- | Select only ads with the specified creativeType.
allCreativeType :: Lens' AdsList' (Maybe Text)
allCreativeType
  = lens _allCreativeType
      (\ s a -> s{_allCreativeType = a})

-- | Select only dynamic click trackers. Applicable when type is
-- AD_SERVING_CLICK_TRACKER. If true, select dynamic click trackers. If
-- false, select static click trackers. Leave unset to select both.
allDynamicClickTracker :: Lens' AdsList' (Maybe Bool)
allDynamicClickTracker
  = lens _allDynamicClickTracker
      (\ s a -> s{_allDynamicClickTracker = a})

-- | Select default ads with the specified compatibility. Applicable when
-- type is AD_SERVING_DEFAULT_AD. WEB and WEB_INTERSTITIAL refer to
-- rendering either on desktop or on mobile devices for regular or
-- interstitial ads, respectively. APP and APP_INTERSTITIAL are for
-- rendering in mobile apps. IN_STREAM_VIDEO refers to rendering an
-- in-stream video ads developed with the VAST standard.
allCompatibility :: Lens' AdsList' (Maybe Text)
allCompatibility
  = lens _allCompatibility
      (\ s a -> s{_allCompatibility = a})

-- | Select only archived ads.
allArchived :: Lens' AdsList' (Maybe Bool)
allArchived
  = lens _allArchived (\ s a -> s{_allArchived = a})

-- | Maximum number of results to return.
allMaxResults :: Lens' AdsList' (Maybe Int32)
allMaxResults
  = lens _allMaxResults
      (\ s a -> s{_allMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
allFields :: Lens' AdsList' (Maybe Text)
allFields
  = lens _allFields (\ s a -> s{_allFields = a})

-- | Data format for the response.
allAlt :: Lens' AdsList' Text
allAlt = lens _allAlt (\ s a -> s{_allAlt = a})

-- | Select only ads with these audience segment IDs.
allAudienceSegmentIds :: Lens' AdsList' (Maybe Int64)
allAudienceSegmentIds
  = lens _allAudienceSegmentIds
      (\ s a -> s{_allAudienceSegmentIds = a})

instance GoogleRequest AdsList' where
        type Rs AdsList' = AdsListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AdsList{..}
          = go _allQuotaUser _allPrettyPrint
              _allRemarketingListIds
              _allLandingPageIds
              _allCreativeIds
              _allUserIp
              _allAdvertiserId
              _allCampaignIds
              _allSearchString
              _allSizeIds
              _allSslCompliant
              _allIds
              _allProfileId
              _allSortOrder
              _allActive
              _allCreativeOptimizationConfigurationIds
              _allKey
              _allPlacementIds
              _allSslRequired
              _allOverriddenEventTagId
              _allPageToken
              _allSortField
              _allType
              _allOauthToken
              _allCreativeType
              _allDynamicClickTracker
              _allCompatibility
              _allArchived
              _allMaxResults
              _allFields
              _allAlt
              _allAudienceSegmentIds
          where go
                  = clientWithRoute (Proxy :: Proxy AdsListAPI) r u
