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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.ExpansionFiles.Upload
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Uploads a new expansion file and attaches to the specified APK.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.expansionfiles.upload@.
module Network.Google.Resource.AndroidPublisher.Edits.ExpansionFiles.Upload
    (
    -- * REST Resource
      EditsExpansionFilesUploadResource

    -- * Creating a Request
    , editsExpansionFilesUpload
    , EditsExpansionFilesUpload

    -- * Request Lenses
    , eXgafv
    , eUploadProtocol
    , ePackageName
    , eAPKVersionCode
    , eAccessToken
    , eUploadType
    , eExpansionFileType
    , eEditId
    , eCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.expansionfiles.upload@ method which the
-- 'EditsExpansionFilesUpload' request conforms to.
type EditsExpansionFilesUploadResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "apks" :>
                   Capture "apkVersionCode" (Textual Int32) :>
                     "expansionFiles" :>
                       Capture "expansionFileType"
                         EditsExpansionFilesUploadExpansionFileType
                         :>
                         QueryParam "$.xgafv" Xgafv :>
                           QueryParam "upload_protocol" Text :>
                             QueryParam "access_token" Text :>
                               QueryParam "uploadType" Text :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Post '[JSON] ExpansionFilesUploadResponse
       :<|>
       "upload" :>
         "androidpublisher" :>
           "v3" :>
             "applications" :>
               Capture "packageName" Text :>
                 "edits" :>
                   Capture "editId" Text :>
                     "apks" :>
                       Capture "apkVersionCode" (Textual Int32) :>
                         "expansionFiles" :>
                           Capture "expansionFileType"
                             EditsExpansionFilesUploadExpansionFileType
                             :>
                             QueryParam "$.xgafv" Xgafv :>
                               QueryParam "upload_protocol" Text :>
                                 QueryParam "access_token" Text :>
                                   QueryParam "uploadType" Text :>
                                     QueryParam "callback" Text :>
                                       QueryParam "alt" AltJSON :>
                                         QueryParam "uploadType" AltMedia :>
                                           AltMedia :>
                                             Post '[JSON]
                                               ExpansionFilesUploadResponse

-- | Uploads a new expansion file and attaches to the specified APK.
--
-- /See:/ 'editsExpansionFilesUpload' smart constructor.
data EditsExpansionFilesUpload =
  EditsExpansionFilesUpload'
    { _eXgafv :: !(Maybe Xgafv)
    , _eUploadProtocol :: !(Maybe Text)
    , _ePackageName :: !Text
    , _eAPKVersionCode :: !(Textual Int32)
    , _eAccessToken :: !(Maybe Text)
    , _eUploadType :: !(Maybe Text)
    , _eExpansionFileType :: !EditsExpansionFilesUploadExpansionFileType
    , _eEditId :: !Text
    , _eCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EditsExpansionFilesUpload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eXgafv'
--
-- * 'eUploadProtocol'
--
-- * 'ePackageName'
--
-- * 'eAPKVersionCode'
--
-- * 'eAccessToken'
--
-- * 'eUploadType'
--
-- * 'eExpansionFileType'
--
-- * 'eEditId'
--
-- * 'eCallback'
editsExpansionFilesUpload
    :: Text -- ^ 'ePackageName'
    -> Int32 -- ^ 'eAPKVersionCode'
    -> EditsExpansionFilesUploadExpansionFileType -- ^ 'eExpansionFileType'
    -> Text -- ^ 'eEditId'
    -> EditsExpansionFilesUpload
editsExpansionFilesUpload pEPackageName_ pEAPKVersionCode_ pEExpansionFileType_ pEEditId_ =
  EditsExpansionFilesUpload'
    { _eXgafv = Nothing
    , _eUploadProtocol = Nothing
    , _ePackageName = pEPackageName_
    , _eAPKVersionCode = _Coerce # pEAPKVersionCode_
    , _eAccessToken = Nothing
    , _eUploadType = Nothing
    , _eExpansionFileType = pEExpansionFileType_
    , _eEditId = pEEditId_
    , _eCallback = Nothing
    }


-- | V1 error format.
eXgafv :: Lens' EditsExpansionFilesUpload (Maybe Xgafv)
eXgafv = lens _eXgafv (\ s a -> s{_eXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
eUploadProtocol :: Lens' EditsExpansionFilesUpload (Maybe Text)
eUploadProtocol
  = lens _eUploadProtocol
      (\ s a -> s{_eUploadProtocol = a})

-- | Package name of the app.
ePackageName :: Lens' EditsExpansionFilesUpload Text
ePackageName
  = lens _ePackageName (\ s a -> s{_ePackageName = a})

-- | The version code of the APK whose expansion file configuration is being
-- read or modified.
eAPKVersionCode :: Lens' EditsExpansionFilesUpload Int32
eAPKVersionCode
  = lens _eAPKVersionCode
      (\ s a -> s{_eAPKVersionCode = a})
      . _Coerce

-- | OAuth access token.
eAccessToken :: Lens' EditsExpansionFilesUpload (Maybe Text)
eAccessToken
  = lens _eAccessToken (\ s a -> s{_eAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
eUploadType :: Lens' EditsExpansionFilesUpload (Maybe Text)
eUploadType
  = lens _eUploadType (\ s a -> s{_eUploadType = a})

-- | The file type of the expansion file configuration which is being
-- updated.
eExpansionFileType :: Lens' EditsExpansionFilesUpload EditsExpansionFilesUploadExpansionFileType
eExpansionFileType
  = lens _eExpansionFileType
      (\ s a -> s{_eExpansionFileType = a})

-- | Identifier of the edit.
eEditId :: Lens' EditsExpansionFilesUpload Text
eEditId = lens _eEditId (\ s a -> s{_eEditId = a})

-- | JSONP
eCallback :: Lens' EditsExpansionFilesUpload (Maybe Text)
eCallback
  = lens _eCallback (\ s a -> s{_eCallback = a})

instance GoogleRequest EditsExpansionFilesUpload
         where
        type Rs EditsExpansionFilesUpload =
             ExpansionFilesUploadResponse
        type Scopes EditsExpansionFilesUpload =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsExpansionFilesUpload'{..}
          = go _ePackageName _eEditId _eAPKVersionCode
              _eExpansionFileType
              _eXgafv
              _eUploadProtocol
              _eAccessToken
              _eUploadType
              _eCallback
              (Just AltJSON)
              androidPublisherService
          where go :<|> _
                  = buildClient
                      (Proxy :: Proxy EditsExpansionFilesUploadResource)
                      mempty

instance GoogleRequest
           (MediaUpload EditsExpansionFilesUpload)
         where
        type Rs (MediaUpload EditsExpansionFilesUpload) =
             ExpansionFilesUploadResponse
        type Scopes (MediaUpload EditsExpansionFilesUpload) =
             Scopes EditsExpansionFilesUpload
        requestClient
          (MediaUpload EditsExpansionFilesUpload'{..} body)
          = go _ePackageName _eEditId _eAPKVersionCode
              _eExpansionFileType
              _eXgafv
              _eUploadProtocol
              _eAccessToken
              _eUploadType
              _eCallback
              (Just AltJSON)
              (Just AltMedia)
              body
              androidPublisherService
          where _ :<|> go
                  = buildClient
                      (Proxy :: Proxy EditsExpansionFilesUploadResource)
                      mempty
