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
-- Module      : Network.Google.Resource.Ml.Projects.Explain
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Performs explanation on the data in the request. {% dynamic include
-- \"\/ai-platform\/includes\/___explain-request\" %}
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.explain@.
module Network.Google.Resource.Ml.Projects.Explain
    (
    -- * REST Resource
      ProjectsExplainResource

    -- * Creating a Request
    , projectsExplain
    , ProjectsExplain

    -- * Request Lenses
    , peXgafv
    , peUploadProtocol
    , peAccessToken
    , peUploadType
    , pePayload
    , peName
    , peCallback
    ) where

import Network.Google.MachineLearning.Types
import Network.Google.Prelude

-- | A resource alias for @ml.projects.explain@ method which the
-- 'ProjectsExplain' request conforms to.
type ProjectsExplainResource =
     "v1" :>
       CaptureMode "name" "explain" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] GoogleCloudMlV1__ExplainRequest :>
                       Post '[JSON] GoogleAPI__HTTPBody

-- | Performs explanation on the data in the request. {% dynamic include
-- \"\/ai-platform\/includes\/___explain-request\" %}
--
-- /See:/ 'projectsExplain' smart constructor.
data ProjectsExplain =
  ProjectsExplain'
    { _peXgafv :: !(Maybe Xgafv)
    , _peUploadProtocol :: !(Maybe Text)
    , _peAccessToken :: !(Maybe Text)
    , _peUploadType :: !(Maybe Text)
    , _pePayload :: !GoogleCloudMlV1__ExplainRequest
    , _peName :: !Text
    , _peCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsExplain' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'peXgafv'
--
-- * 'peUploadProtocol'
--
-- * 'peAccessToken'
--
-- * 'peUploadType'
--
-- * 'pePayload'
--
-- * 'peName'
--
-- * 'peCallback'
projectsExplain
    :: GoogleCloudMlV1__ExplainRequest -- ^ 'pePayload'
    -> Text -- ^ 'peName'
    -> ProjectsExplain
projectsExplain pPePayload_ pPeName_ =
  ProjectsExplain'
    { _peXgafv = Nothing
    , _peUploadProtocol = Nothing
    , _peAccessToken = Nothing
    , _peUploadType = Nothing
    , _pePayload = pPePayload_
    , _peName = pPeName_
    , _peCallback = Nothing
    }


-- | V1 error format.
peXgafv :: Lens' ProjectsExplain (Maybe Xgafv)
peXgafv = lens _peXgafv (\ s a -> s{_peXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
peUploadProtocol :: Lens' ProjectsExplain (Maybe Text)
peUploadProtocol
  = lens _peUploadProtocol
      (\ s a -> s{_peUploadProtocol = a})

-- | OAuth access token.
peAccessToken :: Lens' ProjectsExplain (Maybe Text)
peAccessToken
  = lens _peAccessToken
      (\ s a -> s{_peAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
peUploadType :: Lens' ProjectsExplain (Maybe Text)
peUploadType
  = lens _peUploadType (\ s a -> s{_peUploadType = a})

-- | Multipart request metadata.
pePayload :: Lens' ProjectsExplain GoogleCloudMlV1__ExplainRequest
pePayload
  = lens _pePayload (\ s a -> s{_pePayload = a})

-- | Required. The resource name of a model or a version. Authorization:
-- requires the \`predict\` permission on the specified resource.
peName :: Lens' ProjectsExplain Text
peName = lens _peName (\ s a -> s{_peName = a})

-- | JSONP
peCallback :: Lens' ProjectsExplain (Maybe Text)
peCallback
  = lens _peCallback (\ s a -> s{_peCallback = a})

instance GoogleRequest ProjectsExplain where
        type Rs ProjectsExplain = GoogleAPI__HTTPBody
        type Scopes ProjectsExplain =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsExplain'{..}
          = go _peName _peXgafv _peUploadProtocol
              _peAccessToken
              _peUploadType
              _peCallback
              (Just AltJSON)
              _pePayload
              machineLearningService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsExplainResource)
                      mempty
