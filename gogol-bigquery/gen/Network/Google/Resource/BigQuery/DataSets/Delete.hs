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
-- Module      : Network.Google.Resource.BigQuery.DataSets.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the dataset specified by the datasetId value. Before you can
-- delete a dataset, you must delete all its tables, either manually or by
-- specifying deleteContents. Immediately after deletion, you can create
-- another dataset with the same name.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.datasets.delete@.
module Network.Google.Resource.BigQuery.DataSets.Delete
    (
    -- * REST Resource
      DataSetsDeleteResource

    -- * Creating a Request
    , dataSetsDelete
    , DataSetsDelete

    -- * Request Lenses
    , dsdDataSetId
    , dsdProjectId
    , dsdDeleteContents
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @bigquery.datasets.delete@ method which the
-- 'DataSetsDelete' request conforms to.
type DataSetsDeleteResource =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "datasets" :>
               Capture "datasetId" Text :>
                 QueryParam "deleteContents" Bool :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes the dataset specified by the datasetId value. Before you can
-- delete a dataset, you must delete all its tables, either manually or by
-- specifying deleteContents. Immediately after deletion, you can create
-- another dataset with the same name.
--
-- /See:/ 'dataSetsDelete' smart constructor.
data DataSetsDelete =
  DataSetsDelete'
    { _dsdDataSetId      :: !Text
    , _dsdProjectId      :: !Text
    , _dsdDeleteContents :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DataSetsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsdDataSetId'
--
-- * 'dsdProjectId'
--
-- * 'dsdDeleteContents'
dataSetsDelete
    :: Text -- ^ 'dsdDataSetId'
    -> Text -- ^ 'dsdProjectId'
    -> DataSetsDelete
dataSetsDelete pDsdDataSetId_ pDsdProjectId_ =
  DataSetsDelete'
    { _dsdDataSetId = pDsdDataSetId_
    , _dsdProjectId = pDsdProjectId_
    , _dsdDeleteContents = Nothing
    }

-- | Dataset ID of dataset being deleted
dsdDataSetId :: Lens' DataSetsDelete Text
dsdDataSetId
  = lens _dsdDataSetId (\ s a -> s{_dsdDataSetId = a})

-- | Project ID of the dataset being deleted
dsdProjectId :: Lens' DataSetsDelete Text
dsdProjectId
  = lens _dsdProjectId (\ s a -> s{_dsdProjectId = a})

-- | If True, delete all the tables in the dataset. If False and the dataset
-- contains tables, the request will fail. Default is False
dsdDeleteContents :: Lens' DataSetsDelete (Maybe Bool)
dsdDeleteContents
  = lens _dsdDeleteContents
      (\ s a -> s{_dsdDeleteContents = a})

instance GoogleRequest DataSetsDelete where
        type Rs DataSetsDelete = ()
        type Scopes DataSetsDelete =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient DataSetsDelete'{..}
          = go _dsdProjectId _dsdDataSetId _dsdDeleteContents
              (Just AltJSON)
              bigQueryService
          where go
                  = buildClient (Proxy :: Proxy DataSetsDeleteResource)
                      mempty
