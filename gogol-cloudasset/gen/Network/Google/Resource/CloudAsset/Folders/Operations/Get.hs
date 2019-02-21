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
-- Module      : Network.Google.Resource.CloudAsset.Folders.Operations.Get
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
-- /See:/ <https://console.cloud.google.com/apis/api/cloudasset.googleapis.com/overview Cloud Asset API Reference> for @cloudasset.folders.operations.get@.
module Network.Google.Resource.CloudAsset.Folders.Operations.Get
    (
    -- * REST Resource
      FoldersOperationsGetResource

    -- * Creating a Request
    , foldersOperationsGet
    , FoldersOperationsGet

    -- * Request Lenses
    , fogXgafv
    , fogUploadProtocol
    , fogAccessToken
    , fogUploadType
    , fogName
    , fogCallback
    ) where

import           Network.Google.CloudAsset.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudasset.folders.operations.get@ method which the
-- 'FoldersOperationsGet' request conforms to.
type FoldersOperationsGetResource =
     "v1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Operation

-- | Gets the latest state of a long-running operation. Clients can use this
-- method to poll the operation result at intervals as recommended by the
-- API service.
--
-- /See:/ 'foldersOperationsGet' smart constructor.
data FoldersOperationsGet =
  FoldersOperationsGet'
    { _fogXgafv          :: !(Maybe Xgafv)
    , _fogUploadProtocol :: !(Maybe Text)
    , _fogAccessToken    :: !(Maybe Text)
    , _fogUploadType     :: !(Maybe Text)
    , _fogName           :: !Text
    , _fogCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FoldersOperationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fogXgafv'
--
-- * 'fogUploadProtocol'
--
-- * 'fogAccessToken'
--
-- * 'fogUploadType'
--
-- * 'fogName'
--
-- * 'fogCallback'
foldersOperationsGet
    :: Text -- ^ 'fogName'
    -> FoldersOperationsGet
foldersOperationsGet pFogName_ =
  FoldersOperationsGet'
    { _fogXgafv = Nothing
    , _fogUploadProtocol = Nothing
    , _fogAccessToken = Nothing
    , _fogUploadType = Nothing
    , _fogName = pFogName_
    , _fogCallback = Nothing
    }


-- | V1 error format.
fogXgafv :: Lens' FoldersOperationsGet (Maybe Xgafv)
fogXgafv = lens _fogXgafv (\ s a -> s{_fogXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fogUploadProtocol :: Lens' FoldersOperationsGet (Maybe Text)
fogUploadProtocol
  = lens _fogUploadProtocol
      (\ s a -> s{_fogUploadProtocol = a})

-- | OAuth access token.
fogAccessToken :: Lens' FoldersOperationsGet (Maybe Text)
fogAccessToken
  = lens _fogAccessToken
      (\ s a -> s{_fogAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fogUploadType :: Lens' FoldersOperationsGet (Maybe Text)
fogUploadType
  = lens _fogUploadType
      (\ s a -> s{_fogUploadType = a})

-- | The name of the operation resource.
fogName :: Lens' FoldersOperationsGet Text
fogName = lens _fogName (\ s a -> s{_fogName = a})

-- | JSONP
fogCallback :: Lens' FoldersOperationsGet (Maybe Text)
fogCallback
  = lens _fogCallback (\ s a -> s{_fogCallback = a})

instance GoogleRequest FoldersOperationsGet where
        type Rs FoldersOperationsGet = Operation
        type Scopes FoldersOperationsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient FoldersOperationsGet'{..}
          = go _fogName _fogXgafv _fogUploadProtocol
              _fogAccessToken
              _fogUploadType
              _fogCallback
              (Just AltJSON)
              cloudAssetService
          where go
                  = buildClient
                      (Proxy :: Proxy FoldersOperationsGetResource)
                      mempty
