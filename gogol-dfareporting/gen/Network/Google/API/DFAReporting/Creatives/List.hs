{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.Creatives.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of creatives, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.creatives.list@.
module Network.Google.API.DFAReporting.Creatives.List
    (
    -- * REST Resource
      CreativesListAPI

    -- * Creating a Request
    , creativesList'
    , CreativesList'

    -- * Request Lenses
    , cl1RenderingIds
    , cl1QuotaUser
    , cl1PrettyPrint
    , cl1UserIp
    , cl1AdvertiserId
    , cl1SearchString
    , cl1SizeIds
    , cl1CompanionCreativeIds
    , cl1CampaignId
    , cl1Types
    , cl1Ids
    , cl1ProfileId
    , cl1SortOrder
    , cl1Active
    , cl1Key
    , cl1CreativeFieldIds
    , cl1PageToken
    , cl1SortField
    , cl1OauthToken
    , cl1StudioCreativeId
    , cl1Archived
    , cl1MaxResults
    , cl1Fields
    , cl1Alt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.creatives.list which the
-- 'CreativesList'' request conforms to.
type CreativesListAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creatives" :>
           QueryParam "renderingIds" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "advertiserId" Int64 :>
                     QueryParam "searchString" Text :>
                       QueryParam "sizeIds" Int64 :>
                         QueryParam "companionCreativeIds" Int64 :>
                           QueryParam "campaignId" Int64 :>
                             QueryParam "types" CreativesList'Types :>
                               QueryParam "ids" Int64 :>
                                 QueryParam "sortOrder" CreativesList'SortOrder
                                   :>
                                   QueryParam "active" Bool :>
                                     QueryParam "key" Text :>
                                       QueryParam "creativeFieldIds" Int64 :>
                                         QueryParam "pageToken" Text :>
                                           QueryParam "sortField"
                                             CreativesList'SortField
                                             :>
                                             QueryParam "oauth_token" Text :>
                                               QueryParam "studioCreativeId"
                                                 Int64
                                                 :>
                                                 QueryParam "archived" Bool :>
                                                   QueryParam "maxResults" Int32
                                                     :>
                                                     QueryParam "fields" Text :>
                                                       QueryParam "alt" Alt :>
                                                         Get '[JSON]
                                                           CreativesListResponse

-- | Retrieves a list of creatives, possibly filtered.
--
-- /See:/ 'creativesList'' smart constructor.
data CreativesList' = CreativesList'
    { _cl1RenderingIds         :: !(Maybe Int64)
    , _cl1QuotaUser            :: !(Maybe Text)
    , _cl1PrettyPrint          :: !Bool
    , _cl1UserIp               :: !(Maybe Text)
    , _cl1AdvertiserId         :: !(Maybe Int64)
    , _cl1SearchString         :: !(Maybe Text)
    , _cl1SizeIds              :: !(Maybe Int64)
    , _cl1CompanionCreativeIds :: !(Maybe Int64)
    , _cl1CampaignId           :: !(Maybe Int64)
    , _cl1Types                :: !(Maybe CreativesList'Types)
    , _cl1Ids                  :: !(Maybe Int64)
    , _cl1ProfileId            :: !Int64
    , _cl1SortOrder            :: !(Maybe CreativesList'SortOrder)
    , _cl1Active               :: !(Maybe Bool)
    , _cl1Key                  :: !(Maybe Text)
    , _cl1CreativeFieldIds     :: !(Maybe Int64)
    , _cl1PageToken            :: !(Maybe Text)
    , _cl1SortField            :: !(Maybe CreativesList'SortField)
    , _cl1OauthToken           :: !(Maybe Text)
    , _cl1StudioCreativeId     :: !(Maybe Int64)
    , _cl1Archived             :: !(Maybe Bool)
    , _cl1MaxResults           :: !(Maybe Int32)
    , _cl1Fields               :: !(Maybe Text)
    , _cl1Alt                  :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cl1RenderingIds'
--
-- * 'cl1QuotaUser'
--
-- * 'cl1PrettyPrint'
--
-- * 'cl1UserIp'
--
-- * 'cl1AdvertiserId'
--
-- * 'cl1SearchString'
--
-- * 'cl1SizeIds'
--
-- * 'cl1CompanionCreativeIds'
--
-- * 'cl1CampaignId'
--
-- * 'cl1Types'
--
-- * 'cl1Ids'
--
-- * 'cl1ProfileId'
--
-- * 'cl1SortOrder'
--
-- * 'cl1Active'
--
-- * 'cl1Key'
--
-- * 'cl1CreativeFieldIds'
--
-- * 'cl1PageToken'
--
-- * 'cl1SortField'
--
-- * 'cl1OauthToken'
--
-- * 'cl1StudioCreativeId'
--
-- * 'cl1Archived'
--
-- * 'cl1MaxResults'
--
-- * 'cl1Fields'
--
-- * 'cl1Alt'
creativesList'
    :: Int64 -- ^ 'profileId'
    -> CreativesList'
creativesList' pCl1ProfileId_ =
    CreativesList'
    { _cl1RenderingIds = Nothing
    , _cl1QuotaUser = Nothing
    , _cl1PrettyPrint = True
    , _cl1UserIp = Nothing
    , _cl1AdvertiserId = Nothing
    , _cl1SearchString = Nothing
    , _cl1SizeIds = Nothing
    , _cl1CompanionCreativeIds = Nothing
    , _cl1CampaignId = Nothing
    , _cl1Types = Nothing
    , _cl1Ids = Nothing
    , _cl1ProfileId = pCl1ProfileId_
    , _cl1SortOrder = Nothing
    , _cl1Active = Nothing
    , _cl1Key = Nothing
    , _cl1CreativeFieldIds = Nothing
    , _cl1PageToken = Nothing
    , _cl1SortField = Nothing
    , _cl1OauthToken = Nothing
    , _cl1StudioCreativeId = Nothing
    , _cl1Archived = Nothing
    , _cl1MaxResults = Nothing
    , _cl1Fields = Nothing
    , _cl1Alt = JSON
    }

-- | Select only creatives with these rendering IDs.
cl1RenderingIds :: Lens' CreativesList' (Maybe Int64)
cl1RenderingIds
  = lens _cl1RenderingIds
      (\ s a -> s{_cl1RenderingIds = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cl1QuotaUser :: Lens' CreativesList' (Maybe Text)
cl1QuotaUser
  = lens _cl1QuotaUser (\ s a -> s{_cl1QuotaUser = a})

-- | Returns response with indentations and line breaks.
cl1PrettyPrint :: Lens' CreativesList' Bool
cl1PrettyPrint
  = lens _cl1PrettyPrint
      (\ s a -> s{_cl1PrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cl1UserIp :: Lens' CreativesList' (Maybe Text)
cl1UserIp
  = lens _cl1UserIp (\ s a -> s{_cl1UserIp = a})

-- | Select only creatives with this advertiser ID.
cl1AdvertiserId :: Lens' CreativesList' (Maybe Int64)
cl1AdvertiserId
  = lens _cl1AdvertiserId
      (\ s a -> s{_cl1AdvertiserId = a})

-- | Allows searching for objects by name or ID. Wildcards (*) are allowed.
-- For example, \"creative*2015\" will return objects with names like
-- \"creative June 2015\", \"creative April 2015\", or simply \"creative
-- 2015\". Most of the searches also add wildcards implicitly at the start
-- and the end of the search string. For example, a search string of
-- \"creative\" will match objects with name \"my creative\", \"creative
-- 2015\", or simply \"creative\".
cl1SearchString :: Lens' CreativesList' (Maybe Text)
cl1SearchString
  = lens _cl1SearchString
      (\ s a -> s{_cl1SearchString = a})

-- | Select only creatives with these size IDs.
cl1SizeIds :: Lens' CreativesList' (Maybe Int64)
cl1SizeIds
  = lens _cl1SizeIds (\ s a -> s{_cl1SizeIds = a})

-- | Select only in-stream video creatives with these companion IDs.
cl1CompanionCreativeIds :: Lens' CreativesList' (Maybe Int64)
cl1CompanionCreativeIds
  = lens _cl1CompanionCreativeIds
      (\ s a -> s{_cl1CompanionCreativeIds = a})

-- | Select only creatives with this campaign ID.
cl1CampaignId :: Lens' CreativesList' (Maybe Int64)
cl1CampaignId
  = lens _cl1CampaignId
      (\ s a -> s{_cl1CampaignId = a})

-- | Select only creatives with these creative types.
cl1Types :: Lens' CreativesList' (Maybe CreativesList'Types)
cl1Types = lens _cl1Types (\ s a -> s{_cl1Types = a})

-- | Select only creatives with these IDs.
cl1Ids :: Lens' CreativesList' (Maybe Int64)
cl1Ids = lens _cl1Ids (\ s a -> s{_cl1Ids = a})

-- | User profile ID associated with this request.
cl1ProfileId :: Lens' CreativesList' Int64
cl1ProfileId
  = lens _cl1ProfileId (\ s a -> s{_cl1ProfileId = a})

-- | Order of sorted results, default is ASCENDING.
cl1SortOrder :: Lens' CreativesList' (Maybe CreativesList'SortOrder)
cl1SortOrder
  = lens _cl1SortOrder (\ s a -> s{_cl1SortOrder = a})

-- | Select only active creatives. Leave blank to select active and inactive
-- creatives.
cl1Active :: Lens' CreativesList' (Maybe Bool)
cl1Active
  = lens _cl1Active (\ s a -> s{_cl1Active = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cl1Key :: Lens' CreativesList' (Maybe Text)
cl1Key = lens _cl1Key (\ s a -> s{_cl1Key = a})

-- | Select only creatives with these creative field IDs.
cl1CreativeFieldIds :: Lens' CreativesList' (Maybe Int64)
cl1CreativeFieldIds
  = lens _cl1CreativeFieldIds
      (\ s a -> s{_cl1CreativeFieldIds = a})

-- | Value of the nextPageToken from the previous result page.
cl1PageToken :: Lens' CreativesList' (Maybe Text)
cl1PageToken
  = lens _cl1PageToken (\ s a -> s{_cl1PageToken = a})

-- | Field by which to sort the list.
cl1SortField :: Lens' CreativesList' (Maybe CreativesList'SortField)
cl1SortField
  = lens _cl1SortField (\ s a -> s{_cl1SortField = a})

-- | OAuth 2.0 token for the current user.
cl1OauthToken :: Lens' CreativesList' (Maybe Text)
cl1OauthToken
  = lens _cl1OauthToken
      (\ s a -> s{_cl1OauthToken = a})

-- | Select only creatives corresponding to this Studio creative ID.
cl1StudioCreativeId :: Lens' CreativesList' (Maybe Int64)
cl1StudioCreativeId
  = lens _cl1StudioCreativeId
      (\ s a -> s{_cl1StudioCreativeId = a})

-- | Select only archived creatives. Leave blank to select archived and
-- unarchived creatives.
cl1Archived :: Lens' CreativesList' (Maybe Bool)
cl1Archived
  = lens _cl1Archived (\ s a -> s{_cl1Archived = a})

-- | Maximum number of results to return.
cl1MaxResults :: Lens' CreativesList' (Maybe Int32)
cl1MaxResults
  = lens _cl1MaxResults
      (\ s a -> s{_cl1MaxResults = a})

-- | Selector specifying which fields to include in a partial response.
cl1Fields :: Lens' CreativesList' (Maybe Text)
cl1Fields
  = lens _cl1Fields (\ s a -> s{_cl1Fields = a})

-- | Data format for the response.
cl1Alt :: Lens' CreativesList' Alt
cl1Alt = lens _cl1Alt (\ s a -> s{_cl1Alt = a})

instance GoogleRequest CreativesList' where
        type Rs CreativesList' = CreativesListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CreativesList'{..}
          = go _cl1RenderingIds _cl1QuotaUser
              (Just _cl1PrettyPrint)
              _cl1UserIp
              _cl1AdvertiserId
              _cl1SearchString
              _cl1SizeIds
              _cl1CompanionCreativeIds
              _cl1CampaignId
              _cl1Types
              _cl1Ids
              _cl1ProfileId
              _cl1SortOrder
              _cl1Active
              _cl1Key
              _cl1CreativeFieldIds
              _cl1PageToken
              _cl1SortField
              _cl1OauthToken
              _cl1StudioCreativeId
              _cl1Archived
              _cl1MaxResults
              _cl1Fields
              (Just _cl1Alt)
          where go
                  = clientWithRoute (Proxy :: Proxy CreativesListAPI) r
                      u
