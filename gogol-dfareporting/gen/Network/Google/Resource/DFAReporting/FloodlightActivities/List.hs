{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.FloodlightActivities.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of floodlight activities, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingFloodlightActivitiesList@.
module Network.Google.Resource.DFAReporting.FloodlightActivities.List
    (
    -- * REST Resource
      FloodlightActivitiesListResource

    -- * Creating a Request
    , floodlightActivitiesList'
    , FloodlightActivitiesList'

    -- * Request Lenses
    , falQuotaUser
    , falTagString
    , falPrettyPrint
    , falFloodlightActivityGroupTagString
    , falFloodlightConfigurationId
    , falUserIP
    , falAdvertiserId
    , falSearchString
    , falIds
    , falProFileId
    , falFloodlightActivityGroupIds
    , falSortOrder
    , falKey
    , falFloodlightActivityGroupType
    , falFloodlightActivityGroupName
    , falPageToken
    , falSortField
    , falOAuthToken
    , falMaxResults
    , falFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingFloodlightActivitiesList@ which the
-- 'FloodlightActivitiesList'' request conforms to.
type FloodlightActivitiesListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "floodlightActivities" :>
           QueryParam "tagString" Text :>
             QueryParam "floodlightActivityGroupTagString" Text :>
               QueryParam "floodlightConfigurationId" Int64 :>
                 QueryParam "advertiserId" Int64 :>
                   QueryParam "searchString" Text :>
                     QueryParams "ids" Int64 :>
                       QueryParams "floodlightActivityGroupIds" Int64 :>
                         QueryParam "sortOrder"
                           FloodlightActivitiesListSortOrder
                           :>
                           QueryParam "floodlightActivityGroupType"
                             FloodlightActivitiesListFloodlightActivityGroupType
                             :>
                             QueryParam "floodlightActivityGroupName" Text :>
                               QueryParam "pageToken" Text :>
                                 QueryParam "sortField"
                                   FloodlightActivitiesListSortField
                                   :>
                                   QueryParam "maxResults" Int32 :>
                                     QueryParam "quotaUser" Text :>
                                       QueryParam "prettyPrint" Bool :>
                                         QueryParam "userIp" Text :>
                                           QueryParam "fields" Text :>
                                             QueryParam "key" Key :>
                                               QueryParam "oauth_token"
                                                 OAuthToken
                                                 :>
                                                 QueryParam "alt" AltJSON :>
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
    , _falUserIP                           :: !(Maybe Text)
    , _falAdvertiserId                     :: !(Maybe Int64)
    , _falSearchString                     :: !(Maybe Text)
    , _falIds                              :: !(Maybe [Int64])
    , _falProFileId                        :: !Int64
    , _falFloodlightActivityGroupIds       :: !(Maybe [Int64])
    , _falSortOrder                        :: !(Maybe FloodlightActivitiesListSortOrder)
    , _falKey                              :: !(Maybe Key)
    , _falFloodlightActivityGroupType      :: !(Maybe FloodlightActivitiesListFloodlightActivityGroupType)
    , _falFloodlightActivityGroupName      :: !(Maybe Text)
    , _falPageToken                        :: !(Maybe Text)
    , _falSortField                        :: !(Maybe FloodlightActivitiesListSortField)
    , _falOAuthToken                       :: !(Maybe OAuthToken)
    , _falMaxResults                       :: !(Maybe Int32)
    , _falFields                           :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'falUserIP'
--
-- * 'falAdvertiserId'
--
-- * 'falSearchString'
--
-- * 'falIds'
--
-- * 'falProFileId'
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
-- * 'falOAuthToken'
--
-- * 'falMaxResults'
--
-- * 'falFields'
floodlightActivitiesList'
    :: Int64 -- ^ 'profileId'
    -> FloodlightActivitiesList'
floodlightActivitiesList' pFalProFileId_ =
    FloodlightActivitiesList'
    { _falQuotaUser = Nothing
    , _falTagString = Nothing
    , _falPrettyPrint = True
    , _falFloodlightActivityGroupTagString = Nothing
    , _falFloodlightConfigurationId = Nothing
    , _falUserIP = Nothing
    , _falAdvertiserId = Nothing
    , _falSearchString = Nothing
    , _falIds = Nothing
    , _falProFileId = pFalProFileId_
    , _falFloodlightActivityGroupIds = Nothing
    , _falSortOrder = Nothing
    , _falKey = Nothing
    , _falFloodlightActivityGroupType = Nothing
    , _falFloodlightActivityGroupName = Nothing
    , _falPageToken = Nothing
    , _falSortField = Nothing
    , _falOAuthToken = Nothing
    , _falMaxResults = Nothing
    , _falFields = Nothing
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
falUserIP :: Lens' FloodlightActivitiesList' (Maybe Text)
falUserIP
  = lens _falUserIP (\ s a -> s{_falUserIP = a})

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
falIds :: Lens' FloodlightActivitiesList' [Int64]
falIds
  = lens _falIds (\ s a -> s{_falIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
falProFileId :: Lens' FloodlightActivitiesList' Int64
falProFileId
  = lens _falProFileId (\ s a -> s{_falProFileId = a})

-- | Select only floodlight activities with the specified floodlight activity
-- group IDs.
falFloodlightActivityGroupIds :: Lens' FloodlightActivitiesList' [Int64]
falFloodlightActivityGroupIds
  = lens _falFloodlightActivityGroupIds
      (\ s a -> s{_falFloodlightActivityGroupIds = a})
      . _Default
      . _Coerce

-- | Order of sorted results, default is ASCENDING.
falSortOrder :: Lens' FloodlightActivitiesList' (Maybe FloodlightActivitiesListSortOrder)
falSortOrder
  = lens _falSortOrder (\ s a -> s{_falSortOrder = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
falKey :: Lens' FloodlightActivitiesList' (Maybe Key)
falKey = lens _falKey (\ s a -> s{_falKey = a})

-- | Select only floodlight activities with the specified floodlight activity
-- group type.
falFloodlightActivityGroupType :: Lens' FloodlightActivitiesList' (Maybe FloodlightActivitiesListFloodlightActivityGroupType)
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
falSortField :: Lens' FloodlightActivitiesList' (Maybe FloodlightActivitiesListSortField)
falSortField
  = lens _falSortField (\ s a -> s{_falSortField = a})

-- | OAuth 2.0 token for the current user.
falOAuthToken :: Lens' FloodlightActivitiesList' (Maybe OAuthToken)
falOAuthToken
  = lens _falOAuthToken
      (\ s a -> s{_falOAuthToken = a})

-- | Maximum number of results to return.
falMaxResults :: Lens' FloodlightActivitiesList' (Maybe Int32)
falMaxResults
  = lens _falMaxResults
      (\ s a -> s{_falMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
falFields :: Lens' FloodlightActivitiesList' (Maybe Text)
falFields
  = lens _falFields (\ s a -> s{_falFields = a})

instance GoogleAuth FloodlightActivitiesList' where
        authKey = falKey . _Just
        authToken = falOAuthToken . _Just

instance GoogleRequest FloodlightActivitiesList'
         where
        type Rs FloodlightActivitiesList' =
             FloodlightActivitiesListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u FloodlightActivitiesList'{..}
          = go _falProFileId _falTagString
              _falFloodlightActivityGroupTagString
              _falFloodlightConfigurationId
              _falAdvertiserId
              _falSearchString
              (_falIds ^. _Default)
              (_falFloodlightActivityGroupIds ^. _Default)
              _falSortOrder
              _falFloodlightActivityGroupType
              _falFloodlightActivityGroupName
              _falPageToken
              _falSortField
              _falMaxResults
              _falQuotaUser
              (Just _falPrettyPrint)
              _falUserIP
              _falFields
              _falKey
              _falOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy FloodlightActivitiesListResource)
                      r
                      u
