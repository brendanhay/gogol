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
-- Module      : Network.Google.Resource.BigQuery.Models.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified model resource by model ID.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.models.get@.
module Network.Google.Resource.BigQuery.Models.Get
    (
    -- * REST Resource
      ModelsGetResource

    -- * Creating a Request
    , modelsGet
    , ModelsGet

    -- * Request Lenses
    , mgModelId
    , mgDataSetId
    , mgProjectId
    ) where

import Network.Google.BigQuery.Types
import Network.Google.Prelude

-- | A resource alias for @bigquery.models.get@ method which the
-- 'ModelsGet' request conforms to.
type ModelsGetResource =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "datasets" :>
               Capture "datasetId" Text :>
                 "models" :>
                   Capture "modelId" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Model

-- | Gets the specified model resource by model ID.
--
-- /See:/ 'modelsGet' smart constructor.
data ModelsGet =
  ModelsGet'
    { _mgModelId :: !Text
    , _mgDataSetId :: !Text
    , _mgProjectId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ModelsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mgModelId'
--
-- * 'mgDataSetId'
--
-- * 'mgProjectId'
modelsGet
    :: Text -- ^ 'mgModelId'
    -> Text -- ^ 'mgDataSetId'
    -> Text -- ^ 'mgProjectId'
    -> ModelsGet
modelsGet pMgModelId_ pMgDataSetId_ pMgProjectId_ =
  ModelsGet'
    { _mgModelId = pMgModelId_
    , _mgDataSetId = pMgDataSetId_
    , _mgProjectId = pMgProjectId_
    }


-- | Required. Model ID of the requested model.
mgModelId :: Lens' ModelsGet Text
mgModelId
  = lens _mgModelId (\ s a -> s{_mgModelId = a})

-- | Required. Dataset ID of the requested model.
mgDataSetId :: Lens' ModelsGet Text
mgDataSetId
  = lens _mgDataSetId (\ s a -> s{_mgDataSetId = a})

-- | Required. Project ID of the requested model.
mgProjectId :: Lens' ModelsGet Text
mgProjectId
  = lens _mgProjectId (\ s a -> s{_mgProjectId = a})

instance GoogleRequest ModelsGet where
        type Rs ModelsGet = Model
        type Scopes ModelsGet =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient ModelsGet'{..}
          = go _mgProjectId _mgDataSetId _mgModelId
              (Just AltJSON)
              bigQueryService
          where go
                  = buildClient (Proxy :: Proxy ModelsGetResource)
                      mempty
