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
-- Module      : Network.Google.Resource.CloudResourceManager.TagKeys.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a TagKey. The TagKey cannot be deleted if it has any child
-- TagValues.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.tagKeys.delete@.
module Network.Google.Resource.CloudResourceManager.TagKeys.Delete
    (
    -- * REST Resource
      TagKeysDeleteResource

    -- * Creating a Request
    , tagKeysDelete
    , TagKeysDelete

    -- * Request Lenses
    , tkdXgafv
    , tkdEtag
    , tkdValidateOnly
    , tkdUploadProtocol
    , tkdAccessToken
    , tkdUploadType
    , tkdName
    , tkdCallback
    ) where

import Network.Google.Prelude
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.tagKeys.delete@ method which the
-- 'TagKeysDelete' request conforms to.
type TagKeysDeleteResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "etag" Text :>
             QueryParam "validateOnly" Bool :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes a TagKey. The TagKey cannot be deleted if it has any child
-- TagValues.
--
-- /See:/ 'tagKeysDelete' smart constructor.
data TagKeysDelete =
  TagKeysDelete'
    { _tkdXgafv :: !(Maybe Xgafv)
    , _tkdEtag :: !(Maybe Text)
    , _tkdValidateOnly :: !(Maybe Bool)
    , _tkdUploadProtocol :: !(Maybe Text)
    , _tkdAccessToken :: !(Maybe Text)
    , _tkdUploadType :: !(Maybe Text)
    , _tkdName :: !Text
    , _tkdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TagKeysDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tkdXgafv'
--
-- * 'tkdEtag'
--
-- * 'tkdValidateOnly'
--
-- * 'tkdUploadProtocol'
--
-- * 'tkdAccessToken'
--
-- * 'tkdUploadType'
--
-- * 'tkdName'
--
-- * 'tkdCallback'
tagKeysDelete
    :: Text -- ^ 'tkdName'
    -> TagKeysDelete
tagKeysDelete pTkdName_ =
  TagKeysDelete'
    { _tkdXgafv = Nothing
    , _tkdEtag = Nothing
    , _tkdValidateOnly = Nothing
    , _tkdUploadProtocol = Nothing
    , _tkdAccessToken = Nothing
    , _tkdUploadType = Nothing
    , _tkdName = pTkdName_
    , _tkdCallback = Nothing
    }


-- | V1 error format.
tkdXgafv :: Lens' TagKeysDelete (Maybe Xgafv)
tkdXgafv = lens _tkdXgafv (\ s a -> s{_tkdXgafv = a})

-- | Optional. The etag known to the client for the expected state of the
-- TagKey. This is to be used for optimistic concurrency.
tkdEtag :: Lens' TagKeysDelete (Maybe Text)
tkdEtag = lens _tkdEtag (\ s a -> s{_tkdEtag = a})

-- | Optional. Set as true to perform validations necessary for deletion, but
-- not actually perform the action.
tkdValidateOnly :: Lens' TagKeysDelete (Maybe Bool)
tkdValidateOnly
  = lens _tkdValidateOnly
      (\ s a -> s{_tkdValidateOnly = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tkdUploadProtocol :: Lens' TagKeysDelete (Maybe Text)
tkdUploadProtocol
  = lens _tkdUploadProtocol
      (\ s a -> s{_tkdUploadProtocol = a})

-- | OAuth access token.
tkdAccessToken :: Lens' TagKeysDelete (Maybe Text)
tkdAccessToken
  = lens _tkdAccessToken
      (\ s a -> s{_tkdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tkdUploadType :: Lens' TagKeysDelete (Maybe Text)
tkdUploadType
  = lens _tkdUploadType
      (\ s a -> s{_tkdUploadType = a})

-- | Required. The resource name of a TagKey to be deleted in the format
-- \`tagKeys\/123\`. The TagKey cannot be a parent of any existing
-- TagValues or it will not be deleted successfully.
tkdName :: Lens' TagKeysDelete Text
tkdName = lens _tkdName (\ s a -> s{_tkdName = a})

-- | JSONP
tkdCallback :: Lens' TagKeysDelete (Maybe Text)
tkdCallback
  = lens _tkdCallback (\ s a -> s{_tkdCallback = a})

instance GoogleRequest TagKeysDelete where
        type Rs TagKeysDelete = Operation
        type Scopes TagKeysDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient TagKeysDelete'{..}
          = go _tkdName _tkdXgafv _tkdEtag _tkdValidateOnly
              _tkdUploadProtocol
              _tkdAccessToken
              _tkdUploadType
              _tkdCallback
              (Just AltJSON)
              resourceManagerService
          where go
                  = buildClient (Proxy :: Proxy TagKeysDeleteResource)
                      mempty
