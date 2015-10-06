{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

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
    , faglUserIP
    , faglAdvertiserId
    , faglSearchString
    , faglIds
    , faglProFileId
    , faglSortOrder
    , faglKey
    , faglPageToken
    , faglSortField
    , faglType
    , faglOAuthToken
    , faglMaxResults
    , faglFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingFloodlightActivityGroupsList@ which the
-- 'FloodlightActivityGroupsList'' request conforms to.
type FloodlightActivityGroupsListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "floodlightActivityGroups" :>
           QueryParam "floodlightConfigurationId" Int64 :>
             QueryParam "advertiserId" Int64 :>
               QueryParam "searchString" Text :>
                 QueryParams "ids" Int64 :>
                   QueryParam "sortOrder"
                     FloodlightActivityGroupsListSortOrder
                     :>
                     QueryParam "pageToken" Text :>
                       QueryParam "sortField"
                         FloodlightActivityGroupsListSortField
                         :>
                         QueryParam "type" FloodlightActivityGroupsListType :>
                           QueryParam "maxResults" Int32 :>
                             QueryParam "quotaUser" Text :>
                               QueryParam "prettyPrint" Bool :>
                                 QueryParam "userIp" Text :>
                                   QueryParam "fields" Text :>
                                     QueryParam "key" AuthKey :>
                                       QueryParam "oauth_token" OAuthToken :>
                                         QueryParam "alt" AltJSON :>
                                           Get '[JSON]
                                             FloodlightActivityGroupsListResponse

-- | Retrieves a list of floodlight activity groups, possibly filtered.
--
-- /See:/ 'floodlightActivityGroupsList'' smart constructor.
data FloodlightActivityGroupsList' = FloodlightActivityGroupsList'
    { _faglQuotaUser                 :: !(Maybe Text)
    , _faglPrettyPrint               :: !Bool
    , _faglFloodlightConfigurationId :: !(Maybe Int64)
    , _faglUserIP                    :: !(Maybe Text)
    , _faglAdvertiserId              :: !(Maybe Int64)
    , _faglSearchString              :: !(Maybe Text)
    , _faglIds                       :: !(Maybe [Int64])
    , _faglProFileId                 :: !Int64
    , _faglSortOrder                 :: !(Maybe FloodlightActivityGroupsListSortOrder)
    , _faglKey                       :: !(Maybe AuthKey)
    , _faglPageToken                 :: !(Maybe Text)
    , _faglSortField                 :: !(Maybe FloodlightActivityGroupsListSortField)
    , _faglType                      :: !(Maybe FloodlightActivityGroupsListType)
    , _faglOAuthToken                :: !(Maybe OAuthToken)
    , _faglMaxResults                :: !(Maybe Int32)
    , _faglFields                    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'faglUserIP'
--
-- * 'faglAdvertiserId'
--
-- * 'faglSearchString'
--
-- * 'faglIds'
--
-- * 'faglProFileId'
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
-- * 'faglOAuthToken'
--
-- * 'faglMaxResults'
--
-- * 'faglFields'
floodlightActivityGroupsList'
    :: Int64 -- ^ 'profileId'
    -> FloodlightActivityGroupsList'
floodlightActivityGroupsList' pFaglProFileId_ =
    FloodlightActivityGroupsList'
    { _faglQuotaUser = Nothing
    , _faglPrettyPrint = True
    , _faglFloodlightConfigurationId = Nothing
    , _faglUserIP = Nothing
    , _faglAdvertiserId = Nothing
    , _faglSearchString = Nothing
    , _faglIds = Nothing
    , _faglProFileId = pFaglProFileId_
    , _faglSortOrder = Nothing
    , _faglKey = Nothing
    , _faglPageToken = Nothing
    , _faglSortField = Nothing
    , _faglType = Nothing
    , _faglOAuthToken = Nothing
    , _faglMaxResults = Nothing
    , _faglFields = Nothing
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
faglUserIP :: Lens' FloodlightActivityGroupsList' (Maybe Text)
faglUserIP
  = lens _faglUserIP (\ s a -> s{_faglUserIP = a})

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
faglIds :: Lens' FloodlightActivityGroupsList' [Int64]
faglIds
  = lens _faglIds (\ s a -> s{_faglIds = a}) . _Default
      . _Coerce

-- | User profile ID associated with this request.
faglProFileId :: Lens' FloodlightActivityGroupsList' Int64
faglProFileId
  = lens _faglProFileId
      (\ s a -> s{_faglProFileId = a})

-- | Order of sorted results, default is ASCENDING.
faglSortOrder :: Lens' FloodlightActivityGroupsList' (Maybe FloodlightActivityGroupsListSortOrder)
faglSortOrder
  = lens _faglSortOrder
      (\ s a -> s{_faglSortOrder = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
faglKey :: Lens' FloodlightActivityGroupsList' (Maybe AuthKey)
faglKey = lens _faglKey (\ s a -> s{_faglKey = a})

-- | Value of the nextPageToken from the previous result page.
faglPageToken :: Lens' FloodlightActivityGroupsList' (Maybe Text)
faglPageToken
  = lens _faglPageToken
      (\ s a -> s{_faglPageToken = a})

-- | Field by which to sort the list.
faglSortField :: Lens' FloodlightActivityGroupsList' (Maybe FloodlightActivityGroupsListSortField)
faglSortField
  = lens _faglSortField
      (\ s a -> s{_faglSortField = a})

-- | Select only floodlight activity groups with the specified floodlight
-- activity group type.
faglType :: Lens' FloodlightActivityGroupsList' (Maybe FloodlightActivityGroupsListType)
faglType = lens _faglType (\ s a -> s{_faglType = a})

-- | OAuth 2.0 token for the current user.
faglOAuthToken :: Lens' FloodlightActivityGroupsList' (Maybe OAuthToken)
faglOAuthToken
  = lens _faglOAuthToken
      (\ s a -> s{_faglOAuthToken = a})

-- | Maximum number of results to return.
faglMaxResults :: Lens' FloodlightActivityGroupsList' (Maybe Int32)
faglMaxResults
  = lens _faglMaxResults
      (\ s a -> s{_faglMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
faglFields :: Lens' FloodlightActivityGroupsList' (Maybe Text)
faglFields
  = lens _faglFields (\ s a -> s{_faglFields = a})

instance GoogleAuth FloodlightActivityGroupsList'
         where
        authKey = faglKey . _Just
        authToken = faglOAuthToken . _Just

instance GoogleRequest FloodlightActivityGroupsList'
         where
        type Rs FloodlightActivityGroupsList' =
             FloodlightActivityGroupsListResponse
        request = requestWith dFAReportingRequest
        requestWith rq FloodlightActivityGroupsList'{..}
          = go _faglProFileId _faglFloodlightConfigurationId
              _faglAdvertiserId
              _faglSearchString
              (_faglIds ^. _Default)
              _faglSortOrder
              _faglPageToken
              _faglSortField
              _faglType
              _faglMaxResults
              _faglQuotaUser
              (Just _faglPrettyPrint)
              _faglUserIP
              _faglFields
              _faglKey
              _faglOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy FloodlightActivityGroupsListResource)
                      rq
