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
-- Module      : Network.Google.Resource.Prediction.TrainedModels.Predict
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Submit model id and request a prediction.
--
-- /See:/ <https://developers.google.com/prediction/docs/developer-guide Prediction API Reference> for @PredictionTrainedModelsPredict@.
module Network.Google.Resource.Prediction.TrainedModels.Predict
    (
    -- * REST Resource
      TrainedModelsPredictResource

    -- * Creating a Request
    , trainedModelsPredict'
    , TrainedModelsPredict'

    -- * Request Lenses
    , tmpProject
    , tmpPayload
    , tmpId
    ) where

import           Network.Google.Prediction.Types
import           Network.Google.Prelude

-- | A resource alias for @PredictionTrainedModelsPredict@ method which the
-- 'TrainedModelsPredict'' request conforms to.
type TrainedModelsPredictResource =
     Capture "project" Text :>
       "trainedmodels" :>
         Capture "id" Text :>
           "predict" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Input :> Post '[JSON] Output

-- | Submit model id and request a prediction.
--
-- /See:/ 'trainedModelsPredict'' smart constructor.
data TrainedModelsPredict' = TrainedModelsPredict'
    { _tmpProject :: !Text
    , _tmpPayload :: !Input
    , _tmpId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TrainedModelsPredict'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tmpProject'
--
-- * 'tmpPayload'
--
-- * 'tmpId'
trainedModelsPredict'
    :: Text -- ^ 'project'
    -> Input -- ^ 'payload'
    -> Text -- ^ 'id'
    -> TrainedModelsPredict'
trainedModelsPredict' pTmpProject_ pTmpPayload_ pTmpId_ =
    TrainedModelsPredict'
    { _tmpProject = pTmpProject_
    , _tmpPayload = pTmpPayload_
    , _tmpId = pTmpId_
    }

-- | The project associated with the model.
tmpProject :: Lens' TrainedModelsPredict' Text
tmpProject
  = lens _tmpProject (\ s a -> s{_tmpProject = a})

-- | Multipart request metadata.
tmpPayload :: Lens' TrainedModelsPredict' Input
tmpPayload
  = lens _tmpPayload (\ s a -> s{_tmpPayload = a})

-- | The unique name for the predictive model.
tmpId :: Lens' TrainedModelsPredict' Text
tmpId = lens _tmpId (\ s a -> s{_tmpId = a})

instance GoogleRequest TrainedModelsPredict' where
        type Rs TrainedModelsPredict' = Output
        requestClient TrainedModelsPredict'{..}
          = go _tmpProject _tmpId (Just AltJSON) _tmpPayload
              prediction
          where go
                  = buildClient
                      (Proxy :: Proxy TrainedModelsPredictResource)
                      mempty
