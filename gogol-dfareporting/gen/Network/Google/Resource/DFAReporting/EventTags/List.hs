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
-- Module      : Network.Google.Resource.DFAReporting.EventTags.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of event tags, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.eventTags.list@.
module Network.Google.Resource.DFAReporting.EventTags.List
    (
    -- * REST Resource
      EventTagsListResource

    -- * Creating a Request
    , eventTagsList
    , EventTagsList

    -- * Request Lenses
    , etlXgafv
    , etlDefinitionsOnly
    , etlUploadProtocol
    , etlEventTagTypes
    , etlEnabled
    , etlAccessToken
    , etlAdvertiserId
    , etlSearchString
    , etlUploadType
    , etlCampaignId
    , etlIds
    , etlProFileId
    , etlSortOrder
    , etlAdId
    , etlSortField
    , etlCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.eventTags.list@ method which the
-- 'EventTagsList' request conforms to.
type EventTagsListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "eventTags" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "definitionsOnly" Bool :>
                   QueryParam "upload_protocol" Text :>
                     QueryParams "eventTagTypes"
                       EventTagsListEventTagTypes
                       :>
                       QueryParam "enabled" Bool :>
                         QueryParam "access_token" Text :>
                           QueryParam "advertiserId" (Textual Int64) :>
                             QueryParam "searchString" Text :>
                               QueryParam "uploadType" Text :>
                                 QueryParam "campaignId" (Textual Int64) :>
                                   QueryParams "ids" (Textual Int64) :>
                                     QueryParam "sortOrder"
                                       EventTagsListSortOrder
                                       :>
                                       QueryParam "adId" (Textual Int64) :>
                                         QueryParam "sortField"
                                           EventTagsListSortField
                                           :>
                                           QueryParam "callback" Text :>
                                             QueryParam "alt" AltJSON :>
                                               Get '[JSON] EventTagsListResponse

-- | Retrieves a list of event tags, possibly filtered.
--
-- /See:/ 'eventTagsList' smart constructor.
data EventTagsList =
  EventTagsList'
    { _etlXgafv :: !(Maybe Xgafv)
    , _etlDefinitionsOnly :: !(Maybe Bool)
    , _etlUploadProtocol :: !(Maybe Text)
    , _etlEventTagTypes :: !(Maybe [EventTagsListEventTagTypes])
    , _etlEnabled :: !(Maybe Bool)
    , _etlAccessToken :: !(Maybe Text)
    , _etlAdvertiserId :: !(Maybe (Textual Int64))
    , _etlSearchString :: !(Maybe Text)
    , _etlUploadType :: !(Maybe Text)
    , _etlCampaignId :: !(Maybe (Textual Int64))
    , _etlIds :: !(Maybe [Textual Int64])
    , _etlProFileId :: !(Textual Int64)
    , _etlSortOrder :: !EventTagsListSortOrder
    , _etlAdId :: !(Maybe (Textual Int64))
    , _etlSortField :: !EventTagsListSortField
    , _etlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EventTagsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etlXgafv'
--
-- * 'etlDefinitionsOnly'
--
-- * 'etlUploadProtocol'
--
-- * 'etlEventTagTypes'
--
-- * 'etlEnabled'
--
-- * 'etlAccessToken'
--
-- * 'etlAdvertiserId'
--
-- * 'etlSearchString'
--
-- * 'etlUploadType'
--
-- * 'etlCampaignId'
--
-- * 'etlIds'
--
-- * 'etlProFileId'
--
-- * 'etlSortOrder'
--
-- * 'etlAdId'
--
-- * 'etlSortField'
--
-- * 'etlCallback'
eventTagsList
    :: Int64 -- ^ 'etlProFileId'
    -> EventTagsList
eventTagsList pEtlProFileId_ =
  EventTagsList'
    { _etlXgafv = Nothing
    , _etlDefinitionsOnly = Nothing
    , _etlUploadProtocol = Nothing
    , _etlEventTagTypes = Nothing
    , _etlEnabled = Nothing
    , _etlAccessToken = Nothing
    , _etlAdvertiserId = Nothing
    , _etlSearchString = Nothing
    , _etlUploadType = Nothing
    , _etlCampaignId = Nothing
    , _etlIds = Nothing
    , _etlProFileId = _Coerce # pEtlProFileId_
    , _etlSortOrder = ETLSOAscending
    , _etlAdId = Nothing
    , _etlSortField = ETLSFID
    , _etlCallback = Nothing
    }


-- | V1 error format.
etlXgafv :: Lens' EventTagsList (Maybe Xgafv)
etlXgafv = lens _etlXgafv (\ s a -> s{_etlXgafv = a})

-- | Examine only the specified campaign or advertiser\'s event tags for
-- matching selector criteria. When set to false, the parent advertiser and
-- parent campaign of the specified ad or campaign is examined as well. In
-- addition, when set to false, the status field is examined as well, along
-- with the enabledByDefault field. This parameter can not be set to true
-- when adId is specified as ads do not define their own even tags.
etlDefinitionsOnly :: Lens' EventTagsList (Maybe Bool)
etlDefinitionsOnly
  = lens _etlDefinitionsOnly
      (\ s a -> s{_etlDefinitionsOnly = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
etlUploadProtocol :: Lens' EventTagsList (Maybe Text)
etlUploadProtocol
  = lens _etlUploadProtocol
      (\ s a -> s{_etlUploadProtocol = a})

-- | Select only event tags with the specified event tag types. Event tag
-- types can be used to specify whether to use a third-party pixel, a
-- third-party JavaScript URL, or a third-party click-through URL for
-- either impression or click tracking.
etlEventTagTypes :: Lens' EventTagsList [EventTagsListEventTagTypes]
etlEventTagTypes
  = lens _etlEventTagTypes
      (\ s a -> s{_etlEventTagTypes = a})
      . _Default
      . _Coerce

-- | Select only enabled event tags. What is considered enabled or disabled
-- depends on the definitionsOnly parameter. When definitionsOnly is set to
-- true, only the specified advertiser or campaign\'s event tags\'
-- enabledByDefault field is examined. When definitionsOnly is set to
-- false, the specified ad or specified campaign\'s parent advertiser\'s or
-- parent campaign\'s event tags\' enabledByDefault and status fields are
-- examined as well.
etlEnabled :: Lens' EventTagsList (Maybe Bool)
etlEnabled
  = lens _etlEnabled (\ s a -> s{_etlEnabled = a})

-- | OAuth access token.
etlAccessToken :: Lens' EventTagsList (Maybe Text)
etlAccessToken
  = lens _etlAccessToken
      (\ s a -> s{_etlAccessToken = a})

-- | Select only event tags that belong to this advertiser.
etlAdvertiserId :: Lens' EventTagsList (Maybe Int64)
etlAdvertiserId
  = lens _etlAdvertiserId
      (\ s a -> s{_etlAdvertiserId = a})
      . mapping _Coerce

-- | Allows searching for objects by name or ID. Wildcards (*) are allowed.
-- For example, \"eventtag*2015\" will return objects with names like
-- \"eventtag June 2015\", \"eventtag April 2015\", or simply \"eventtag
-- 2015\". Most of the searches also add wildcards implicitly at the start
-- and the end of the search string. For example, a search string of
-- \"eventtag\" will match objects with name \"my eventtag\", \"eventtag
-- 2015\", or simply \"eventtag\".
etlSearchString :: Lens' EventTagsList (Maybe Text)
etlSearchString
  = lens _etlSearchString
      (\ s a -> s{_etlSearchString = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
etlUploadType :: Lens' EventTagsList (Maybe Text)
etlUploadType
  = lens _etlUploadType
      (\ s a -> s{_etlUploadType = a})

-- | Select only event tags that belong to this campaign.
etlCampaignId :: Lens' EventTagsList (Maybe Int64)
etlCampaignId
  = lens _etlCampaignId
      (\ s a -> s{_etlCampaignId = a})
      . mapping _Coerce

-- | Select only event tags with these IDs.
etlIds :: Lens' EventTagsList [Int64]
etlIds
  = lens _etlIds (\ s a -> s{_etlIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
etlProFileId :: Lens' EventTagsList Int64
etlProFileId
  = lens _etlProFileId (\ s a -> s{_etlProFileId = a})
      . _Coerce

-- | Order of sorted results.
etlSortOrder :: Lens' EventTagsList EventTagsListSortOrder
etlSortOrder
  = lens _etlSortOrder (\ s a -> s{_etlSortOrder = a})

-- | Select only event tags that belong to this ad.
etlAdId :: Lens' EventTagsList (Maybe Int64)
etlAdId
  = lens _etlAdId (\ s a -> s{_etlAdId = a}) .
      mapping _Coerce

-- | Field by which to sort the list.
etlSortField :: Lens' EventTagsList EventTagsListSortField
etlSortField
  = lens _etlSortField (\ s a -> s{_etlSortField = a})

-- | JSONP
etlCallback :: Lens' EventTagsList (Maybe Text)
etlCallback
  = lens _etlCallback (\ s a -> s{_etlCallback = a})

instance GoogleRequest EventTagsList where
        type Rs EventTagsList = EventTagsListResponse
        type Scopes EventTagsList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient EventTagsList'{..}
          = go _etlProFileId _etlXgafv _etlDefinitionsOnly
              _etlUploadProtocol
              (_etlEventTagTypes ^. _Default)
              _etlEnabled
              _etlAccessToken
              _etlAdvertiserId
              _etlSearchString
              _etlUploadType
              _etlCampaignId
              (_etlIds ^. _Default)
              (Just _etlSortOrder)
              _etlAdId
              (Just _etlSortField)
              _etlCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy EventTagsListResource)
                      mempty
