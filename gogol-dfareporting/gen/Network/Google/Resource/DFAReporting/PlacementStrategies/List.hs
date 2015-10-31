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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of placement strategies, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.placementStrategies.list@.
module Network.Google.Resource.DFAReporting.PlacementStrategies.List
    (
    -- * REST Resource
      PlacementStrategiesListResource

    -- * Creating a Request
    , placementStrategiesList
    , PlacementStrategiesList

    -- * Request Lenses
    , pslSearchString
    , pslIds
    , pslProFileId
    , pslSortOrder
    , pslPageToken
    , pslSortField
    , pslMaxResults
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.placementStrategies.list@ method which the
-- 'PlacementStrategiesList' request conforms to.
type PlacementStrategiesListResource =
     "dfareporting" :>
       "v2.4" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "placementStrategies" :>
               QueryParam "searchString" Text :>
                 QueryParams "ids" (Textual Int64) :>
                   QueryParam "sortOrder"
                     PlacementStrategiesListSortOrder
                     :>
                     QueryParam "pageToken" Text :>
                       QueryParam "sortField"
                         PlacementStrategiesListSortField
                         :>
                         QueryParam "maxResults" (Textual Int32) :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] PlacementStrategiesListResponse

-- | Retrieves a list of placement strategies, possibly filtered.
--
-- /See:/ 'placementStrategiesList' smart constructor.
data PlacementStrategiesList = PlacementStrategiesList
    { _pslSearchString :: !(Maybe Text)
    , _pslIds          :: !(Maybe [Textual Int64])
    , _pslProFileId    :: !(Textual Int64)
    , _pslSortOrder    :: !(Maybe PlacementStrategiesListSortOrder)
    , _pslPageToken    :: !(Maybe Text)
    , _pslSortField    :: !(Maybe PlacementStrategiesListSortField)
    , _pslMaxResults   :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementStrategiesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pslSearchString'
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
placementStrategiesList
    :: Int64 -- ^ 'pslProFileId'
    -> PlacementStrategiesList
placementStrategiesList pPslProFileId_ =
    PlacementStrategiesList
    { _pslSearchString = Nothing
    , _pslIds = Nothing
    , _pslProFileId = _Coerce # pPslProFileId_
    , _pslSortOrder = Nothing
    , _pslPageToken = Nothing
    , _pslSortField = Nothing
    , _pslMaxResults = Nothing
    }

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

-- | Order of sorted results, default is ASCENDING.
pslSortOrder :: Lens' PlacementStrategiesList (Maybe PlacementStrategiesListSortOrder)
pslSortOrder
  = lens _pslSortOrder (\ s a -> s{_pslSortOrder = a})

-- | Value of the nextPageToken from the previous result page.
pslPageToken :: Lens' PlacementStrategiesList (Maybe Text)
pslPageToken
  = lens _pslPageToken (\ s a -> s{_pslPageToken = a})

-- | Field by which to sort the list.
pslSortField :: Lens' PlacementStrategiesList (Maybe PlacementStrategiesListSortField)
pslSortField
  = lens _pslSortField (\ s a -> s{_pslSortField = a})

-- | Maximum number of results to return.
pslMaxResults :: Lens' PlacementStrategiesList (Maybe Int32)
pslMaxResults
  = lens _pslMaxResults
      (\ s a -> s{_pslMaxResults = a})
      . mapping _Coerce

instance GoogleRequest PlacementStrategiesList where
        type Rs PlacementStrategiesList =
             PlacementStrategiesListResponse
        type Scopes PlacementStrategiesList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient PlacementStrategiesList{..}
          = go _pslProFileId _pslSearchString
              (_pslIds ^. _Default)
              _pslSortOrder
              _pslPageToken
              _pslSortField
              _pslMaxResults
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy PlacementStrategiesListResource)
                      mempty
