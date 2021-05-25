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
-- Module      : Network.Google.Resource.PubSub.Projects.Schemas.Validate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Validates a schema.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.schemas.validate@.
module Network.Google.Resource.PubSub.Projects.Schemas.Validate
    (
    -- * REST Resource
      ProjectsSchemasValidateResource

    -- * Creating a Request
    , projectsSchemasValidate
    , ProjectsSchemasValidate

    -- * Request Lenses
    , psvParent
    , psvXgafv
    , psvUploadProtocol
    , psvAccessToken
    , psvUploadType
    , psvPayload
    , psvCallback
    ) where

import Network.Google.Prelude
import Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.schemas.validate@ method which the
-- 'ProjectsSchemasValidate' request conforms to.
type ProjectsSchemasValidateResource =
     "v1" :>
       Capture "parent" Text :>
         "schemas:validate" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] ValidateSchemaRequest :>
                         Post '[JSON] ValidateSchemaResponse

-- | Validates a schema.
--
-- /See:/ 'projectsSchemasValidate' smart constructor.
data ProjectsSchemasValidate =
  ProjectsSchemasValidate'
    { _psvParent :: !Text
    , _psvXgafv :: !(Maybe Xgafv)
    , _psvUploadProtocol :: !(Maybe Text)
    , _psvAccessToken :: !(Maybe Text)
    , _psvUploadType :: !(Maybe Text)
    , _psvPayload :: !ValidateSchemaRequest
    , _psvCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSchemasValidate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psvParent'
--
-- * 'psvXgafv'
--
-- * 'psvUploadProtocol'
--
-- * 'psvAccessToken'
--
-- * 'psvUploadType'
--
-- * 'psvPayload'
--
-- * 'psvCallback'
projectsSchemasValidate
    :: Text -- ^ 'psvParent'
    -> ValidateSchemaRequest -- ^ 'psvPayload'
    -> ProjectsSchemasValidate
projectsSchemasValidate pPsvParent_ pPsvPayload_ =
  ProjectsSchemasValidate'
    { _psvParent = pPsvParent_
    , _psvXgafv = Nothing
    , _psvUploadProtocol = Nothing
    , _psvAccessToken = Nothing
    , _psvUploadType = Nothing
    , _psvPayload = pPsvPayload_
    , _psvCallback = Nothing
    }


-- | Required. The name of the project in which to validate schemas. Format
-- is \`projects\/{project-id}\`.
psvParent :: Lens' ProjectsSchemasValidate Text
psvParent
  = lens _psvParent (\ s a -> s{_psvParent = a})

-- | V1 error format.
psvXgafv :: Lens' ProjectsSchemasValidate (Maybe Xgafv)
psvXgafv = lens _psvXgafv (\ s a -> s{_psvXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psvUploadProtocol :: Lens' ProjectsSchemasValidate (Maybe Text)
psvUploadProtocol
  = lens _psvUploadProtocol
      (\ s a -> s{_psvUploadProtocol = a})

-- | OAuth access token.
psvAccessToken :: Lens' ProjectsSchemasValidate (Maybe Text)
psvAccessToken
  = lens _psvAccessToken
      (\ s a -> s{_psvAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psvUploadType :: Lens' ProjectsSchemasValidate (Maybe Text)
psvUploadType
  = lens _psvUploadType
      (\ s a -> s{_psvUploadType = a})

-- | Multipart request metadata.
psvPayload :: Lens' ProjectsSchemasValidate ValidateSchemaRequest
psvPayload
  = lens _psvPayload (\ s a -> s{_psvPayload = a})

-- | JSONP
psvCallback :: Lens' ProjectsSchemasValidate (Maybe Text)
psvCallback
  = lens _psvCallback (\ s a -> s{_psvCallback = a})

instance GoogleRequest ProjectsSchemasValidate where
        type Rs ProjectsSchemasValidate =
             ValidateSchemaResponse
        type Scopes ProjectsSchemasValidate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/pubsub"]
        requestClient ProjectsSchemasValidate'{..}
          = go _psvParent _psvXgafv _psvUploadProtocol
              _psvAccessToken
              _psvUploadType
              _psvCallback
              (Just AltJSON)
              _psvPayload
              pubSubService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSchemasValidateResource)
                      mempty
