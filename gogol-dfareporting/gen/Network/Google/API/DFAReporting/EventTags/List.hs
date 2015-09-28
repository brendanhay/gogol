{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.EventTags.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of event tags, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.eventTags.list@.
module Network.Google.API.DFAReporting.EventTags.List
    (
    -- * REST Resource
      EventTagsListAPI

    -- * Creating a Request
    , eventTagsList'
    , EventTagsList'

    -- * Request Lenses
    , etlQuotaUser
    , etlPrettyPrint
    , etlDefinitionsOnly
    , etlEventTagTypes
    , etlEnabled
    , etlUserIp
    , etlAdvertiserId
    , etlSearchString
    , etlCampaignId
    , etlIds
    , etlProfileId
    , etlSortOrder
    , etlKey
    , etlAdId
    , etlSortField
    , etlOauthToken
    , etlFields
    , etlAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.eventTags.list which the
-- 'EventTagsList'' request conforms to.
type EventTagsListAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "eventTags" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "definitionsOnly" Bool :>
                 QueryParam "eventTagTypes"
                   EventTagsList'EventTagTypes
                   :>
                   QueryParam "enabled" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "advertiserId" Int64 :>
                         QueryParam "searchString" Text :>
                           QueryParam "campaignId" Int64 :>
                             QueryParam "ids" Int64 :>
                               QueryParam "sortOrder" EventTagsList'SortOrder :>
                                 QueryParam "key" Text :>
                                   QueryParam "adId" Int64 :>
                                     QueryParam "sortField"
                                       EventTagsList'SortField
                                       :>
                                       QueryParam "oauth_token" Text :>
                                         QueryParam "fields" Text :>
                                           QueryParam "alt" Alt :>
                                             Get '[JSON] EventTagsListResponse

-- | Retrieves a list of event tags, possibly filtered.
--
-- /See:/ 'eventTagsList'' smart constructor.
data EventTagsList' = EventTagsList'
    { _etlQuotaUser       :: !(Maybe Text)
    , _etlPrettyPrint     :: !Bool
    , _etlDefinitionsOnly :: !(Maybe Bool)
    , _etlEventTagTypes   :: !(Maybe EventTagsList'EventTagTypes)
    , _etlEnabled         :: !(Maybe Bool)
    , _etlUserIp          :: !(Maybe Text)
    , _etlAdvertiserId    :: !(Maybe Int64)
    , _etlSearchString    :: !(Maybe Text)
    , _etlCampaignId      :: !(Maybe Int64)
    , _etlIds             :: !(Maybe Int64)
    , _etlProfileId       :: !Int64
    , _etlSortOrder       :: !(Maybe EventTagsList'SortOrder)
    , _etlKey             :: !(Maybe Text)
    , _etlAdId            :: !(Maybe Int64)
    , _etlSortField       :: !(Maybe EventTagsList'SortField)
    , _etlOauthToken      :: !(Maybe Text)
    , _etlFields          :: !(Maybe Text)
    , _etlAlt             :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventTagsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etlQuotaUser'
--
-- * 'etlPrettyPrint'
--
-- * 'etlDefinitionsOnly'
--
-- * 'etlEventTagTypes'
--
-- * 'etlEnabled'
--
-- * 'etlUserIp'
--
-- * 'etlAdvertiserId'
--
-- * 'etlSearchString'
--
-- * 'etlCampaignId'
--
-- * 'etlIds'
--
-- * 'etlProfileId'
--
-- * 'etlSortOrder'
--
-- * 'etlKey'
--
-- * 'etlAdId'
--
-- * 'etlSortField'
--
-- * 'etlOauthToken'
--
-- * 'etlFields'
--
-- * 'etlAlt'
eventTagsList'
    :: Int64 -- ^ 'profileId'
    -> EventTagsList'
eventTagsList' pEtlProfileId_ =
    EventTagsList'
    { _etlQuotaUser = Nothing
    , _etlPrettyPrint = True
    , _etlDefinitionsOnly = Nothing
    , _etlEventTagTypes = Nothing
    , _etlEnabled = Nothing
    , _etlUserIp = Nothing
    , _etlAdvertiserId = Nothing
    , _etlSearchString = Nothing
    , _etlCampaignId = Nothing
    , _etlIds = Nothing
    , _etlProfileId = pEtlProfileId_
    , _etlSortOrder = Nothing
    , _etlKey = Nothing
    , _etlAdId = Nothing
    , _etlSortField = Nothing
    , _etlOauthToken = Nothing
    , _etlFields = Nothing
    , _etlAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
etlQuotaUser :: Lens' EventTagsList' (Maybe Text)
etlQuotaUser
  = lens _etlQuotaUser (\ s a -> s{_etlQuotaUser = a})

-- | Returns response with indentations and line breaks.
etlPrettyPrint :: Lens' EventTagsList' Bool
etlPrettyPrint
  = lens _etlPrettyPrint
      (\ s a -> s{_etlPrettyPrint = a})

-- | Examine only the specified campaign or advertiser\'s event tags for
-- matching selector criteria. When set to false, the parent advertiser and
-- parent campaign of the specified ad or campaign is examined as well. In
-- addition, when set to false, the status field is examined as well, along
-- with the enabledByDefault field. This parameter can not be set to true
-- when adId is specified as ads do not define their own even tags.
etlDefinitionsOnly :: Lens' EventTagsList' (Maybe Bool)
etlDefinitionsOnly
  = lens _etlDefinitionsOnly
      (\ s a -> s{_etlDefinitionsOnly = a})

-- | Select only event tags with the specified event tag types. Event tag
-- types can be used to specify whether to use a third-party pixel, a
-- third-party JavaScript URL, or a third-party click-through URL for
-- either impression or click tracking.
etlEventTagTypes :: Lens' EventTagsList' (Maybe EventTagsList'EventTagTypes)
etlEventTagTypes
  = lens _etlEventTagTypes
      (\ s a -> s{_etlEventTagTypes = a})

-- | Select only enabled event tags. What is considered enabled or disabled
-- depends on the definitionsOnly parameter. When definitionsOnly is set to
-- true, only the specified advertiser or campaign\'s event tags\'
-- enabledByDefault field is examined. When definitionsOnly is set to
-- false, the specified ad or specified campaign\'s parent advertiser\'s or
-- parent campaign\'s event tags\' enabledByDefault and status fields are
-- examined as well.
etlEnabled :: Lens' EventTagsList' (Maybe Bool)
etlEnabled
  = lens _etlEnabled (\ s a -> s{_etlEnabled = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
etlUserIp :: Lens' EventTagsList' (Maybe Text)
etlUserIp
  = lens _etlUserIp (\ s a -> s{_etlUserIp = a})

-- | Select only event tags that belong to this advertiser.
etlAdvertiserId :: Lens' EventTagsList' (Maybe Int64)
etlAdvertiserId
  = lens _etlAdvertiserId
      (\ s a -> s{_etlAdvertiserId = a})

-- | Allows searching for objects by name or ID. Wildcards (*) are allowed.
-- For example, \"eventtag*2015\" will return objects with names like
-- \"eventtag June 2015\", \"eventtag April 2015\", or simply \"eventtag
-- 2015\". Most of the searches also add wildcards implicitly at the start
-- and the end of the search string. For example, a search string of
-- \"eventtag\" will match objects with name \"my eventtag\", \"eventtag
-- 2015\", or simply \"eventtag\".
etlSearchString :: Lens' EventTagsList' (Maybe Text)
etlSearchString
  = lens _etlSearchString
      (\ s a -> s{_etlSearchString = a})

-- | Select only event tags that belong to this campaign.
etlCampaignId :: Lens' EventTagsList' (Maybe Int64)
etlCampaignId
  = lens _etlCampaignId
      (\ s a -> s{_etlCampaignId = a})

-- | Select only event tags with these IDs.
etlIds :: Lens' EventTagsList' (Maybe Int64)
etlIds = lens _etlIds (\ s a -> s{_etlIds = a})

-- | User profile ID associated with this request.
etlProfileId :: Lens' EventTagsList' Int64
etlProfileId
  = lens _etlProfileId (\ s a -> s{_etlProfileId = a})

-- | Order of sorted results, default is ASCENDING.
etlSortOrder :: Lens' EventTagsList' (Maybe EventTagsList'SortOrder)
etlSortOrder
  = lens _etlSortOrder (\ s a -> s{_etlSortOrder = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
etlKey :: Lens' EventTagsList' (Maybe Text)
etlKey = lens _etlKey (\ s a -> s{_etlKey = a})

-- | Select only event tags that belong to this ad.
etlAdId :: Lens' EventTagsList' (Maybe Int64)
etlAdId = lens _etlAdId (\ s a -> s{_etlAdId = a})

-- | Field by which to sort the list.
etlSortField :: Lens' EventTagsList' (Maybe EventTagsList'SortField)
etlSortField
  = lens _etlSortField (\ s a -> s{_etlSortField = a})

-- | OAuth 2.0 token for the current user.
etlOauthToken :: Lens' EventTagsList' (Maybe Text)
etlOauthToken
  = lens _etlOauthToken
      (\ s a -> s{_etlOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
etlFields :: Lens' EventTagsList' (Maybe Text)
etlFields
  = lens _etlFields (\ s a -> s{_etlFields = a})

-- | Data format for the response.
etlAlt :: Lens' EventTagsList' Alt
etlAlt = lens _etlAlt (\ s a -> s{_etlAlt = a})

instance GoogleRequest EventTagsList' where
        type Rs EventTagsList' = EventTagsListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u EventTagsList'{..}
          = go _etlQuotaUser (Just _etlPrettyPrint)
              _etlDefinitionsOnly
              _etlEventTagTypes
              _etlEnabled
              _etlUserIp
              _etlAdvertiserId
              _etlSearchString
              _etlCampaignId
              _etlIds
              _etlProfileId
              _etlSortOrder
              _etlKey
              _etlAdId
              _etlSortField
              _etlOauthToken
              _etlFields
              (Just _etlAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy EventTagsListAPI) r
                      u
