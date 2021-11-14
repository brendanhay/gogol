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
-- Module      : Network.Google.Resource.CloudResourceManager.TagValues.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves TagValue. If the TagValue or namespaced name does not exist,
-- or if the user does not have permission to view it, this method will
-- return \`PERMISSION_DENIED\`.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.tagValues.get@.
module Network.Google.Resource.CloudResourceManager.TagValues.Get
    (
    -- * REST Resource
      TagValuesGetResource

    -- * Creating a Request
    , tagValuesGet
    , TagValuesGet

    -- * Request Lenses
    , tvgXgafv
    , tvgUploadProtocol
    , tvgAccessToken
    , tvgUploadType
    , tvgName
    , tvgCallback
    ) where

import Network.Google.Prelude
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.tagValues.get@ method which the
-- 'TagValuesGet' request conforms to.
type TagValuesGetResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] TagValue

-- | Retrieves TagValue. If the TagValue or namespaced name does not exist,
-- or if the user does not have permission to view it, this method will
-- return \`PERMISSION_DENIED\`.
--
-- /See:/ 'tagValuesGet' smart constructor.
data TagValuesGet =
  TagValuesGet'
    { _tvgXgafv :: !(Maybe Xgafv)
    , _tvgUploadProtocol :: !(Maybe Text)
    , _tvgAccessToken :: !(Maybe Text)
    , _tvgUploadType :: !(Maybe Text)
    , _tvgName :: !Text
    , _tvgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TagValuesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvgXgafv'
--
-- * 'tvgUploadProtocol'
--
-- * 'tvgAccessToken'
--
-- * 'tvgUploadType'
--
-- * 'tvgName'
--
-- * 'tvgCallback'
tagValuesGet
    :: Text -- ^ 'tvgName'
    -> TagValuesGet
tagValuesGet pTvgName_ =
  TagValuesGet'
    { _tvgXgafv = Nothing
    , _tvgUploadProtocol = Nothing
    , _tvgAccessToken = Nothing
    , _tvgUploadType = Nothing
    , _tvgName = pTvgName_
    , _tvgCallback = Nothing
    }


-- | V1 error format.
tvgXgafv :: Lens' TagValuesGet (Maybe Xgafv)
tvgXgafv = lens _tvgXgafv (\ s a -> s{_tvgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tvgUploadProtocol :: Lens' TagValuesGet (Maybe Text)
tvgUploadProtocol
  = lens _tvgUploadProtocol
      (\ s a -> s{_tvgUploadProtocol = a})

-- | OAuth access token.
tvgAccessToken :: Lens' TagValuesGet (Maybe Text)
tvgAccessToken
  = lens _tvgAccessToken
      (\ s a -> s{_tvgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tvgUploadType :: Lens' TagValuesGet (Maybe Text)
tvgUploadType
  = lens _tvgUploadType
      (\ s a -> s{_tvgUploadType = a})

-- | Required. Resource name for TagValue to be fetched in the format
-- \`tagValues\/456\`.
tvgName :: Lens' TagValuesGet Text
tvgName = lens _tvgName (\ s a -> s{_tvgName = a})

-- | JSONP
tvgCallback :: Lens' TagValuesGet (Maybe Text)
tvgCallback
  = lens _tvgCallback (\ s a -> s{_tvgCallback = a})

instance GoogleRequest TagValuesGet where
        type Rs TagValuesGet = TagValue
        type Scopes TagValuesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient TagValuesGet'{..}
          = go _tvgName _tvgXgafv _tvgUploadProtocol
              _tvgAccessToken
              _tvgUploadType
              _tvgCallback
              (Just AltJSON)
              resourceManagerService
          where go
                  = buildClient (Proxy :: Proxy TagValuesGetResource)
                      mempty
