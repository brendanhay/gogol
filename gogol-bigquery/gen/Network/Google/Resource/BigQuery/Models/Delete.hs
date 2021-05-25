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
-- Module      : Network.Google.Resource.BigQuery.Models.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the model specified by modelId from the dataset.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.models.delete@.
module Network.Google.Resource.BigQuery.Models.Delete
    (
    -- * REST Resource
      ModelsDeleteResource

    -- * Creating a Request
    , modelsDelete
    , ModelsDelete

    -- * Request Lenses
    , mdModelId
    , mdDataSetId
    , mdProjectId
    ) where

import Network.Google.BigQuery.Types
import Network.Google.Prelude

-- | A resource alias for @bigquery.models.delete@ method which the
-- 'ModelsDelete' request conforms to.
type ModelsDeleteResource =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "datasets" :>
               Capture "datasetId" Text :>
                 "models" :>
                   Capture "modelId" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes the model specified by modelId from the dataset.
--
-- /See:/ 'modelsDelete' smart constructor.
data ModelsDelete =
  ModelsDelete'
    { _mdModelId :: !Text
    , _mdDataSetId :: !Text
    , _mdProjectId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ModelsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdModelId'
--
-- * 'mdDataSetId'
--
-- * 'mdProjectId'
modelsDelete
    :: Text -- ^ 'mdModelId'
    -> Text -- ^ 'mdDataSetId'
    -> Text -- ^ 'mdProjectId'
    -> ModelsDelete
modelsDelete pMdModelId_ pMdDataSetId_ pMdProjectId_ =
  ModelsDelete'
    { _mdModelId = pMdModelId_
    , _mdDataSetId = pMdDataSetId_
    , _mdProjectId = pMdProjectId_
    }


-- | Required. Model ID of the model to delete.
mdModelId :: Lens' ModelsDelete Text
mdModelId
  = lens _mdModelId (\ s a -> s{_mdModelId = a})

-- | Required. Dataset ID of the model to delete.
mdDataSetId :: Lens' ModelsDelete Text
mdDataSetId
  = lens _mdDataSetId (\ s a -> s{_mdDataSetId = a})

-- | Required. Project ID of the model to delete.
mdProjectId :: Lens' ModelsDelete Text
mdProjectId
  = lens _mdProjectId (\ s a -> s{_mdProjectId = a})

instance GoogleRequest ModelsDelete where
        type Rs ModelsDelete = ()
        type Scopes ModelsDelete =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient ModelsDelete'{..}
          = go _mdProjectId _mdDataSetId _mdModelId
              (Just AltJSON)
              bigQueryService
          where go
                  = buildClient (Proxy :: Proxy ModelsDeleteResource)
                      mempty
