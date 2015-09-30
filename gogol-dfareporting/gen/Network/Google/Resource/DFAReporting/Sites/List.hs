{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Sites.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of sites, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingSitesList@.
module DFAReporting.Sites.List
    (
    -- * REST Resource
      SitesListAPI

    -- * Creating a Request
    , sitesList
    , SitesList

    -- * Request Lenses
    , slQuotaUser
    , slPrettyPrint
    , slUnmappedSite
    , slUserIp
    , slCampaignIds
    , slSearchString
    , slAcceptsInterstitialPlacements
    , slAcceptsPublisherPaidPlacements
    , slIds
    , slProfileId
    , slDirectorySiteIds
    , slSortOrder
    , slKey
    , slPageToken
    , slSortField
    , slSubaccountId
    , slAcceptsInStreamVideoPlacements
    , slOauthToken
    , slApproved
    , slAdWordsSite
    , slMaxResults
    , slFields
    , slAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingSitesList@ which the
-- 'SitesList' request conforms to.
type SitesListAPI =
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
                         QueryParam "sortOrder" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "sortField" Text :>
                               QueryParam "subaccountId" Int64 :>
                                 QueryParam "acceptsInStreamVideoPlacements"
                                   Bool
                                   :>
                                   QueryParam "approved" Bool :>
                                     QueryParam "adWordsSite" Bool :>
                                       QueryParam "maxResults" Int32 :>
                                         Get '[JSON] SitesListResponse

-- | Retrieves a list of sites, possibly filtered.
--
-- /See:/ 'sitesList' smart constructor.
data SitesList = SitesList
    { _slQuotaUser                      :: !(Maybe Text)
    , _slPrettyPrint                    :: !Bool
    , _slUnmappedSite                   :: !(Maybe Bool)
    , _slUserIp                         :: !(Maybe Text)
    , _slCampaignIds                    :: !(Maybe Int64)
    , _slSearchString                   :: !(Maybe Text)
    , _slAcceptsInterstitialPlacements  :: !(Maybe Bool)
    , _slAcceptsPublisherPaidPlacements :: !(Maybe Bool)
    , _slIds                            :: !(Maybe Int64)
    , _slProfileId                      :: !Int64
    , _slDirectorySiteIds               :: !(Maybe Int64)
    , _slSortOrder                      :: !(Maybe Text)
    , _slKey                            :: !(Maybe Text)
    , _slPageToken                      :: !(Maybe Text)
    , _slSortField                      :: !(Maybe Text)
    , _slSubaccountId                   :: !(Maybe Int64)
    , _slAcceptsInStreamVideoPlacements :: !(Maybe Bool)
    , _slOauthToken                     :: !(Maybe Text)
    , _slApproved                       :: !(Maybe Bool)
    , _slAdWordsSite                    :: !(Maybe Bool)
    , _slMaxResults                     :: !(Maybe Int32)
    , _slFields                         :: !(Maybe Text)
    , _slAlt                            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slQuotaUser'
--
-- * 'slPrettyPrint'
--
-- * 'slUnmappedSite'
--
-- * 'slUserIp'
--
-- * 'slCampaignIds'
--
-- * 'slSearchString'
--
-- * 'slAcceptsInterstitialPlacements'
--
-- * 'slAcceptsPublisherPaidPlacements'
--
-- * 'slIds'
--
-- * 'slProfileId'
--
-- * 'slDirectorySiteIds'
--
-- * 'slSortOrder'
--
-- * 'slKey'
--
-- * 'slPageToken'
--
-- * 'slSortField'
--
-- * 'slSubaccountId'
--
-- * 'slAcceptsInStreamVideoPlacements'
--
-- * 'slOauthToken'
--
-- * 'slApproved'
--
-- * 'slAdWordsSite'
--
-- * 'slMaxResults'
--
-- * 'slFields'
--
-- * 'slAlt'
sitesList
    :: Int64 -- ^ 'profileId'
    -> SitesList
sitesList pSlProfileId_ =
    SitesList
    { _slQuotaUser = Nothing
    , _slPrettyPrint = True
    , _slUnmappedSite = Nothing
    , _slUserIp = Nothing
    , _slCampaignIds = Nothing
    , _slSearchString = Nothing
    , _slAcceptsInterstitialPlacements = Nothing
    , _slAcceptsPublisherPaidPlacements = Nothing
    , _slIds = Nothing
    , _slProfileId = pSlProfileId_
    , _slDirectorySiteIds = Nothing
    , _slSortOrder = Nothing
    , _slKey = Nothing
    , _slPageToken = Nothing
    , _slSortField = Nothing
    , _slSubaccountId = Nothing
    , _slAcceptsInStreamVideoPlacements = Nothing
    , _slOauthToken = Nothing
    , _slApproved = Nothing
    , _slAdWordsSite = Nothing
    , _slMaxResults = Nothing
    , _slFields = Nothing
    , _slAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
slQuotaUser :: Lens' SitesList' (Maybe Text)
slQuotaUser
  = lens _slQuotaUser (\ s a -> s{_slQuotaUser = a})

-- | Returns response with indentations and line breaks.
slPrettyPrint :: Lens' SitesList' Bool
slPrettyPrint
  = lens _slPrettyPrint
      (\ s a -> s{_slPrettyPrint = a})

-- | Select only sites that have not been mapped to a directory site.
slUnmappedSite :: Lens' SitesList' (Maybe Bool)
slUnmappedSite
  = lens _slUnmappedSite
      (\ s a -> s{_slUnmappedSite = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
slUserIp :: Lens' SitesList' (Maybe Text)
slUserIp = lens _slUserIp (\ s a -> s{_slUserIp = a})

-- | Select only sites with these campaign IDs.
slCampaignIds :: Lens' SitesList' (Maybe Int64)
slCampaignIds
  = lens _slCampaignIds
      (\ s a -> s{_slCampaignIds = a})

-- | Allows searching for objects by name, ID or keyName. Wildcards (*) are
-- allowed. For example, \"site*2015\" will return objects with names like
-- \"site June 2015\", \"site April 2015\", or simply \"site 2015\". Most
-- of the searches also add wildcards implicitly at the start and the end
-- of the search string. For example, a search string of \"site\" will
-- match objects with name \"my site\", \"site 2015\", or simply \"site\".
slSearchString :: Lens' SitesList' (Maybe Text)
slSearchString
  = lens _slSearchString
      (\ s a -> s{_slSearchString = a})

-- | This search filter is no longer supported and will have no effect on the
-- results returned.
slAcceptsInterstitialPlacements :: Lens' SitesList' (Maybe Bool)
slAcceptsInterstitialPlacements
  = lens _slAcceptsInterstitialPlacements
      (\ s a -> s{_slAcceptsInterstitialPlacements = a})

-- | Select only sites that accept publisher paid placements.
slAcceptsPublisherPaidPlacements :: Lens' SitesList' (Maybe Bool)
slAcceptsPublisherPaidPlacements
  = lens _slAcceptsPublisherPaidPlacements
      (\ s a -> s{_slAcceptsPublisherPaidPlacements = a})

-- | Select only sites with these IDs.
slIds :: Lens' SitesList' (Maybe Int64)
slIds = lens _slIds (\ s a -> s{_slIds = a})

-- | User profile ID associated with this request.
slProfileId :: Lens' SitesList' Int64
slProfileId
  = lens _slProfileId (\ s a -> s{_slProfileId = a})

-- | Select only sites with these directory site IDs.
slDirectorySiteIds :: Lens' SitesList' (Maybe Int64)
slDirectorySiteIds
  = lens _slDirectorySiteIds
      (\ s a -> s{_slDirectorySiteIds = a})

-- | Order of sorted results, default is ASCENDING.
slSortOrder :: Lens' SitesList' (Maybe Text)
slSortOrder
  = lens _slSortOrder (\ s a -> s{_slSortOrder = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
slKey :: Lens' SitesList' (Maybe Text)
slKey = lens _slKey (\ s a -> s{_slKey = a})

-- | Value of the nextPageToken from the previous result page.
slPageToken :: Lens' SitesList' (Maybe Text)
slPageToken
  = lens _slPageToken (\ s a -> s{_slPageToken = a})

-- | Field by which to sort the list.
slSortField :: Lens' SitesList' (Maybe Text)
slSortField
  = lens _slSortField (\ s a -> s{_slSortField = a})

-- | Select only sites with this subaccount ID.
slSubaccountId :: Lens' SitesList' (Maybe Int64)
slSubaccountId
  = lens _slSubaccountId
      (\ s a -> s{_slSubaccountId = a})

-- | This search filter is no longer supported and will have no effect on the
-- results returned.
slAcceptsInStreamVideoPlacements :: Lens' SitesList' (Maybe Bool)
slAcceptsInStreamVideoPlacements
  = lens _slAcceptsInStreamVideoPlacements
      (\ s a -> s{_slAcceptsInStreamVideoPlacements = a})

-- | OAuth 2.0 token for the current user.
slOauthToken :: Lens' SitesList' (Maybe Text)
slOauthToken
  = lens _slOauthToken (\ s a -> s{_slOauthToken = a})

-- | Select only approved sites.
slApproved :: Lens' SitesList' (Maybe Bool)
slApproved
  = lens _slApproved (\ s a -> s{_slApproved = a})

-- | Select only AdWords sites.
slAdWordsSite :: Lens' SitesList' (Maybe Bool)
slAdWordsSite
  = lens _slAdWordsSite
      (\ s a -> s{_slAdWordsSite = a})

-- | Maximum number of results to return.
slMaxResults :: Lens' SitesList' (Maybe Int32)
slMaxResults
  = lens _slMaxResults (\ s a -> s{_slMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
slFields :: Lens' SitesList' (Maybe Text)
slFields = lens _slFields (\ s a -> s{_slFields = a})

-- | Data format for the response.
slAlt :: Lens' SitesList' Text
slAlt = lens _slAlt (\ s a -> s{_slAlt = a})

instance GoogleRequest SitesList' where
        type Rs SitesList' = SitesListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u SitesList{..}
          = go _slQuotaUser _slPrettyPrint _slUnmappedSite
              _slUserIp
              _slCampaignIds
              _slSearchString
              _slAcceptsInterstitialPlacements
              _slAcceptsPublisherPaidPlacements
              _slIds
              _slProfileId
              _slDirectorySiteIds
              _slSortOrder
              _slKey
              _slPageToken
              _slSortField
              _slSubaccountId
              _slAcceptsInStreamVideoPlacements
              _slOauthToken
              _slApproved
              _slAdWordsSite
              _slMaxResults
              _slFields
              _slAlt
          where go
                  = clientWithRoute (Proxy :: Proxy SitesListAPI) r u
