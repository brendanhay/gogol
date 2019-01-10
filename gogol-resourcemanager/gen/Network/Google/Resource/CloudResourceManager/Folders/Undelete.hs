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
-- Module      : Network.Google.Resource.CloudResourceManager.Folders.Undelete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels the deletion request for a Folder. This method may only be
-- called on a Folder in the DELETE_REQUESTED state. In order to succeed,
-- the Folder\'s parent must be in the ACTIVE state. In addition,
-- reintroducing the folder into the tree must not violate folder naming,
-- height and fanout constraints described in the CreateFolder
-- documentation. The caller must have \`resourcemanager.folders.undelete\`
-- permission on the identified folder.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.folders.undelete@.
module Network.Google.Resource.CloudResourceManager.Folders.Undelete
    (
    -- * REST Resource
      FoldersUndeleteResource

    -- * Creating a Request
    , foldersUndelete
    , FoldersUndelete

    -- * Request Lenses
    , fuXgafv
    , fuUploadProtocol
    , fuAccessToken
    , fuUploadType
    , fuPayload
    , fuName
    , fuCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.folders.undelete@ method which the
-- 'FoldersUndelete' request conforms to.
type FoldersUndeleteResource =
     "v2" :>
       CaptureMode "name" "undelete" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] UndeleteFolderRequest :>
                       Post '[JSON] Folder

-- | Cancels the deletion request for a Folder. This method may only be
-- called on a Folder in the DELETE_REQUESTED state. In order to succeed,
-- the Folder\'s parent must be in the ACTIVE state. In addition,
-- reintroducing the folder into the tree must not violate folder naming,
-- height and fanout constraints described in the CreateFolder
-- documentation. The caller must have \`resourcemanager.folders.undelete\`
-- permission on the identified folder.
--
-- /See:/ 'foldersUndelete' smart constructor.
data FoldersUndelete = FoldersUndelete'
    { _fuXgafv          :: !(Maybe Xgafv)
    , _fuUploadProtocol :: !(Maybe Text)
    , _fuAccessToken    :: !(Maybe Text)
    , _fuUploadType     :: !(Maybe Text)
    , _fuPayload        :: !UndeleteFolderRequest
    , _fuName           :: !Text
    , _fuCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FoldersUndelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fuXgafv'
--
-- * 'fuUploadProtocol'
--
-- * 'fuAccessToken'
--
-- * 'fuUploadType'
--
-- * 'fuPayload'
--
-- * 'fuName'
--
-- * 'fuCallback'
foldersUndelete
    :: UndeleteFolderRequest -- ^ 'fuPayload'
    -> Text -- ^ 'fuName'
    -> FoldersUndelete
foldersUndelete pFuPayload_ pFuName_ =
    FoldersUndelete'
    { _fuXgafv = Nothing
    , _fuUploadProtocol = Nothing
    , _fuAccessToken = Nothing
    , _fuUploadType = Nothing
    , _fuPayload = pFuPayload_
    , _fuName = pFuName_
    , _fuCallback = Nothing
    }

-- | V1 error format.
fuXgafv :: Lens' FoldersUndelete (Maybe Xgafv)
fuXgafv = lens _fuXgafv (\ s a -> s{_fuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fuUploadProtocol :: Lens' FoldersUndelete (Maybe Text)
fuUploadProtocol
  = lens _fuUploadProtocol
      (\ s a -> s{_fuUploadProtocol = a})

-- | OAuth access token.
fuAccessToken :: Lens' FoldersUndelete (Maybe Text)
fuAccessToken
  = lens _fuAccessToken
      (\ s a -> s{_fuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fuUploadType :: Lens' FoldersUndelete (Maybe Text)
fuUploadType
  = lens _fuUploadType (\ s a -> s{_fuUploadType = a})

-- | Multipart request metadata.
fuPayload :: Lens' FoldersUndelete UndeleteFolderRequest
fuPayload
  = lens _fuPayload (\ s a -> s{_fuPayload = a})

-- | The resource name of the Folder to undelete. Must be of the form
-- \`folders\/{folder_id}\`.
fuName :: Lens' FoldersUndelete Text
fuName = lens _fuName (\ s a -> s{_fuName = a})

-- | JSONP
fuCallback :: Lens' FoldersUndelete (Maybe Text)
fuCallback
  = lens _fuCallback (\ s a -> s{_fuCallback = a})

instance GoogleRequest FoldersUndelete where
        type Rs FoldersUndelete = Folder
        type Scopes FoldersUndelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient FoldersUndelete'{..}
          = go _fuName _fuXgafv _fuUploadProtocol
              _fuAccessToken
              _fuUploadType
              _fuCallback
              (Just AltJSON)
              _fuPayload
              resourceManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy FoldersUndeleteResource)
                      mempty
