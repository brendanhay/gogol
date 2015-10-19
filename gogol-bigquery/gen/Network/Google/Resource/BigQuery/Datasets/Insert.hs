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
-- Module      : Network.Google.Resource.BigQuery.Datasets.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new empty dataset.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @BigQueryDatasetsInsert@.
module Network.Google.Resource.BigQuery.Datasets.Insert
    (
    -- * REST Resource
      DatasetsInsertResource

    -- * Creating a Request
    , datasetsInsert'
    , DatasetsInsert'

    -- * Request Lenses
    , diPayload
    , diProjectId
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigQueryDatasetsInsert@ method which the
-- 'DatasetsInsert'' request conforms to.
type DatasetsInsertResource =
     "projects" :>
       Capture "projectId" Text :>
         "datasets" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] Dataset :> Post '[JSON] Dataset

-- | Creates a new empty dataset.
--
-- /See:/ 'datasetsInsert'' smart constructor.
data DatasetsInsert' = DatasetsInsert'
    { _diPayload   :: !Dataset
    , _diProjectId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diPayload'
--
-- * 'diProjectId'
datasetsInsert'
    :: Dataset -- ^ 'payload'
    -> Text -- ^ 'projectId'
    -> DatasetsInsert'
datasetsInsert' pDiPayload_ pDiProjectId_ =
    DatasetsInsert'
    { _diPayload = pDiPayload_
    , _diProjectId = pDiProjectId_
    }

-- | Multipart request metadata.
diPayload :: Lens' DatasetsInsert' Dataset
diPayload
  = lens _diPayload (\ s a -> s{_diPayload = a})

-- | Project ID of the new dataset
diProjectId :: Lens' DatasetsInsert' Text
diProjectId
  = lens _diProjectId (\ s a -> s{_diProjectId = a})

instance GoogleRequest DatasetsInsert' where
        type Rs DatasetsInsert' = Dataset
        requestClient DatasetsInsert'{..}
          = go _diProjectId (Just AltJSON) _diPayload
              bigQueryService
          where go
                  = buildClient (Proxy :: Proxy DatasetsInsertResource)
                      mempty
