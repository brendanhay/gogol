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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves table data from a specified set of rows. Requires the READER
-- dataset role.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.tabledata.list@.
module Network.Google.Resource.BigQuery.TableData.List
    (
    -- * REST Resource
      TableDataListResource

    -- * Creating a Request
    , tableDataList'
    , TableDataList'

    -- * Request Lenses
    , tDataSetId
    , tPageToken
    , tProjectId
    , tSelectedFields
    , tTableId
    , tStartIndex
    , tMaxResults
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @bigquery.tabledata.list@ method which the
-- 'TableDataList'' request conforms to.
type TableDataListResource =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "datasets" :>
               Capture "datasetId" Text :>
                 "tables" :>
                   Capture "tableId" Text :>
                     "data" :>
                       QueryParam "pageToken" Text :>
                         QueryParam "selectedFields" Text :>
                           QueryParam "startIndex" (Textual Word64) :>
                             QueryParam "maxResults" (Textual Word32) :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] TableDataList

-- | Retrieves table data from a specified set of rows. Requires the READER
-- dataset role.
--
-- /See:/ 'tableDataList'' smart constructor.
data TableDataList' = TableDataList''
    { _tDataSetId      :: !Text
    , _tPageToken      :: !(Maybe Text)
    , _tProjectId      :: !Text
    , _tSelectedFields :: !(Maybe Text)
    , _tTableId        :: !Text
    , _tStartIndex     :: !(Maybe (Textual Word64))
    , _tMaxResults     :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableDataList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tDataSetId'
--
-- * 'tPageToken'
--
-- * 'tProjectId'
--
-- * 'tSelectedFields'
--
-- * 'tTableId'
--
-- * 'tStartIndex'
--
-- * 'tMaxResults'
tableDataList'
    :: Text -- ^ 'tDataSetId'
    -> Text -- ^ 'tProjectId'
    -> Text -- ^ 'tTableId'
    -> TableDataList'
tableDataList' pTDataSetId_ pTProjectId_ pTTableId_ =
    TableDataList''
    { _tDataSetId = pTDataSetId_
    , _tPageToken = Nothing
    , _tProjectId = pTProjectId_
    , _tSelectedFields = Nothing
    , _tTableId = pTTableId_
    , _tStartIndex = Nothing
    , _tMaxResults = Nothing
    }

-- | Dataset ID of the table to read
tDataSetId :: Lens' TableDataList' Text
tDataSetId
  = lens _tDataSetId (\ s a -> s{_tDataSetId = a})

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

-- | List of fields to return (comma-separated). If unspecified, all fields
-- are returned
tSelectedFields :: Lens' TableDataList' (Maybe Text)
tSelectedFields
  = lens _tSelectedFields
      (\ s a -> s{_tSelectedFields = a})

-- | Table ID of the table to read
tTableId :: Lens' TableDataList' Text
tTableId = lens _tTableId (\ s a -> s{_tTableId = a})

-- | Zero-based index of the starting row to read
tStartIndex :: Lens' TableDataList' (Maybe Word64)
tStartIndex
  = lens _tStartIndex (\ s a -> s{_tStartIndex = a}) .
      mapping _Coerce

-- | Maximum number of results to return
tMaxResults :: Lens' TableDataList' (Maybe Word32)
tMaxResults
  = lens _tMaxResults (\ s a -> s{_tMaxResults = a}) .
      mapping _Coerce

instance GoogleRequest TableDataList' where
        type Rs TableDataList' = TableDataList
        type Scopes TableDataList' =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient TableDataList''{..}
          = go _tProjectId _tDataSetId _tTableId _tPageToken
              _tSelectedFields
              _tStartIndex
              _tMaxResults
              (Just AltJSON)
              bigQueryService
          where go
                  = buildClient (Proxy :: Proxy TableDataListResource)
                      mempty
