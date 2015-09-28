{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.Ads.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of ads, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.ads.list@.
module Network.Google.API.DFAReporting.Ads.List
    (
    -- * REST Resource
      AdsListAPI

    -- * Creating a Request
    , adsList'
    , AdsList'

    -- * Request Lenses
    , adsdQuotaUser
    , adsdPrettyPrint
    , adsdRemarketingListIds
    , adsdLandingPageIds
    , adsdCreativeIds
    , adsdUserIp
    , adsdAdvertiserId
    , adsdCampaignIds
    , adsdSearchString
    , adsdSizeIds
    , adsdSslCompliant
    , adsdIds
    , adsdProfileId
    , adsdSortOrder
    , adsdActive
    , adsdCreativeOptimizationConfigurationIds
    , adsdKey
    , adsdPlacementIds
    , adsdSslRequired
    , adsdOverriddenEventTagId
    , adsdPageToken
    , adsdSortField
    , adsdType
    , adsdOauthToken
    , adsdCreativeType
    , adsdDynamicClickTracker
    , adsdCompatibility
    , adsdArchived
    , adsdMaxResults
    , adsdFields
    , adsdAlt
    , adsdAudienceSegmentIds
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.ads.list which the
-- 'AdsList'' request conforms to.
type AdsListAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "ads" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "remarketingListIds" Int64 :>
                 QueryParam "landingPageIds" Int64 :>
                   QueryParam "creativeIds" Int64 :>
                     QueryParam "userIp" Text :>
                       QueryParam "advertiserId" Int64 :>
                         QueryParam "campaignIds" Int64 :>
                           QueryParam "searchString" Text :>
                             QueryParam "sizeIds" Int64 :>
                               QueryParam "sslCompliant" Bool :>
                                 QueryParam "ids" Int64 :>
                                   QueryParam "sortOrder" AdsList'SortOrder :>
                                     QueryParam "active" Bool :>
                                       QueryParam
                                         "creativeOptimizationConfigurationIds"
                                         Int64
                                         :>
                                         QueryParam "key" Text :>
                                           QueryParam "placementIds" Int64 :>
                                             QueryParam "sslRequired" Bool :>
                                               QueryParam "overriddenEventTagId"
                                                 Int64
                                                 :>
                                                 QueryParam "pageToken" Text :>
                                                   QueryParam "sortField"
                                                     AdsList'SortField
                                                     :>
                                                     QueryParam "type"
                                                       AdsList'Type
                                                       :>
                                                       QueryParam "oauth_token"
                                                         Text
                                                         :>
                                                         QueryParam
                                                           "creativeType"
                                                           AdsList'CreativeType
                                                           :>
                                                           QueryParam
                                                             "dynamicClickTracker"
                                                             Bool
                                                             :>
                                                             QueryParam
                                                               "compatibility"
                                                               AdsList'Compatibility
                                                               :>
                                                               QueryParam
                                                                 "archived"
                                                                 Bool
                                                                 :>
                                                                 QueryParam
                                                                   "maxResults"
                                                                   Int32
                                                                   :>
                                                                   QueryParam
                                                                     "fields"
                                                                     Text
                                                                     :>
                                                                     QueryParam
                                                                       "alt"
                                                                       Alt
                                                                       :>
                                                                       QueryParam
                                                                         "audienceSegmentIds"
                                                                         Int64
                                                                         :>
                                                                         Get
                                                                           '[JSON]
                                                                           AdsListResponse

-- | Retrieves a list of ads, possibly filtered.
--
-- /See:/ 'adsList'' smart constructor.
data AdsList' = AdsList'
    { _adsdQuotaUser                            :: !(Maybe Text)
    , _adsdPrettyPrint                          :: !Bool
    , _adsdRemarketingListIds                   :: !(Maybe Int64)
    , _adsdLandingPageIds                       :: !(Maybe Int64)
    , _adsdCreativeIds                          :: !(Maybe Int64)
    , _adsdUserIp                               :: !(Maybe Text)
    , _adsdAdvertiserId                         :: !(Maybe Int64)
    , _adsdCampaignIds                          :: !(Maybe Int64)
    , _adsdSearchString                         :: !(Maybe Text)
    , _adsdSizeIds                              :: !(Maybe Int64)
    , _adsdSslCompliant                         :: !(Maybe Bool)
    , _adsdIds                                  :: !(Maybe Int64)
    , _adsdProfileId                            :: !Int64
    , _adsdSortOrder                            :: !(Maybe AdsList'SortOrder)
    , _adsdActive                               :: !(Maybe Bool)
    , _adsdCreativeOptimizationConfigurationIds :: !(Maybe Int64)
    , _adsdKey                                  :: !(Maybe Text)
    , _adsdPlacementIds                         :: !(Maybe Int64)
    , _adsdSslRequired                          :: !(Maybe Bool)
    , _adsdOverriddenEventTagId                 :: !(Maybe Int64)
    , _adsdPageToken                            :: !(Maybe Text)
    , _adsdSortField                            :: !(Maybe AdsList'SortField)
    , _adsdType                                 :: !(Maybe AdsList'Type)
    , _adsdOauthToken                           :: !(Maybe Text)
    , _adsdCreativeType                         :: !(Maybe AdsList'CreativeType)
    , _adsdDynamicClickTracker                  :: !(Maybe Bool)
    , _adsdCompatibility                        :: !(Maybe AdsList'Compatibility)
    , _adsdArchived                             :: !(Maybe Bool)
    , _adsdMaxResults                           :: !(Maybe Int32)
    , _adsdFields                               :: !(Maybe Text)
    , _adsdAlt                                  :: !Alt
    , _adsdAudienceSegmentIds                   :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adsdQuotaUser'
--
-- * 'adsdPrettyPrint'
--
-- * 'adsdRemarketingListIds'
--
-- * 'adsdLandingPageIds'
--
-- * 'adsdCreativeIds'
--
-- * 'adsdUserIp'
--
-- * 'adsdAdvertiserId'
--
-- * 'adsdCampaignIds'
--
-- * 'adsdSearchString'
--
-- * 'adsdSizeIds'
--
-- * 'adsdSslCompliant'
--
-- * 'adsdIds'
--
-- * 'adsdProfileId'
--
-- * 'adsdSortOrder'
--
-- * 'adsdActive'
--
-- * 'adsdCreativeOptimizationConfigurationIds'
--
-- * 'adsdKey'
--
-- * 'adsdPlacementIds'
--
-- * 'adsdSslRequired'
--
-- * 'adsdOverriddenEventTagId'
--
-- * 'adsdPageToken'
--
-- * 'adsdSortField'
--
-- * 'adsdType'
--
-- * 'adsdOauthToken'
--
-- * 'adsdCreativeType'
--
-- * 'adsdDynamicClickTracker'
--
-- * 'adsdCompatibility'
--
-- * 'adsdArchived'
--
-- * 'adsdMaxResults'
--
-- * 'adsdFields'
--
-- * 'adsdAlt'
--
-- * 'adsdAudienceSegmentIds'
adsList'
    :: Int64 -- ^ 'profileId'
    -> AdsList'
adsList' pAdsdProfileId_ =
    AdsList'
    { _adsdQuotaUser = Nothing
    , _adsdPrettyPrint = True
    , _adsdRemarketingListIds = Nothing
    , _adsdLandingPageIds = Nothing
    , _adsdCreativeIds = Nothing
    , _adsdUserIp = Nothing
    , _adsdAdvertiserId = Nothing
    , _adsdCampaignIds = Nothing
    , _adsdSearchString = Nothing
    , _adsdSizeIds = Nothing
    , _adsdSslCompliant = Nothing
    , _adsdIds = Nothing
    , _adsdProfileId = pAdsdProfileId_
    , _adsdSortOrder = Nothing
    , _adsdActive = Nothing
    , _adsdCreativeOptimizationConfigurationIds = Nothing
    , _adsdKey = Nothing
    , _adsdPlacementIds = Nothing
    , _adsdSslRequired = Nothing
    , _adsdOverriddenEventTagId = Nothing
    , _adsdPageToken = Nothing
    , _adsdSortField = Nothing
    , _adsdType = Nothing
    , _adsdOauthToken = Nothing
    , _adsdCreativeType = Nothing
    , _adsdDynamicClickTracker = Nothing
    , _adsdCompatibility = Nothing
    , _adsdArchived = Nothing
    , _adsdMaxResults = Nothing
    , _adsdFields = Nothing
    , _adsdAlt = JSON
    , _adsdAudienceSegmentIds = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
adsdQuotaUser :: Lens' AdsList' (Maybe Text)
adsdQuotaUser
  = lens _adsdQuotaUser
      (\ s a -> s{_adsdQuotaUser = a})

-- | Returns response with indentations and line breaks.
adsdPrettyPrint :: Lens' AdsList' Bool
adsdPrettyPrint
  = lens _adsdPrettyPrint
      (\ s a -> s{_adsdPrettyPrint = a})

-- | Select only ads whose list targeting expression use these remarketing
-- list IDs.
adsdRemarketingListIds :: Lens' AdsList' (Maybe Int64)
adsdRemarketingListIds
  = lens _adsdRemarketingListIds
      (\ s a -> s{_adsdRemarketingListIds = a})

-- | Select only ads with these landing page IDs.
adsdLandingPageIds :: Lens' AdsList' (Maybe Int64)
adsdLandingPageIds
  = lens _adsdLandingPageIds
      (\ s a -> s{_adsdLandingPageIds = a})

-- | Select only ads with these creative IDs assigned.
adsdCreativeIds :: Lens' AdsList' (Maybe Int64)
adsdCreativeIds
  = lens _adsdCreativeIds
      (\ s a -> s{_adsdCreativeIds = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
adsdUserIp :: Lens' AdsList' (Maybe Text)
adsdUserIp
  = lens _adsdUserIp (\ s a -> s{_adsdUserIp = a})

-- | Select only ads with this advertiser ID.
adsdAdvertiserId :: Lens' AdsList' (Maybe Int64)
adsdAdvertiserId
  = lens _adsdAdvertiserId
      (\ s a -> s{_adsdAdvertiserId = a})

-- | Select only ads with these campaign IDs.
adsdCampaignIds :: Lens' AdsList' (Maybe Int64)
adsdCampaignIds
  = lens _adsdCampaignIds
      (\ s a -> s{_adsdCampaignIds = a})

-- | Allows searching for objects by name or ID. Wildcards (*) are allowed.
-- For example, \"ad*2015\" will return objects with names like \"ad June
-- 2015\", \"ad April 2015\", or simply \"ad 2015\". Most of the searches
-- also add wildcards implicitly at the start and the end of the search
-- string. For example, a search string of \"ad\" will match objects with
-- name \"my ad\", \"ad 2015\", or simply \"ad\".
adsdSearchString :: Lens' AdsList' (Maybe Text)
adsdSearchString
  = lens _adsdSearchString
      (\ s a -> s{_adsdSearchString = a})

-- | Select only ads with these size IDs.
adsdSizeIds :: Lens' AdsList' (Maybe Int64)
adsdSizeIds
  = lens _adsdSizeIds (\ s a -> s{_adsdSizeIds = a})

-- | Select only ads that are SSL-compliant.
adsdSslCompliant :: Lens' AdsList' (Maybe Bool)
adsdSslCompliant
  = lens _adsdSslCompliant
      (\ s a -> s{_adsdSslCompliant = a})

-- | Select only ads with these IDs.
adsdIds :: Lens' AdsList' (Maybe Int64)
adsdIds = lens _adsdIds (\ s a -> s{_adsdIds = a})

-- | User profile ID associated with this request.
adsdProfileId :: Lens' AdsList' Int64
adsdProfileId
  = lens _adsdProfileId
      (\ s a -> s{_adsdProfileId = a})

-- | Order of sorted results, default is ASCENDING.
adsdSortOrder :: Lens' AdsList' (Maybe AdsList'SortOrder)
adsdSortOrder
  = lens _adsdSortOrder
      (\ s a -> s{_adsdSortOrder = a})

-- | Select only active ads.
adsdActive :: Lens' AdsList' (Maybe Bool)
adsdActive
  = lens _adsdActive (\ s a -> s{_adsdActive = a})

-- | Select only ads with these creative optimization configuration IDs.
adsdCreativeOptimizationConfigurationIds :: Lens' AdsList' (Maybe Int64)
adsdCreativeOptimizationConfigurationIds
  = lens _adsdCreativeOptimizationConfigurationIds
      (\ s a ->
         s{_adsdCreativeOptimizationConfigurationIds = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
adsdKey :: Lens' AdsList' (Maybe Text)
adsdKey = lens _adsdKey (\ s a -> s{_adsdKey = a})

-- | Select only ads with these placement IDs assigned.
adsdPlacementIds :: Lens' AdsList' (Maybe Int64)
adsdPlacementIds
  = lens _adsdPlacementIds
      (\ s a -> s{_adsdPlacementIds = a})

-- | Select only ads that require SSL.
adsdSslRequired :: Lens' AdsList' (Maybe Bool)
adsdSslRequired
  = lens _adsdSslRequired
      (\ s a -> s{_adsdSslRequired = a})

-- | Select only ads with this event tag override ID.
adsdOverriddenEventTagId :: Lens' AdsList' (Maybe Int64)
adsdOverriddenEventTagId
  = lens _adsdOverriddenEventTagId
      (\ s a -> s{_adsdOverriddenEventTagId = a})

-- | Value of the nextPageToken from the previous result page.
adsdPageToken :: Lens' AdsList' (Maybe Text)
adsdPageToken
  = lens _adsdPageToken
      (\ s a -> s{_adsdPageToken = a})

-- | Field by which to sort the list.
adsdSortField :: Lens' AdsList' (Maybe AdsList'SortField)
adsdSortField
  = lens _adsdSortField
      (\ s a -> s{_adsdSortField = a})

-- | Select only ads with these types.
adsdType :: Lens' AdsList' (Maybe AdsList'Type)
adsdType = lens _adsdType (\ s a -> s{_adsdType = a})

-- | OAuth 2.0 token for the current user.
adsdOauthToken :: Lens' AdsList' (Maybe Text)
adsdOauthToken
  = lens _adsdOauthToken
      (\ s a -> s{_adsdOauthToken = a})

-- | Select only ads with the specified creativeType.
adsdCreativeType :: Lens' AdsList' (Maybe AdsList'CreativeType)
adsdCreativeType
  = lens _adsdCreativeType
      (\ s a -> s{_adsdCreativeType = a})

-- | Select only dynamic click trackers. Applicable when type is
-- AD_SERVING_CLICK_TRACKER. If true, select dynamic click trackers. If
-- false, select static click trackers. Leave unset to select both.
adsdDynamicClickTracker :: Lens' AdsList' (Maybe Bool)
adsdDynamicClickTracker
  = lens _adsdDynamicClickTracker
      (\ s a -> s{_adsdDynamicClickTracker = a})

-- | Select default ads with the specified compatibility. Applicable when
-- type is AD_SERVING_DEFAULT_AD. WEB and WEB_INTERSTITIAL refer to
-- rendering either on desktop or on mobile devices for regular or
-- interstitial ads, respectively. APP and APP_INTERSTITIAL are for
-- rendering in mobile apps. IN_STREAM_VIDEO refers to rendering an
-- in-stream video ads developed with the VAST standard.
adsdCompatibility :: Lens' AdsList' (Maybe AdsList'Compatibility)
adsdCompatibility
  = lens _adsdCompatibility
      (\ s a -> s{_adsdCompatibility = a})

-- | Select only archived ads.
adsdArchived :: Lens' AdsList' (Maybe Bool)
adsdArchived
  = lens _adsdArchived (\ s a -> s{_adsdArchived = a})

-- | Maximum number of results to return.
adsdMaxResults :: Lens' AdsList' (Maybe Int32)
adsdMaxResults
  = lens _adsdMaxResults
      (\ s a -> s{_adsdMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
adsdFields :: Lens' AdsList' (Maybe Text)
adsdFields
  = lens _adsdFields (\ s a -> s{_adsdFields = a})

-- | Data format for the response.
adsdAlt :: Lens' AdsList' Alt
adsdAlt = lens _adsdAlt (\ s a -> s{_adsdAlt = a})

-- | Select only ads with these audience segment IDs.
adsdAudienceSegmentIds :: Lens' AdsList' (Maybe Int64)
adsdAudienceSegmentIds
  = lens _adsdAudienceSegmentIds
      (\ s a -> s{_adsdAudienceSegmentIds = a})

instance GoogleRequest AdsList' where
        type Rs AdsList' = AdsListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AdsList'{..}
          = go _adsdQuotaUser (Just _adsdPrettyPrint)
              _adsdRemarketingListIds
              _adsdLandingPageIds
              _adsdCreativeIds
              _adsdUserIp
              _adsdAdvertiserId
              _adsdCampaignIds
              _adsdSearchString
              _adsdSizeIds
              _adsdSslCompliant
              _adsdIds
              _adsdProfileId
              _adsdSortOrder
              _adsdActive
              _adsdCreativeOptimizationConfigurationIds
              _adsdKey
              _adsdPlacementIds
              _adsdSslRequired
              _adsdOverriddenEventTagId
              _adsdPageToken
              _adsdSortField
              _adsdType
              _adsdOauthToken
              _adsdCreativeType
              _adsdDynamicClickTracker
              _adsdCompatibility
              _adsdArchived
              _adsdMaxResults
              _adsdFields
              (Just _adsdAlt)
              _adsdAudienceSegmentIds
          where go
                  = clientWithRoute (Proxy :: Proxy AdsListAPI) r u
