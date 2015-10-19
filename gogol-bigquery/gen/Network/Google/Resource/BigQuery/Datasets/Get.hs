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
-- Module      : Network.Google.Resource.BigQuery.Datasets.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the dataset specified by datasetID.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.datasets.get@.
module Network.Google.Resource.BigQuery.Datasets.Get
    (
    -- * REST Resource
      DatasetsGetResource

    -- * Creating a Request
    , datasetsGet'
    , DatasetsGet'

    -- * Request Lenses
    , dgDatasetId
    , dgProjectId
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @bigquery.datasets.get@ method which the
-- 'DatasetsGet'' request conforms to.
type DatasetsGetResource =
     "projects" :>
       Capture "projectId" Text :>
         "datasets" :>
           Capture "datasetId" Text :>
             QueryParam "alt" AltJSON :> Get '[JSON] Dataset

-- | Returns the dataset specified by datasetID.
--
-- /See:/ 'datasetsGet'' smart constructor.
data DatasetsGet' = DatasetsGet'
    { _dgDatasetId :: !Text
    , _dgProjectId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgDatasetId'
--
-- * 'dgProjectId'
datasetsGet'
    :: Text -- ^ 'dgDatasetId'
    -> Text -- ^ 'dgProjectId'
    -> DatasetsGet'
datasetsGet' pDgDatasetId_ pDgProjectId_ =
    DatasetsGet'
    { _dgDatasetId = pDgDatasetId_
    , _dgProjectId = pDgProjectId_
    }

-- | Dataset ID of the requested dataset
dgDatasetId :: Lens' DatasetsGet' Text
dgDatasetId
  = lens _dgDatasetId (\ s a -> s{_dgDatasetId = a})

-- | Project ID of the requested dataset
dgProjectId :: Lens' DatasetsGet' Text
dgProjectId
  = lens _dgProjectId (\ s a -> s{_dgProjectId = a})

instance GoogleRequest DatasetsGet' where
        type Rs DatasetsGet' = Dataset
        requestClient DatasetsGet'{..}
          = go _dgProjectId _dgDatasetId (Just AltJSON)
              bigQueryService
          where go
                  = buildClient (Proxy :: Proxy DatasetsGetResource)
                      mempty
