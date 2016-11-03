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
-- Module      : Network.Google.Resource.Ml.Projects.Predict
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Performs prediction on the data in the request. Responses are very
-- similar to requests. There are two top-level fields, each of which are
-- JSON lists:
--
-- [predictions]
--     The list of predictions, one per instance in the request.
-- [error]
--     An error message returned instead of a prediction list if any
--     instance produced an error.
--
-- If the call is successful, the response body will contain one prediction
-- entry per instance in the request body. If prediction fails for any
-- instance, the response body will contain no predictions and will contian
-- a single error entry instead. Even though there is one prediction per
-- instance, the format of a prediction is not directly related to the
-- format of an instance. Predictions take whatever format is specified in
-- the outputs collection defined in the model. The collection of
-- predictions is returned in a JSON list. Each member of the list can be a
-- simple value, a list, or a JSON object of any complexity. If your model
-- has more than one output tensor, each prediction will be a JSON object
-- containing a name\/value pair for each output. The names identify the
-- output aliases in the graph. The following examples show some possible
-- responses: A simple set of predictions for three input instances, where
-- each prediction is an integer value:
--
-- > {"predictions": [5, 4, 3]}
--
-- A more complex set of predictions, each containing two named values that
-- correspond to output tensors, named **label** and **scores**
-- respectively. The value of **label** is the predicted category (\"car\"
-- or \"beach\") and **scores** contains a list of probabilities for that
-- instance across the possible categories.
--
-- > {"predictions": [{"label": "beach", "scores": [0.1, 0.9]},
-- >                  {"label": "car", "scores": [0.75, 0.25]}]}
--
-- A response when there is an error processing an input instance:
--
-- > {"error": "Divide by zero"}
--
-- /See:/ <https://cloud.google.com/ml/ Google Cloud Machine Learning Reference> for @ml.projects.predict@.
module Network.Google.Resource.Ml.Projects.Predict
    (
    -- * REST Resource
      ProjectsPredictResource

    -- * Creating a Request
    , projectsPredict
    , ProjectsPredict

    -- * Request Lenses
    , ppXgafv
    , ppUploadProtocol
    , ppPp
    , ppAccessToken
    , ppUploadType
    , ppPayload
    , ppBearerToken
    , ppName
    , ppCallback
    ) where

import           Network.Google.MachineLearning.Types
import           Network.Google.Prelude

-- | A resource alias for @ml.projects.predict@ method which the
-- 'ProjectsPredict' request conforms to.
type ProjectsPredictResource =
     "v1beta1" :>
       CaptureMode "name" "predict" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] GoogleCloudMlV1beta1__PredictRequest
                           :> Post '[JSON] GoogleAPI__HTTPBody

