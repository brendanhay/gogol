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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Operations.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the latest state of a long-running operation. Clients can use this
-- method to poll the operation result at intervals as recommended by the
-- API service.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.operations.get@.
module Network.Google.Resource.DialogFlow.Projects.Operations.Get
    (
    -- * REST Resource
      ProjectsOperationsGetResource

    -- * Creating a Request
    , projectsOperationsGet
    , ProjectsOperationsGet

    -- * Request Lenses
    , pogXgafv
    , pogUploadProtocol
    , pogAccessToken
    , pogUploadType
    , pogName
    , pogCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.operations.get@ method which the
-- 'ProjectsOperationsGet' request conforms to.
type ProjectsOperationsGetResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] GoogleLongrunningOperation

-- | Gets the latest state of a long-running operation. Clients can use this
-- method to poll the operation result at intervals as recommended by the
-- API service.
--
-- /See:/ 'projectsOperationsGet' smart constructor.
data ProjectsOperationsGet =
  ProjectsOperationsGet'
    { _pogXgafv :: !(Maybe Xgafv)
    , _pogUploadProtocol :: !(Maybe Text)
    , _pogAccessToken :: !(Maybe Text)
    , _pogUploadType :: !(Maybe Text)
    , _pogName :: !Text
    , _pogCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsOperationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pogXgafv'
--
-- * 'pogUploadProtocol'
--
-- * 'pogAccessToken'
--
-- * 'pogUploadType'
--
-- * 'pogName'
--
-- * 'pogCallback'
projectsOperationsGet
    :: Text -- ^ 'pogName'
    -> ProjectsOperationsGet
projectsOperationsGet pPogName_ =
  ProjectsOperationsGet'
    { _pogXgafv = Nothing
    , _pogUploadProtocol = Nothing
    , _pogAccessToken = Nothing
    , _pogUploadType = Nothing
    , _pogName = pPogName_
    , _pogCallback = Nothing
    }


-- | V1 error format.
pogXgafv :: Lens' ProjectsOperationsGet (Maybe Xgafv)
pogXgafv = lens _pogXgafv (\ s a -> s{_pogXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pogUploadProtocol :: Lens' ProjectsOperationsGet (Maybe Text)
pogUploadProtocol
  = lens _pogUploadProtocol
      (\ s a -> s{_pogUploadProtocol = a})

-- | OAuth access token.
pogAccessToken :: Lens' ProjectsOperationsGet (Maybe Text)
pogAccessToken
  = lens _pogAccessToken
      (\ s a -> s{_pogAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pogUploadType :: Lens' ProjectsOperationsGet (Maybe Text)
pogUploadType
  = lens _pogUploadType
      (\ s a -> s{_pogUploadType = a})

-- | The name of the operation resource.
pogName :: Lens' ProjectsOperationsGet Text
pogName = lens _pogName (\ s a -> s{_pogName = a})

-- | JSONP
pogCallback :: Lens' ProjectsOperationsGet (Maybe Text)
pogCallback
  = lens _pogCallback (\ s a -> s{_pogCallback = a})

instance GoogleRequest ProjectsOperationsGet where
        type Rs ProjectsOperationsGet =
             GoogleLongrunningOperation
        type Scopes ProjectsOperationsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient ProjectsOperationsGet'{..}
          = go _pogName _pogXgafv _pogUploadProtocol
              _pogAccessToken
              _pogUploadType
              _pogCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsOperationsGetResource)
                      mempty
