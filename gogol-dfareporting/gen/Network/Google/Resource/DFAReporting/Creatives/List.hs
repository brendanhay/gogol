{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Creatives.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of creatives, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCreativesList@.
module DFAReporting.Creatives.List
    (
    -- * REST Resource
      CreativesListAPI

    -- * Creating a Request
    , creativesList
    , CreativesList

    -- * Request Lenses
    , clRenderingIds
    , clQuotaUser
    , clPrettyPrint
    , clUserIp
    , clAdvertiserId
    , clSearchString
    , clSizeIds
    , clCompanionCreativeIds
    , clCampaignId
    , clTypes
    , clIds
    , clProfileId
    , clSortOrder
    , clActive
    , clKey
    , clCreativeFieldIds
    , clPageToken
    , clSortField
    , clOauthToken
    , clStudioCreativeId
    , clArchived
    , clMaxResults
    , clFields
    , clAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCreativesList@ which the
-- 'CreativesList' request conforms to.
type CreativesListAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creatives" :>
           QueryParams "renderingIds" Int64 :>
             QueryParam "advertiserId" Int64 :>
               QueryParam "searchString" Text :>
                 QueryParams "sizeIds" Int64 :>
                   QueryParams "companionCreativeIds" Int64 :>
                     QueryParam "campaignId" Int64 :>
                       QueryParams "types" Text :>
                         QueryParams "ids" Int64 :>
                           QueryParam "sortOrder" Text :>
                             QueryParam "active" Bool :>
                               QueryParams "creativeFieldIds" Int64 :>
                                 QueryParam "pageToken" Text :>
                                   QueryParam "sortField" Text :>
                                     QueryParam "studioCreativeId" Int64 :>
                                       QueryParam "archived" Bool :>
                                         QueryParam "maxResults" Int32 :>
                                           Get '[JSON] CreativesListResponse

-- | Retrieves a list of creatives, possibly filtered.
--
-- /See:/ 'creativesList' smart constructor.
data CreativesList = CreativesList
    { _clRenderingIds         :: !(Maybe Int64)
    , _clQuotaUser            :: !(Maybe Text)
    , _clPrettyPrint          :: !Bool
    , _clUserIp               :: !(Maybe Text)
    , _clAdvertiserId         :: !(Maybe Int64)
    , _clSearchString         :: !(Maybe Text)
    , _clSizeIds              :: !(Maybe Int64)
    , _clCompanionCreativeIds :: !(Maybe Int64)
    , _clCampaignId           :: !(Maybe Int64)
    , _clTypes                :: !(Maybe Text)
    , _clIds                  :: !(Maybe Int64)
    , _clProfileId            :: !Int64
    , _clSortOrder            :: !(Maybe Text)
    , _clActive               :: !(Maybe Bool)
    , _clKey                  :: !(Maybe Text)
    , _clCreativeFieldIds     :: !(Maybe Int64)
    , _clPageToken            :: !(Maybe Text)
    , _clSortField            :: !(Maybe Text)
    , _clOauthToken           :: !(Maybe Text)
    , _clStudioCreativeId     :: !(Maybe Int64)
    , _clArchived             :: !(Maybe Bool)
    , _clMaxResults           :: !(Maybe Int32)
    , _clFields               :: !(Maybe Text)
    , _clAlt                  :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clRenderingIds'
--
-- * 'clQuotaUser'
--
-- * 'clPrettyPrint'
--
-- * 'clUserIp'
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
-- * 'clProfileId'
--
-- * 'clSortOrder'
--
-- * 'clActive'
--
-- * 'clKey'
--
-- * 'clCreativeFieldIds'
--
-- * 'clPageToken'
--
-- * 'clSortField'
--
-- * 'clOauthToken'
--
-- * 'clStudioCreativeId'
--
-- * 'clArchived'
--
-- * 'clMaxResults'
--
-- * 'clFields'
--
-- * 'clAlt'
creativesList
    :: Int64 -- ^ 'profileId'
    -> CreativesList
creativesList pClProfileId_ =
    CreativesList
    { _clRenderingIds = Nothing
    , _clQuotaUser = Nothing
    , _clPrettyPrint = True
    , _clUserIp = Nothing
    , _clAdvertiserId = Nothing
    , _clSearchString = Nothing
    , _clSizeIds = Nothing
    , _clCompanionCreativeIds = Nothing
    , _clCampaignId = Nothing
    , _clTypes = Nothing
    , _clIds = Nothing
    , _clProfileId = pClProfileId_
    , _clSortOrder = Nothing
    , _clActive = Nothing
    , _clKey = Nothing
    , _clCreativeFieldIds = Nothing
    , _clPageToken = Nothing
    , _clSortField = Nothing
    , _clOauthToken = Nothing
    , _clStudioCreativeId = Nothing
    , _clArchived = Nothing
    , _clMaxResults = Nothing
    , _clFields = Nothing
    , _clAlt = "json"
    }

-- | Select only creatives with these rendering IDs.
clRenderingIds :: Lens' CreativesList' (Maybe Int64)
clRenderingIds
  = lens _clRenderingIds
      (\ s a -> s{_clRenderingIds = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
clQuotaUser :: Lens' CreativesList' (Maybe Text)
clQuotaUser
  = lens _clQuotaUser (\ s a -> s{_clQuotaUser = a})

-- | Returns response with indentations and line breaks.
clPrettyPrint :: Lens' CreativesList' Bool
clPrettyPrint
  = lens _clPrettyPrint
      (\ s a -> s{_clPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
clUserIp :: Lens' CreativesList' (Maybe Text)
clUserIp = lens _clUserIp (\ s a -> s{_clUserIp = a})

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
clSizeIds :: Lens' CreativesList' (Maybe Int64)
clSizeIds
  = lens _clSizeIds (\ s a -> s{_clSizeIds = a})

-- | Select only in-stream video creatives with these companion IDs.
clCompanionCreativeIds :: Lens' CreativesList' (Maybe Int64)
clCompanionCreativeIds
  = lens _clCompanionCreativeIds
      (\ s a -> s{_clCompanionCreativeIds = a})

-- | Select only creatives with this campaign ID.
clCampaignId :: Lens' CreativesList' (Maybe Int64)
clCampaignId
  = lens _clCampaignId (\ s a -> s{_clCampaignId = a})

-- | Select only creatives with these creative types.
clTypes :: Lens' CreativesList' (Maybe Text)
clTypes = lens _clTypes (\ s a -> s{_clTypes = a})

-- | Select only creatives with these IDs.
clIds :: Lens' CreativesList' (Maybe Int64)
clIds = lens _clIds (\ s a -> s{_clIds = a})

-- | User profile ID associated with this request.
clProfileId :: Lens' CreativesList' Int64
clProfileId
  = lens _clProfileId (\ s a -> s{_clProfileId = a})

-- | Order of sorted results, default is ASCENDING.
clSortOrder :: Lens' CreativesList' (Maybe Text)
clSortOrder
  = lens _clSortOrder (\ s a -> s{_clSortOrder = a})

-- | Select only active creatives. Leave blank to select active and inactive
-- creatives.
clActive :: Lens' CreativesList' (Maybe Bool)
clActive = lens _clActive (\ s a -> s{_clActive = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
clKey :: Lens' CreativesList' (Maybe Text)
clKey = lens _clKey (\ s a -> s{_clKey = a})

-- | Select only creatives with these creative field IDs.
clCreativeFieldIds :: Lens' CreativesList' (Maybe Int64)
clCreativeFieldIds
  = lens _clCreativeFieldIds
      (\ s a -> s{_clCreativeFieldIds = a})

-- | Value of the nextPageToken from the previous result page.
clPageToken :: Lens' CreativesList' (Maybe Text)
clPageToken
  = lens _clPageToken (\ s a -> s{_clPageToken = a})

-- | Field by which to sort the list.
clSortField :: Lens' CreativesList' (Maybe Text)
clSortField
  = lens _clSortField (\ s a -> s{_clSortField = a})

-- | OAuth 2.0 token for the current user.
clOauthToken :: Lens' CreativesList' (Maybe Text)
clOauthToken
  = lens _clOauthToken (\ s a -> s{_clOauthToken = a})

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

-- | Selector specifying which fields to include in a partial response.
clFields :: Lens' CreativesList' (Maybe Text)
clFields = lens _clFields (\ s a -> s{_clFields = a})

-- | Data format for the response.
clAlt :: Lens' CreativesList' Text
clAlt = lens _clAlt (\ s a -> s{_clAlt = a})

instance GoogleRequest CreativesList' where
        type Rs CreativesList' = CreativesListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CreativesList{..}
          = go _clRenderingIds _clQuotaUser _clPrettyPrint
              _clUserIp
              _clAdvertiserId
              _clSearchString
              _clSizeIds
              _clCompanionCreativeIds
              _clCampaignId
              _clTypes
              _clIds
              _clProfileId
              _clSortOrder
              _clActive
              _clKey
              _clCreativeFieldIds
              _clPageToken
              _clSortField
              _clOauthToken
              _clStudioCreativeId
              _clArchived
              _clMaxResults
              _clFields
              _clAlt
          where go
                  = clientWithRoute (Proxy :: Proxy CreativesListAPI) r
                      u
