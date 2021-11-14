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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of floodlight activity groups, possibly filtered. This
-- method supports paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.floodlightActivityGroups.list@.
module Network.Google.Resource.DFAReporting.FloodlightActivityGroups.List
    (
    -- * REST Resource
      FloodlightActivityGroupsListResource

    -- * Creating a Request
    , floodlightActivityGroupsList
    , FloodlightActivityGroupsList

    -- * Request Lenses
    , faglXgafv
    , faglUploadProtocol
    , faglFloodlightConfigurationId
    , faglAccessToken
    , faglAdvertiserId
    , faglSearchString
    , faglUploadType
    , faglIds
    , faglProFileId
    , faglSortOrder
    , faglPageToken
    , faglSortField
    , faglType
    , faglMaxResults
    , faglCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.floodlightActivityGroups.list@ method which the
-- 'FloodlightActivityGroupsList' request conforms to.
type FloodlightActivityGroupsListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "floodlightActivityGroups" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "floodlightConfigurationId"
                     (Textual Int64)
                     :>
                     QueryParam "access_token" Text :>
                       QueryParam "advertiserId" (Textual Int64) :>
                         QueryParam "searchString" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParams "ids" (Textual Int64) :>
                               QueryParam "sortOrder"
                                 FloodlightActivityGroupsListSortOrder
                                 :>
                                 QueryParam "pageToken" Text :>
                                   QueryParam "sortField"
                                     FloodlightActivityGroupsListSortField
                                     :>
                                     QueryParam "type"
                                       FloodlightActivityGroupsListType
                                       :>
                                       QueryParam "maxResults" (Textual Int32)
                                         :>
                                         QueryParam "callback" Text :>
                                           QueryParam "alt" AltJSON :>
                                             Get '[JSON]
                                               FloodlightActivityGroupsListResponse

-- | Retrieves a list of floodlight activity groups, possibly filtered. This
-- method supports paging.
--
-- /See:/ 'floodlightActivityGroupsList' smart constructor.
data FloodlightActivityGroupsList =
  FloodlightActivityGroupsList'
    { _faglXgafv :: !(Maybe Xgafv)
    , _faglUploadProtocol :: !(Maybe Text)
    , _faglFloodlightConfigurationId :: !(Maybe (Textual Int64))
    , _faglAccessToken :: !(Maybe Text)
    , _faglAdvertiserId :: !(Maybe (Textual Int64))
    , _faglSearchString :: !(Maybe Text)
    , _faglUploadType :: !(Maybe Text)
    , _faglIds :: !(Maybe [Textual Int64])
    , _faglProFileId :: !(Textual Int64)
    , _faglSortOrder :: !FloodlightActivityGroupsListSortOrder
    , _faglPageToken :: !(Maybe Text)
    , _faglSortField :: !FloodlightActivityGroupsListSortField
    , _faglType :: !(Maybe FloodlightActivityGroupsListType)
    , _faglMaxResults :: !(Textual Int32)
    , _faglCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FloodlightActivityGroupsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'faglXgafv'
--
-- * 'faglUploadProtocol'
--
-- * 'faglFloodlightConfigurationId'
--
-- * 'faglAccessToken'
--
-- * 'faglAdvertiserId'
--
-- * 'faglSearchString'
--
-- * 'faglUploadType'
--
-- * 'faglIds'
--
-- * 'faglProFileId'
--
-- * 'faglSortOrder'
--
-- * 'faglPageToken'
--
-- * 'faglSortField'
--
-- * 'faglType'
--
-- * 'faglMaxResults'
--
-- * 'faglCallback'
floodlightActivityGroupsList
    :: Int64 -- ^ 'faglProFileId'
    -> FloodlightActivityGroupsList
floodlightActivityGroupsList pFaglProFileId_ =
  FloodlightActivityGroupsList'
    { _faglXgafv = Nothing
    , _faglUploadProtocol = Nothing
    , _faglFloodlightConfigurationId = Nothing
    , _faglAccessToken = Nothing
    , _faglAdvertiserId = Nothing
    , _faglSearchString = Nothing
    , _faglUploadType = Nothing
    , _faglIds = Nothing
    , _faglProFileId = _Coerce # pFaglProFileId_
    , _faglSortOrder = FAGLSOAscending
    , _faglPageToken = Nothing
    , _faglSortField = FAGLSFID
    , _faglType = Nothing
    , _faglMaxResults = 1000
    , _faglCallback = Nothing
    }


-- | V1 error format.
faglXgafv :: Lens' FloodlightActivityGroupsList (Maybe Xgafv)
faglXgafv
  = lens _faglXgafv (\ s a -> s{_faglXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
faglUploadProtocol :: Lens' FloodlightActivityGroupsList (Maybe Text)
faglUploadProtocol
  = lens _faglUploadProtocol
      (\ s a -> s{_faglUploadProtocol = a})

-- | Select only floodlight activity groups with the specified floodlight
-- configuration ID. Must specify either advertiserId, or
-- floodlightConfigurationId for a non-empty result.
faglFloodlightConfigurationId :: Lens' FloodlightActivityGroupsList (Maybe Int64)
faglFloodlightConfigurationId
  = lens _faglFloodlightConfigurationId
      (\ s a -> s{_faglFloodlightConfigurationId = a})
      . mapping _Coerce

-- | OAuth access token.
faglAccessToken :: Lens' FloodlightActivityGroupsList (Maybe Text)
faglAccessToken
  = lens _faglAccessToken
      (\ s a -> s{_faglAccessToken = a})

-- | Select only floodlight activity groups with the specified advertiser ID.
-- Must specify either advertiserId or floodlightConfigurationId for a
-- non-empty result.
faglAdvertiserId :: Lens' FloodlightActivityGroupsList (Maybe Int64)
faglAdvertiserId
  = lens _faglAdvertiserId
      (\ s a -> s{_faglAdvertiserId = a})
      . mapping _Coerce

-- | Allows searching for objects by name or ID. Wildcards (*) are allowed.
-- For example, \"floodlightactivitygroup*2015\" will return objects with
-- names like \"floodlightactivitygroup June 2015\",
-- \"floodlightactivitygroup April 2015\", or simply
-- \"floodlightactivitygroup 2015\". Most of the searches also add
-- wildcards implicitly at the start and the end of the search string. For
-- example, a search string of \"floodlightactivitygroup\" will match
-- objects with name \"my floodlightactivitygroup activity\",
-- \"floodlightactivitygroup 2015\", or simply \"floodlightactivitygroup\".
faglSearchString :: Lens' FloodlightActivityGroupsList (Maybe Text)
faglSearchString
  = lens _faglSearchString
      (\ s a -> s{_faglSearchString = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
faglUploadType :: Lens' FloodlightActivityGroupsList (Maybe Text)
faglUploadType
  = lens _faglUploadType
      (\ s a -> s{_faglUploadType = a})

-- | Select only floodlight activity groups with the specified IDs. Must
-- specify either advertiserId or floodlightConfigurationId for a non-empty
-- result.
faglIds :: Lens' FloodlightActivityGroupsList [Int64]
faglIds
  = lens _faglIds (\ s a -> s{_faglIds = a}) . _Default
      . _Coerce

-- | User profile ID associated with this request.
faglProFileId :: Lens' FloodlightActivityGroupsList Int64
faglProFileId
  = lens _faglProFileId
      (\ s a -> s{_faglProFileId = a})
      . _Coerce

-- | Order of sorted results.
faglSortOrder :: Lens' FloodlightActivityGroupsList FloodlightActivityGroupsListSortOrder
faglSortOrder
  = lens _faglSortOrder
      (\ s a -> s{_faglSortOrder = a})

-- | Value of the nextPageToken from the previous result page.
faglPageToken :: Lens' FloodlightActivityGroupsList (Maybe Text)
faglPageToken
  = lens _faglPageToken
      (\ s a -> s{_faglPageToken = a})

-- | Field by which to sort the list.
faglSortField :: Lens' FloodlightActivityGroupsList FloodlightActivityGroupsListSortField
faglSortField
  = lens _faglSortField
      (\ s a -> s{_faglSortField = a})

-- | Select only floodlight activity groups with the specified floodlight
-- activity group type.
faglType :: Lens' FloodlightActivityGroupsList (Maybe FloodlightActivityGroupsListType)
faglType = lens _faglType (\ s a -> s{_faglType = a})

-- | Maximum number of results to return.
faglMaxResults :: Lens' FloodlightActivityGroupsList Int32
faglMaxResults
  = lens _faglMaxResults
      (\ s a -> s{_faglMaxResults = a})
      . _Coerce

-- | JSONP
faglCallback :: Lens' FloodlightActivityGroupsList (Maybe Text)
faglCallback
  = lens _faglCallback (\ s a -> s{_faglCallback = a})

instance GoogleRequest FloodlightActivityGroupsList
         where
        type Rs FloodlightActivityGroupsList =
             FloodlightActivityGroupsListResponse
        type Scopes FloodlightActivityGroupsList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient FloodlightActivityGroupsList'{..}
          = go _faglProFileId _faglXgafv _faglUploadProtocol
              _faglFloodlightConfigurationId
              _faglAccessToken
              _faglAdvertiserId
              _faglSearchString
              _faglUploadType
              (_faglIds ^. _Default)
              (Just _faglSortOrder)
              _faglPageToken
              (Just _faglSortField)
              _faglType
              (Just _faglMaxResults)
              _faglCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy FloodlightActivityGroupsListResource)
                      mempty
