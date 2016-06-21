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
-- Module      : Network.Google.Resource.Prediction.TrainedModels.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Add new data to a trained model.
--
-- /See:/ <https://developers.google.com/prediction/docs/developer-guide Prediction API Reference> for @prediction.trainedmodels.update@.
module Network.Google.Resource.Prediction.TrainedModels.Update
    (
    -- * REST Resource
      TrainedModelsUpdateResource

    -- * Creating a Request
    , trainedModelsUpdate
    , TrainedModelsUpdate

    -- * Request Lenses
    , tmuProject
    , tmuPayload
    , tmuId
    ) where

import           Network.Google.Prediction.Types
import           Network.Google.Prelude

-- | A resource alias for @prediction.trainedmodels.update@ method which the
-- 'TrainedModelsUpdate' request conforms to.
type TrainedModelsUpdateResource =
     "prediction" :>
       "v1.6" :>
         "projects" :>
           Capture "project" Text :>
             "trainedmodels" :>
               Capture "id" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Update :> Put '[JSON] Insert2

-- | Add new data to a trained model.
--
-- /See:/ 'trainedModelsUpdate' smart constructor.
data TrainedModelsUpdate = TrainedModelsUpdate'
    { _tmuProject :: !Text
    , _tmuPayload :: !Update
    , _tmuId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TrainedModelsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tmuProject'
--
-- * 'tmuPayload'
--
-- * 'tmuId'
trainedModelsUpdate
    :: Text -- ^ 'tmuProject'
    -> Update -- ^ 'tmuPayload'
    -> Text -- ^ 'tmuId'
    -> TrainedModelsUpdate
trainedModelsUpdate pTmuProject_ pTmuPayload_ pTmuId_ =
    TrainedModelsUpdate'
    { _tmuProject = pTmuProject_
    , _tmuPayload = pTmuPayload_
    , _tmuId = pTmuId_
    }

-- | The project associated with the model.
tmuProject :: Lens' TrainedModelsUpdate Text
tmuProject
  = lens _tmuProject (\ s a -> s{_tmuProject = a})

-- | Multipart request metadata.
tmuPayload :: Lens' TrainedModelsUpdate Update
tmuPayload
  = lens _tmuPayload (\ s a -> s{_tmuPayload = a})

-- | The unique name for the predictive model.
tmuId :: Lens' TrainedModelsUpdate Text
tmuId = lens _tmuId (\ s a -> s{_tmuId = a})

instance GoogleRequest TrainedModelsUpdate where
        type Rs TrainedModelsUpdate = Insert2
        type Scopes TrainedModelsUpdate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/prediction"]
        requestClient TrainedModelsUpdate'{..}
          = go _tmuProject _tmuId (Just AltJSON) _tmuPayload
              predictionService
          where go
                  = buildClient
                      (Proxy :: Proxy TrainedModelsUpdateResource)
                      mempty
