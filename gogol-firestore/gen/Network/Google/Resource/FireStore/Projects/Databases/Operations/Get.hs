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
-- Module      : Network.Google.Resource.FireStore.Projects.Databases.Operations.Get
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
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.operations.get@.
module Network.Google.Resource.FireStore.Projects.Databases.Operations.Get
    (
    -- * REST Resource
      ProjectsDatabasesOperationsGetResource

    -- * Creating a Request
    , projectsDatabasesOperationsGet
    , ProjectsDatabasesOperationsGet

    -- * Request Lenses
    , pdogXgafv
    , pdogUploadProtocol
    , pdogAccessToken
    , pdogUploadType
    , pdogName
    , pdogCallback
    ) where

import Network.Google.FireStore.Types
import Network.Google.Prelude

-- | A resource alias for @firestore.projects.databases.operations.get@ method which the
-- 'ProjectsDatabasesOperationsGet' request conforms to.
type ProjectsDatabasesOperationsGetResource =
     "v1" :>
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
-- /See:/ 'projectsDatabasesOperationsGet' smart constructor.
data ProjectsDatabasesOperationsGet =
  ProjectsDatabasesOperationsGet'
    { _pdogXgafv :: !(Maybe Xgafv)
    , _pdogUploadProtocol :: !(Maybe Text)
    , _pdogAccessToken :: !(Maybe Text)
    , _pdogUploadType :: !(Maybe Text)
    , _pdogName :: !Text
    , _pdogCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsDatabasesOperationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdogXgafv'
--
-- * 'pdogUploadProtocol'
--
-- * 'pdogAccessToken'
--
-- * 'pdogUploadType'
--
-- * 'pdogName'
--
-- * 'pdogCallback'
projectsDatabasesOperationsGet
    :: Text -- ^ 'pdogName'
    -> ProjectsDatabasesOperationsGet
projectsDatabasesOperationsGet pPdogName_ =
  ProjectsDatabasesOperationsGet'
    { _pdogXgafv = Nothing
    , _pdogUploadProtocol = Nothing
    , _pdogAccessToken = Nothing
    , _pdogUploadType = Nothing
    , _pdogName = pPdogName_
    , _pdogCallback = Nothing
    }


-- | V1 error format.
pdogXgafv :: Lens' ProjectsDatabasesOperationsGet (Maybe Xgafv)
pdogXgafv
  = lens _pdogXgafv (\ s a -> s{_pdogXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdogUploadProtocol :: Lens' ProjectsDatabasesOperationsGet (Maybe Text)
pdogUploadProtocol
  = lens _pdogUploadProtocol
      (\ s a -> s{_pdogUploadProtocol = a})

-- | OAuth access token.
pdogAccessToken :: Lens' ProjectsDatabasesOperationsGet (Maybe Text)
pdogAccessToken
  = lens _pdogAccessToken
      (\ s a -> s{_pdogAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdogUploadType :: Lens' ProjectsDatabasesOperationsGet (Maybe Text)
pdogUploadType
  = lens _pdogUploadType
      (\ s a -> s{_pdogUploadType = a})

-- | The name of the operation resource.
pdogName :: Lens' ProjectsDatabasesOperationsGet Text
pdogName = lens _pdogName (\ s a -> s{_pdogName = a})

-- | JSONP
pdogCallback :: Lens' ProjectsDatabasesOperationsGet (Maybe Text)
pdogCallback
  = lens _pdogCallback (\ s a -> s{_pdogCallback = a})

instance GoogleRequest ProjectsDatabasesOperationsGet
         where
        type Rs ProjectsDatabasesOperationsGet =
             GoogleLongrunningOperation
        type Scopes ProjectsDatabasesOperationsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient ProjectsDatabasesOperationsGet'{..}
          = go _pdogName _pdogXgafv _pdogUploadProtocol
              _pdogAccessToken
              _pdogUploadType
              _pdogCallback
              (Just AltJSON)
              fireStoreService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsDatabasesOperationsGetResource)
                      mempty
