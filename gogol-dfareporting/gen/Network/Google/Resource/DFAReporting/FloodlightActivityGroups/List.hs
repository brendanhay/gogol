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
-- Retrieves a list of floodlight activity groups, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.floodlightActivityGroups.list@.
module Network.Google.Resource.DFAReporting.FloodlightActivityGroups.List
    (
    -- * REST Resource
      FloodlightActivityGroupsListResource

    -- * Creating a Request
    , floodlightActivityGroupsList
    , FloodlightActivityGroupsList

    -- * Request Lenses
    , faglFloodlightConfigurationId
    , faglAdvertiserId
    , faglSearchString
    , faglIds
    , faglProFileId
    , faglSortOrder
    , faglPageToken
    , faglSortField
    , faglType
    , faglMaxResults
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.floodlightActivityGroups.list@ method which the
-- 'FloodlightActivityGroupsList' request conforms to.
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
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] FloodlightActivityGroupsListResponse

-- | Retrieves a list of floodlight activity groups, possibly filtered.
--
-- /See:/ 'floodlightActivityGroupsList' smart constructor.
data FloodlightActivityGroupsList = FloodlightActivityGroupsList
    { _faglFloodlightConfigurationId :: !(Maybe Int64)
    , _faglAdvertiserId              :: !(Maybe Int64)
    , _faglSearchString              :: !(Maybe Text)
    , _faglIds                       :: !(Maybe [Int64])
    , _faglProFileId                 :: !Int64
    , _faglSortOrder                 :: !(Maybe FloodlightActivityGroupsListSortOrder)
    , _faglPageToken                 :: !(Maybe Text)
    , _faglSortField                 :: !(Maybe FloodlightActivityGroupsListSortField)
    , _faglType                      :: !(Maybe FloodlightActivityGroupsListType)
    , _faglMaxResults                :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightActivityGroupsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'faglFloodlightConfigurationId'
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
-- * 'faglPageToken'
--
-- * 'faglSortField'
--
-- * 'faglType'
--
-- * 'faglMaxResults'
floodlightActivityGroupsList
    :: Int64 -- ^ 'faglProFileId'
    -> FloodlightActivityGroupsList
floodlightActivityGroupsList pFaglProFileId_ =
    FloodlightActivityGroupsList
    { _faglFloodlightConfigurationId = Nothing
    , _faglAdvertiserId = Nothing
    , _faglSearchString = Nothing
    , _faglIds = Nothing
    , _faglProFileId = pFaglProFileId_
    , _faglSortOrder = Nothing
    , _faglPageToken = Nothing
    , _faglSortField = Nothing
    , _faglType = Nothing
    , _faglMaxResults = Nothing
    }

-- | Select only floodlight activity groups with the specified floodlight
-- configuration ID. Must specify either advertiserId, or
-- floodlightConfigurationId for a non-empty result.
faglFloodlightConfigurationId :: Lens' FloodlightActivityGroupsList (Maybe Int64)
faglFloodlightConfigurationId
  = lens _faglFloodlightConfigurationId
      (\ s a -> s{_faglFloodlightConfigurationId = a})

-- | Select only floodlight activity groups with the specified advertiser ID.
-- Must specify either advertiserId or floodlightConfigurationId for a
-- non-empty result.
faglAdvertiserId :: Lens' FloodlightActivityGroupsList (Maybe Int64)
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
faglSearchString :: Lens' FloodlightActivityGroupsList (Maybe Text)
faglSearchString
  = lens _faglSearchString
      (\ s a -> s{_faglSearchString = a})

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

-- | Order of sorted results, default is ASCENDING.
faglSortOrder :: Lens' FloodlightActivityGroupsList (Maybe FloodlightActivityGroupsListSortOrder)
faglSortOrder
  = lens _faglSortOrder
      (\ s a -> s{_faglSortOrder = a})

-- | Value of the nextPageToken from the previous result page.
faglPageToken :: Lens' FloodlightActivityGroupsList (Maybe Text)
faglPageToken
  = lens _faglPageToken
      (\ s a -> s{_faglPageToken = a})

-- | Field by which to sort the list.
faglSortField :: Lens' FloodlightActivityGroupsList (Maybe FloodlightActivityGroupsListSortField)
faglSortField
  = lens _faglSortField
      (\ s a -> s{_faglSortField = a})

-- | Select only floodlight activity groups with the specified floodlight
-- activity group type.
faglType :: Lens' FloodlightActivityGroupsList (Maybe FloodlightActivityGroupsListType)
faglType = lens _faglType (\ s a -> s{_faglType = a})

-- | Maximum number of results to return.
faglMaxResults :: Lens' FloodlightActivityGroupsList (Maybe Int32)
faglMaxResults
  = lens _faglMaxResults
      (\ s a -> s{_faglMaxResults = a})

instance GoogleRequest FloodlightActivityGroupsList
         where
        type Rs FloodlightActivityGroupsList =
             FloodlightActivityGroupsListResponse
        requestClient FloodlightActivityGroupsList{..}
          = go _faglProFileId _faglFloodlightConfigurationId
              _faglAdvertiserId
              _faglSearchString
              (_faglIds ^. _Default)
              _faglSortOrder
              _faglPageToken
              _faglSortField
              _faglType
              _faglMaxResults
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy FloodlightActivityGroupsListResource)
                      mempty