-- | Performs prediction on the data in the request. Responses are very
-- similar to requests. There are two top-level fields, each of which are
-- JSON lists:
--
-- [predictions]
--     The list of predictions, one per instance in the request.
-- [error]
--     An error message returned instead of a prediction list if any
--     instance produced an error.
--
-- If the call is successful, the response body will contain one prediction
-- entry per instance in the request body. If prediction fails for any
-- instance, the response body will contain no predictions and will contian
-- a single error entry instead. Even though there is one prediction per
-- instance, the format of a prediction is not directly related to the
-- format of an instance. Predictions take whatever format is specified in
-- the outputs collection defined in the model. The collection of
-- predictions is returned in a JSON list. Each member of the list can be a
-- simple value, a list, or a JSON object of any complexity. If your model
-- has more than one output tensor, each prediction will be a JSON object
-- containing a name\/value pair for each output. The names identify the
-- output aliases in the graph. The following examples show some possible
-- responses: A simple set of predictions for three input instances, where
-- each prediction is an integer value:
--
-- > {"predictions": [5, 4, 3]}
--
-- A more complex set of predictions, each containing two named values that
-- correspond to output tensors, named **label** and **scores**
-- respectively. The value of **label** is the predicted category (\"car\"
-- or \"beach\") and **scores** contains a list of probabilities for that
-- instance across the possible categories.
--
-- > {"predictions": [{"label": "beach", "scores": [0.1, 0.9]},
-- >                  {"label": "car", "scores": [0.75, 0.25]}]}
--
-- A response when there is an error processing an input instance:
--
-- > {"error": "Divide by zero"}
--
-- /See:/ 'projectsPredict' smart constructor.
data ProjectsPredict = ProjectsPredict'
    { _ppXgafv          :: !(Maybe Xgafv)
    , _ppUploadProtocol :: !(Maybe Text)
    , _ppPp             :: !Bool
    , _ppAccessToken    :: !(Maybe Text)
    , _ppUploadType     :: !(Maybe Text)
    , _ppPayload        :: !GoogleCloudMlV1beta1__PredictRequest
    , _ppBearerToken    :: !(Maybe Text)
    , _ppName           :: !Text
    , _ppCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsPredict' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppXgafv'
--
-- * 'ppUploadProtocol'
--
-- * 'ppPp'
--
-- * 'ppAccessToken'
--
-- * 'ppUploadType'
--
-- * 'ppPayload'
--
-- * 'ppBearerToken'
--
-- * 'ppName'
--
-- * 'ppCallback'
projectsPredict
    :: GoogleCloudMlV1beta1__PredictRequest -- ^ 'ppPayload'
    -> Text -- ^ 'ppName'
    -> ProjectsPredict
projectsPredict pPpPayload_ pPpName_ =
    ProjectsPredict'
    { _ppXgafv = Nothing
    , _ppUploadProtocol = Nothing
    , _ppPp = True
    , _ppAccessToken = Nothing
    , _ppUploadType = Nothing
    , _ppPayload = pPpPayload_
    , _ppBearerToken = Nothing
    , _ppName = pPpName_
    , _ppCallback = Nothing
    }

-- | V1 error format.
ppXgafv :: Lens' ProjectsPredict (Maybe Xgafv)
ppXgafv = lens _ppXgafv (\ s a -> s{_ppXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ppUploadProtocol :: Lens' ProjectsPredict (Maybe Text)
ppUploadProtocol
  = lens _ppUploadProtocol
      (\ s a -> s{_ppUploadProtocol = a})

-- | Pretty-print response.
ppPp :: Lens' ProjectsPredict Bool
ppPp = lens _ppPp (\ s a -> s{_ppPp = a})

-- | OAuth access token.
ppAccessToken :: Lens' ProjectsPredict (Maybe Text)
ppAccessToken
  = lens _ppAccessToken
      (\ s a -> s{_ppAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ppUploadType :: Lens' ProjectsPredict (Maybe Text)
ppUploadType
  = lens _ppUploadType (\ s a -> s{_ppUploadType = a})

-- | Multipart request metadata.
ppPayload :: Lens' ProjectsPredict GoogleCloudMlV1beta1__PredictRequest
ppPayload
  = lens _ppPayload (\ s a -> s{_ppPayload = a})

-- | OAuth bearer token.
ppBearerToken :: Lens' ProjectsPredict (Maybe Text)
ppBearerToken
  = lens _ppBearerToken
      (\ s a -> s{_ppBearerToken = a})

-- | Required. The resource name of a model or a version. Authorization:
-- requires \`Viewer\` role on the parent project.
ppName :: Lens' ProjectsPredict Text
ppName = lens _ppName (\ s a -> s{_ppName = a})

-- | JSONP
ppCallback :: Lens' ProjectsPredict (Maybe Text)
ppCallback
  = lens _ppCallback (\ s a -> s{_ppCallback = a})

instance GoogleRequest ProjectsPredict where
        type Rs ProjectsPredict = GoogleAPI__HTTPBody
        type Scopes ProjectsPredict =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsPredict'{..}
          = go _ppName _ppXgafv _ppUploadProtocol (Just _ppPp)
              _ppAccessToken
              _ppUploadType
              _ppBearerToken
              _ppCallback
              (Just AltJSON)
              _ppPayload
              machineLearningService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsPredictResource)
                      mempty
