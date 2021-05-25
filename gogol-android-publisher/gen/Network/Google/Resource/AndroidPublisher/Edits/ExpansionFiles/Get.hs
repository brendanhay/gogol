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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.ExpansionFiles.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fetches the expansion file configuration for the specified APK.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.expansionfiles.get@.
module Network.Google.Resource.AndroidPublisher.Edits.ExpansionFiles.Get
    (
    -- * REST Resource
      EditsExpansionFilesGetResource

    -- * Creating a Request
    , editsExpansionFilesGet
    , EditsExpansionFilesGet

    -- * Request Lenses
    , eefgXgafv
    , eefgUploadProtocol
    , eefgPackageName
    , eefgAPKVersionCode
    , eefgAccessToken
    , eefgUploadType
    , eefgExpansionFileType
    , eefgEditId
    , eefgCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.expansionfiles.get@ method which the
-- 'EditsExpansionFilesGet' request conforms to.
type EditsExpansionFilesGetResource =
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
                         EditsExpansionFilesGetExpansionFileType
                         :>
                         QueryParam "$.xgafv" Xgafv :>
                           QueryParam "upload_protocol" Text :>
                             QueryParam "access_token" Text :>
                               QueryParam "uploadType" Text :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] ExpansionFile

-- | Fetches the expansion file configuration for the specified APK.
--
-- /See:/ 'editsExpansionFilesGet' smart constructor.
data EditsExpansionFilesGet =
  EditsExpansionFilesGet'
    { _eefgXgafv :: !(Maybe Xgafv)
    , _eefgUploadProtocol :: !(Maybe Text)
    , _eefgPackageName :: !Text
    , _eefgAPKVersionCode :: !(Textual Int32)
    , _eefgAccessToken :: !(Maybe Text)
    , _eefgUploadType :: !(Maybe Text)
    , _eefgExpansionFileType :: !EditsExpansionFilesGetExpansionFileType
    , _eefgEditId :: !Text
    , _eefgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EditsExpansionFilesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eefgXgafv'
--
-- * 'eefgUploadProtocol'
--
-- * 'eefgPackageName'
--
-- * 'eefgAPKVersionCode'
--
-- * 'eefgAccessToken'
--
-- * 'eefgUploadType'
--
-- * 'eefgExpansionFileType'
--
-- * 'eefgEditId'
--
-- * 'eefgCallback'
editsExpansionFilesGet
    :: Text -- ^ 'eefgPackageName'
    -> Int32 -- ^ 'eefgAPKVersionCode'
    -> EditsExpansionFilesGetExpansionFileType -- ^ 'eefgExpansionFileType'
    -> Text -- ^ 'eefgEditId'
    -> EditsExpansionFilesGet
editsExpansionFilesGet pEefgPackageName_ pEefgAPKVersionCode_ pEefgExpansionFileType_ pEefgEditId_ =
  EditsExpansionFilesGet'
    { _eefgXgafv = Nothing
    , _eefgUploadProtocol = Nothing
    , _eefgPackageName = pEefgPackageName_
    , _eefgAPKVersionCode = _Coerce # pEefgAPKVersionCode_
    , _eefgAccessToken = Nothing
    , _eefgUploadType = Nothing
    , _eefgExpansionFileType = pEefgExpansionFileType_
    , _eefgEditId = pEefgEditId_
    , _eefgCallback = Nothing
    }


-- | V1 error format.
eefgXgafv :: Lens' EditsExpansionFilesGet (Maybe Xgafv)
eefgXgafv
  = lens _eefgXgafv (\ s a -> s{_eefgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
eefgUploadProtocol :: Lens' EditsExpansionFilesGet (Maybe Text)
eefgUploadProtocol
  = lens _eefgUploadProtocol
      (\ s a -> s{_eefgUploadProtocol = a})

-- | Package name of the app.
eefgPackageName :: Lens' EditsExpansionFilesGet Text
eefgPackageName
  = lens _eefgPackageName
      (\ s a -> s{_eefgPackageName = a})

-- | The version code of the APK whose expansion file configuration is being
-- read or modified.
eefgAPKVersionCode :: Lens' EditsExpansionFilesGet Int32
eefgAPKVersionCode
  = lens _eefgAPKVersionCode
      (\ s a -> s{_eefgAPKVersionCode = a})
      . _Coerce

-- | OAuth access token.
eefgAccessToken :: Lens' EditsExpansionFilesGet (Maybe Text)
eefgAccessToken
  = lens _eefgAccessToken
      (\ s a -> s{_eefgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
eefgUploadType :: Lens' EditsExpansionFilesGet (Maybe Text)
eefgUploadType
  = lens _eefgUploadType
      (\ s a -> s{_eefgUploadType = a})

-- | The file type of the file configuration which is being read or modified.
eefgExpansionFileType :: Lens' EditsExpansionFilesGet EditsExpansionFilesGetExpansionFileType
eefgExpansionFileType
  = lens _eefgExpansionFileType
      (\ s a -> s{_eefgExpansionFileType = a})

-- | Identifier of the edit.
eefgEditId :: Lens' EditsExpansionFilesGet Text
eefgEditId
  = lens _eefgEditId (\ s a -> s{_eefgEditId = a})

-- | JSONP
eefgCallback :: Lens' EditsExpansionFilesGet (Maybe Text)
eefgCallback
  = lens _eefgCallback (\ s a -> s{_eefgCallback = a})

instance GoogleRequest EditsExpansionFilesGet where
        type Rs EditsExpansionFilesGet = ExpansionFile
        type Scopes EditsExpansionFilesGet =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsExpansionFilesGet'{..}
          = go _eefgPackageName _eefgEditId _eefgAPKVersionCode
              _eefgExpansionFileType
              _eefgXgafv
              _eefgUploadProtocol
              _eefgAccessToken
              _eefgUploadType
              _eefgCallback
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsExpansionFilesGetResource)
                      mempty
