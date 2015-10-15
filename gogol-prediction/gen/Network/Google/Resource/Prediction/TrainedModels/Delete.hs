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
-- Module      : Network.Google.Resource.Prediction.TrainedModels.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete a trained model.
--
-- /See:/ <https://developers.google.com/prediction/docs/developer-guide Prediction API Reference> for @PredictionTrainedModelsDelete@.
module Network.Google.Resource.Prediction.TrainedModels.Delete
    (
    -- * REST Resource
      TrainedModelsDeleteResource

    -- * Creating a Request
    , trainedModelsDelete'
    , TrainedModelsDelete'

    -- * Request Lenses
    , tmdProject
    , tmdId
    ) where

import           Network.Google.Prediction.Types
import           Network.Google.Prelude

-- | A resource alias for @PredictionTrainedModelsDelete@ method which the
-- 'TrainedModelsDelete'' request conforms to.
type TrainedModelsDeleteResource =
     Capture "project" Text :>
       "trainedmodels" :>
         Capture "id" Text :>
           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete a trained model.
--
-- /See:/ 'trainedModelsDelete'' smart constructor.
data TrainedModelsDelete' = TrainedModelsDelete'
    { _tmdProject :: !Text
    , _tmdId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TrainedModelsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tmdProject'
--
-- * 'tmdId'
trainedModelsDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'id'
    -> TrainedModelsDelete'
trainedModelsDelete' pTmdProject_ pTmdId_ =
    TrainedModelsDelete'
    { _tmdProject = pTmdProject_
    , _tmdId = pTmdId_
    }

-- | The project associated with the model.
tmdProject :: Lens' TrainedModelsDelete' Text
tmdProject
  = lens _tmdProject (\ s a -> s{_tmdProject = a})

-- | The unique name for the predictive model.
tmdId :: Lens' TrainedModelsDelete' Text
tmdId = lens _tmdId (\ s a -> s{_tmdId = a})

instance GoogleRequest TrainedModelsDelete' where
        type Rs TrainedModelsDelete' = ()
        requestClient TrainedModelsDelete'{..}
          = go _tmdProject _tmdId (Just AltJSON) prediction
          where go
                  = buildClient
                      (Proxy :: Proxy TrainedModelsDeleteResource)
                      mempty
