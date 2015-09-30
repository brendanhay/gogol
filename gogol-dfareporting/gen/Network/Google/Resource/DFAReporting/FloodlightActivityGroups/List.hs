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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightActivityGroups.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of floodlight activity groups, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingFloodlightActivityGroupsList@.
module Network.Google.Resource.DFAReporting.FloodlightActivityGroups.List
    (
    -- * REST Resource
      FloodlightActivityGroupsListResource

    -- * Creating a Request
    , floodlightActivityGroupsList'
    , FloodlightActivityGroupsList'

    -- * Request Lenses
    , faglQuotaUser
    , faglPrettyPrint
    , faglFloodlightConfigurationId
    , faglUserIp
    , faglAdvertiserId
    , faglSearchString
    , faglIds
    , faglProfileId
    , faglSortOrder
    , faglKey
    , faglPageToken
    , faglSortField
    , faglType
    , faglOauthToken
    , faglMaxResults
    , faglFields
    , faglAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingFloodlightActivityGroupsList@ which the
-- 'FloodlightActivityGroupsList'' request conforms to.
type FloodlightActivityGroupsListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "floodlightActivityGroups" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "floodlightConfigurationId" Int64 :>
                 QueryParam "userIp" Text :>
                   QueryParam "advertiserId" Int64 :>
                     QueryParam "searchString" Text :>
                       QueryParams "ids" Int64 :>
                         QueryParam "sortOrder"
                           DfareportingFloodlightActivityGroupsListSortOrder
                           :>
                           QueryParam "key" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "sortField"
                                 DfareportingFloodlightActivityGroupsListSortField
                                 :>
                                 QueryParam "type"
                                   DfareportingFloodlightActivityGroupsListType
                                   :>
                                   QueryParam "oauth_token" Text :>
                                     QueryParam "maxResults" Int32 :>
                                       QueryParam "fields" Text :>
                                         QueryParam "alt" Alt :>
                                           Get '[JSON]
                                             FloodlightActivityGroupsListResponse

-- | Retrieves a list of floodlight activity groups, possibly filtered.
--
-- /See:/ 'floodlightActivityGroupsList'' smart constructor.
data FloodlightActivityGroupsList' = FloodlightActivityGroupsList'
    { _faglQuotaUser                 :: !(Maybe Text)
    , _faglPrettyPrint               :: !Bool
    , _faglFloodlightConfigurationId :: !(Maybe Int64)
    , _faglUserIp                    :: !(Maybe Text)
    , _faglAdvertiserId              :: !(Maybe Int64)
    , _faglSearchString              :: !(Maybe Text)
    , _faglIds                       :: !(Maybe Int64)
    , _faglProfileId                 :: !Int64
    , _faglSortOrder                 :: !(Maybe DfareportingFloodlightActivityGroupsListSortOrder)
    , _faglKey                       :: !(Maybe Text)
    , _faglPageToken                 :: !(Maybe Text)
    , _faglSortField                 :: !(Maybe DfareportingFloodlightActivityGroupsListSortField)
    , _faglType                      :: !(Maybe DfareportingFloodlightActivityGroupsListType)
    , _faglOauthToken                :: !(Maybe Text)
    , _faglMaxResults                :: !(Maybe Int32)
    , _faglFields                    :: !(Maybe Text)
    , _faglAlt                       :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightActivityGroupsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'faglQuotaUser'
--
-- * 'faglPrettyPrint'
--
-- * 'faglFloodlightConfigurationId'
--
-- * 'faglUserIp'
--
-- * 'faglAdvertiserId'
--
-- * 'faglSearchString'
--
-- * 'faglIds'
--
-- * 'faglProfileId'
--
-- * 'faglSortOrder'
--
-- * 'faglKey'
--
-- * 'faglPageToken'
--
-- * 'faglSortField'
--
-- * 'faglType'
--
-- * 'faglOauthToken'
--
-- * 'faglMaxResults'
--
-- * 'faglFields'
--
-- * 'faglAlt'
floodlightActivityGroupsList'
    :: Int64 -- ^ 'profileId'
    -> FloodlightActivityGroupsList'
floodlightActivityGroupsList' pFaglProfileId_ =
    FloodlightActivityGroupsList'
    { _faglQuotaUser = Nothing
    , _faglPrettyPrint = True
    , _faglFloodlightConfigurationId = Nothing
    , _faglUserIp = Nothing
    , _faglAdvertiserId = Nothing
    , _faglSearchString = Nothing
    , _faglIds = Nothing
    , _faglProfileId = pFaglProfileId_
    , _faglSortOrder = Nothing
    , _faglKey = Nothing
    , _faglPageToken = Nothing
    , _faglSortField = Nothing
    , _faglType = Nothing
    , _faglOauthToken = Nothing
    , _faglMaxResults = Nothing
    , _faglFields = Nothing
    , _faglAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
faglQuotaUser :: Lens' FloodlightActivityGroupsList' (Maybe Text)
faglQuotaUser
  = lens _faglQuotaUser
      (\ s a -> s{_faglQuotaUser = a})

-- | Returns response with indentations and line breaks.
faglPrettyPrint :: Lens' FloodlightActivityGroupsList' Bool
faglPrettyPrint
  = lens _faglPrettyPrint
      (\ s a -> s{_faglPrettyPrint = a})

-- | Select only floodlight activity groups with the specified floodlight
-- configuration ID. Must specify either advertiserId, or
-- floodlightConfigurationId for a non-empty result.
faglFloodlightConfigurationId :: Lens' FloodlightActivityGroupsList' (Maybe Int64)
faglFloodlightConfigurationId
  = lens _faglFloodlightConfigurationId
      (\ s a -> s{_faglFloodlightConfigurationId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
faglUserIp :: Lens' FloodlightActivityGroupsList' (Maybe Text)
faglUserIp
  = lens _faglUserIp (\ s a -> s{_faglUserIp = a})

-- | Select only floodlight activity groups with the specified advertiser ID.
-- Must specify either advertiserId or floodlightConfigurationId for a
-- non-empty result.
faglAdvertiserId :: Lens' FloodlightActivityGroupsList' (Maybe Int64)
faglAdvertiserId
  = lens _faglAdvertiserId
      (\ s a -> s{_faglAdvertiserId = a})

-- | Allows searching for objects by name or ID. Wildcards (*) are allowed.
-- For example, \"floodlightactivitygroup*2015\" will return objects with
-- names like \"floodlightactivitygroup June 2015\",
-- \"floodlightactivitygroup April 2015\", or simply
-- \"floodlightactivitygroup 2015\". Most of the searches also add
-- wildcards implicitly at the start and the end of the search string. For
-- example, a search string of \"floodlightactivitygroup\" will match
-- objects with name \"my floodlightactivitygroup activity\",
-- \"floodlightactivitygroup 2015\", or simply \"floodlightactivitygroup\".
faglSearchString :: Lens' FloodlightActivityGroupsList' (Maybe Text)
faglSearchString
  = lens _faglSearchString
      (\ s a -> s{_faglSearchString = a})

-- | Select only floodlight activity groups with the specified IDs. Must
-- specify either advertiserId or floodlightConfigurationId for a non-empty
-- result.
faglIds :: Lens' FloodlightActivityGroupsList' (Maybe Int64)
faglIds = lens _faglIds (\ s a -> s{_faglIds = a})

-- | User profile ID associated with this request.
faglProfileId :: Lens' FloodlightActivityGroupsList' Int64
faglProfileId
  = lens _faglProfileId
      (\ s a -> s{_faglProfileId = a})

-- | Order of sorted results, default is ASCENDING.
faglSortOrder :: Lens' FloodlightActivityGroupsList' (Maybe DfareportingFloodlightActivityGroupsListSortOrder)
faglSortOrder
  = lens _faglSortOrder
      (\ s a -> s{_faglSortOrder = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
faglKey :: Lens' FloodlightActivityGroupsList' (Maybe Text)
faglKey = lens _faglKey (\ s a -> s{_faglKey = a})

-- | Value of the nextPageToken from the previous result page.
faglPageToken :: Lens' FloodlightActivityGroupsList' (Maybe Text)
faglPageToken
  = lens _faglPageToken
      (\ s a -> s{_faglPageToken = a})

-- | Field by which to sort the list.
faglSortField :: Lens' FloodlightActivityGroupsList' (Maybe DfareportingFloodlightActivityGroupsListSortField)
faglSortField
  = lens _faglSortField
      (\ s a -> s{_faglSortField = a})

-- | Select only floodlight activity groups with the specified floodlight
-- activity group type.
faglType :: Lens' FloodlightActivityGroupsList' (Maybe DfareportingFloodlightActivityGroupsListType)
faglType = lens _faglType (\ s a -> s{_faglType = a})

-- | OAuth 2.0 token for the current user.
faglOauthToken :: Lens' FloodlightActivityGroupsList' (Maybe Text)
faglOauthToken
  = lens _faglOauthToken
      (\ s a -> s{_faglOauthToken = a})

-- | Maximum number of results to return.
faglMaxResults :: Lens' FloodlightActivityGroupsList' (Maybe Int32)
faglMaxResults
  = lens _faglMaxResults
      (\ s a -> s{_faglMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
faglFields :: Lens' FloodlightActivityGroupsList' (Maybe Text)
faglFields
  = lens _faglFields (\ s a -> s{_faglFields = a})

-- | Data format for the response.
faglAlt :: Lens' FloodlightActivityGroupsList' Alt
faglAlt = lens _faglAlt (\ s a -> s{_faglAlt = a})

instance GoogleRequest FloodlightActivityGroupsList'
         where
        type Rs FloodlightActivityGroupsList' =
             FloodlightActivityGroupsListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u
          FloodlightActivityGroupsList'{..}
          = go _faglQuotaUser (Just _faglPrettyPrint)
              _faglFloodlightConfigurationId
              _faglUserIp
              _faglAdvertiserId
              _faglSearchString
              _faglIds
              _faglProfileId
              _faglSortOrder
              _faglKey
              _faglPageToken
              _faglSortField
              _faglType
              _faglOauthToken
              _faglMaxResults
              _faglFields
              (Just _faglAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy FloodlightActivityGroupsListResource)
                      r
                      u
