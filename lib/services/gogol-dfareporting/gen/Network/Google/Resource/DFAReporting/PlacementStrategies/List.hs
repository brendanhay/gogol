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
-- Module      : Network.Google.Resource.DFAReporting.PlacementStrategies.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of placement strategies, possibly filtered. This method
-- supports paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.placementStrategies.list@.
module Network.Google.Resource.DFAReporting.PlacementStrategies.List
    (
    -- * REST Resource
      PlacementStrategiesListResource

    -- * Creating a Request
    , placementStrategiesList
    , PlacementStrategiesList

    -- * Request Lenses
    , pslXgafv
    , pslUploadProtocol
    , pslAccessToken
    , pslSearchString
    , pslUploadType
    , pslIds
    , pslProFileId
    , pslSortOrder
    , pslPageToken
    , pslSortField
    , pslMaxResults
    , pslCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.placementStrategies.list@ method which the
-- 'PlacementStrategiesList' request conforms to.
type PlacementStrategiesListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "placementStrategies" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "searchString" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParams "ids" (Textual Int64) :>
                           QueryParam "sortOrder"
                             PlacementStrategiesListSortOrder
                             :>
                             QueryParam "pageToken" Text :>
                               QueryParam "sortField"
                                 PlacementStrategiesListSortField
                                 :>
                                 QueryParam "maxResults" (Textual Int32) :>
                                   QueryParam "callback" Text :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON]
                                         PlacementStrategiesListResponse

-- | Retrieves a list of placement strategies, possibly filtered. This method
-- supports paging.
--
-- /See:/ 'placementStrategiesList' smart constructor.
data PlacementStrategiesList =
  PlacementStrategiesList'
    { _pslXgafv :: !(Maybe Xgafv)
    , _pslUploadProtocol :: !(Maybe Text)
    , _pslAccessToken :: !(Maybe Text)
    , _pslSearchString :: !(Maybe Text)
    , _pslUploadType :: !(Maybe Text)
    , _pslIds :: !(Maybe [Textual Int64])
    , _pslProFileId :: !(Textual Int64)
    , _pslSortOrder :: !PlacementStrategiesListSortOrder
    , _pslPageToken :: !(Maybe Text)
    , _pslSortField :: !PlacementStrategiesListSortField
    , _pslMaxResults :: !(Textual Int32)
    , _pslCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlacementStrategiesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pslXgafv'
--
-- * 'pslUploadProtocol'
--
-- * 'pslAccessToken'
--
-- * 'pslSearchString'
--
-- * 'pslUploadType'
--
-- * 'pslIds'
--
-- * 'pslProFileId'
--
-- * 'pslSortOrder'
--
-- * 'pslPageToken'
--
-- * 'pslSortField'
--
-- * 'pslMaxResults'
--
-- * 'pslCallback'
placementStrategiesList
    :: Int64 -- ^ 'pslProFileId'
    -> PlacementStrategiesList
placementStrategiesList pPslProFileId_ =
  PlacementStrategiesList'
    { _pslXgafv = Nothing
    , _pslUploadProtocol = Nothing
    , _pslAccessToken = Nothing
    , _pslSearchString = Nothing
    , _pslUploadType = Nothing
    , _pslIds = Nothing
    , _pslProFileId = _Coerce # pPslProFileId_
    , _pslSortOrder = PSLSOAscending
    , _pslPageToken = Nothing
    , _pslSortField = PSLSFID
    , _pslMaxResults = 1000
    , _pslCallback = Nothing
    }


-- | V1 error format.
pslXgafv :: Lens' PlacementStrategiesList (Maybe Xgafv)
pslXgafv = lens _pslXgafv (\ s a -> s{_pslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pslUploadProtocol :: Lens' PlacementStrategiesList (Maybe Text)
pslUploadProtocol
  = lens _pslUploadProtocol
      (\ s a -> s{_pslUploadProtocol = a})

-- | OAuth access token.
pslAccessToken :: Lens' PlacementStrategiesList (Maybe Text)
pslAccessToken
  = lens _pslAccessToken
      (\ s a -> s{_pslAccessToken = a})

-- | Allows searching for objects by name or ID. Wildcards (*) are allowed.
-- For example, \"placementstrategy*2015\" will return objects with names
-- like \"placementstrategy June 2015\", \"placementstrategy April 2015\",
-- or simply \"placementstrategy 2015\". Most of the searches also add
-- wildcards implicitly at the start and the end of the search string. For
-- example, a search string of \"placementstrategy\" will match objects
-- with name \"my placementstrategy\", \"placementstrategy 2015\", or
-- simply \"placementstrategy\".
pslSearchString :: Lens' PlacementStrategiesList (Maybe Text)
pslSearchString
  = lens _pslSearchString
      (\ s a -> s{_pslSearchString = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pslUploadType :: Lens' PlacementStrategiesList (Maybe Text)
pslUploadType
  = lens _pslUploadType
      (\ s a -> s{_pslUploadType = a})

-- | Select only placement strategies with these IDs.
pslIds :: Lens' PlacementStrategiesList [Int64]
pslIds
  = lens _pslIds (\ s a -> s{_pslIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
pslProFileId :: Lens' PlacementStrategiesList Int64
pslProFileId
  = lens _pslProFileId (\ s a -> s{_pslProFileId = a})
      . _Coerce

-- | Order of sorted results.
pslSortOrder :: Lens' PlacementStrategiesList PlacementStrategiesListSortOrder
pslSortOrder
  = lens _pslSortOrder (\ s a -> s{_pslSortOrder = a})

-- | Value of the nextPageToken from the previous result page.
pslPageToken :: Lens' PlacementStrategiesList (Maybe Text)
pslPageToken
  = lens _pslPageToken (\ s a -> s{_pslPageToken = a})

-- | Field by which to sort the list.
pslSortField :: Lens' PlacementStrategiesList PlacementStrategiesListSortField
pslSortField
  = lens _pslSortField (\ s a -> s{_pslSortField = a})

-- | Maximum number of results to return.
pslMaxResults :: Lens' PlacementStrategiesList Int32
pslMaxResults
  = lens _pslMaxResults
      (\ s a -> s{_pslMaxResults = a})
      . _Coerce

-- | JSONP
pslCallback :: Lens' PlacementStrategiesList (Maybe Text)
pslCallback
  = lens _pslCallback (\ s a -> s{_pslCallback = a})

instance GoogleRequest PlacementStrategiesList where
        type Rs PlacementStrategiesList =
             PlacementStrategiesListResponse
        type Scopes PlacementStrategiesList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient PlacementStrategiesList'{..}
          = go _pslProFileId _pslXgafv _pslUploadProtocol
              _pslAccessToken
              _pslSearchString
              _pslUploadType
              (_pslIds ^. _Default)
              (Just _pslSortOrder)
              _pslPageToken
              (Just _pslSortField)
              (Just _pslMaxResults)
              _pslCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy PlacementStrategiesListResource)
                      mempty
