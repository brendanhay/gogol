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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.DeobfuscationFiles.Upload
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Uploads a new deobfuscation file and attaches to the specified APK.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.deobfuscationfiles.upload@.
module Network.Google.Resource.AndroidPublisher.Edits.DeobfuscationFiles.Upload
    (
    -- * REST Resource
      EditsDeobfuscationFilesUploadResource

    -- * Creating a Request
    , editsDeobfuscationFilesUpload
    , EditsDeobfuscationFilesUpload

    -- * Request Lenses
    , edfuDeobfuscationFileType
    , edfuXgafv
    , edfuUploadProtocol
    , edfuPackageName
    , edfuAPKVersionCode
    , edfuAccessToken
    , edfuUploadType
    , edfuEditId
    , edfuCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.deobfuscationfiles.upload@ method which the
-- 'EditsDeobfuscationFilesUpload' request conforms to.
type EditsDeobfuscationFilesUploadResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "apks" :>
                   Capture "apkVersionCode" (Textual Int32) :>
                     "deobfuscationFiles" :>
                       Capture "deobfuscationFileType"
                         EditsDeobfuscationFilesUploadDeobfuscationFileType
                         :>
                         QueryParam "$.xgafv" Xgafv :>
                           QueryParam "upload_protocol" Text :>
                             QueryParam "access_token" Text :>
                               QueryParam "uploadType" Text :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Post '[JSON]
                                       DeobfuscationFilesUploadResponse
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
                         "deobfuscationFiles" :>
                           Capture "deobfuscationFileType"
                             EditsDeobfuscationFilesUploadDeobfuscationFileType
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
                                               DeobfuscationFilesUploadResponse

-- | Uploads a new deobfuscation file and attaches to the specified APK.
--
-- /See:/ 'editsDeobfuscationFilesUpload' smart constructor.
data EditsDeobfuscationFilesUpload =
  EditsDeobfuscationFilesUpload'
    { _edfuDeobfuscationFileType :: !EditsDeobfuscationFilesUploadDeobfuscationFileType
    , _edfuXgafv :: !(Maybe Xgafv)
    , _edfuUploadProtocol :: !(Maybe Text)
    , _edfuPackageName :: !Text
    , _edfuAPKVersionCode :: !(Textual Int32)
    , _edfuAccessToken :: !(Maybe Text)
    , _edfuUploadType :: !(Maybe Text)
    , _edfuEditId :: !Text
    , _edfuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EditsDeobfuscationFilesUpload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edfuDeobfuscationFileType'
--
-- * 'edfuXgafv'
--
-- * 'edfuUploadProtocol'
--
-- * 'edfuPackageName'
--
-- * 'edfuAPKVersionCode'
--
-- * 'edfuAccessToken'
--
-- * 'edfuUploadType'
--
-- * 'edfuEditId'
--
-- * 'edfuCallback'
editsDeobfuscationFilesUpload
    :: EditsDeobfuscationFilesUploadDeobfuscationFileType -- ^ 'edfuDeobfuscationFileType'
    -> Text -- ^ 'edfuPackageName'
    -> Int32 -- ^ 'edfuAPKVersionCode'
    -> Text -- ^ 'edfuEditId'
    -> EditsDeobfuscationFilesUpload
editsDeobfuscationFilesUpload pEdfuDeobfuscationFileType_ pEdfuPackageName_ pEdfuAPKVersionCode_ pEdfuEditId_ =
  EditsDeobfuscationFilesUpload'
    { _edfuDeobfuscationFileType = pEdfuDeobfuscationFileType_
    , _edfuXgafv = Nothing
    , _edfuUploadProtocol = Nothing
    , _edfuPackageName = pEdfuPackageName_
    , _edfuAPKVersionCode = _Coerce # pEdfuAPKVersionCode_
    , _edfuAccessToken = Nothing
    , _edfuUploadType = Nothing
    , _edfuEditId = pEdfuEditId_
    , _edfuCallback = Nothing
    }


-- | The type of the deobfuscation file.
edfuDeobfuscationFileType :: Lens' EditsDeobfuscationFilesUpload EditsDeobfuscationFilesUploadDeobfuscationFileType
edfuDeobfuscationFileType
  = lens _edfuDeobfuscationFileType
      (\ s a -> s{_edfuDeobfuscationFileType = a})

-- | V1 error format.
edfuXgafv :: Lens' EditsDeobfuscationFilesUpload (Maybe Xgafv)
edfuXgafv
  = lens _edfuXgafv (\ s a -> s{_edfuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
edfuUploadProtocol :: Lens' EditsDeobfuscationFilesUpload (Maybe Text)
edfuUploadProtocol
  = lens _edfuUploadProtocol
      (\ s a -> s{_edfuUploadProtocol = a})

-- | Unique identifier for the Android app.
edfuPackageName :: Lens' EditsDeobfuscationFilesUpload Text
edfuPackageName
  = lens _edfuPackageName
      (\ s a -> s{_edfuPackageName = a})

-- | The version code of the APK whose Deobfuscation File is being uploaded.
edfuAPKVersionCode :: Lens' EditsDeobfuscationFilesUpload Int32
edfuAPKVersionCode
  = lens _edfuAPKVersionCode
      (\ s a -> s{_edfuAPKVersionCode = a})
      . _Coerce

-- | OAuth access token.
edfuAccessToken :: Lens' EditsDeobfuscationFilesUpload (Maybe Text)
edfuAccessToken
  = lens _edfuAccessToken
      (\ s a -> s{_edfuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
edfuUploadType :: Lens' EditsDeobfuscationFilesUpload (Maybe Text)
edfuUploadType
  = lens _edfuUploadType
      (\ s a -> s{_edfuUploadType = a})

-- | Unique identifier for this edit.
edfuEditId :: Lens' EditsDeobfuscationFilesUpload Text
edfuEditId
  = lens _edfuEditId (\ s a -> s{_edfuEditId = a})

-- | JSONP
edfuCallback :: Lens' EditsDeobfuscationFilesUpload (Maybe Text)
edfuCallback
  = lens _edfuCallback (\ s a -> s{_edfuCallback = a})

instance GoogleRequest EditsDeobfuscationFilesUpload
         where
        type Rs EditsDeobfuscationFilesUpload =
             DeobfuscationFilesUploadResponse
        type Scopes EditsDeobfuscationFilesUpload =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsDeobfuscationFilesUpload'{..}
          = go _edfuPackageName _edfuEditId _edfuAPKVersionCode
              _edfuDeobfuscationFileType
              _edfuXgafv
              _edfuUploadProtocol
              _edfuAccessToken
              _edfuUploadType
              _edfuCallback
              (Just AltJSON)
              androidPublisherService
          where go :<|> _
                  = buildClient
                      (Proxy ::
                         Proxy EditsDeobfuscationFilesUploadResource)
                      mempty

instance GoogleRequest
           (MediaUpload EditsDeobfuscationFilesUpload)
         where
        type Rs (MediaUpload EditsDeobfuscationFilesUpload) =
             DeobfuscationFilesUploadResponse
        type Scopes
               (MediaUpload EditsDeobfuscationFilesUpload)
             = Scopes EditsDeobfuscationFilesUpload
        requestClient
          (MediaUpload EditsDeobfuscationFilesUpload'{..} body)
          = go _edfuPackageName _edfuEditId _edfuAPKVersionCode
              _edfuDeobfuscationFileType
              _edfuXgafv
              _edfuUploadProtocol
              _edfuAccessToken
              _edfuUploadType
              _edfuCallback
              (Just AltJSON)
              (Just AltMedia)
              body
              androidPublisherService
          where _ :<|> go
                  = buildClient
                      (Proxy ::
                         Proxy EditsDeobfuscationFilesUploadResource)
                      mempty
