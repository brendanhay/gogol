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
-- Module      : Network.Google.Resource.Prediction.TrainedModels.Analyze
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get analysis of the model and the data the model was trained on.
--
-- /See:/ <https://developers.google.com/prediction/docs/developer-guide Prediction API Reference> for @PredictionTrainedModelsAnalyze@.
module Network.Google.Resource.Prediction.TrainedModels.Analyze
    (
    -- * REST Resource
      TrainedModelsAnalyzeResource

    -- * Creating a Request
    , trainedModelsAnalyze'
    , TrainedModelsAnalyze'

    -- * Request Lenses
    , tmaProject
    , tmaId
    ) where

import           Network.Google.Prediction.Types
import           Network.Google.Prelude

-- | A resource alias for @PredictionTrainedModelsAnalyze@ method which the
-- 'TrainedModelsAnalyze'' request conforms to.
type TrainedModelsAnalyzeResource =
     Capture "project" Text :>
       "trainedmodels" :>
         Capture "id" Text :>
           "analyze" :>
             QueryParam "alt" AltJSON :> Get '[JSON] Analyze

-- | Get analysis of the model and the data the model was trained on.
--
-- /See:/ 'trainedModelsAnalyze'' smart constructor.
data TrainedModelsAnalyze' = TrainedModelsAnalyze'
    { _tmaProject :: !Text
    , _tmaId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TrainedModelsAnalyze'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tmaProject'
--
-- * 'tmaId'
trainedModelsAnalyze'
    :: Text -- ^ 'project'
    -> Text -- ^ 'id'
    -> TrainedModelsAnalyze'
trainedModelsAnalyze' pTmaProject_ pTmaId_ =
    TrainedModelsAnalyze'
    { _tmaProject = pTmaProject_
    , _tmaId = pTmaId_
    }

-- | The project associated with the model.
tmaProject :: Lens' TrainedModelsAnalyze' Text
tmaProject
  = lens _tmaProject (\ s a -> s{_tmaProject = a})

-- | The unique name for the predictive model.
tmaId :: Lens' TrainedModelsAnalyze' Text
tmaId = lens _tmaId (\ s a -> s{_tmaId = a})

instance GoogleRequest TrainedModelsAnalyze' where
        type Rs TrainedModelsAnalyze' = Analyze
        requestClient TrainedModelsAnalyze'{..}
          = go _tmaProject _tmaId (Just AltJSON) prediction
          where go
                  = buildClient
                      (Proxy :: Proxy TrainedModelsAnalyzeResource)
                      mempty
