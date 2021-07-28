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
-- Module      : Network.Google.Resource.DFAReporting.Creatives.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of creatives, possibly filtered. This method supports
-- paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.creatives.list@.
module Network.Google.Resource.DFAReporting.Creatives.List
    (
    -- * REST Resource
      CreativesListResource

    -- * Creating a Request
    , creativesList
    , CreativesList

    -- * Request Lenses
    , cRenderingIds
    , cXgafv
    , cUploadProtocol
    , cAccessToken
    , cAdvertiserId
    , cSearchString
    , cSizeIds
    , cCompanionCreativeIds
    , cUploadType
    , cCampaignId
    , cTypes
    , cIds
    , cProFileId
    , cSortOrder
    , cActive
    , cCreativeFieldIds
    , cPageToken
    , cSortField
    , cStudioCreativeId
    , cArchived
    , cMaxResults
    , cCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.creatives.list@ method which the
-- 'CreativesList' request conforms to.
type CreativesListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "creatives" :>
               QueryParams "renderingIds" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "advertiserId" (Textual Int64) :>
                         QueryParam "searchString" Text :>
                           QueryParams "sizeIds" (Textual Int64) :>
                             QueryParams "companionCreativeIds" (Textual Int64)
                               :>
                               QueryParam "uploadType" Text :>
                                 QueryParam "campaignId" (Textual Int64) :>
                                   QueryParams "types" CreativesListTypes :>
                                     QueryParams "ids" (Textual Int64) :>
                                       QueryParam "sortOrder"
                                         CreativesListSortOrder
                                         :>
                                         QueryParam "active" Bool :>
                                           QueryParams "creativeFieldIds"
                                             (Textual Int64)
                                             :>
                                             QueryParam "pageToken" Text :>
                                               QueryParam "sortField"
                                                 CreativesListSortField
                                                 :>
                                                 QueryParam "studioCreativeId"
                                                   (Textual Int64)
                                                   :>
                                                   QueryParam "archived" Bool :>
                                                     QueryParam "maxResults"
                                                       (Textual Int32)
                                                       :>
                                                       QueryParam "callback"
                                                         Text
                                                         :>
                                                         QueryParam "alt"
                                                           AltJSON
                                                           :>
                                                           Get '[JSON]
                                                             CreativesListResponse

-- | Retrieves a list of creatives, possibly filtered. This method supports
-- paging.
--
-- /See:/ 'creativesList' smart constructor.
data CreativesList =
  CreativesList'
    { _cRenderingIds :: !(Maybe [Textual Int64])
    , _cXgafv :: !(Maybe Xgafv)
    , _cUploadProtocol :: !(Maybe Text)
    , _cAccessToken :: !(Maybe Text)
    , _cAdvertiserId :: !(Maybe (Textual Int64))
    , _cSearchString :: !(Maybe Text)
    , _cSizeIds :: !(Maybe [Textual Int64])
    , _cCompanionCreativeIds :: !(Maybe [Textual Int64])
    , _cUploadType :: !(Maybe Text)
    , _cCampaignId :: !(Maybe (Textual Int64))
    , _cTypes :: !(Maybe [CreativesListTypes])
    , _cIds :: !(Maybe [Textual Int64])
    , _cProFileId :: !(Textual Int64)
    , _cSortOrder :: !CreativesListSortOrder
    , _cActive :: !(Maybe Bool)
    , _cCreativeFieldIds :: !(Maybe [Textual Int64])
    , _cPageToken :: !(Maybe Text)
    , _cSortField :: !CreativesListSortField
    , _cStudioCreativeId :: !(Maybe (Textual Int64))
    , _cArchived :: !(Maybe Bool)
    , _cMaxResults :: !(Textual Int32)
    , _cCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreativesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cRenderingIds'
--
-- * 'cXgafv'
--
-- * 'cUploadProtocol'
--
-- * 'cAccessToken'
--
-- * 'cAdvertiserId'
--
-- * 'cSearchString'
--
-- * 'cSizeIds'
--
-- * 'cCompanionCreativeIds'
--
-- * 'cUploadType'
--
-- * 'cCampaignId'
--
-- * 'cTypes'
--
-- * 'cIds'
--
-- * 'cProFileId'
--
-- * 'cSortOrder'
--
-- * 'cActive'
--
-- * 'cCreativeFieldIds'
--
-- * 'cPageToken'
--
-- * 'cSortField'
--
-- * 'cStudioCreativeId'
--
-- * 'cArchived'
--
-- * 'cMaxResults'
--
-- * 'cCallback'
creativesList
    :: Int64 -- ^ 'cProFileId'
    -> CreativesList
creativesList pCProFileId_ =
  CreativesList'
    { _cRenderingIds = Nothing
    , _cXgafv = Nothing
    , _cUploadProtocol = Nothing
    , _cAccessToken = Nothing
    , _cAdvertiserId = Nothing
    , _cSearchString = Nothing
    , _cSizeIds = Nothing
    , _cCompanionCreativeIds = Nothing
    , _cUploadType = Nothing
    , _cCampaignId = Nothing
    , _cTypes = Nothing
    , _cIds = Nothing
    , _cProFileId = _Coerce # pCProFileId_
    , _cSortOrder = CAscending
    , _cActive = Nothing
    , _cCreativeFieldIds = Nothing
    , _cPageToken = Nothing
    , _cSortField = CID
    , _cStudioCreativeId = Nothing
    , _cArchived = Nothing
    , _cMaxResults = 1000
    , _cCallback = Nothing
    }


-- | Select only creatives with these rendering IDs.
cRenderingIds :: Lens' CreativesList [Int64]
cRenderingIds
  = lens _cRenderingIds
      (\ s a -> s{_cRenderingIds = a})
      . _Default
      . _Coerce

-- | V1 error format.
cXgafv :: Lens' CreativesList (Maybe Xgafv)
cXgafv = lens _cXgafv (\ s a -> s{_cXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cUploadProtocol :: Lens' CreativesList (Maybe Text)
cUploadProtocol
  = lens _cUploadProtocol
      (\ s a -> s{_cUploadProtocol = a})

-- | OAuth access token.
cAccessToken :: Lens' CreativesList (Maybe Text)
cAccessToken
  = lens _cAccessToken (\ s a -> s{_cAccessToken = a})

-- | Select only creatives with this advertiser ID.
cAdvertiserId :: Lens' CreativesList (Maybe Int64)
cAdvertiserId
  = lens _cAdvertiserId
      (\ s a -> s{_cAdvertiserId = a})
      . mapping _Coerce

-- | Allows searching for objects by name or ID. Wildcards (*) are allowed.
-- For example, \"creative*2015\" will return objects with names like
-- \"creative June 2015\", \"creative April 2015\", or simply \"creative
-- 2015\". Most of the searches also add wildcards implicitly at the start
-- and the end of the search string. For example, a search string of
-- \"creative\" will match objects with name \"my creative\", \"creative
-- 2015\", or simply \"creative\".
cSearchString :: Lens' CreativesList (Maybe Text)
cSearchString
  = lens _cSearchString
      (\ s a -> s{_cSearchString = a})

-- | Select only creatives with these size IDs.
cSizeIds :: Lens' CreativesList [Int64]
cSizeIds
  = lens _cSizeIds (\ s a -> s{_cSizeIds = a}) .
      _Default
      . _Coerce

-- | Select only in-stream video creatives with these companion IDs.
cCompanionCreativeIds :: Lens' CreativesList [Int64]
cCompanionCreativeIds
  = lens _cCompanionCreativeIds
      (\ s a -> s{_cCompanionCreativeIds = a})
      . _Default
      . _Coerce

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cUploadType :: Lens' CreativesList (Maybe Text)
cUploadType
  = lens _cUploadType (\ s a -> s{_cUploadType = a})

-- | Select only creatives with this campaign ID.
cCampaignId :: Lens' CreativesList (Maybe Int64)
cCampaignId
  = lens _cCampaignId (\ s a -> s{_cCampaignId = a}) .
      mapping _Coerce

-- | Select only creatives with these creative types.
cTypes :: Lens' CreativesList [CreativesListTypes]
cTypes
  = lens _cTypes (\ s a -> s{_cTypes = a}) . _Default .
      _Coerce

-- | Select only creatives with these IDs.
cIds :: Lens' CreativesList [Int64]
cIds
  = lens _cIds (\ s a -> s{_cIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
cProFileId :: Lens' CreativesList Int64
cProFileId
  = lens _cProFileId (\ s a -> s{_cProFileId = a}) .
      _Coerce

-- | Order of sorted results.
cSortOrder :: Lens' CreativesList CreativesListSortOrder
cSortOrder
  = lens _cSortOrder (\ s a -> s{_cSortOrder = a})

-- | Select only active creatives. Leave blank to select active and inactive
-- creatives.
cActive :: Lens' CreativesList (Maybe Bool)
cActive = lens _cActive (\ s a -> s{_cActive = a})

-- | Select only creatives with these creative field IDs.
cCreativeFieldIds :: Lens' CreativesList [Int64]
cCreativeFieldIds
  = lens _cCreativeFieldIds
      (\ s a -> s{_cCreativeFieldIds = a})
      . _Default
      . _Coerce

-- | Value of the nextPageToken from the previous result page.
cPageToken :: Lens' CreativesList (Maybe Text)
cPageToken
  = lens _cPageToken (\ s a -> s{_cPageToken = a})

-- | Field by which to sort the list.
cSortField :: Lens' CreativesList CreativesListSortField
cSortField
  = lens _cSortField (\ s a -> s{_cSortField = a})

-- | Select only creatives corresponding to this Studio creative ID.
cStudioCreativeId :: Lens' CreativesList (Maybe Int64)
cStudioCreativeId
  = lens _cStudioCreativeId
      (\ s a -> s{_cStudioCreativeId = a})
      . mapping _Coerce

-- | Select only archived creatives. Leave blank to select archived and
-- unarchived creatives.
cArchived :: Lens' CreativesList (Maybe Bool)
cArchived
  = lens _cArchived (\ s a -> s{_cArchived = a})

-- | Maximum number of results to return.
cMaxResults :: Lens' CreativesList Int32
cMaxResults
  = lens _cMaxResults (\ s a -> s{_cMaxResults = a}) .
      _Coerce

-- | JSONP
cCallback :: Lens' CreativesList (Maybe Text)
cCallback
  = lens _cCallback (\ s a -> s{_cCallback = a})

instance GoogleRequest CreativesList where
        type Rs CreativesList = CreativesListResponse
        type Scopes CreativesList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient CreativesList'{..}
          = go _cProFileId (_cRenderingIds ^. _Default) _cXgafv
              _cUploadProtocol
              _cAccessToken
              _cAdvertiserId
              _cSearchString
              (_cSizeIds ^. _Default)
              (_cCompanionCreativeIds ^. _Default)
              _cUploadType
              _cCampaignId
              (_cTypes ^. _Default)
              (_cIds ^. _Default)
              (Just _cSortOrder)
              _cActive
              (_cCreativeFieldIds ^. _Default)
              _cPageToken
              (Just _cSortField)
              _cStudioCreativeId
              _cArchived
              (Just _cMaxResults)
              _cCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy CreativesListResource)
                      mempty
