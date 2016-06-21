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
-- Module      : Network.Google.Resource.BigQuery.DataSets.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new empty dataset.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.datasets.insert@.
module Network.Google.Resource.BigQuery.DataSets.Insert
    (
    -- * REST Resource
      DataSetsInsertResource

    -- * Creating a Request
    , dataSetsInsert
    , DataSetsInsert

    -- * Request Lenses
    , dsiPayload
    , dsiProjectId
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @bigquery.datasets.insert@ method which the
-- 'DataSetsInsert' request conforms to.
type DataSetsInsertResource =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "datasets" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] DataSet :> Post '[JSON] DataSet

-- | Creates a new empty dataset.
--
-- /See:/ 'dataSetsInsert' smart constructor.
data DataSetsInsert = DataSetsInsert'
    { _dsiPayload   :: !DataSet
    , _dsiProjectId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DataSetsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsiPayload'
--
-- * 'dsiProjectId'
dataSetsInsert
    :: DataSet -- ^ 'dsiPayload'
    -> Text -- ^ 'dsiProjectId'
    -> DataSetsInsert
dataSetsInsert pDsiPayload_ pDsiProjectId_ =
    DataSetsInsert'
    { _dsiPayload = pDsiPayload_
    , _dsiProjectId = pDsiProjectId_
    }

-- | Multipart request metadata.
dsiPayload :: Lens' DataSetsInsert DataSet
dsiPayload
  = lens _dsiPayload (\ s a -> s{_dsiPayload = a})

-- | Project ID of the new dataset
dsiProjectId :: Lens' DataSetsInsert Text
dsiProjectId
  = lens _dsiProjectId (\ s a -> s{_dsiProjectId = a})

instance GoogleRequest DataSetsInsert where
        type Rs DataSetsInsert = DataSet
        type Scopes DataSetsInsert =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient DataSetsInsert'{..}
          = go _dsiProjectId (Just AltJSON) _dsiPayload
              bigQueryService
          where go
                  = buildClient (Proxy :: Proxy DataSetsInsertResource)
                      mempty
