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
-- Module      : Network.Google.Resource.Testing.TestEnvironmentCatalog.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the catalog of supported test environments. May return any of the
-- following canonical error codes: - INVALID_ARGUMENT - if the request is
-- malformed - NOT_FOUND - if the environment type does not exist -
-- INTERNAL - if an internal error occurred
--
-- /See:/ <https://developers.google.com/cloud-test-lab/ Cloud Testing API Reference> for @testing.testEnvironmentCatalog.get@.
module Network.Google.Resource.Testing.TestEnvironmentCatalog.Get
    (
    -- * REST Resource
      TestEnvironmentCatalogGetResource

    -- * Creating a Request
    , testEnvironmentCatalogGet
    , TestEnvironmentCatalogGet

    -- * Request Lenses
    , tecgXgafv
    , tecgUploadProtocol
    , tecgAccessToken
    , tecgUploadType
    , tecgEnvironmentType
    , tecgProjectId
    , tecgCallback
    ) where

import Network.Google.Prelude
import Network.Google.Testing.Types

-- | A resource alias for @testing.testEnvironmentCatalog.get@ method which the
-- 'TestEnvironmentCatalogGet' request conforms to.
type TestEnvironmentCatalogGetResource =
     "v1" :>
       "testEnvironmentCatalog" :>
         Capture "environmentType"
           TestEnvironmentCatalogGetEnvironmentType
           :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "projectId" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] TestEnvironmentCatalog

-- | Gets the catalog of supported test environments. May return any of the
-- following canonical error codes: - INVALID_ARGUMENT - if the request is
-- malformed - NOT_FOUND - if the environment type does not exist -
-- INTERNAL - if an internal error occurred
--
-- /See:/ 'testEnvironmentCatalogGet' smart constructor.
data TestEnvironmentCatalogGet =
  TestEnvironmentCatalogGet'
    { _tecgXgafv :: !(Maybe Xgafv)
    , _tecgUploadProtocol :: !(Maybe Text)
    , _tecgAccessToken :: !(Maybe Text)
    , _tecgUploadType :: !(Maybe Text)
    , _tecgEnvironmentType :: !TestEnvironmentCatalogGetEnvironmentType
    , _tecgProjectId :: !(Maybe Text)
    , _tecgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestEnvironmentCatalogGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tecgXgafv'
--
-- * 'tecgUploadProtocol'
--
-- * 'tecgAccessToken'
--
-- * 'tecgUploadType'
--
-- * 'tecgEnvironmentType'
--
-- * 'tecgProjectId'
--
-- * 'tecgCallback'
testEnvironmentCatalogGet
    :: TestEnvironmentCatalogGetEnvironmentType -- ^ 'tecgEnvironmentType'
    -> TestEnvironmentCatalogGet
testEnvironmentCatalogGet pTecgEnvironmentType_ =
  TestEnvironmentCatalogGet'
    { _tecgXgafv = Nothing
    , _tecgUploadProtocol = Nothing
    , _tecgAccessToken = Nothing
    , _tecgUploadType = Nothing
    , _tecgEnvironmentType = pTecgEnvironmentType_
    , _tecgProjectId = Nothing
    , _tecgCallback = Nothing
    }


-- | V1 error format.
tecgXgafv :: Lens' TestEnvironmentCatalogGet (Maybe Xgafv)
tecgXgafv
  = lens _tecgXgafv (\ s a -> s{_tecgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tecgUploadProtocol :: Lens' TestEnvironmentCatalogGet (Maybe Text)
tecgUploadProtocol
  = lens _tecgUploadProtocol
      (\ s a -> s{_tecgUploadProtocol = a})

-- | OAuth access token.
tecgAccessToken :: Lens' TestEnvironmentCatalogGet (Maybe Text)
tecgAccessToken
  = lens _tecgAccessToken
      (\ s a -> s{_tecgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tecgUploadType :: Lens' TestEnvironmentCatalogGet (Maybe Text)
tecgUploadType
  = lens _tecgUploadType
      (\ s a -> s{_tecgUploadType = a})

-- | Required. The type of environment that should be listed.
tecgEnvironmentType :: Lens' TestEnvironmentCatalogGet TestEnvironmentCatalogGetEnvironmentType
tecgEnvironmentType
  = lens _tecgEnvironmentType
      (\ s a -> s{_tecgEnvironmentType = a})

-- | For authorization, the cloud project requesting the
-- TestEnvironmentCatalog.
tecgProjectId :: Lens' TestEnvironmentCatalogGet (Maybe Text)
tecgProjectId
  = lens _tecgProjectId
      (\ s a -> s{_tecgProjectId = a})

-- | JSONP
tecgCallback :: Lens' TestEnvironmentCatalogGet (Maybe Text)
tecgCallback
  = lens _tecgCallback (\ s a -> s{_tecgCallback = a})

instance GoogleRequest TestEnvironmentCatalogGet
         where
        type Rs TestEnvironmentCatalogGet =
             TestEnvironmentCatalog
        type Scopes TestEnvironmentCatalogGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient TestEnvironmentCatalogGet'{..}
          = go _tecgEnvironmentType _tecgXgafv
              _tecgUploadProtocol
              _tecgAccessToken
              _tecgUploadType
              _tecgProjectId
              _tecgCallback
              (Just AltJSON)
              testingService
          where go
                  = buildClient
                      (Proxy :: Proxy TestEnvironmentCatalogGetResource)
                      mempty
