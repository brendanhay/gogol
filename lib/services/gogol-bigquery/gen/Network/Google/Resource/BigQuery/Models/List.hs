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
-- Module      : Network.Google.Resource.BigQuery.Models.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all models in the specified dataset. Requires the READER dataset
-- role. After retrieving the list of models, you can get information about
-- a particular model by calling the models.get method.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.models.list@.
module Network.Google.Resource.BigQuery.Models.List
    (
    -- * REST Resource
      ModelsListResource

    -- * Creating a Request
    , modelsList
    , ModelsList

    -- * Request Lenses
    , mlDataSetId
    , mlPageToken
    , mlProjectId
    , mlMaxResults
    ) where

import Network.Google.BigQuery.Types
import Network.Google.Prelude

-- | A resource alias for @bigquery.models.list@ method which the
-- 'ModelsList' request conforms to.
type ModelsListResource =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "datasets" :>
               Capture "datasetId" Text :>
                 "models" :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (Textual Word32) :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] ListModelsResponse

-- | Lists all models in the specified dataset. Requires the READER dataset
-- role. After retrieving the list of models, you can get information about
-- a particular model by calling the models.get method.
--
-- /See:/ 'modelsList' smart constructor.
data ModelsList =
  ModelsList'
    { _mlDataSetId :: !Text
    , _mlPageToken :: !(Maybe Text)
    , _mlProjectId :: !Text
    , _mlMaxResults :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ModelsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlDataSetId'
--
-- * 'mlPageToken'
--
-- * 'mlProjectId'
--
-- * 'mlMaxResults'
modelsList
    :: Text -- ^ 'mlDataSetId'
    -> Text -- ^ 'mlProjectId'
    -> ModelsList
modelsList pMlDataSetId_ pMlProjectId_ =
  ModelsList'
    { _mlDataSetId = pMlDataSetId_
    , _mlPageToken = Nothing
    , _mlProjectId = pMlProjectId_
    , _mlMaxResults = Nothing
    }


-- | Required. Dataset ID of the models to list.
mlDataSetId :: Lens' ModelsList Text
mlDataSetId
  = lens _mlDataSetId (\ s a -> s{_mlDataSetId = a})

-- | Page token, returned by a previous call to request the next page of
-- results
mlPageToken :: Lens' ModelsList (Maybe Text)
mlPageToken
  = lens _mlPageToken (\ s a -> s{_mlPageToken = a})

-- | Required. Project ID of the models to list.
mlProjectId :: Lens' ModelsList Text
mlProjectId
  = lens _mlProjectId (\ s a -> s{_mlProjectId = a})

-- | The maximum number of results to return in a single response page.
-- Leverage the page tokens to iterate through the entire collection.
mlMaxResults :: Lens' ModelsList (Maybe Word32)
mlMaxResults
  = lens _mlMaxResults (\ s a -> s{_mlMaxResults = a})
      . mapping _Coerce

instance GoogleRequest ModelsList where
        type Rs ModelsList = ListModelsResponse
        type Scopes ModelsList =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient ModelsList'{..}
          = go _mlProjectId _mlDataSetId _mlPageToken
              _mlMaxResults
              (Just AltJSON)
              bigQueryService
          where go
                  = buildClient (Proxy :: Proxy ModelsListResource)
                      mempty
