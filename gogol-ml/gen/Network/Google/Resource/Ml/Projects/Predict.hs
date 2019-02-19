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
-- Performs prediction on the data in the request. Cloud ML Engine
-- implements a custom \`predict\` verb on top of an HTTP POST method.
--
-- For details of the request and response format, see the **guide to the
-- [predict request format](\/ml-engine\/docs\/v1\/predict-request)**.
--
-- /See:/ <https://cloud.google.com/ml/ Cloud Machine Learning Engine Reference> for @ml.projects.predict@.
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
    , ppAccessToken
    , ppUploadType
    , ppPayload
    , ppName
    , ppCallback
    ) where

import           Network.Google.MachineLearning.Types
import           Network.Google.Prelude

-- | A resource alias for @ml.projects.predict@ method which the
-- 'ProjectsPredict' request conforms to.
type ProjectsPredictResource =
     "v1" :>
       CaptureMode "name" "predict" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] GoogleCloudMlV1__PredictRequest :>
                       Post '[JSON] GoogleAPI__HTTPBody

-- | Performs prediction on the data in the request. Cloud ML Engine
-- implements a custom \`predict\` verb on top of an HTTP POST method.
--
-- For details of the request and response format, see the **guide to the
-- [predict request format](\/ml-engine\/docs\/v1\/predict-request)**.
--
-- /See:/ 'projectsPredict' smart constructor.
data ProjectsPredict =
  ProjectsPredict'
    { _ppXgafv          :: !(Maybe Xgafv)
    , _ppUploadProtocol :: !(Maybe Text)
    , _ppAccessToken    :: !(Maybe Text)
    , _ppUploadType     :: !(Maybe Text)
    , _ppPayload        :: !GoogleCloudMlV1__PredictRequest
    , _ppName           :: !Text
    , _ppCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsPredict' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppXgafv'
--
-- * 'ppUploadProtocol'
--
-- * 'ppAccessToken'
--
-- * 'ppUploadType'
--
-- * 'ppPayload'
--
-- * 'ppName'
--
-- * 'ppCallback'
projectsPredict
    :: GoogleCloudMlV1__PredictRequest -- ^ 'ppPayload'
    -> Text -- ^ 'ppName'
    -> ProjectsPredict
projectsPredict pPpPayload_ pPpName_ =
  ProjectsPredict'
    { _ppXgafv = Nothing
    , _ppUploadProtocol = Nothing
    , _ppAccessToken = Nothing
    , _ppUploadType = Nothing
    , _ppPayload = pPpPayload_
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
ppPayload :: Lens' ProjectsPredict GoogleCloudMlV1__PredictRequest
ppPayload
  = lens _ppPayload (\ s a -> s{_ppPayload = a})

-- | Required. The resource name of a model or a version. Authorization:
-- requires the \`predict\` permission on the specified resource.
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
          = go _ppName _ppXgafv _ppUploadProtocol
              _ppAccessToken
              _ppUploadType
              _ppCallback
              (Just AltJSON)
              _ppPayload
              machineLearningService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsPredictResource)
                      mempty
