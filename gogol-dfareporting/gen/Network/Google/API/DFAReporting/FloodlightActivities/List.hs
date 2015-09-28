{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.FloodlightActivities.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of floodlight activities, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.floodlightActivities.list@.
module Network.Google.API.DFAReporting.FloodlightActivities.List
    (
    -- * REST Resource
      FloodlightActivitiesListAPI

    -- * Creating a Request
    , floodlightActivitiesList'
    , FloodlightActivitiesList'

    -- * Request Lenses
    , falQuotaUser
    , falTagString
    , falPrettyPrint
    , falFloodlightActivityGroupTagString
    , falFloodlightConfigurationId
    , falUserIp
    , falAdvertiserId
    , falSearchString
    , falIds
    , falProfileId
    , falFloodlightActivityGroupIds
    , falSortOrder
    , falKey
    , falFloodlightActivityGroupType
    , falFloodlightActivityGroupName
    , falPageToken
    , falSortField
    , falOauthToken
    , falMaxResults
    , falFields
    , falAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.floodlightActivities.list which the
-- 'FloodlightActivitiesList'' request conforms to.
type FloodlightActivitiesListAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "floodlightActivities" :>
           QueryParam "quotaUser" Text :>
             QueryParam "tagString" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "floodlightActivityGroupTagString" Text :>
                   QueryParam "floodlightConfigurationId" Int64 :>
                     QueryParam "userIp" Text :>
                       QueryParam "advertiserId" Int64 :>
                         QueryParam "searchString" Text :>
                           QueryParam "ids" Int64 :>
                             QueryParam "floodlightActivityGroupIds" Int64 :>
                               QueryParam "sortOrder"
                                 FloodlightActivitiesList'SortOrder
                                 :>
                                 QueryParam "key" Text :>
                                   QueryParam "floodlightActivityGroupType"
                                     FloodlightActivitiesList'FloodlightActivityGroupType
                                     :>
                                     QueryParam "floodlightActivityGroupName"
                                       Text
                                       :>
                                       QueryParam "pageToken" Text :>
                                         QueryParam "sortField"
                                           FloodlightActivitiesList'SortField
                                           :>
                                           QueryParam "oauth_token" Text :>
                                             QueryParam "maxResults" Int32 :>
                                               QueryParam "fields" Text :>
                                                 QueryParam "alt" Alt :>
                                                   Get '[JSON]
                                                     FloodlightActivitiesListResponse

-- | Retrieves a list of floodlight activities, possibly filtered.
--
-- /See:/ 'floodlightActivitiesList'' smart constructor.
data FloodlightActivitiesList' = FloodlightActivitiesList'
    { _falQuotaUser                        :: !(Maybe Text)
    , _falTagString                        :: !(Maybe Text)
    , _falPrettyPrint                      :: !Bool
    , _falFloodlightActivityGroupTagString :: !(Maybe Text)
    , _falFloodlightConfigurationId        :: !(Maybe Int64)
    , _falUserIp                           :: !(Maybe Text)
    , _falAdvertiserId                     :: !(Maybe Int64)
    , _falSearchString                     :: !(Maybe Text)
    , _falIds                              :: !(Maybe Int64)
    , _falProfileId                        :: !Int64
    , _falFloodlightActivityGroupIds       :: !(Maybe Int64)
    , _falSortOrder                        :: !(Maybe FloodlightActivitiesList'SortOrder)
    , _falKey                              :: !(Maybe Text)
    , _falFloodlightActivityGroupType      :: !(Maybe FloodlightActivitiesList'FloodlightActivityGroupType)
    , _falFloodlightActivityGroupName      :: !(Maybe Text)
    , _falPageToken                        :: !(Maybe Text)
    , _falSortField                        :: !(Maybe FloodlightActivitiesList'SortField)
    , _falOauthToken                       :: !(Maybe Text)
    , _falMaxResults                       :: !(Maybe Int32)
    , _falFields                           :: !(Maybe Text)
    , _falAlt                              :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightActivitiesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'falQuotaUser'
--
-- * 'falTagString'
--
-- * 'falPrettyPrint'
--
-- * 'falFloodlightActivityGroupTagString'
--
-- * 'falFloodlightConfigurationId'
--
-- * 'falUserIp'
--
-- * 'falAdvertiserId'
--
-- * 'falSearchString'
--
-- * 'falIds'
--
-- * 'falProfileId'
--
-- * 'falFloodlightActivityGroupIds'
--
-- * 'falSortOrder'
--
-- * 'falKey'
--
-- * 'falFloodlightActivityGroupType'
--
-- * 'falFloodlightActivityGroupName'
--
-- * 'falPageToken'
--
-- * 'falSortField'
--
-- * 'falOauthToken'
--
-- * 'falMaxResults'
--
-- * 'falFields'
--
-- * 'falAlt'
floodlightActivitiesList'
    :: Int64 -- ^ 'profileId'
    -> FloodlightActivitiesList'
floodlightActivitiesList' pFalProfileId_ =
    FloodlightActivitiesList'
    { _falQuotaUser = Nothing
    , _falTagString = Nothing
    , _falPrettyPrint = True
    , _falFloodlightActivityGroupTagString = Nothing
    , _falFloodlightConfigurationId = Nothing
    , _falUserIp = Nothing
    , _falAdvertiserId = Nothing
    , _falSearchString = Nothing
    , _falIds = Nothing
    , _falProfileId = pFalProfileId_
    , _falFloodlightActivityGroupIds = Nothing
    , _falSortOrder = Nothing
    , _falKey = Nothing
    , _falFloodlightActivityGroupType = Nothing
    , _falFloodlightActivityGroupName = Nothing
    , _falPageToken = Nothing
    , _falSortField = Nothing
    , _falOauthToken = Nothing
    , _falMaxResults = Nothing
    , _falFields = Nothing
    , _falAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
falQuotaUser :: Lens' FloodlightActivitiesList' (Maybe Text)
falQuotaUser
  = lens _falQuotaUser (\ s a -> s{_falQuotaUser = a})

-- | Select only floodlight activities with the specified tag string.
falTagString :: Lens' FloodlightActivitiesList' (Maybe Text)
falTagString
  = lens _falTagString (\ s a -> s{_falTagString = a})

-- | Returns response with indentations and line breaks.
falPrettyPrint :: Lens' FloodlightActivitiesList' Bool
falPrettyPrint
  = lens _falPrettyPrint
      (\ s a -> s{_falPrettyPrint = a})

-- | Select only floodlight activities with the specified floodlight activity
-- group tag string.
falFloodlightActivityGroupTagString :: Lens' FloodlightActivitiesList' (Maybe Text)
falFloodlightActivityGroupTagString
  = lens _falFloodlightActivityGroupTagString
      (\ s a ->
         s{_falFloodlightActivityGroupTagString = a})

-- | Select only floodlight activities for the specified floodlight
-- configuration ID. Must specify either ids, advertiserId, or
-- floodlightConfigurationId for a non-empty result.
falFloodlightConfigurationId :: Lens' FloodlightActivitiesList' (Maybe Int64)
falFloodlightConfigurationId
  = lens _falFloodlightConfigurationId
      (\ s a -> s{_falFloodlightConfigurationId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
falUserIp :: Lens' FloodlightActivitiesList' (Maybe Text)
falUserIp
  = lens _falUserIp (\ s a -> s{_falUserIp = a})

-- | Select only floodlight activities for the specified advertiser ID. Must
-- specify either ids, advertiserId, or floodlightConfigurationId for a
-- non-empty result.
falAdvertiserId :: Lens' FloodlightActivitiesList' (Maybe Int64)
falAdvertiserId
  = lens _falAdvertiserId
      (\ s a -> s{_falAdvertiserId = a})

-- | Allows searching for objects by name or ID. Wildcards (*) are allowed.
-- For example, \"floodlightactivity*2015\" will return objects with names
-- like \"floodlightactivity June 2015\", \"floodlightactivity April
-- 2015\", or simply \"floodlightactivity 2015\". Most of the searches also
-- add wildcards implicitly at the start and the end of the search string.
-- For example, a search string of \"floodlightactivity\" will match
-- objects with name \"my floodlightactivity activity\",
-- \"floodlightactivity 2015\", or simply \"floodlightactivity\".
falSearchString :: Lens' FloodlightActivitiesList' (Maybe Text)
falSearchString
  = lens _falSearchString
      (\ s a -> s{_falSearchString = a})

-- | Select only floodlight activities with the specified IDs. Must specify
-- either ids, advertiserId, or floodlightConfigurationId for a non-empty
-- result.
falIds :: Lens' FloodlightActivitiesList' (Maybe Int64)
falIds = lens _falIds (\ s a -> s{_falIds = a})

-- | User profile ID associated with this request.
falProfileId :: Lens' FloodlightActivitiesList' Int64
falProfileId
  = lens _falProfileId (\ s a -> s{_falProfileId = a})

-- | Select only floodlight activities with the specified floodlight activity
-- group IDs.
falFloodlightActivityGroupIds :: Lens' FloodlightActivitiesList' (Maybe Int64)
falFloodlightActivityGroupIds
  = lens _falFloodlightActivityGroupIds
      (\ s a -> s{_falFloodlightActivityGroupIds = a})

-- | Order of sorted results, default is ASCENDING.
falSortOrder :: Lens' FloodlightActivitiesList' (Maybe FloodlightActivitiesList'SortOrder)
falSortOrder
  = lens _falSortOrder (\ s a -> s{_falSortOrder = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
falKey :: Lens' FloodlightActivitiesList' (Maybe Text)
falKey = lens _falKey (\ s a -> s{_falKey = a})

-- | Select only floodlight activities with the specified floodlight activity
-- group type.
falFloodlightActivityGroupType :: Lens' FloodlightActivitiesList' (Maybe FloodlightActivitiesList'FloodlightActivityGroupType)
falFloodlightActivityGroupType
  = lens _falFloodlightActivityGroupType
      (\ s a -> s{_falFloodlightActivityGroupType = a})

-- | Select only floodlight activities with the specified floodlight activity
-- group name.
falFloodlightActivityGroupName :: Lens' FloodlightActivitiesList' (Maybe Text)
falFloodlightActivityGroupName
  = lens _falFloodlightActivityGroupName
      (\ s a -> s{_falFloodlightActivityGroupName = a})

-- | Value of the nextPageToken from the previous result page.
falPageToken :: Lens' FloodlightActivitiesList' (Maybe Text)
falPageToken
  = lens _falPageToken (\ s a -> s{_falPageToken = a})

-- | Field by which to sort the list.
falSortField :: Lens' FloodlightActivitiesList' (Maybe FloodlightActivitiesList'SortField)
falSortField
  = lens _falSortField (\ s a -> s{_falSortField = a})

-- | OAuth 2.0 token for the current user.
falOauthToken :: Lens' FloodlightActivitiesList' (Maybe Text)
falOauthToken
  = lens _falOauthToken
      (\ s a -> s{_falOauthToken = a})

-- | Maximum number of results to return.
falMaxResults :: Lens' FloodlightActivitiesList' (Maybe Int32)
falMaxResults
  = lens _falMaxResults
      (\ s a -> s{_falMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
falFields :: Lens' FloodlightActivitiesList' (Maybe Text)
falFields
  = lens _falFields (\ s a -> s{_falFields = a})

-- | Data format for the response.
falAlt :: Lens' FloodlightActivitiesList' Alt
falAlt = lens _falAlt (\ s a -> s{_falAlt = a})

instance GoogleRequest FloodlightActivitiesList'
         where
        type Rs FloodlightActivitiesList' =
             FloodlightActivitiesListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u FloodlightActivitiesList'{..}
          = go _falQuotaUser _falTagString
              (Just _falPrettyPrint)
              _falFloodlightActivityGroupTagString
              _falFloodlightConfigurationId
              _falUserIp
              _falAdvertiserId
              _falSearchString
              _falIds
              _falProfileId
              _falFloodlightActivityGroupIds
              _falSortOrder
              _falKey
              _falFloodlightActivityGroupType
              _falFloodlightActivityGroupName
              _falPageToken
              _falSortField
              _falOauthToken
              _falMaxResults
              _falFields
              (Just _falAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy FloodlightActivitiesListAPI)
                      r
                      u
