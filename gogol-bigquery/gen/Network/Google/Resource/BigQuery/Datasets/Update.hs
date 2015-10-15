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
-- Module      : Network.Google.Resource.BigQuery.Datasets.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates information in an existing dataset. The update method replaces
-- the entire dataset resource, whereas the patch method only replaces
-- fields that are provided in the submitted dataset resource.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @BigQueryDatasetsUpdate@.
module Network.Google.Resource.BigQuery.Datasets.Update
    (
    -- * REST Resource
      DatasetsUpdateResource

    -- * Creating a Request
    , datasetsUpdate'
    , DatasetsUpdate'

    -- * Request Lenses
    , duPayload
    , duDatasetId
    , duProjectId
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigQueryDatasetsUpdate@ method which the
-- 'DatasetsUpdate'' request conforms to.
type DatasetsUpdateResource =
     "projects" :>
       Capture "projectId" Text :>
         "datasets" :>
           Capture "datasetId" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Dataset :> Put '[JSON] Dataset

-- | Updates information in an existing dataset. The update method replaces
-- the entire dataset resource, whereas the patch method only replaces
-- fields that are provided in the submitted dataset resource.
--
-- /See:/ 'datasetsUpdate'' smart constructor.
data DatasetsUpdate' = DatasetsUpdate'
    { _duPayload   :: !Dataset
    , _duDatasetId :: !Text
    , _duProjectId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'duPayload'
--
-- * 'duDatasetId'
--
-- * 'duProjectId'
datasetsUpdate'
    :: Dataset -- ^ 'payload'
    -> Text -- ^ 'datasetId'
    -> Text -- ^ 'projectId'
    -> DatasetsUpdate'
datasetsUpdate' pDuPayload_ pDuDatasetId_ pDuProjectId_ =
    DatasetsUpdate'
    { _duPayload = pDuPayload_
    , _duDatasetId = pDuDatasetId_
    , _duProjectId = pDuProjectId_
    }

-- | Multipart request metadata.
duPayload :: Lens' DatasetsUpdate' Dataset
duPayload
  = lens _duPayload (\ s a -> s{_duPayload = a})

-- | Dataset ID of the dataset being updated
duDatasetId :: Lens' DatasetsUpdate' Text
duDatasetId
  = lens _duDatasetId (\ s a -> s{_duDatasetId = a})

-- | Project ID of the dataset being updated
duProjectId :: Lens' DatasetsUpdate' Text
duProjectId
  = lens _duProjectId (\ s a -> s{_duProjectId = a})

instance GoogleRequest DatasetsUpdate' where
        type Rs DatasetsUpdate' = Dataset
        requestClient DatasetsUpdate'{..}
          = go _duProjectId _duDatasetId (Just AltJSON)
              _duPayload
              bigQuery
          where go
                  = buildClient (Proxy :: Proxy DatasetsUpdateResource)
                      mempty
