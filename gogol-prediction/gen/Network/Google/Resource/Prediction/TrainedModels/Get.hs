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
-- Module      : Network.Google.Resource.Prediction.TrainedModels.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Check training status of your model.
--
-- /See:/ <https://developers.google.com/prediction/docs/developer-guide Prediction API Reference> for @PredictionTrainedModelsGet@.
module Network.Google.Resource.Prediction.TrainedModels.Get
    (
    -- * REST Resource
      TrainedModelsGetResource

    -- * Creating a Request
    , trainedModelsGet'
    , TrainedModelsGet'

    -- * Request Lenses
    , tmgProject
    , tmgId
    ) where

import           Network.Google.Prediction.Types
import           Network.Google.Prelude

-- | A resource alias for @PredictionTrainedModelsGet@ method which the
-- 'TrainedModelsGet'' request conforms to.
type TrainedModelsGetResource =
     Capture "project" Text :>
       "trainedmodels" :>
         Capture "id" Text :>
           QueryParam "alt" AltJSON :> Get '[JSON] Insert2

-- | Check training status of your model.
--
-- /See:/ 'trainedModelsGet'' smart constructor.
data TrainedModelsGet' = TrainedModelsGet'
    { _tmgProject :: !Text
    , _tmgId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TrainedModelsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tmgProject'
--
-- * 'tmgId'
trainedModelsGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'id'
    -> TrainedModelsGet'
trainedModelsGet' pTmgProject_ pTmgId_ =
    TrainedModelsGet'
    { _tmgProject = pTmgProject_
    , _tmgId = pTmgId_
    }

-- | The project associated with the model.
tmgProject :: Lens' TrainedModelsGet' Text
tmgProject
  = lens _tmgProject (\ s a -> s{_tmgProject = a})

-- | The unique name for the predictive model.
tmgId :: Lens' TrainedModelsGet' Text
tmgId = lens _tmgId (\ s a -> s{_tmgId = a})

instance GoogleRequest TrainedModelsGet' where
        type Rs TrainedModelsGet' = Insert2
        requestClient TrainedModelsGet'{..}
          = go _tmgProject _tmgId (Just AltJSON) prediction
          where go
                  = buildClient
                      (Proxy :: Proxy TrainedModelsGetResource)
                      mempty
