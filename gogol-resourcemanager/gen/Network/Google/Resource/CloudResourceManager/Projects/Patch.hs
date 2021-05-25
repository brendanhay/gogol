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
-- Module      : Network.Google.Resource.CloudResourceManager.Projects.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the \`display_name\` and labels of the project identified by the
-- specified \`name\` (for example, \`projects\/415104041262\`). Deleting
-- all labels requires an update mask for labels field. The caller must
-- have \`resourcemanager.projects.update\` permission for this project.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.projects.patch@.
module Network.Google.Resource.CloudResourceManager.Projects.Patch
    (
    -- * REST Resource
      ProjectsPatchResource

    -- * Creating a Request
    , projectsPatch
    , ProjectsPatch

    -- * Request Lenses
    , ppXgafv
    , ppUploadProtocol
    , ppUpdateMask
    , ppAccessToken
    , ppUploadType
    , ppPayload
    , ppName
    , ppCallback
    ) where

import Network.Google.Prelude
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.projects.patch@ method which the
-- 'ProjectsPatch' request conforms to.
type ProjectsPatchResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Project :> Patch '[JSON] Operation

-- | Updates the \`display_name\` and labels of the project identified by the
-- specified \`name\` (for example, \`projects\/415104041262\`). Deleting
-- all labels requires an update mask for labels field. The caller must
-- have \`resourcemanager.projects.update\` permission for this project.
--
-- /See:/ 'projectsPatch' smart constructor.
data ProjectsPatch =
  ProjectsPatch'
    { _ppXgafv :: !(Maybe Xgafv)
    , _ppUploadProtocol :: !(Maybe Text)
    , _ppUpdateMask :: !(Maybe GFieldMask)
    , _ppAccessToken :: !(Maybe Text)
    , _ppUploadType :: !(Maybe Text)
    , _ppPayload :: !Project
    , _ppName :: !Text
    , _ppCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppXgafv'
--
-- * 'ppUploadProtocol'
--
-- * 'ppUpdateMask'
--
-- * 'ppAccessToken'
--
-- * 'ppUploadType'
--
-- * 'ppPayload'
--
-- * 'ppName'
--
-- * 'ppCallback'
projectsPatch
    :: Project -- ^ 'ppPayload'
    -> Text -- ^ 'ppName'
    -> ProjectsPatch
projectsPatch pPpPayload_ pPpName_ =
  ProjectsPatch'
    { _ppXgafv = Nothing
    , _ppUploadProtocol = Nothing
    , _ppUpdateMask = Nothing
    , _ppAccessToken = Nothing
    , _ppUploadType = Nothing
    , _ppPayload = pPpPayload_
    , _ppName = pPpName_
    , _ppCallback = Nothing
    }


-- | V1 error format.
ppXgafv :: Lens' ProjectsPatch (Maybe Xgafv)
ppXgafv = lens _ppXgafv (\ s a -> s{_ppXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ppUploadProtocol :: Lens' ProjectsPatch (Maybe Text)
ppUploadProtocol
  = lens _ppUploadProtocol
      (\ s a -> s{_ppUploadProtocol = a})

-- | Optional. An update mask to selectively update fields.
ppUpdateMask :: Lens' ProjectsPatch (Maybe GFieldMask)
ppUpdateMask
  = lens _ppUpdateMask (\ s a -> s{_ppUpdateMask = a})

-- | OAuth access token.
ppAccessToken :: Lens' ProjectsPatch (Maybe Text)
ppAccessToken
  = lens _ppAccessToken
      (\ s a -> s{_ppAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ppUploadType :: Lens' ProjectsPatch (Maybe Text)
ppUploadType
  = lens _ppUploadType (\ s a -> s{_ppUploadType = a})

-- | Multipart request metadata.
ppPayload :: Lens' ProjectsPatch Project
ppPayload
  = lens _ppPayload (\ s a -> s{_ppPayload = a})

-- | Output only. The unique resource name of the project. It is an int64
-- generated number prefixed by \"projects\/\". Example:
-- \`projects\/415104041262\`
ppName :: Lens' ProjectsPatch Text
ppName = lens _ppName (\ s a -> s{_ppName = a})

-- | JSONP
ppCallback :: Lens' ProjectsPatch (Maybe Text)
ppCallback
  = lens _ppCallback (\ s a -> s{_ppCallback = a})

instance GoogleRequest ProjectsPatch where
        type Rs ProjectsPatch = Operation
        type Scopes ProjectsPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsPatch'{..}
          = go _ppName _ppXgafv _ppUploadProtocol _ppUpdateMask
              _ppAccessToken
              _ppUploadType
              _ppCallback
              (Just AltJSON)
              _ppPayload
              resourceManagerService
          where go
                  = buildClient (Proxy :: Proxy ProjectsPatchResource)
                      mempty
