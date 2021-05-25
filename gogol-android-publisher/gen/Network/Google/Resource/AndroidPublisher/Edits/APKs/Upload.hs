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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.APKs.Upload
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Uploads an APK and adds to the current edit.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.apks.upload@.
module Network.Google.Resource.AndroidPublisher.Edits.APKs.Upload
    (
    -- * REST Resource
      EditsAPKsUploadResource

    -- * Creating a Request
    , editsAPKsUpload
    , EditsAPKsUpload

    -- * Request Lenses
    , eapkuXgafv
    , eapkuUploadProtocol
    , eapkuPackageName
    , eapkuAccessToken
    , eapkuUploadType
    , eapkuEditId
    , eapkuCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.apks.upload@ method which the
-- 'EditsAPKsUpload' request conforms to.
type EditsAPKsUploadResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "apks" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Post '[JSON] APK
       :<|>
       "upload" :>
         "androidpublisher" :>
           "v3" :>
             "applications" :>
               Capture "packageName" Text :>
                 "edits" :>
                   Capture "editId" Text :>
                     "apks" :>
                       QueryParam "$.xgafv" Xgafv :>
                         QueryParam "upload_protocol" Text :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   QueryParam "uploadType" AltMedia :>
                                     AltMedia :> Post '[JSON] APK

-- | Uploads an APK and adds to the current edit.
--
-- /See:/ 'editsAPKsUpload' smart constructor.
data EditsAPKsUpload =
  EditsAPKsUpload'
    { _eapkuXgafv :: !(Maybe Xgafv)
    , _eapkuUploadProtocol :: !(Maybe Text)
    , _eapkuPackageName :: !Text
    , _eapkuAccessToken :: !(Maybe Text)
    , _eapkuUploadType :: !(Maybe Text)
    , _eapkuEditId :: !Text
    , _eapkuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EditsAPKsUpload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eapkuXgafv'
--
-- * 'eapkuUploadProtocol'
--
-- * 'eapkuPackageName'
--
-- * 'eapkuAccessToken'
--
-- * 'eapkuUploadType'
--
-- * 'eapkuEditId'
--
-- * 'eapkuCallback'
editsAPKsUpload
    :: Text -- ^ 'eapkuPackageName'
    -> Text -- ^ 'eapkuEditId'
    -> EditsAPKsUpload
editsAPKsUpload pEapkuPackageName_ pEapkuEditId_ =
  EditsAPKsUpload'
    { _eapkuXgafv = Nothing
    , _eapkuUploadProtocol = Nothing
    , _eapkuPackageName = pEapkuPackageName_
    , _eapkuAccessToken = Nothing
    , _eapkuUploadType = Nothing
    , _eapkuEditId = pEapkuEditId_
    , _eapkuCallback = Nothing
    }


-- | V1 error format.
eapkuXgafv :: Lens' EditsAPKsUpload (Maybe Xgafv)
eapkuXgafv
  = lens _eapkuXgafv (\ s a -> s{_eapkuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
eapkuUploadProtocol :: Lens' EditsAPKsUpload (Maybe Text)
eapkuUploadProtocol
  = lens _eapkuUploadProtocol
      (\ s a -> s{_eapkuUploadProtocol = a})

-- | Package name of the app.
eapkuPackageName :: Lens' EditsAPKsUpload Text
eapkuPackageName
  = lens _eapkuPackageName
      (\ s a -> s{_eapkuPackageName = a})

-- | OAuth access token.
eapkuAccessToken :: Lens' EditsAPKsUpload (Maybe Text)
eapkuAccessToken
  = lens _eapkuAccessToken
      (\ s a -> s{_eapkuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
eapkuUploadType :: Lens' EditsAPKsUpload (Maybe Text)
eapkuUploadType
  = lens _eapkuUploadType
      (\ s a -> s{_eapkuUploadType = a})

-- | Identifier of the edit.
eapkuEditId :: Lens' EditsAPKsUpload Text
eapkuEditId
  = lens _eapkuEditId (\ s a -> s{_eapkuEditId = a})

-- | JSONP
eapkuCallback :: Lens' EditsAPKsUpload (Maybe Text)
eapkuCallback
  = lens _eapkuCallback
      (\ s a -> s{_eapkuCallback = a})

instance GoogleRequest EditsAPKsUpload where
        type Rs EditsAPKsUpload = APK
        type Scopes EditsAPKsUpload =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsAPKsUpload'{..}
          = go _eapkuPackageName _eapkuEditId _eapkuXgafv
              _eapkuUploadProtocol
              _eapkuAccessToken
              _eapkuUploadType
              _eapkuCallback
              (Just AltJSON)
              androidPublisherService
          where go :<|> _
                  = buildClient
                      (Proxy :: Proxy EditsAPKsUploadResource)
                      mempty

instance GoogleRequest (MediaUpload EditsAPKsUpload)
         where
        type Rs (MediaUpload EditsAPKsUpload) = APK
        type Scopes (MediaUpload EditsAPKsUpload) =
             Scopes EditsAPKsUpload
        requestClient (MediaUpload EditsAPKsUpload'{..} body)
          = go _eapkuPackageName _eapkuEditId _eapkuXgafv
              _eapkuUploadProtocol
              _eapkuAccessToken
              _eapkuUploadType
              _eapkuCallback
              (Just AltJSON)
              (Just AltMedia)
              body
              androidPublisherService
          where _ :<|> go
                  = buildClient
                      (Proxy :: Proxy EditsAPKsUploadResource)
                      mempty
