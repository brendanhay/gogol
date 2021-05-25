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
-- Module      : Network.Google.Resource.PubSub.Projects.Schemas.ValidateMessage
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Validates a message against a schema.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.schemas.validateMessage@.
module Network.Google.Resource.PubSub.Projects.Schemas.ValidateMessage
    (
    -- * REST Resource
      ProjectsSchemasValidateMessageResource

    -- * Creating a Request
    , projectsSchemasValidateMessage
    , ProjectsSchemasValidateMessage

    -- * Request Lenses
    , psvmParent
    , psvmXgafv
    , psvmUploadProtocol
    , psvmAccessToken
    , psvmUploadType
    , psvmPayload
    , psvmCallback
    ) where

import Network.Google.Prelude
import Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.schemas.validateMessage@ method which the
-- 'ProjectsSchemasValidateMessage' request conforms to.
type ProjectsSchemasValidateMessageResource =
     "v1" :>
       Capture "parent" Text :>
         "schemas:validateMessage" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] ValidateMessageRequest :>
                         Post '[JSON] ValidateMessageResponse

-- | Validates a message against a schema.
--
-- /See:/ 'projectsSchemasValidateMessage' smart constructor.
data ProjectsSchemasValidateMessage =
  ProjectsSchemasValidateMessage'
    { _psvmParent :: !Text
    , _psvmXgafv :: !(Maybe Xgafv)
    , _psvmUploadProtocol :: !(Maybe Text)
    , _psvmAccessToken :: !(Maybe Text)
    , _psvmUploadType :: !(Maybe Text)
    , _psvmPayload :: !ValidateMessageRequest
    , _psvmCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSchemasValidateMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psvmParent'
--
-- * 'psvmXgafv'
--
-- * 'psvmUploadProtocol'
--
-- * 'psvmAccessToken'
--
-- * 'psvmUploadType'
--
-- * 'psvmPayload'
--
-- * 'psvmCallback'
projectsSchemasValidateMessage
    :: Text -- ^ 'psvmParent'
    -> ValidateMessageRequest -- ^ 'psvmPayload'
    -> ProjectsSchemasValidateMessage
projectsSchemasValidateMessage pPsvmParent_ pPsvmPayload_ =
  ProjectsSchemasValidateMessage'
    { _psvmParent = pPsvmParent_
    , _psvmXgafv = Nothing
    , _psvmUploadProtocol = Nothing
    , _psvmAccessToken = Nothing
    , _psvmUploadType = Nothing
    , _psvmPayload = pPsvmPayload_
    , _psvmCallback = Nothing
    }


-- | Required. The name of the project in which to validate schemas. Format
-- is \`projects\/{project-id}\`.
psvmParent :: Lens' ProjectsSchemasValidateMessage Text
psvmParent
  = lens _psvmParent (\ s a -> s{_psvmParent = a})

-- | V1 error format.
psvmXgafv :: Lens' ProjectsSchemasValidateMessage (Maybe Xgafv)
psvmXgafv
  = lens _psvmXgafv (\ s a -> s{_psvmXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psvmUploadProtocol :: Lens' ProjectsSchemasValidateMessage (Maybe Text)
psvmUploadProtocol
  = lens _psvmUploadProtocol
      (\ s a -> s{_psvmUploadProtocol = a})

-- | OAuth access token.
psvmAccessToken :: Lens' ProjectsSchemasValidateMessage (Maybe Text)
psvmAccessToken
  = lens _psvmAccessToken
      (\ s a -> s{_psvmAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psvmUploadType :: Lens' ProjectsSchemasValidateMessage (Maybe Text)
psvmUploadType
  = lens _psvmUploadType
      (\ s a -> s{_psvmUploadType = a})

-- | Multipart request metadata.
psvmPayload :: Lens' ProjectsSchemasValidateMessage ValidateMessageRequest
psvmPayload
  = lens _psvmPayload (\ s a -> s{_psvmPayload = a})

-- | JSONP
psvmCallback :: Lens' ProjectsSchemasValidateMessage (Maybe Text)
psvmCallback
  = lens _psvmCallback (\ s a -> s{_psvmCallback = a})

instance GoogleRequest ProjectsSchemasValidateMessage
         where
        type Rs ProjectsSchemasValidateMessage =
             ValidateMessageResponse
        type Scopes ProjectsSchemasValidateMessage =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/pubsub"]
        requestClient ProjectsSchemasValidateMessage'{..}
          = go _psvmParent _psvmXgafv _psvmUploadProtocol
              _psvmAccessToken
              _psvmUploadType
              _psvmCallback
              (Just AltJSON)
              _psvmPayload
              pubSubService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsSchemasValidateMessageResource)
                      mempty
