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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightActivities.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of floodlight activities, possibly filtered. This
-- method supports paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.floodlightActivities.list@.
module Network.Google.Resource.DFAReporting.FloodlightActivities.List
    (
    -- * REST Resource
      FloodlightActivitiesListResource

    -- * Creating a Request
    , floodlightActivitiesList
    , FloodlightActivitiesList

    -- * Request Lenses
    , falTagString
    , falFloodlightActivityGroupTagString
    , falFloodlightConfigurationId
    , falAdvertiserId
    , falSearchString
    , falIds
    , falProFileId
    , falFloodlightActivityGroupIds
    , falSortOrder
    , falFloodlightActivityGroupType
    , falFloodlightActivityGroupName
    , falPageToken
    , falSortField
    , falMaxResults
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.floodlightActivities.list@ method which the
-- 'FloodlightActivitiesList' request conforms to.
type FloodlightActivitiesListResource =
     "dfareporting" :>
       "v3.3" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "floodlightActivities" :>
               QueryParam "tagString" Text :>
                 QueryParam "floodlightActivityGroupTagString" Text :>
                   QueryParam "floodlightConfigurationId"
                     (Textual Int64)
                     :>
                     QueryParam "advertiserId" (Textual Int64) :>
                       QueryParam "searchString" Text :>
                         QueryParams "ids" (Textual Int64) :>
                           QueryParams "floodlightActivityGroupIds"
                             (Textual Int64)
                             :>
                             QueryParam "sortOrder"
                               FloodlightActivitiesListSortOrder
                               :>
                               QueryParam "floodlightActivityGroupType"
                                 FloodlightActivitiesListFloodlightActivityGroupType
                                 :>
                                 QueryParam "floodlightActivityGroupName" Text
                                   :>
                                   QueryParam "pageToken" Text :>
                                     QueryParam "sortField"
                                       FloodlightActivitiesListSortField
                                       :>
                                       QueryParam "maxResults" (Textual Int32)
                                         :>
                                         QueryParam "alt" AltJSON :>
                                           Get '[JSON]
                                             FloodlightActivitiesListResponse

-- | Retrieves a list of floodlight activities, possibly filtered. This
-- method supports paging.
--
-- /See:/ 'floodlightActivitiesList' smart constructor.
data FloodlightActivitiesList =
  FloodlightActivitiesList'
    { _falTagString                        :: !(Maybe Text)
    , _falFloodlightActivityGroupTagString :: !(Maybe Text)
    , _falFloodlightConfigurationId        :: !(Maybe (Textual Int64))
    , _falAdvertiserId                     :: !(Maybe (Textual Int64))
    , _falSearchString                     :: !(Maybe Text)
    , _falIds                              :: !(Maybe [Textual Int64])
    , _falProFileId                        :: !(Textual Int64)
    , _falFloodlightActivityGroupIds       :: !(Maybe [Textual Int64])
    , _falSortOrder                        :: !FloodlightActivitiesListSortOrder
    , _falFloodlightActivityGroupType      :: !(Maybe FloodlightActivitiesListFloodlightActivityGroupType)
    , _falFloodlightActivityGroupName      :: !(Maybe Text)
    , _falPageToken                        :: !(Maybe Text)
    , _falSortField                        :: !FloodlightActivitiesListSortField
    , _falMaxResults                       :: !(Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FloodlightActivitiesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'falTagString'
--
-- * 'falFloodlightActivityGroupTagString'
--
-- * 'falFloodlightConfigurationId'
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
-- * 'falFloodlightActivityGroupType'
--
-- * 'falFloodlightActivityGroupName'
--
-- * 'falPageToken'
--
-- * 'falSortField'
--
-- * 'falMaxResults'
floodlightActivitiesList
    :: Int64 -- ^ 'falProFileId'
    -> FloodlightActivitiesList
floodlightActivitiesList pFalProFileId_ =
  FloodlightActivitiesList'
    { _falTagString = Nothing
    , _falFloodlightActivityGroupTagString = Nothing
    , _falFloodlightConfigurationId = Nothing
    , _falAdvertiserId = Nothing
    , _falSearchString = Nothing
    , _falIds = Nothing
    , _falProFileId = _Coerce # pFalProFileId_
    , _falFloodlightActivityGroupIds = Nothing
    , _falSortOrder = FALSOAscending
    , _falFloodlightActivityGroupType = Nothing
    , _falFloodlightActivityGroupName = Nothing
    , _falPageToken = Nothing
    , _falSortField = FALSFID
    , _falMaxResults = 1000
    }


-- | Select only floodlight activities with the specified tag string.
falTagString :: Lens' FloodlightActivitiesList (Maybe Text)
falTagString
  = lens _falTagString (\ s a -> s{_falTagString = a})

-- | Select only floodlight activities with the specified floodlight activity
-- group tag string.
falFloodlightActivityGroupTagString :: Lens' FloodlightActivitiesList (Maybe Text)
falFloodlightActivityGroupTagString
  = lens _falFloodlightActivityGroupTagString
      (\ s a ->
         s{_falFloodlightActivityGroupTagString = a})

-- | Select only floodlight activities for the specified floodlight
-- configuration ID. Must specify either ids, advertiserId, or
-- floodlightConfigurationId for a non-empty result.
falFloodlightConfigurationId :: Lens' FloodlightActivitiesList (Maybe Int64)
falFloodlightConfigurationId
  = lens _falFloodlightConfigurationId
      (\ s a -> s{_falFloodlightConfigurationId = a})
      . mapping _Coerce

-- | Select only floodlight activities for the specified advertiser ID. Must
-- specify either ids, advertiserId, or floodlightConfigurationId for a
-- non-empty result.
falAdvertiserId :: Lens' FloodlightActivitiesList (Maybe Int64)
falAdvertiserId
  = lens _falAdvertiserId
      (\ s a -> s{_falAdvertiserId = a})
      . mapping _Coerce

-- | Allows searching for objects by name or ID. Wildcards (*) are allowed.
-- For example, \"floodlightactivity*2015\" will return objects with names
-- like \"floodlightactivity June 2015\", \"floodlightactivity April
-- 2015\", or simply \"floodlightactivity 2015\". Most of the searches also
-- add wildcards implicitly at the start and the end of the search string.
-- For example, a search string of \"floodlightactivity\" will match
-- objects with name \"my floodlightactivity activity\",
-- \"floodlightactivity 2015\", or simply \"floodlightactivity\".
falSearchString :: Lens' FloodlightActivitiesList (Maybe Text)
falSearchString
  = lens _falSearchString
      (\ s a -> s{_falSearchString = a})

-- | Select only floodlight activities with the specified IDs. Must specify
-- either ids, advertiserId, or floodlightConfigurationId for a non-empty
-- result.
falIds :: Lens' FloodlightActivitiesList [Int64]
falIds
  = lens _falIds (\ s a -> s{_falIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
falProFileId :: Lens' FloodlightActivitiesList Int64
falProFileId
  = lens _falProFileId (\ s a -> s{_falProFileId = a})
      . _Coerce

-- | Select only floodlight activities with the specified floodlight activity
-- group IDs.
falFloodlightActivityGroupIds :: Lens' FloodlightActivitiesList [Int64]
falFloodlightActivityGroupIds
  = lens _falFloodlightActivityGroupIds
      (\ s a -> s{_falFloodlightActivityGroupIds = a})
      . _Default
      . _Coerce

-- | Order of sorted results.
falSortOrder :: Lens' FloodlightActivitiesList FloodlightActivitiesListSortOrder
falSortOrder
  = lens _falSortOrder (\ s a -> s{_falSortOrder = a})

-- | Select only floodlight activities with the specified floodlight activity
-- group type.
falFloodlightActivityGroupType :: Lens' FloodlightActivitiesList (Maybe FloodlightActivitiesListFloodlightActivityGroupType)
falFloodlightActivityGroupType
  = lens _falFloodlightActivityGroupType
      (\ s a -> s{_falFloodlightActivityGroupType = a})

-- | Select only floodlight activities with the specified floodlight activity
-- group name.
falFloodlightActivityGroupName :: Lens' FloodlightActivitiesList (Maybe Text)
falFloodlightActivityGroupName
  = lens _falFloodlightActivityGroupName
      (\ s a -> s{_falFloodlightActivityGroupName = a})

-- | Value of the nextPageToken from the previous result page.
falPageToken :: Lens' FloodlightActivitiesList (Maybe Text)
falPageToken
  = lens _falPageToken (\ s a -> s{_falPageToken = a})

-- | Field by which to sort the list.
falSortField :: Lens' FloodlightActivitiesList FloodlightActivitiesListSortField
falSortField
  = lens _falSortField (\ s a -> s{_falSortField = a})

-- | Maximum number of results to return.
falMaxResults :: Lens' FloodlightActivitiesList Int32
falMaxResults
  = lens _falMaxResults
      (\ s a -> s{_falMaxResults = a})
      . _Coerce

instance GoogleRequest FloodlightActivitiesList where
        type Rs FloodlightActivitiesList =
             FloodlightActivitiesListResponse
        type Scopes FloodlightActivitiesList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient FloodlightActivitiesList'{..}
          = go _falProFileId _falTagString
              _falFloodlightActivityGroupTagString
              _falFloodlightConfigurationId
              _falAdvertiserId
              _falSearchString
              (_falIds ^. _Default)
              (_falFloodlightActivityGroupIds ^. _Default)
              (Just _falSortOrder)
              _falFloodlightActivityGroupType
              _falFloodlightActivityGroupName
              _falPageToken
              (Just _falSortField)
              (Just _falMaxResults)
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy FloodlightActivitiesListResource)
                      mempty
