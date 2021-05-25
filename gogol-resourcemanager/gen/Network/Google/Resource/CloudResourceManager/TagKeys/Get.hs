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
-- Module      : Network.Google.Resource.CloudResourceManager.TagKeys.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a TagKey. This method will return \`PERMISSION_DENIED\` if the
-- key does not exist or the user does not have permission to view it.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.tagKeys.get@.
module Network.Google.Resource.CloudResourceManager.TagKeys.Get
    (
    -- * REST Resource
      TagKeysGetResource

    -- * Creating a Request
    , tagKeysGet
    , TagKeysGet

    -- * Request Lenses
    , tkgXgafv
    , tkgUploadProtocol
    , tkgAccessToken
    , tkgUploadType
    , tkgName
    , tkgCallback
    ) where

import Network.Google.Prelude
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.tagKeys.get@ method which the
-- 'TagKeysGet' request conforms to.
type TagKeysGetResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] TagKey

-- | Retrieves a TagKey. This method will return \`PERMISSION_DENIED\` if the
-- key does not exist or the user does not have permission to view it.
--
-- /See:/ 'tagKeysGet' smart constructor.
data TagKeysGet =
  TagKeysGet'
    { _tkgXgafv :: !(Maybe Xgafv)
    , _tkgUploadProtocol :: !(Maybe Text)
    , _tkgAccessToken :: !(Maybe Text)
    , _tkgUploadType :: !(Maybe Text)
    , _tkgName :: !Text
    , _tkgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TagKeysGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tkgXgafv'
--
-- * 'tkgUploadProtocol'
--
-- * 'tkgAccessToken'
--
-- * 'tkgUploadType'
--
-- * 'tkgName'
--
-- * 'tkgCallback'
tagKeysGet
    :: Text -- ^ 'tkgName'
    -> TagKeysGet
tagKeysGet pTkgName_ =
  TagKeysGet'
    { _tkgXgafv = Nothing
    , _tkgUploadProtocol = Nothing
    , _tkgAccessToken = Nothing
    , _tkgUploadType = Nothing
    , _tkgName = pTkgName_
    , _tkgCallback = Nothing
    }


-- | V1 error format.
tkgXgafv :: Lens' TagKeysGet (Maybe Xgafv)
tkgXgafv = lens _tkgXgafv (\ s a -> s{_tkgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tkgUploadProtocol :: Lens' TagKeysGet (Maybe Text)
tkgUploadProtocol
  = lens _tkgUploadProtocol
      (\ s a -> s{_tkgUploadProtocol = a})

-- | OAuth access token.
tkgAccessToken :: Lens' TagKeysGet (Maybe Text)
tkgAccessToken
  = lens _tkgAccessToken
      (\ s a -> s{_tkgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tkgUploadType :: Lens' TagKeysGet (Maybe Text)
tkgUploadType
  = lens _tkgUploadType
      (\ s a -> s{_tkgUploadType = a})

-- | Required. A resource name in the format \`tagKeys\/{id}\`, such as
-- \`tagKeys\/123\`.
tkgName :: Lens' TagKeysGet Text
tkgName = lens _tkgName (\ s a -> s{_tkgName = a})

-- | JSONP
tkgCallback :: Lens' TagKeysGet (Maybe Text)
tkgCallback
  = lens _tkgCallback (\ s a -> s{_tkgCallback = a})

instance GoogleRequest TagKeysGet where
        type Rs TagKeysGet = TagKey
        type Scopes TagKeysGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient TagKeysGet'{..}
          = go _tkgName _tkgXgafv _tkgUploadProtocol
              _tkgAccessToken
              _tkgUploadType
              _tkgCallback
              (Just AltJSON)
              resourceManagerService
          where go
                  = buildClient (Proxy :: Proxy TagKeysGetResource)
                      mempty
