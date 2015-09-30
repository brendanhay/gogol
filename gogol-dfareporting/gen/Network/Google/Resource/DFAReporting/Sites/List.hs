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
module Network.Google.Resource.DFAReporting.Sites.List
    (
    -- * REST Resource
      SitesListResource

    -- * Creating a Request
    , sitesList'
    , SitesList'

    -- * Request Lenses
    , sllQuotaUser
    , sllPrettyPrint
    , sllUnmappedSite
    , sllUserIp
    , sllCampaignIds
    , sllSearchString
    , sllAcceptsInterstitialPlacements
    , sllAcceptsPublisherPaidPlacements
    , sllIds
    , sllProfileId
    , sllDirectorySiteIds
    , sllSortOrder
    , sllKey
    , sllPageToken
    , sllSortField
    , sllSubaccountId
    , sllAcceptsInStreamVideoPlacements
    , sllOauthToken
    , sllApproved
    , sllAdWordsSite
    , sllMaxResults
    , sllFields
    , sllAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingSitesList@ which the
-- 'SitesList'' request conforms to.
type SitesListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "sites" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "unmappedSite" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParams "campaignIds" Int64 :>
                     QueryParam "searchString" Text :>
                       QueryParam "acceptsInterstitialPlacements" Bool :>
                         QueryParam "acceptsPublisherPaidPlacements" Bool :>
                           QueryParams "ids" Int64 :>
                             QueryParams "directorySiteIds" Int64 :>
                               QueryParam "sortOrder"
                                 DfareportingSitesListSortOrder
                                 :>
                                 QueryParam "key" Text :>
                                   QueryParam "pageToken" Text :>
                                     QueryParam "sortField"
                                       DfareportingSitesListSortField
                                       :>
                                       QueryParam "subaccountId" Int64 :>
                                         QueryParam
                                           "acceptsInStreamVideoPlacements"
                                           Bool
                                           :>
                                           QueryParam "oauth_token" Text :>
                                             QueryParam "approved" Bool :>
                                               QueryParam "adWordsSite" Bool :>
                                                 QueryParam "maxResults" Int32
                                                   :>
                                                   QueryParam "fields" Text :>
                                                     QueryParam "alt" Alt :>
                                                       Get '[JSON]
                                                         SitesListResponse

-- | Retrieves a list of sites, possibly filtered.
--
-- /See:/ 'sitesList'' smart constructor.
data SitesList' = SitesList'
    { _sllQuotaUser                      :: !(Maybe Text)
    , _sllPrettyPrint                    :: !Bool
    , _sllUnmappedSite                   :: !(Maybe Bool)
    , _sllUserIp                         :: !(Maybe Text)
    , _sllCampaignIds                    :: !(Maybe Int64)
    , _sllSearchString                   :: !(Maybe Text)
    , _sllAcceptsInterstitialPlacements  :: !(Maybe Bool)
    , _sllAcceptsPublisherPaidPlacements :: !(Maybe Bool)
    , _sllIds                            :: !(Maybe Int64)
    , _sllProfileId                      :: !Int64
    , _sllDirectorySiteIds               :: !(Maybe Int64)
    , _sllSortOrder                      :: !(Maybe DfareportingSitesListSortOrder)
    , _sllKey                            :: !(Maybe Text)
    , _sllPageToken                      :: !(Maybe Text)
    , _sllSortField                      :: !(Maybe DfareportingSitesListSortField)
    , _sllSubaccountId                   :: !(Maybe Int64)
    , _sllAcceptsInStreamVideoPlacements :: !(Maybe Bool)
    , _sllOauthToken                     :: !(Maybe Text)
    , _sllApproved                       :: !(Maybe Bool)
    , _sllAdWordsSite                    :: !(Maybe Bool)
    , _sllMaxResults                     :: !(Maybe Int32)
    , _sllFields                         :: !(Maybe Text)
    , _sllAlt                            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sllQuotaUser'
--
-- * 'sllPrettyPrint'
--
-- * 'sllUnmappedSite'
--
-- * 'sllUserIp'
--
-- * 'sllCampaignIds'
--
-- * 'sllSearchString'
--
-- * 'sllAcceptsInterstitialPlacements'
--
-- * 'sllAcceptsPublisherPaidPlacements'
--
-- * 'sllIds'
--
-- * 'sllProfileId'
--
-- * 'sllDirectorySiteIds'
--
-- * 'sllSortOrder'
--
-- * 'sllKey'
--
-- * 'sllPageToken'
--
-- * 'sllSortField'
--
-- * 'sllSubaccountId'
--
-- * 'sllAcceptsInStreamVideoPlacements'
--
-- * 'sllOauthToken'
--
-- * 'sllApproved'
--
-- * 'sllAdWordsSite'
--
-- * 'sllMaxResults'
--
-- * 'sllFields'
--
-- * 'sllAlt'
sitesList'
    :: Int64 -- ^ 'profileId'
    -> SitesList'
sitesList' pSllProfileId_ =
    SitesList'
    { _sllQuotaUser = Nothing
    , _sllPrettyPrint = True
    , _sllUnmappedSite = Nothing
    , _sllUserIp = Nothing
    , _sllCampaignIds = Nothing
    , _sllSearchString = Nothing
    , _sllAcceptsInterstitialPlacements = Nothing
    , _sllAcceptsPublisherPaidPlacements = Nothing
    , _sllIds = Nothing
    , _sllProfileId = pSllProfileId_
    , _sllDirectorySiteIds = Nothing
    , _sllSortOrder = Nothing
    , _sllKey = Nothing
    , _sllPageToken = Nothing
    , _sllSortField = Nothing
    , _sllSubaccountId = Nothing
    , _sllAcceptsInStreamVideoPlacements = Nothing
    , _sllOauthToken = Nothing
    , _sllApproved = Nothing
    , _sllAdWordsSite = Nothing
    , _sllMaxResults = Nothing
    , _sllFields = Nothing
    , _sllAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sllQuotaUser :: Lens' SitesList' (Maybe Text)
sllQuotaUser
  = lens _sllQuotaUser (\ s a -> s{_sllQuotaUser = a})

-- | Returns response with indentations and line breaks.
sllPrettyPrint :: Lens' SitesList' Bool
sllPrettyPrint
  = lens _sllPrettyPrint
      (\ s a -> s{_sllPrettyPrint = a})

-- | Select only sites that have not been mapped to a directory site.
sllUnmappedSite :: Lens' SitesList' (Maybe Bool)
sllUnmappedSite
  = lens _sllUnmappedSite
      (\ s a -> s{_sllUnmappedSite = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sllUserIp :: Lens' SitesList' (Maybe Text)
sllUserIp
  = lens _sllUserIp (\ s a -> s{_sllUserIp = a})

-- | Select only sites with these campaign IDs.
sllCampaignIds :: Lens' SitesList' (Maybe Int64)
sllCampaignIds
  = lens _sllCampaignIds
      (\ s a -> s{_sllCampaignIds = a})

-- | Allows searching for objects by name, ID or keyName. Wildcards (*) are
-- allowed. For example, \"site*2015\" will return objects with names like
-- \"site June 2015\", \"site April 2015\", or simply \"site 2015\". Most
-- of the searches also add wildcards implicitly at the start and the end
-- of the search string. For example, a search string of \"site\" will
-- match objects with name \"my site\", \"site 2015\", or simply \"site\".
sllSearchString :: Lens' SitesList' (Maybe Text)
sllSearchString
  = lens _sllSearchString
      (\ s a -> s{_sllSearchString = a})

-- | This search filter is no longer supported and will have no effect on the
-- results returned.
sllAcceptsInterstitialPlacements :: Lens' SitesList' (Maybe Bool)
sllAcceptsInterstitialPlacements
  = lens _sllAcceptsInterstitialPlacements
      (\ s a -> s{_sllAcceptsInterstitialPlacements = a})

-- | Select only sites that accept publisher paid placements.
sllAcceptsPublisherPaidPlacements :: Lens' SitesList' (Maybe Bool)
sllAcceptsPublisherPaidPlacements
  = lens _sllAcceptsPublisherPaidPlacements
      (\ s a -> s{_sllAcceptsPublisherPaidPlacements = a})

-- | Select only sites with these IDs.
sllIds :: Lens' SitesList' (Maybe Int64)
sllIds = lens _sllIds (\ s a -> s{_sllIds = a})

-- | User profile ID associated with this request.
sllProfileId :: Lens' SitesList' Int64
sllProfileId
  = lens _sllProfileId (\ s a -> s{_sllProfileId = a})

-- | Select only sites with these directory site IDs.
sllDirectorySiteIds :: Lens' SitesList' (Maybe Int64)
sllDirectorySiteIds
  = lens _sllDirectorySiteIds
      (\ s a -> s{_sllDirectorySiteIds = a})

-- | Order of sorted results, default is ASCENDING.
sllSortOrder :: Lens' SitesList' (Maybe DfareportingSitesListSortOrder)
sllSortOrder
  = lens _sllSortOrder (\ s a -> s{_sllSortOrder = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sllKey :: Lens' SitesList' (Maybe Text)
sllKey = lens _sllKey (\ s a -> s{_sllKey = a})

-- | Value of the nextPageToken from the previous result page.
sllPageToken :: Lens' SitesList' (Maybe Text)
sllPageToken
  = lens _sllPageToken (\ s a -> s{_sllPageToken = a})

-- | Field by which to sort the list.
sllSortField :: Lens' SitesList' (Maybe DfareportingSitesListSortField)
sllSortField
  = lens _sllSortField (\ s a -> s{_sllSortField = a})

-- | Select only sites with this subaccount ID.
sllSubaccountId :: Lens' SitesList' (Maybe Int64)
sllSubaccountId
  = lens _sllSubaccountId
      (\ s a -> s{_sllSubaccountId = a})

-- | This search filter is no longer supported and will have no effect on the
-- results returned.
sllAcceptsInStreamVideoPlacements :: Lens' SitesList' (Maybe Bool)
sllAcceptsInStreamVideoPlacements
  = lens _sllAcceptsInStreamVideoPlacements
      (\ s a -> s{_sllAcceptsInStreamVideoPlacements = a})

-- | OAuth 2.0 token for the current user.
sllOauthToken :: Lens' SitesList' (Maybe Text)
sllOauthToken
  = lens _sllOauthToken
      (\ s a -> s{_sllOauthToken = a})

-- | Select only approved sites.
sllApproved :: Lens' SitesList' (Maybe Bool)
sllApproved
  = lens _sllApproved (\ s a -> s{_sllApproved = a})

-- | Select only AdWords sites.
sllAdWordsSite :: Lens' SitesList' (Maybe Bool)
sllAdWordsSite
  = lens _sllAdWordsSite
      (\ s a -> s{_sllAdWordsSite = a})

-- | Maximum number of results to return.
sllMaxResults :: Lens' SitesList' (Maybe Int32)
sllMaxResults
  = lens _sllMaxResults
      (\ s a -> s{_sllMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
sllFields :: Lens' SitesList' (Maybe Text)
sllFields
  = lens _sllFields (\ s a -> s{_sllFields = a})

-- | Data format for the response.
sllAlt :: Lens' SitesList' Alt
sllAlt = lens _sllAlt (\ s a -> s{_sllAlt = a})

instance GoogleRequest SitesList' where
        type Rs SitesList' = SitesListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u SitesList'{..}
          = go _sllQuotaUser (Just _sllPrettyPrint)
              _sllUnmappedSite
              _sllUserIp
              _sllCampaignIds
              _sllSearchString
              _sllAcceptsInterstitialPlacements
              _sllAcceptsPublisherPaidPlacements
              _sllIds
              _sllProfileId
              _sllDirectorySiteIds
              _sllSortOrder
              _sllKey
              _sllPageToken
              _sllSortField
              _sllSubaccountId
              _sllAcceptsInStreamVideoPlacements
              _sllOauthToken
              _sllApproved
              _sllAdWordsSite
              _sllMaxResults
              _sllFields
              (Just _sllAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy SitesListResource)
                      r
                      u
