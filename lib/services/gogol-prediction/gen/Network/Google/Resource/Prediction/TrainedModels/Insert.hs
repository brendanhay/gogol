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
-- Module      : Network.Google.Resource.Prediction.TrainedModels.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Train a Prediction API model.
--
-- /See:/ <https://developers.google.com/prediction/docs/developer-guide Prediction API Reference> for @prediction.trainedmodels.insert@.
module Network.Google.Resource.Prediction.TrainedModels.Insert
    (
    -- * REST Resource
      TrainedModelsInsertResource

    -- * Creating a Request
    , trainedModelsInsert
    , TrainedModelsInsert

    -- * Request Lenses
    , tmiProject
    , tmiPayload
    ) where

import           Network.Google.Prediction.Types
import           Network.Google.Prelude

-- | A resource alias for @prediction.trainedmodels.insert@ method which the
-- 'TrainedModelsInsert' request conforms to.
type TrainedModelsInsertResource =
     "prediction" :>
       "v1.6" :>
         "projects" :>
           Capture "project" Text :>
             "trainedmodels" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Insert :> Post '[JSON] Insert2

-- | Train a Prediction API model.
--
-- /See:/ 'trainedModelsInsert' smart constructor.
data TrainedModelsInsert =
  TrainedModelsInsert'
    { _tmiProject :: !Text
    , _tmiPayload :: !Insert
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TrainedModelsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tmiProject'
--
-- * 'tmiPayload'
trainedModelsInsert
    :: Text -- ^ 'tmiProject'
    -> Insert -- ^ 'tmiPayload'
    -> TrainedModelsInsert
trainedModelsInsert pTmiProject_ pTmiPayload_ =
  TrainedModelsInsert' {_tmiProject = pTmiProject_, _tmiPayload = pTmiPayload_}


-- | The project associated with the model.
tmiProject :: Lens' TrainedModelsInsert Text
tmiProject
  = lens _tmiProject (\ s a -> s{_tmiProject = a})

-- | Multipart request metadata.
tmiPayload :: Lens' TrainedModelsInsert Insert
tmiPayload
  = lens _tmiPayload (\ s a -> s{_tmiPayload = a})

instance GoogleRequest TrainedModelsInsert where
        type Rs TrainedModelsInsert = Insert2
        type Scopes TrainedModelsInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/devstorage.full_control",
               "https://www.googleapis.com/auth/devstorage.read_only",
               "https://www.googleapis.com/auth/devstorage.read_write",
               "https://www.googleapis.com/auth/prediction"]
        requestClient TrainedModelsInsert'{..}
          = go _tmiProject (Just AltJSON) _tmiPayload
              predictionService
          where go
                  = buildClient
                      (Proxy :: Proxy TrainedModelsInsertResource)
                      mempty
