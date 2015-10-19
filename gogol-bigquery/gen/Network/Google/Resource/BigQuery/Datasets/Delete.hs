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
-- Module      : Network.Google.Resource.BigQuery.Datasets.Delete
-- Copyright   : (c) 2015 Brendan Hay
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
module Network.Google.Resource.BigQuery.Datasets.Delete
    (
    -- * REST Resource
      DatasetsDeleteResource

    -- * Creating a Request
    , datasetsDelete'
    , DatasetsDelete'

    -- * Request Lenses
    , ddDatasetId
    , ddProjectId
    , ddDeleteContents
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @bigquery.datasets.delete@ method which the
-- 'DatasetsDelete'' request conforms to.
type DatasetsDeleteResource =
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
-- /See:/ 'datasetsDelete'' smart constructor.
data DatasetsDelete' = DatasetsDelete'
    { _ddDatasetId      :: !Text
    , _ddProjectId      :: !Text
    , _ddDeleteContents :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddDatasetId'
--
-- * 'ddProjectId'
--
-- * 'ddDeleteContents'
datasetsDelete'
    :: Text -- ^ 'ddDatasetId'
    -> Text -- ^ 'ddProjectId'
    -> DatasetsDelete'
datasetsDelete' pDdDatasetId_ pDdProjectId_ =
    DatasetsDelete'
    { _ddDatasetId = pDdDatasetId_
    , _ddProjectId = pDdProjectId_
    , _ddDeleteContents = Nothing
    }

-- | Dataset ID of dataset being deleted
ddDatasetId :: Lens' DatasetsDelete' Text
ddDatasetId
  = lens _ddDatasetId (\ s a -> s{_ddDatasetId = a})

-- | Project ID of the dataset being deleted
ddProjectId :: Lens' DatasetsDelete' Text
ddProjectId
  = lens _ddProjectId (\ s a -> s{_ddProjectId = a})

-- | If True, delete all the tables in the dataset. If False and the dataset
-- contains tables, the request will fail. Default is False
ddDeleteContents :: Lens' DatasetsDelete' (Maybe Bool)
ddDeleteContents
  = lens _ddDeleteContents
      (\ s a -> s{_ddDeleteContents = a})

instance GoogleRequest DatasetsDelete' where
        type Rs DatasetsDelete' = ()
        requestClient DatasetsDelete'{..}
          = go _ddProjectId _ddDatasetId _ddDeleteContents
              (Just AltJSON)
              bigQueryService
          where go
                  = buildClient (Proxy :: Proxy DatasetsDeleteResource)
                      mempty
