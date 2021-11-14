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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.ExpansionFiles.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches the APK\'s expansion file configuration to reference another
-- APK\'s expansion file. To add a new expansion file use the Upload
-- method.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.expansionfiles.patch@.
module Network.Google.Resource.AndroidPublisher.Edits.ExpansionFiles.Patch
    (
    -- * REST Resource
      EditsExpansionFilesPatchResource

    -- * Creating a Request
    , editsExpansionFilesPatch
    , EditsExpansionFilesPatch

    -- * Request Lenses
    , eefpXgafv
    , eefpUploadProtocol
    , eefpPackageName
    , eefpAPKVersionCode
    , eefpAccessToken
    , eefpUploadType
    , eefpPayload
    , eefpExpansionFileType
    , eefpEditId
    , eefpCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.expansionfiles.patch@ method which the
-- 'EditsExpansionFilesPatch' request conforms to.
type EditsExpansionFilesPatchResource =
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
                         EditsExpansionFilesPatchExpansionFileType
                         :>
                         QueryParam "$.xgafv" Xgafv :>
                           QueryParam "upload_protocol" Text :>
                             QueryParam "access_token" Text :>
                               QueryParam "uploadType" Text :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     ReqBody '[JSON] ExpansionFile :>
                                       Patch '[JSON] ExpansionFile

-- | Patches the APK\'s expansion file configuration to reference another
-- APK\'s expansion file. To add a new expansion file use the Upload
-- method.
--
-- /See:/ 'editsExpansionFilesPatch' smart constructor.
data EditsExpansionFilesPatch =
  EditsExpansionFilesPatch'
    { _eefpXgafv :: !(Maybe Xgafv)
    , _eefpUploadProtocol :: !(Maybe Text)
    , _eefpPackageName :: !Text
    , _eefpAPKVersionCode :: !(Textual Int32)
    , _eefpAccessToken :: !(Maybe Text)
    , _eefpUploadType :: !(Maybe Text)
    , _eefpPayload :: !ExpansionFile
    , _eefpExpansionFileType :: !EditsExpansionFilesPatchExpansionFileType
    , _eefpEditId :: !Text
    , _eefpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EditsExpansionFilesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eefpXgafv'
--
-- * 'eefpUploadProtocol'
--
-- * 'eefpPackageName'
--
-- * 'eefpAPKVersionCode'
--
-- * 'eefpAccessToken'
--
-- * 'eefpUploadType'
--
-- * 'eefpPayload'
--
-- * 'eefpExpansionFileType'
--
-- * 'eefpEditId'
--
-- * 'eefpCallback'
editsExpansionFilesPatch
    :: Text -- ^ 'eefpPackageName'
    -> Int32 -- ^ 'eefpAPKVersionCode'
    -> ExpansionFile -- ^ 'eefpPayload'
    -> EditsExpansionFilesPatchExpansionFileType -- ^ 'eefpExpansionFileType'
    -> Text -- ^ 'eefpEditId'
    -> EditsExpansionFilesPatch
editsExpansionFilesPatch pEefpPackageName_ pEefpAPKVersionCode_ pEefpPayload_ pEefpExpansionFileType_ pEefpEditId_ =
  EditsExpansionFilesPatch'
    { _eefpXgafv = Nothing
    , _eefpUploadProtocol = Nothing
    , _eefpPackageName = pEefpPackageName_
    , _eefpAPKVersionCode = _Coerce # pEefpAPKVersionCode_
    , _eefpAccessToken = Nothing
    , _eefpUploadType = Nothing
    , _eefpPayload = pEefpPayload_
    , _eefpExpansionFileType = pEefpExpansionFileType_
    , _eefpEditId = pEefpEditId_
    , _eefpCallback = Nothing
    }


-- | V1 error format.
eefpXgafv :: Lens' EditsExpansionFilesPatch (Maybe Xgafv)
eefpXgafv
  = lens _eefpXgafv (\ s a -> s{_eefpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
eefpUploadProtocol :: Lens' EditsExpansionFilesPatch (Maybe Text)
eefpUploadProtocol
  = lens _eefpUploadProtocol
      (\ s a -> s{_eefpUploadProtocol = a})

-- | Package name of the app.
eefpPackageName :: Lens' EditsExpansionFilesPatch Text
eefpPackageName
  = lens _eefpPackageName
      (\ s a -> s{_eefpPackageName = a})

-- | The version code of the APK whose expansion file configuration is being
-- read or modified.
eefpAPKVersionCode :: Lens' EditsExpansionFilesPatch Int32
eefpAPKVersionCode
  = lens _eefpAPKVersionCode
      (\ s a -> s{_eefpAPKVersionCode = a})
      . _Coerce

-- | OAuth access token.
eefpAccessToken :: Lens' EditsExpansionFilesPatch (Maybe Text)
eefpAccessToken
  = lens _eefpAccessToken
      (\ s a -> s{_eefpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
eefpUploadType :: Lens' EditsExpansionFilesPatch (Maybe Text)
eefpUploadType
  = lens _eefpUploadType
      (\ s a -> s{_eefpUploadType = a})

-- | Multipart request metadata.
eefpPayload :: Lens' EditsExpansionFilesPatch ExpansionFile
eefpPayload
  = lens _eefpPayload (\ s a -> s{_eefpPayload = a})

-- | The file type of the expansion file configuration which is being
-- updated.
eefpExpansionFileType :: Lens' EditsExpansionFilesPatch EditsExpansionFilesPatchExpansionFileType
eefpExpansionFileType
  = lens _eefpExpansionFileType
      (\ s a -> s{_eefpExpansionFileType = a})

-- | Identifier of the edit.
eefpEditId :: Lens' EditsExpansionFilesPatch Text
eefpEditId
  = lens _eefpEditId (\ s a -> s{_eefpEditId = a})

-- | JSONP
eefpCallback :: Lens' EditsExpansionFilesPatch (Maybe Text)
eefpCallback
  = lens _eefpCallback (\ s a -> s{_eefpCallback = a})

instance GoogleRequest EditsExpansionFilesPatch where
        type Rs EditsExpansionFilesPatch = ExpansionFile
        type Scopes EditsExpansionFilesPatch =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsExpansionFilesPatch'{..}
          = go _eefpPackageName _eefpEditId _eefpAPKVersionCode
              _eefpExpansionFileType
              _eefpXgafv
              _eefpUploadProtocol
              _eefpAccessToken
              _eefpUploadType
              _eefpCallback
              (Just AltJSON)
              _eefpPayload
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsExpansionFilesPatchResource)
                      mempty
