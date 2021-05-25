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
-- Module      : Network.Google.Resource.BigQuery.Models.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patch specific fields in the specified model.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.models.patch@.
module Network.Google.Resource.BigQuery.Models.Patch
    (
    -- * REST Resource
      ModelsPatchResource

    -- * Creating a Request
    , modelsPatch
    , ModelsPatch

    -- * Request Lenses
    , mpModelId
    , mpPayload
    , mpDataSetId
    , mpProjectId
    ) where

import Network.Google.BigQuery.Types
import Network.Google.Prelude

-- | A resource alias for @bigquery.models.patch@ method which the
-- 'ModelsPatch' request conforms to.
type ModelsPatchResource =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "datasets" :>
               Capture "datasetId" Text :>
                 "models" :>
                   Capture "modelId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Model :> Patch '[JSON] Model

-- | Patch specific fields in the specified model.
--
-- /See:/ 'modelsPatch' smart constructor.
data ModelsPatch =
  ModelsPatch'
    { _mpModelId :: !Text
    , _mpPayload :: !Model
    , _mpDataSetId :: !Text
    , _mpProjectId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ModelsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpModelId'
--
-- * 'mpPayload'
--
-- * 'mpDataSetId'
--
-- * 'mpProjectId'
modelsPatch
    :: Text -- ^ 'mpModelId'
    -> Model -- ^ 'mpPayload'
    -> Text -- ^ 'mpDataSetId'
    -> Text -- ^ 'mpProjectId'
    -> ModelsPatch
modelsPatch pMpModelId_ pMpPayload_ pMpDataSetId_ pMpProjectId_ =
  ModelsPatch'
    { _mpModelId = pMpModelId_
    , _mpPayload = pMpPayload_
    , _mpDataSetId = pMpDataSetId_
    , _mpProjectId = pMpProjectId_
    }


-- | Required. Model ID of the model to patch.
mpModelId :: Lens' ModelsPatch Text
mpModelId
  = lens _mpModelId (\ s a -> s{_mpModelId = a})

-- | Multipart request metadata.
mpPayload :: Lens' ModelsPatch Model
mpPayload
  = lens _mpPayload (\ s a -> s{_mpPayload = a})

-- | Required. Dataset ID of the model to patch.
mpDataSetId :: Lens' ModelsPatch Text
mpDataSetId
  = lens _mpDataSetId (\ s a -> s{_mpDataSetId = a})

-- | Required. Project ID of the model to patch.
mpProjectId :: Lens' ModelsPatch Text
mpProjectId
  = lens _mpProjectId (\ s a -> s{_mpProjectId = a})

instance GoogleRequest ModelsPatch where
        type Rs ModelsPatch = Model
        type Scopes ModelsPatch =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient ModelsPatch'{..}
          = go _mpProjectId _mpDataSetId _mpModelId
              (Just AltJSON)
              _mpPayload
              bigQueryService
          where go
                  = buildClient (Proxy :: Proxy ModelsPatchResource)
                      mempty
