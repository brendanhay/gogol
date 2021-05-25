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
-- Module      : Network.Google.Resource.BigQuery.DataSets.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates information in an existing dataset. The update method replaces
-- the entire dataset resource, whereas the patch method only replaces
-- fields that are provided in the submitted dataset resource. This method
-- supports patch semantics.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.datasets.patch@.
module Network.Google.Resource.BigQuery.DataSets.Patch
    (
    -- * REST Resource
      DataSetsPatchResource

    -- * Creating a Request
    , dataSetsPatch
    , DataSetsPatch

    -- * Request Lenses
    , dspPayload
    , dspDataSetId
    , dspProjectId
    ) where

import Network.Google.BigQuery.Types
import Network.Google.Prelude

-- | A resource alias for @bigquery.datasets.patch@ method which the
-- 'DataSetsPatch' request conforms to.
type DataSetsPatchResource =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "datasets" :>
               Capture "datasetId" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] DataSet :> Patch '[JSON] DataSet

-- | Updates information in an existing dataset. The update method replaces
-- the entire dataset resource, whereas the patch method only replaces
-- fields that are provided in the submitted dataset resource. This method
-- supports patch semantics.
--
-- /See:/ 'dataSetsPatch' smart constructor.
data DataSetsPatch =
  DataSetsPatch'
    { _dspPayload :: !DataSet
    , _dspDataSetId :: !Text
    , _dspProjectId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DataSetsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dspPayload'
--
-- * 'dspDataSetId'
--
-- * 'dspProjectId'
dataSetsPatch
    :: DataSet -- ^ 'dspPayload'
    -> Text -- ^ 'dspDataSetId'
    -> Text -- ^ 'dspProjectId'
    -> DataSetsPatch
dataSetsPatch pDspPayload_ pDspDataSetId_ pDspProjectId_ =
  DataSetsPatch'
    { _dspPayload = pDspPayload_
    , _dspDataSetId = pDspDataSetId_
    , _dspProjectId = pDspProjectId_
    }


-- | Multipart request metadata.
dspPayload :: Lens' DataSetsPatch DataSet
dspPayload
  = lens _dspPayload (\ s a -> s{_dspPayload = a})

-- | Dataset ID of the dataset being updated
dspDataSetId :: Lens' DataSetsPatch Text
dspDataSetId
  = lens _dspDataSetId (\ s a -> s{_dspDataSetId = a})

-- | Project ID of the dataset being updated
dspProjectId :: Lens' DataSetsPatch Text
dspProjectId
  = lens _dspProjectId (\ s a -> s{_dspProjectId = a})

instance GoogleRequest DataSetsPatch where
        type Rs DataSetsPatch = DataSet
        type Scopes DataSetsPatch =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient DataSetsPatch'{..}
          = go _dspProjectId _dspDataSetId (Just AltJSON)
              _dspPayload
              bigQueryService
          where go
                  = buildClient (Proxy :: Proxy DataSetsPatchResource)
                      mempty
