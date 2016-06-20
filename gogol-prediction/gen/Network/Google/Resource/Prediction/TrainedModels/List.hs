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
-- Module      : Network.Google.Resource.Prediction.TrainedModels.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List available models.
--
-- /See:/ <https://developers.google.com/prediction/docs/developer-guide Prediction API Reference> for @prediction.trainedmodels.list@.
module Network.Google.Resource.Prediction.TrainedModels.List
    (
    -- * REST Resource
      TrainedModelsListResource

    -- * Creating a Request
    , trainedModelsList
    , TrainedModelsList

    -- * Request Lenses
    , tmlProject
    , tmlPageToken
    , tmlMaxResults
    ) where

import           Network.Google.Prediction.Types
import           Network.Google.Prelude

-- | A resource alias for @prediction.trainedmodels.list@ method which the
-- 'TrainedModelsList' request conforms to.
type TrainedModelsListResource =
     "prediction" :>
       "v1.6" :>
         "projects" :>
           Capture "project" Text :>
             "trainedmodels" :>
               "list" :>
                 QueryParam "pageToken" Text :>
                   QueryParam "maxResults" (Textual Word32) :>
                     QueryParam "alt" AltJSON :> Get '[JSON] List

-- | List available models.
--
-- /See:/ 'trainedModelsList' smart constructor.
data TrainedModelsList = TrainedModelsList'
    { _tmlProject    :: !Text
    , _tmlPageToken  :: !(Maybe Text)
    , _tmlMaxResults :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TrainedModelsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tmlProject'
--
-- * 'tmlPageToken'
--
-- * 'tmlMaxResults'
trainedModelsList
    :: Text -- ^ 'tmlProject'
    -> TrainedModelsList
trainedModelsList pTmlProject_ =
    TrainedModelsList'
    { _tmlProject = pTmlProject_
    , _tmlPageToken = Nothing
    , _tmlMaxResults = Nothing
    }

-- | The project associated with the model.
tmlProject :: Lens' TrainedModelsList Text
tmlProject
  = lens _tmlProject (\ s a -> s{_tmlProject = a})

-- | Pagination token.
tmlPageToken :: Lens' TrainedModelsList (Maybe Text)
tmlPageToken
  = lens _tmlPageToken (\ s a -> s{_tmlPageToken = a})

-- | Maximum number of results to return.
tmlMaxResults :: Lens' TrainedModelsList (Maybe Word32)
tmlMaxResults
  = lens _tmlMaxResults
      (\ s a -> s{_tmlMaxResults = a})
      . mapping _Coerce

instance GoogleRequest TrainedModelsList where
        type Rs TrainedModelsList = List
        type Scopes TrainedModelsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/prediction"]
        requestClient TrainedModelsList'{..}
          = go _tmlProject _tmlPageToken _tmlMaxResults
              (Just AltJSON)
              predictionService
          where go
                  = buildClient
                      (Proxy :: Proxy TrainedModelsListResource)
                      mempty
