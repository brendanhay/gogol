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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Uploads and attaches a new Expansion File to the APK specified.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.expansionfiles.upload@.
module Network.Google.Resource.AndroidPublisher.Edits.ExpansionFiles.Upload
    (
    -- * REST Resource
      EditsExpansionFilesUploadResource

    -- * Creating a Request
    , editsExpansionFilesUpload
    , EditsExpansionFilesUpload

    -- * Request Lenses
    , ePackageName
    , eAPKVersionCode
    , eExpansionFileType
    , eEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.expansionfiles.upload@ method which the
-- 'EditsExpansionFilesUpload' request conforms to.
type EditsExpansionFilesUploadResource =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "apks" :>
                   Capture "apkVersionCode" (JSONText Int32) :>
                     "expansionFiles" :>
                       Capture "expansionFileType"
                         EditsExpansionFilesUploadExpansionFileType
                         :>
                         QueryParam "alt" AltJSON :>
                           Post '[JSON] ExpansionFilesUploadResponse
       :<|>
       "upload" :>
         "androidpublisher" :>
           "v2" :>
             "applications" :>
               Capture "packageName" Text :>
                 "edits" :>
                   Capture "editId" Text :>
                     "apks" :>
                       Capture "apkVersionCode" (JSONText Int32) :>
                         "expansionFiles" :>
                           Capture "expansionFileType"
                             EditsExpansionFilesUploadExpansionFileType
                             :>
                             QueryParam "alt" AltJSON :>
                               QueryParam "uploadType" AltMedia :>
                                 ReqBody '[OctetStream] RequestBody :>
                                   Post '[JSON] ExpansionFilesUploadResponse

-- | Uploads and attaches a new Expansion File to the APK specified.
--
-- /See:/ 'editsExpansionFilesUpload' smart constructor.
data EditsExpansionFilesUpload = EditsExpansionFilesUpload
    { _ePackageName       :: !Text
    , _eAPKVersionCode    :: !(JSONText Int32)
    , _eExpansionFileType :: !EditsExpansionFilesUploadExpansionFileType
    , _eEditId            :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsExpansionFilesUpload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ePackageName'
--
-- * 'eAPKVersionCode'
--
-- * 'eExpansionFileType'
--
-- * 'eEditId'
editsExpansionFilesUpload
    :: Text -- ^ 'ePackageName'
    -> Int32 -- ^ 'eAPKVersionCode'
    -> EditsExpansionFilesUploadExpansionFileType -- ^ 'eExpansionFileType'
    -> Text -- ^ 'eEditId'
    -> EditsExpansionFilesUpload
editsExpansionFilesUpload pEPackageName_ pEAPKVersionCode_ pEExpansionFileType_ pEEditId_ =
    EditsExpansionFilesUpload
    { _ePackageName = pEPackageName_
    , _eAPKVersionCode = _Coerce # pEAPKVersionCode_
    , _eExpansionFileType = pEExpansionFileType_
    , _eEditId = pEEditId_
    }

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
ePackageName :: Lens' EditsExpansionFilesUpload Text
ePackageName
  = lens _ePackageName (\ s a -> s{_ePackageName = a})

-- | The version code of the APK whose Expansion File configuration is being
-- read or modified.
eAPKVersionCode :: Lens' EditsExpansionFilesUpload Int32
eAPKVersionCode
  = lens _eAPKVersionCode
      (\ s a -> s{_eAPKVersionCode = a})
      . _Coerce

eExpansionFileType :: Lens' EditsExpansionFilesUpload EditsExpansionFilesUploadExpansionFileType
eExpansionFileType
  = lens _eExpansionFileType
      (\ s a -> s{_eExpansionFileType = a})

-- | Unique identifier for this edit.
eEditId :: Lens' EditsExpansionFilesUpload Text
eEditId = lens _eEditId (\ s a -> s{_eEditId = a})

instance GoogleRequest EditsExpansionFilesUpload
         where
        type Rs EditsExpansionFilesUpload =
             ExpansionFilesUploadResponse
        requestClient EditsExpansionFilesUpload{..}
          = go _ePackageName _eEditId _eAPKVersionCode
              _eExpansionFileType
              (Just AltJSON)
              androidPublisherService
          where go :<|> _
                  = buildClient
                      (Proxy :: Proxy EditsExpansionFilesUploadResource)
                      mempty

instance GoogleRequest
         (MediaUpload EditsExpansionFilesUpload) where
        type Rs (MediaUpload EditsExpansionFilesUpload) =
             ExpansionFilesUploadResponse
        requestClient
          (MediaUpload EditsExpansionFilesUpload{..} body)
          = go _ePackageName _eEditId _eAPKVersionCode
              _eExpansionFileType
              (Just AltJSON)
              (Just AltMedia)
              body
              androidPublisherService
          where _ :<|> go
                  = buildClient
                      (Proxy :: Proxy EditsExpansionFilesUploadResource)
                      mempty
