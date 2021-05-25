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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.ExpansionFiles.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the APK\'s expansion file configuration to reference another
-- APK\'s expansion file. To add a new expansion file use the Upload
-- method.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.expansionfiles.update@.
module Network.Google.Resource.AndroidPublisher.Edits.ExpansionFiles.Update
    (
    -- * REST Resource
      EditsExpansionFilesUpdateResource

    -- * Creating a Request
    , editsExpansionFilesUpdate
    , EditsExpansionFilesUpdate

    -- * Request Lenses
    , eefuXgafv
    , eefuUploadProtocol
    , eefuPackageName
    , eefuAPKVersionCode
    , eefuAccessToken
    , eefuUploadType
    , eefuPayload
    , eefuExpansionFileType
    , eefuEditId
    , eefuCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.expansionfiles.update@ method which the
-- 'EditsExpansionFilesUpdate' request conforms to.
type EditsExpansionFilesUpdateResource =
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
                         EditsExpansionFilesUpdateExpansionFileType
                         :>
                         QueryParam "$.xgafv" Xgafv :>
                           QueryParam "upload_protocol" Text :>
                             QueryParam "access_token" Text :>
                               QueryParam "uploadType" Text :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     ReqBody '[JSON] ExpansionFile :>
                                       Put '[JSON] ExpansionFile

-- | Updates the APK\'s expansion file configuration to reference another
-- APK\'s expansion file. To add a new expansion file use the Upload
-- method.
--
-- /See:/ 'editsExpansionFilesUpdate' smart constructor.
data EditsExpansionFilesUpdate =
  EditsExpansionFilesUpdate'
    { _eefuXgafv :: !(Maybe Xgafv)
    , _eefuUploadProtocol :: !(Maybe Text)
    , _eefuPackageName :: !Text
    , _eefuAPKVersionCode :: !(Textual Int32)
    , _eefuAccessToken :: !(Maybe Text)
    , _eefuUploadType :: !(Maybe Text)
    , _eefuPayload :: !ExpansionFile
    , _eefuExpansionFileType :: !EditsExpansionFilesUpdateExpansionFileType
    , _eefuEditId :: !Text
    , _eefuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EditsExpansionFilesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eefuXgafv'
--
-- * 'eefuUploadProtocol'
--
-- * 'eefuPackageName'
--
-- * 'eefuAPKVersionCode'
--
-- * 'eefuAccessToken'
--
-- * 'eefuUploadType'
--
-- * 'eefuPayload'
--
-- * 'eefuExpansionFileType'
--
-- * 'eefuEditId'
--
-- * 'eefuCallback'
editsExpansionFilesUpdate
    :: Text -- ^ 'eefuPackageName'
    -> Int32 -- ^ 'eefuAPKVersionCode'
    -> ExpansionFile -- ^ 'eefuPayload'
    -> EditsExpansionFilesUpdateExpansionFileType -- ^ 'eefuExpansionFileType'
    -> Text -- ^ 'eefuEditId'
    -> EditsExpansionFilesUpdate
editsExpansionFilesUpdate pEefuPackageName_ pEefuAPKVersionCode_ pEefuPayload_ pEefuExpansionFileType_ pEefuEditId_ =
  EditsExpansionFilesUpdate'
    { _eefuXgafv = Nothing
    , _eefuUploadProtocol = Nothing
    , _eefuPackageName = pEefuPackageName_
    , _eefuAPKVersionCode = _Coerce # pEefuAPKVersionCode_
    , _eefuAccessToken = Nothing
    , _eefuUploadType = Nothing
    , _eefuPayload = pEefuPayload_
    , _eefuExpansionFileType = pEefuExpansionFileType_
    , _eefuEditId = pEefuEditId_
    , _eefuCallback = Nothing
    }


-- | V1 error format.
eefuXgafv :: Lens' EditsExpansionFilesUpdate (Maybe Xgafv)
eefuXgafv
  = lens _eefuXgafv (\ s a -> s{_eefuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
eefuUploadProtocol :: Lens' EditsExpansionFilesUpdate (Maybe Text)
eefuUploadProtocol
  = lens _eefuUploadProtocol
      (\ s a -> s{_eefuUploadProtocol = a})

-- | Package name of the app.
eefuPackageName :: Lens' EditsExpansionFilesUpdate Text
eefuPackageName
  = lens _eefuPackageName
      (\ s a -> s{_eefuPackageName = a})

-- | The version code of the APK whose expansion file configuration is being
-- read or modified.
eefuAPKVersionCode :: Lens' EditsExpansionFilesUpdate Int32
eefuAPKVersionCode
  = lens _eefuAPKVersionCode
      (\ s a -> s{_eefuAPKVersionCode = a})
      . _Coerce

-- | OAuth access token.
eefuAccessToken :: Lens' EditsExpansionFilesUpdate (Maybe Text)
eefuAccessToken
  = lens _eefuAccessToken
      (\ s a -> s{_eefuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
eefuUploadType :: Lens' EditsExpansionFilesUpdate (Maybe Text)
eefuUploadType
  = lens _eefuUploadType
      (\ s a -> s{_eefuUploadType = a})

-- | Multipart request metadata.
eefuPayload :: Lens' EditsExpansionFilesUpdate ExpansionFile
eefuPayload
  = lens _eefuPayload (\ s a -> s{_eefuPayload = a})

-- | The file type of the file configuration which is being read or modified.
eefuExpansionFileType :: Lens' EditsExpansionFilesUpdate EditsExpansionFilesUpdateExpansionFileType
eefuExpansionFileType
  = lens _eefuExpansionFileType
      (\ s a -> s{_eefuExpansionFileType = a})

-- | Identifier of the edit.
eefuEditId :: Lens' EditsExpansionFilesUpdate Text
eefuEditId
  = lens _eefuEditId (\ s a -> s{_eefuEditId = a})

-- | JSONP
eefuCallback :: Lens' EditsExpansionFilesUpdate (Maybe Text)
eefuCallback
  = lens _eefuCallback (\ s a -> s{_eefuCallback = a})

instance GoogleRequest EditsExpansionFilesUpdate
         where
        type Rs EditsExpansionFilesUpdate = ExpansionFile
        type Scopes EditsExpansionFilesUpdate =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsExpansionFilesUpdate'{..}
          = go _eefuPackageName _eefuEditId _eefuAPKVersionCode
              _eefuExpansionFileType
              _eefuXgafv
              _eefuUploadProtocol
              _eefuAccessToken
              _eefuUploadType
              _eefuCallback
              (Just AltJSON)
              _eefuPayload
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsExpansionFilesUpdateResource)
                      mempty
