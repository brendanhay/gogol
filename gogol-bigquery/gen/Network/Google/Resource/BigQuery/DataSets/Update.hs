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
-- Module      : Network.Google.Resource.BigQuery.DataSets.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates information in an existing dataset. The update method replaces
-- the entire dataset resource, whereas the patch method only replaces
-- fields that are provided in the submitted dataset resource.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.datasets.update@.
module Network.Google.Resource.BigQuery.DataSets.Update
    (
    -- * REST Resource
      DataSetsUpdateResource

    -- * Creating a Request
    , dataSetsUpdate
    , DataSetsUpdate

    -- * Request Lenses
    , dsuPayload
    , dsuDataSetId
    , dsuProjectId
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @bigquery.datasets.update@ method which the
-- 'DataSetsUpdate' request conforms to.
type DataSetsUpdateResource =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "datasets" :>
               Capture "datasetId" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] DataSet :> Put '[JSON] DataSet

-- | Updates information in an existing dataset. The update method replaces
-- the entire dataset resource, whereas the patch method only replaces
-- fields that are provided in the submitted dataset resource.
--
-- /See:/ 'dataSetsUpdate' smart constructor.
data DataSetsUpdate = DataSetsUpdate'
    { _dsuPayload   :: !DataSet
    , _dsuDataSetId :: !Text
    , _dsuProjectId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DataSetsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsuPayload'
--
-- * 'dsuDataSetId'
--
-- * 'dsuProjectId'
dataSetsUpdate
    :: DataSet -- ^ 'dsuPayload'
    -> Text -- ^ 'dsuDataSetId'
    -> Text -- ^ 'dsuProjectId'
    -> DataSetsUpdate
dataSetsUpdate pDsuPayload_ pDsuDataSetId_ pDsuProjectId_ =
    DataSetsUpdate'
    { _dsuPayload = pDsuPayload_
    , _dsuDataSetId = pDsuDataSetId_
    , _dsuProjectId = pDsuProjectId_
    }

-- | Multipart request metadata.
dsuPayload :: Lens' DataSetsUpdate DataSet
dsuPayload
  = lens _dsuPayload (\ s a -> s{_dsuPayload = a})

-- | Dataset ID of the dataset being updated
dsuDataSetId :: Lens' DataSetsUpdate Text
dsuDataSetId
  = lens _dsuDataSetId (\ s a -> s{_dsuDataSetId = a})

-- | Project ID of the dataset being updated
dsuProjectId :: Lens' DataSetsUpdate Text
dsuProjectId
  = lens _dsuProjectId (\ s a -> s{_dsuProjectId = a})

instance GoogleRequest DataSetsUpdate where
        type Rs DataSetsUpdate = DataSet
        type Scopes DataSetsUpdate =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient DataSetsUpdate'{..}
          = go _dsuProjectId _dsuDataSetId (Just AltJSON)
              _dsuPayload
              bigQueryService
          where go
                  = buildClient (Proxy :: Proxy DataSetsUpdateResource)
                      mempty
