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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Uploads the deobfuscation file of the specified APK. If a deobfuscation
-- file already exists, it will be replaced.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.deobfuscationfiles.upload@.
module Network.Google.Resource.AndroidPublisher.Edits.DeobfuscationFiles.Upload
    (
    -- * REST Resource
      EditsDeobfuscationFilesUploadResource

    -- * Creating a Request
    , editsDeobfuscationFilesUpload
    , EditsDeobfuscationFilesUpload

    -- * Request Lenses
    , edfuDeobfuscationFileType
    , edfuPackageName
    , edfuAPKVersionCode
    , edfuEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

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
                         QueryParam "alt" AltJSON :>
                           Post '[JSON] DeobfuscationFilesUploadResponse
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
                             QueryParam "alt" AltJSON :>
                               QueryParam "uploadType" AltMedia :>
                                 AltMedia :>
                                   Post '[JSON] DeobfuscationFilesUploadResponse

-- | Uploads the deobfuscation file of the specified APK. If a deobfuscation
-- file already exists, it will be replaced.
--
-- /See:/ 'editsDeobfuscationFilesUpload' smart constructor.
data EditsDeobfuscationFilesUpload =
  EditsDeobfuscationFilesUpload'
    { _edfuDeobfuscationFileType :: !EditsDeobfuscationFilesUploadDeobfuscationFileType
    , _edfuPackageName           :: !Text
    , _edfuAPKVersionCode        :: !(Textual Int32)
    , _edfuEditId                :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'EditsDeobfuscationFilesUpload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edfuDeobfuscationFileType'
--
-- * 'edfuPackageName'
--
-- * 'edfuAPKVersionCode'
--
-- * 'edfuEditId'
editsDeobfuscationFilesUpload
    :: EditsDeobfuscationFilesUploadDeobfuscationFileType -- ^ 'edfuDeobfuscationFileType'
    -> Text -- ^ 'edfuPackageName'
    -> Int32 -- ^ 'edfuAPKVersionCode'
    -> Text -- ^ 'edfuEditId'
    -> EditsDeobfuscationFilesUpload
editsDeobfuscationFilesUpload pEdfuDeobfuscationFileType_ pEdfuPackageName_ pEdfuAPKVersionCode_ pEdfuEditId_ =
  EditsDeobfuscationFilesUpload'
    { _edfuDeobfuscationFileType = pEdfuDeobfuscationFileType_
    , _edfuPackageName = pEdfuPackageName_
    , _edfuAPKVersionCode = _Coerce # pEdfuAPKVersionCode_
    , _edfuEditId = pEdfuEditId_
    }

edfuDeobfuscationFileType :: Lens' EditsDeobfuscationFilesUpload EditsDeobfuscationFilesUploadDeobfuscationFileType
edfuDeobfuscationFileType
  = lens _edfuDeobfuscationFileType
      (\ s a -> s{_edfuDeobfuscationFileType = a})

-- | Unique identifier of the Android app for which the deobfuscatiuon files
-- are being uploaded; for example, \"com.spiffygame\".
edfuPackageName :: Lens' EditsDeobfuscationFilesUpload Text
edfuPackageName
  = lens _edfuPackageName
      (\ s a -> s{_edfuPackageName = a})

-- | The version code of the APK whose deobfuscation file is being uploaded.
edfuAPKVersionCode :: Lens' EditsDeobfuscationFilesUpload Int32
edfuAPKVersionCode
  = lens _edfuAPKVersionCode
      (\ s a -> s{_edfuAPKVersionCode = a})
      . _Coerce

-- | Unique identifier for this edit.
edfuEditId :: Lens' EditsDeobfuscationFilesUpload Text
edfuEditId
  = lens _edfuEditId (\ s a -> s{_edfuEditId = a})

instance GoogleRequest EditsDeobfuscationFilesUpload
         where
        type Rs EditsDeobfuscationFilesUpload =
             DeobfuscationFilesUploadResponse
        type Scopes EditsDeobfuscationFilesUpload =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsDeobfuscationFilesUpload'{..}
          = go _edfuPackageName _edfuEditId _edfuAPKVersionCode
              _edfuDeobfuscationFileType
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
              (Just AltJSON)
              (Just AltMedia)
              body
              androidPublisherService
          where _ :<|> go
                  = buildClient
                      (Proxy ::
                         Proxy EditsDeobfuscationFilesUploadResource)
                      mempty
