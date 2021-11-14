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
-- Module      : Network.Google.Resource.CloudResourceManager.TagBindings.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a TagBinding between a TagValue and a cloud resource (currently
-- project, folder, or organization).
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.tagBindings.create@.
module Network.Google.Resource.CloudResourceManager.TagBindings.Create
    (
    -- * REST Resource
      TagBindingsCreateResource

    -- * Creating a Request
    , tagBindingsCreate
    , TagBindingsCreate

    -- * Request Lenses
    , tbcXgafv
    , tbcValidateOnly
    , tbcUploadProtocol
    , tbcAccessToken
    , tbcUploadType
    , tbcPayload
    , tbcCallback
    ) where

import Network.Google.Prelude
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.tagBindings.create@ method which the
-- 'TagBindingsCreate' request conforms to.
type TagBindingsCreateResource =
     "v3" :>
       "tagBindings" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "validateOnly" Bool :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] TagBinding :> Post '[JSON] Operation

-- | Creates a TagBinding between a TagValue and a cloud resource (currently
-- project, folder, or organization).
--
-- /See:/ 'tagBindingsCreate' smart constructor.
data TagBindingsCreate =
  TagBindingsCreate'
    { _tbcXgafv :: !(Maybe Xgafv)
    , _tbcValidateOnly :: !(Maybe Bool)
    , _tbcUploadProtocol :: !(Maybe Text)
    , _tbcAccessToken :: !(Maybe Text)
    , _tbcUploadType :: !(Maybe Text)
    , _tbcPayload :: !TagBinding
    , _tbcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TagBindingsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbcXgafv'
--
-- * 'tbcValidateOnly'
--
-- * 'tbcUploadProtocol'
--
-- * 'tbcAccessToken'
--
-- * 'tbcUploadType'
--
-- * 'tbcPayload'
--
-- * 'tbcCallback'
tagBindingsCreate
    :: TagBinding -- ^ 'tbcPayload'
    -> TagBindingsCreate
tagBindingsCreate pTbcPayload_ =
  TagBindingsCreate'
    { _tbcXgafv = Nothing
    , _tbcValidateOnly = Nothing
    , _tbcUploadProtocol = Nothing
    , _tbcAccessToken = Nothing
    , _tbcUploadType = Nothing
    , _tbcPayload = pTbcPayload_
    , _tbcCallback = Nothing
    }


-- | V1 error format.
tbcXgafv :: Lens' TagBindingsCreate (Maybe Xgafv)
tbcXgafv = lens _tbcXgafv (\ s a -> s{_tbcXgafv = a})

-- | Optional. Set to true to perform the validations necessary for creating
-- the resource, but not actually perform the action.
tbcValidateOnly :: Lens' TagBindingsCreate (Maybe Bool)
tbcValidateOnly
  = lens _tbcValidateOnly
      (\ s a -> s{_tbcValidateOnly = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tbcUploadProtocol :: Lens' TagBindingsCreate (Maybe Text)
tbcUploadProtocol
  = lens _tbcUploadProtocol
      (\ s a -> s{_tbcUploadProtocol = a})

-- | OAuth access token.
tbcAccessToken :: Lens' TagBindingsCreate (Maybe Text)
tbcAccessToken
  = lens _tbcAccessToken
      (\ s a -> s{_tbcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tbcUploadType :: Lens' TagBindingsCreate (Maybe Text)
tbcUploadType
  = lens _tbcUploadType
      (\ s a -> s{_tbcUploadType = a})

-- | Multipart request metadata.
tbcPayload :: Lens' TagBindingsCreate TagBinding
tbcPayload
  = lens _tbcPayload (\ s a -> s{_tbcPayload = a})

-- | JSONP
tbcCallback :: Lens' TagBindingsCreate (Maybe Text)
tbcCallback
  = lens _tbcCallback (\ s a -> s{_tbcCallback = a})

instance GoogleRequest TagBindingsCreate where
        type Rs TagBindingsCreate = Operation
        type Scopes TagBindingsCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient TagBindingsCreate'{..}
          = go _tbcXgafv _tbcValidateOnly _tbcUploadProtocol
              _tbcAccessToken
              _tbcUploadType
              _tbcCallback
              (Just AltJSON)
              _tbcPayload
              resourceManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy TagBindingsCreateResource)
                      mempty
