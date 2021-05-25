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
-- Module      : Network.Google.Resource.BigQuery.DataSets.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the dataset specified by datasetID.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.datasets.get@.
module Network.Google.Resource.BigQuery.DataSets.Get
    (
    -- * REST Resource
      DataSetsGetResource

    -- * Creating a Request
    , dataSetsGet
    , DataSetsGet

    -- * Request Lenses
    , dsgDataSetId
    , dsgProjectId
    ) where

import Network.Google.BigQuery.Types
import Network.Google.Prelude

-- | A resource alias for @bigquery.datasets.get@ method which the
-- 'DataSetsGet' request conforms to.
type DataSetsGetResource =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "datasets" :>
               Capture "datasetId" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] DataSet

-- | Returns the dataset specified by datasetID.
--
-- /See:/ 'dataSetsGet' smart constructor.
data DataSetsGet =
  DataSetsGet'
    { _dsgDataSetId :: !Text
    , _dsgProjectId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DataSetsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsgDataSetId'
--
-- * 'dsgProjectId'
dataSetsGet
    :: Text -- ^ 'dsgDataSetId'
    -> Text -- ^ 'dsgProjectId'
    -> DataSetsGet
dataSetsGet pDsgDataSetId_ pDsgProjectId_ =
  DataSetsGet' {_dsgDataSetId = pDsgDataSetId_, _dsgProjectId = pDsgProjectId_}


-- | Dataset ID of the requested dataset
dsgDataSetId :: Lens' DataSetsGet Text
dsgDataSetId
  = lens _dsgDataSetId (\ s a -> s{_dsgDataSetId = a})

-- | Project ID of the requested dataset
dsgProjectId :: Lens' DataSetsGet Text
dsgProjectId
  = lens _dsgProjectId (\ s a -> s{_dsgProjectId = a})

instance GoogleRequest DataSetsGet where
        type Rs DataSetsGet = DataSet
        type Scopes DataSetsGet =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient DataSetsGet'{..}
          = go _dsgProjectId _dsgDataSetId (Just AltJSON)
              bigQueryService
          where go
                  = buildClient (Proxy :: Proxy DataSetsGetResource)
                      mempty
