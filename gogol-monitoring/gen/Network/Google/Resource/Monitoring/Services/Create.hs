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
-- Module      : Network.Google.Resource.Monitoring.Services.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a Service.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.services.create@.
module Network.Google.Resource.Monitoring.Services.Create
    (
    -- * REST Resource
      ServicesCreateResource

    -- * Creating a Request
    , servicesCreate
    , ServicesCreate

    -- * Request Lenses
    , scParent
    , scXgafv
    , scUploadProtocol
    , scAccessToken
    , scUploadType
    , scPayload
    , scServiceId
    , scCallback
    ) where

import Network.Google.Monitoring.Types
import Network.Google.Prelude

-- | A resource alias for @monitoring.services.create@ method which the
-- 'ServicesCreate' request conforms to.
type ServicesCreateResource =
     "v3" :>
       Capture "parent" Text :>
         "services" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "serviceId" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Service :> Post '[JSON] Service

-- | Create a Service.
--
-- /See:/ 'servicesCreate' smart constructor.
data ServicesCreate =
  ServicesCreate'
    { _scParent :: !Text
    , _scXgafv :: !(Maybe Xgafv)
    , _scUploadProtocol :: !(Maybe Text)
    , _scAccessToken :: !(Maybe Text)
    , _scUploadType :: !(Maybe Text)
    , _scPayload :: !Service
    , _scServiceId :: !(Maybe Text)
    , _scCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scParent'
--
-- * 'scXgafv'
--
-- * 'scUploadProtocol'
--
-- * 'scAccessToken'
--
-- * 'scUploadType'
--
-- * 'scPayload'
--
-- * 'scServiceId'
--
-- * 'scCallback'
servicesCreate
    :: Text -- ^ 'scParent'
    -> Service -- ^ 'scPayload'
    -> ServicesCreate
servicesCreate pScParent_ pScPayload_ =
  ServicesCreate'
    { _scParent = pScParent_
    , _scXgafv = Nothing
    , _scUploadProtocol = Nothing
    , _scAccessToken = Nothing
    , _scUploadType = Nothing
    , _scPayload = pScPayload_
    , _scServiceId = Nothing
    , _scCallback = Nothing
    }


-- | Required. Resource name
-- (https:\/\/cloud.google.com\/monitoring\/api\/v3#project_name) of the
-- parent workspace. The format is: projects\/[PROJECT_ID_OR_NUMBER]
scParent :: Lens' ServicesCreate Text
scParent = lens _scParent (\ s a -> s{_scParent = a})

-- | V1 error format.
scXgafv :: Lens' ServicesCreate (Maybe Xgafv)
scXgafv = lens _scXgafv (\ s a -> s{_scXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
scUploadProtocol :: Lens' ServicesCreate (Maybe Text)
scUploadProtocol
  = lens _scUploadProtocol
      (\ s a -> s{_scUploadProtocol = a})

-- | OAuth access token.
scAccessToken :: Lens' ServicesCreate (Maybe Text)
scAccessToken
  = lens _scAccessToken
      (\ s a -> s{_scAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
scUploadType :: Lens' ServicesCreate (Maybe Text)
scUploadType
  = lens _scUploadType (\ s a -> s{_scUploadType = a})

-- | Multipart request metadata.
scPayload :: Lens' ServicesCreate Service
scPayload
  = lens _scPayload (\ s a -> s{_scPayload = a})

-- | Optional. The Service id to use for this Service. If omitted, an id will
-- be generated instead. Must match the pattern [a-z0-9\\-]+
scServiceId :: Lens' ServicesCreate (Maybe Text)
scServiceId
  = lens _scServiceId (\ s a -> s{_scServiceId = a})

-- | JSONP
scCallback :: Lens' ServicesCreate (Maybe Text)
scCallback
  = lens _scCallback (\ s a -> s{_scCallback = a})

instance GoogleRequest ServicesCreate where
        type Rs ServicesCreate = Service
        type Scopes ServicesCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring"]
        requestClient ServicesCreate'{..}
          = go _scParent _scXgafv _scUploadProtocol
              _scAccessToken
              _scUploadType
              _scServiceId
              _scCallback
              (Just AltJSON)
              _scPayload
              monitoringService
          where go
                  = buildClient (Proxy :: Proxy ServicesCreateResource)
                      mempty
