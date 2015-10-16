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
-- Module      : Network.Google.Resource.BigQuery.Datasets.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates information in an existing dataset. The update method replaces
-- the entire dataset resource, whereas the patch method only replaces
-- fields that are provided in the submitted dataset resource. This method
-- supports patch semantics.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @BigQueryDatasetsPatch@.
module Network.Google.Resource.BigQuery.Datasets.Patch
    (
    -- * REST Resource
      DatasetsPatchResource

    -- * Creating a Request
    , datasetsPatch'
    , DatasetsPatch'

    -- * Request Lenses
    , dpPayload
    , dpDatasetId
    , dpProjectId
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigQueryDatasetsPatch@ method which the
-- 'DatasetsPatch'' request conforms to.
type DatasetsPatchResource =
     "projects" :>
       Capture "projectId" Text :>
         "datasets" :>
           Capture "datasetId" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Dataset :> Patch '[JSON] Dataset

-- | Updates information in an existing dataset. The update method replaces
-- the entire dataset resource, whereas the patch method only replaces
-- fields that are provided in the submitted dataset resource. This method
-- supports patch semantics.
--
-- /See:/ 'datasetsPatch'' smart constructor.
data DatasetsPatch' = DatasetsPatch'
    { _dpPayload   :: !Dataset
    , _dpDatasetId :: !Text
    , _dpProjectId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpPayload'
--
-- * 'dpDatasetId'
--
-- * 'dpProjectId'
datasetsPatch'
    :: Dataset -- ^ 'payload'
    -> Text -- ^ 'datasetId'
    -> Text -- ^ 'projectId'
    -> DatasetsPatch'
datasetsPatch' pDpPayload_ pDpDatasetId_ pDpProjectId_ =
    DatasetsPatch'
    { _dpPayload = pDpPayload_
    , _dpDatasetId = pDpDatasetId_
    , _dpProjectId = pDpProjectId_
    }

-- | Multipart request metadata.
dpPayload :: Lens' DatasetsPatch' Dataset
dpPayload
  = lens _dpPayload (\ s a -> s{_dpPayload = a})

-- | Dataset ID of the dataset being updated
dpDatasetId :: Lens' DatasetsPatch' Text
dpDatasetId
  = lens _dpDatasetId (\ s a -> s{_dpDatasetId = a})

-- | Project ID of the dataset being updated
dpProjectId :: Lens' DatasetsPatch' Text
dpProjectId
  = lens _dpProjectId (\ s a -> s{_dpProjectId = a})

instance GoogleRequest DatasetsPatch' where
        type Rs DatasetsPatch' = Dataset
        requestClient DatasetsPatch'{..}
          = go _dpProjectId _dpDatasetId (Just AltJSON)
              _dpPayload
              bigQueryService
          where go
                  = buildClient (Proxy :: Proxy DatasetsPatchResource)
                      mempty
