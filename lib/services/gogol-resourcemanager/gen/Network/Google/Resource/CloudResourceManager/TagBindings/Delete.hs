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
-- Module      : Network.Google.Resource.CloudResourceManager.TagBindings.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a TagBinding.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.tagBindings.delete@.
module Network.Google.Resource.CloudResourceManager.TagBindings.Delete
    (
    -- * REST Resource
      TagBindingsDeleteResource

    -- * Creating a Request
    , tagBindingsDelete
    , TagBindingsDelete

    -- * Request Lenses
    , tbdXgafv
    , tbdUploadProtocol
    , tbdAccessToken
    , tbdUploadType
    , tbdName
    , tbdCallback
    ) where

import Network.Google.Prelude
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.tagBindings.delete@ method which the
-- 'TagBindingsDelete' request conforms to.
type TagBindingsDeleteResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes a TagBinding.
--
-- /See:/ 'tagBindingsDelete' smart constructor.
data TagBindingsDelete =
  TagBindingsDelete'
    { _tbdXgafv :: !(Maybe Xgafv)
    , _tbdUploadProtocol :: !(Maybe Text)
    , _tbdAccessToken :: !(Maybe Text)
    , _tbdUploadType :: !(Maybe Text)
    , _tbdName :: !Text
    , _tbdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TagBindingsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbdXgafv'
--
-- * 'tbdUploadProtocol'
--
-- * 'tbdAccessToken'
--
-- * 'tbdUploadType'
--
-- * 'tbdName'
--
-- * 'tbdCallback'
tagBindingsDelete
    :: Text -- ^ 'tbdName'
    -> TagBindingsDelete
tagBindingsDelete pTbdName_ =
  TagBindingsDelete'
    { _tbdXgafv = Nothing
    , _tbdUploadProtocol = Nothing
    , _tbdAccessToken = Nothing
    , _tbdUploadType = Nothing
    , _tbdName = pTbdName_
    , _tbdCallback = Nothing
    }


-- | V1 error format.
tbdXgafv :: Lens' TagBindingsDelete (Maybe Xgafv)
tbdXgafv = lens _tbdXgafv (\ s a -> s{_tbdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tbdUploadProtocol :: Lens' TagBindingsDelete (Maybe Text)
tbdUploadProtocol
  = lens _tbdUploadProtocol
      (\ s a -> s{_tbdUploadProtocol = a})

-- | OAuth access token.
tbdAccessToken :: Lens' TagBindingsDelete (Maybe Text)
tbdAccessToken
  = lens _tbdAccessToken
      (\ s a -> s{_tbdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tbdUploadType :: Lens' TagBindingsDelete (Maybe Text)
tbdUploadType
  = lens _tbdUploadType
      (\ s a -> s{_tbdUploadType = a})

-- | Required. The name of the TagBinding. This is a String of the form:
-- \`tagBindings\/{id}\` (e.g.
-- \`tagBindings\/%2F%2Fcloudresourcemanager.googleapis.com%2Fprojects%2F123\/tagValues\/456\`).
tbdName :: Lens' TagBindingsDelete Text
tbdName = lens _tbdName (\ s a -> s{_tbdName = a})

-- | JSONP
tbdCallback :: Lens' TagBindingsDelete (Maybe Text)
tbdCallback
  = lens _tbdCallback (\ s a -> s{_tbdCallback = a})

instance GoogleRequest TagBindingsDelete where
        type Rs TagBindingsDelete = Operation
        type Scopes TagBindingsDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient TagBindingsDelete'{..}
          = go _tbdName _tbdXgafv _tbdUploadProtocol
              _tbdAccessToken
              _tbdUploadType
              _tbdCallback
              (Just AltJSON)
              resourceManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy TagBindingsDeleteResource)
                      mempty
