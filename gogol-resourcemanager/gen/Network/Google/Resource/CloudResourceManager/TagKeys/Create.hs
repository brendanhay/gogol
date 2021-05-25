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
-- Module      : Network.Google.Resource.CloudResourceManager.TagKeys.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new TagKey. If another request with the same parameters is
-- sent while the original request is in process, the second request will
-- receive an error. A maximum of 300 TagKeys can exist under a parent at
-- any given time.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.tagKeys.create@.
module Network.Google.Resource.CloudResourceManager.TagKeys.Create
    (
    -- * REST Resource
      TagKeysCreateResource

    -- * Creating a Request
    , tagKeysCreate
    , TagKeysCreate

    -- * Request Lenses
    , tkcXgafv
    , tkcValidateOnly
    , tkcUploadProtocol
    , tkcAccessToken
    , tkcUploadType
    , tkcPayload
    , tkcCallback
    ) where

import Network.Google.Prelude
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.tagKeys.create@ method which the
-- 'TagKeysCreate' request conforms to.
type TagKeysCreateResource =
     "v3" :>
       "tagKeys" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "validateOnly" Bool :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] TagKey :> Post '[JSON] Operation

-- | Creates a new TagKey. If another request with the same parameters is
-- sent while the original request is in process, the second request will
-- receive an error. A maximum of 300 TagKeys can exist under a parent at
-- any given time.
--
-- /See:/ 'tagKeysCreate' smart constructor.
data TagKeysCreate =
  TagKeysCreate'
    { _tkcXgafv :: !(Maybe Xgafv)
    , _tkcValidateOnly :: !(Maybe Bool)
    , _tkcUploadProtocol :: !(Maybe Text)
    , _tkcAccessToken :: !(Maybe Text)
    , _tkcUploadType :: !(Maybe Text)
    , _tkcPayload :: !TagKey
    , _tkcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TagKeysCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tkcXgafv'
--
-- * 'tkcValidateOnly'
--
-- * 'tkcUploadProtocol'
--
-- * 'tkcAccessToken'
--
-- * 'tkcUploadType'
--
-- * 'tkcPayload'
--
-- * 'tkcCallback'
tagKeysCreate
    :: TagKey -- ^ 'tkcPayload'
    -> TagKeysCreate
tagKeysCreate pTkcPayload_ =
  TagKeysCreate'
    { _tkcXgafv = Nothing
    , _tkcValidateOnly = Nothing
    , _tkcUploadProtocol = Nothing
    , _tkcAccessToken = Nothing
    , _tkcUploadType = Nothing
    , _tkcPayload = pTkcPayload_
    , _tkcCallback = Nothing
    }


-- | V1 error format.
tkcXgafv :: Lens' TagKeysCreate (Maybe Xgafv)
tkcXgafv = lens _tkcXgafv (\ s a -> s{_tkcXgafv = a})

-- | Optional. Set to true to perform validations necessary for creating the
-- resource, but not actually perform the action.
tkcValidateOnly :: Lens' TagKeysCreate (Maybe Bool)
tkcValidateOnly
  = lens _tkcValidateOnly
      (\ s a -> s{_tkcValidateOnly = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tkcUploadProtocol :: Lens' TagKeysCreate (Maybe Text)
tkcUploadProtocol
  = lens _tkcUploadProtocol
      (\ s a -> s{_tkcUploadProtocol = a})

-- | OAuth access token.
tkcAccessToken :: Lens' TagKeysCreate (Maybe Text)
tkcAccessToken
  = lens _tkcAccessToken
      (\ s a -> s{_tkcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tkcUploadType :: Lens' TagKeysCreate (Maybe Text)
tkcUploadType
  = lens _tkcUploadType
      (\ s a -> s{_tkcUploadType = a})

-- | Multipart request metadata.
tkcPayload :: Lens' TagKeysCreate TagKey
tkcPayload
  = lens _tkcPayload (\ s a -> s{_tkcPayload = a})

-- | JSONP
tkcCallback :: Lens' TagKeysCreate (Maybe Text)
tkcCallback
  = lens _tkcCallback (\ s a -> s{_tkcCallback = a})

instance GoogleRequest TagKeysCreate where
        type Rs TagKeysCreate = Operation
        type Scopes TagKeysCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient TagKeysCreate'{..}
          = go _tkcXgafv _tkcValidateOnly _tkcUploadProtocol
              _tkcAccessToken
              _tkcUploadType
              _tkcCallback
              (Just AltJSON)
              _tkcPayload
              resourceManagerService
          where go
                  = buildClient (Proxy :: Proxy TagKeysCreateResource)
                      mempty
