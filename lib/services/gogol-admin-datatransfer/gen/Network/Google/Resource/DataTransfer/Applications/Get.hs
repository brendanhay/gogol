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
-- Module      : Network.Google.Resource.DataTransfer.Applications.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about an application for the given application ID.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @datatransfer.applications.get@.
module Network.Google.Resource.DataTransfer.Applications.Get
    (
    -- * REST Resource
      ApplicationsGetResource

    -- * Creating a Request
    , applicationsGet
    , ApplicationsGet

    -- * Request Lenses
    , agXgafv
    , agUploadProtocol
    , agAccessToken
    , agUploadType
    , agApplicationId
    , agCallback
    ) where

import Network.Google.DataTransfer.Types
import Network.Google.Prelude

-- | A resource alias for @datatransfer.applications.get@ method which the
-- 'ApplicationsGet' request conforms to.
type ApplicationsGetResource =
     "admin" :>
       "datatransfer" :>
         "v1" :>
           "applications" :>
             Capture "applicationId" (Textual Int64) :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Application

-- | Retrieves information about an application for the given application ID.
--
-- /See:/ 'applicationsGet' smart constructor.
data ApplicationsGet =
  ApplicationsGet'
    { _agXgafv :: !(Maybe Xgafv)
    , _agUploadProtocol :: !(Maybe Text)
    , _agAccessToken :: !(Maybe Text)
    , _agUploadType :: !(Maybe Text)
    , _agApplicationId :: !(Textual Int64)
    , _agCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ApplicationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agXgafv'
--
-- * 'agUploadProtocol'
--
-- * 'agAccessToken'
--
-- * 'agUploadType'
--
-- * 'agApplicationId'
--
-- * 'agCallback'
applicationsGet
    :: Int64 -- ^ 'agApplicationId'
    -> ApplicationsGet
applicationsGet pAgApplicationId_ =
  ApplicationsGet'
    { _agXgafv = Nothing
    , _agUploadProtocol = Nothing
    , _agAccessToken = Nothing
    , _agUploadType = Nothing
    , _agApplicationId = _Coerce # pAgApplicationId_
    , _agCallback = Nothing
    }


-- | V1 error format.
agXgafv :: Lens' ApplicationsGet (Maybe Xgafv)
agXgafv = lens _agXgafv (\ s a -> s{_agXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
agUploadProtocol :: Lens' ApplicationsGet (Maybe Text)
agUploadProtocol
  = lens _agUploadProtocol
      (\ s a -> s{_agUploadProtocol = a})

-- | OAuth access token.
agAccessToken :: Lens' ApplicationsGet (Maybe Text)
agAccessToken
  = lens _agAccessToken
      (\ s a -> s{_agAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
agUploadType :: Lens' ApplicationsGet (Maybe Text)
agUploadType
  = lens _agUploadType (\ s a -> s{_agUploadType = a})

-- | ID of the application resource to be retrieved.
agApplicationId :: Lens' ApplicationsGet Int64
agApplicationId
  = lens _agApplicationId
      (\ s a -> s{_agApplicationId = a})
      . _Coerce

-- | JSONP
agCallback :: Lens' ApplicationsGet (Maybe Text)
agCallback
  = lens _agCallback (\ s a -> s{_agCallback = a})

instance GoogleRequest ApplicationsGet where
        type Rs ApplicationsGet = Application
        type Scopes ApplicationsGet =
             '["https://www.googleapis.com/auth/admin.datatransfer",
               "https://www.googleapis.com/auth/admin.datatransfer.readonly"]
        requestClient ApplicationsGet'{..}
          = go _agApplicationId _agXgafv _agUploadProtocol
              _agAccessToken
              _agUploadType
              _agCallback
              (Just AltJSON)
              dataTransferService
          where go
                  = buildClient
                      (Proxy :: Proxy ApplicationsGetResource)
                      mempty
