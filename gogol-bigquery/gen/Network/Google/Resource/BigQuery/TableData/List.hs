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
-- Module      : Network.Google.Resource.BigQuery.TableData.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves table data from a specified set of rows. Requires the READER
-- dataset role.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @BigQueryTableDataList@.
module Network.Google.Resource.BigQuery.TableData.List
    (
    -- * REST Resource
      TableDataListResource

    -- * Creating a Request
    , tableDataList'
    , TableDataList'

    -- * Request Lenses
    , tDatasetId
    , tPageToken
    , tProjectId
    , tTableId
    , tStartIndex
    , tMaxResults
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigQueryTableDataList@ method which the
-- 'TableDataList'' request conforms to.
type TableDataListResource =
     "projects" :>
       Capture "projectId" Text :>
         "datasets" :>
           Capture "datasetId" Text :>
             "tables" :>
               Capture "tableId" Text :>
                 "data" :>
                   QueryParam "pageToken" Text :>
                     QueryParam "startIndex" Word64 :>
                       QueryParam "maxResults" Word32 :>
                         QueryParam "alt" AltJSON :> Get '[JSON] TableDataList

-- | Retrieves table data from a specified set of rows. Requires the READER
-- dataset role.
--
-- /See:/ 'tableDataList'' smart constructor.
data TableDataList' = TableDataList'
    { _tDatasetId  :: !Text
    , _tPageToken  :: !(Maybe Text)
    , _tProjectId  :: !Text
    , _tTableId    :: !Text
    , _tStartIndex :: !(Maybe Word64)
    , _tMaxResults :: !(Maybe Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableDataList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tDatasetId'
--
-- * 'tPageToken'
--
-- * 'tProjectId'
--
-- * 'tTableId'
--
-- * 'tStartIndex'
--
-- * 'tMaxResults'
tableDataList'
    :: Text -- ^ 'datasetId'
    -> Text -- ^ 'projectId'
    -> Text -- ^ 'tableId'
    -> TableDataList'
tableDataList' pTDatasetId_ pTProjectId_ pTTableId_ =
    TableDataList'
    { _tDatasetId = pTDatasetId_
    , _tPageToken = Nothing
    , _tProjectId = pTProjectId_
    , _tTableId = pTTableId_
    , _tStartIndex = Nothing
    , _tMaxResults = Nothing
    }

-- | Dataset ID of the table to read
tDatasetId :: Lens' TableDataList' Text
tDatasetId
  = lens _tDatasetId (\ s a -> s{_tDatasetId = a})

-- | A token used for paging results. Providing this token instead of the
-- startIndex parameter can help you retrieve stable results when an
-- underlying table is changing.
tPageToken :: Lens' TableDataList' (Maybe Text)
tPageToken
  = lens _tPageToken (\ s a -> s{_tPageToken = a})

-- | Project ID of the table to read
tProjectId :: Lens' TableDataList' Text
tProjectId
  = lens _tProjectId (\ s a -> s{_tProjectId = a})

-- | Table ID of the table to read
tTableId :: Lens' TableDataList' Text
tTableId = lens _tTableId (\ s a -> s{_tTableId = a})

-- | Zero-based index of the starting row to read
tStartIndex :: Lens' TableDataList' (Maybe Word64)
tStartIndex
  = lens _tStartIndex (\ s a -> s{_tStartIndex = a})

-- | Maximum number of results to return
tMaxResults :: Lens' TableDataList' (Maybe Word32)
tMaxResults
  = lens _tMaxResults (\ s a -> s{_tMaxResults = a})

instance GoogleRequest TableDataList' where
        type Rs TableDataList' = TableDataList
        requestClient TableDataList'{..}
          = go _tProjectId _tDatasetId _tTableId _tPageToken
              _tStartIndex
              _tMaxResults
              (Just AltJSON)
              bigQueryService
          where go
                  = buildClient (Proxy :: Proxy TableDataListResource)
                      mempty
