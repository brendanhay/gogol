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
-- Module      : Network.Google.Resource.Prediction.HostedModels.Predict
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Submit input and request an output against a hosted model.
--
-- /See:/ <https://developers.google.com/prediction/docs/developer-guide Prediction API Reference> for @prediction.hostedmodels.predict@.
module Network.Google.Resource.Prediction.HostedModels.Predict
    (
    -- * REST Resource
      HostedModelsPredictResource

    -- * Creating a Request
    , hostedModelsPredict
    , HostedModelsPredict

    -- * Request Lenses
    , hmpProject
    , hmpPayload
    , hmpHostedModelName
    ) where

import           Network.Google.Prediction.Types
import           Network.Google.Prelude

-- | A resource alias for @prediction.hostedmodels.predict@ method which the
-- 'HostedModelsPredict' request conforms to.
type HostedModelsPredictResource =
     "prediction" :>
       "v1.6" :>
         "projects" :>
           Capture "project" Text :>
             "hostedmodels" :>
               Capture "hostedModelName" Text :>
                 "predict" :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Input :> Post '[JSON] Output

-- | Submit input and request an output against a hosted model.
--
-- /See:/ 'hostedModelsPredict' smart constructor.
data HostedModelsPredict = HostedModelsPredict
    { _hmpProject         :: !Text
    , _hmpPayload         :: !Input
    , _hmpHostedModelName :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'HostedModelsPredict' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hmpProject'
--
-- * 'hmpPayload'
--
-- * 'hmpHostedModelName'
hostedModelsPredict
    :: Text -- ^ 'hmpProject'
    -> Input -- ^ 'hmpPayload'
    -> Text -- ^ 'hmpHostedModelName'
    -> HostedModelsPredict
hostedModelsPredict pHmpProject_ pHmpPayload_ pHmpHostedModelName_ =
    HostedModelsPredict
    { _hmpProject = pHmpProject_
    , _hmpPayload = pHmpPayload_
    , _hmpHostedModelName = pHmpHostedModelName_
    }

-- | The project associated with the model.
hmpProject :: Lens' HostedModelsPredict Text
hmpProject
  = lens _hmpProject (\ s a -> s{_hmpProject = a})

-- | Multipart request metadata.
hmpPayload :: Lens' HostedModelsPredict Input
hmpPayload
  = lens _hmpPayload (\ s a -> s{_hmpPayload = a})

-- | The name of a hosted model.
hmpHostedModelName :: Lens' HostedModelsPredict Text
hmpHostedModelName
  = lens _hmpHostedModelName
      (\ s a -> s{_hmpHostedModelName = a})

instance GoogleRequest HostedModelsPredict where
        type Rs HostedModelsPredict = Output
        type Scopes HostedModelsPredict =
             '["https://www.googleapis.com/auth/prediction"]
        requestClient HostedModelsPredict{..}
          = go _hmpProject _hmpHostedModelName (Just AltJSON)
              _hmpPayload
              predictionService
          where go
                  = buildClient
                      (Proxy :: Proxy HostedModelsPredictResource)
                      mempty
