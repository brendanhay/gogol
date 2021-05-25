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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.APKs.Addexternallyhosted
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new APK without uploading the APK itself to Google Play,
-- instead hosting the APK at a specified URL. This function is only
-- available to organizations using Managed Play whose application is
-- configured to restrict distribution to the organizations.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.apks.addexternallyhosted@.
module Network.Google.Resource.AndroidPublisher.Edits.APKs.Addexternallyhosted
    (
    -- * REST Resource
      EditsAPKsAddexternallyhostedResource

    -- * Creating a Request
    , editsAPKsAddexternallyhosted
    , EditsAPKsAddexternallyhosted

    -- * Request Lenses
    , eapkaXgafv
    , eapkaUploadProtocol
    , eapkaPackageName
    , eapkaAccessToken
    , eapkaUploadType
    , eapkaPayload
    , eapkaEditId
    , eapkaCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.apks.addexternallyhosted@ method which the
-- 'EditsAPKsAddexternallyhosted' request conforms to.
type EditsAPKsAddexternallyhostedResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "apks" :>
                   "externallyHosted" :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] APKsAddExternallyHostedRequest
                                   :>
                                   Post '[JSON] APKsAddExternallyHostedResponse

-- | Creates a new APK without uploading the APK itself to Google Play,
-- instead hosting the APK at a specified URL. This function is only
-- available to organizations using Managed Play whose application is
-- configured to restrict distribution to the organizations.
--
-- /See:/ 'editsAPKsAddexternallyhosted' smart constructor.
data EditsAPKsAddexternallyhosted =
  EditsAPKsAddexternallyhosted'
    { _eapkaXgafv :: !(Maybe Xgafv)
    , _eapkaUploadProtocol :: !(Maybe Text)
    , _eapkaPackageName :: !Text
    , _eapkaAccessToken :: !(Maybe Text)
    , _eapkaUploadType :: !(Maybe Text)
    , _eapkaPayload :: !APKsAddExternallyHostedRequest
    , _eapkaEditId :: !Text
    , _eapkaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EditsAPKsAddexternallyhosted' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eapkaXgafv'
--
-- * 'eapkaUploadProtocol'
--
-- * 'eapkaPackageName'
--
-- * 'eapkaAccessToken'
--
-- * 'eapkaUploadType'
--
-- * 'eapkaPayload'
--
-- * 'eapkaEditId'
--
-- * 'eapkaCallback'
editsAPKsAddexternallyhosted
    :: Text -- ^ 'eapkaPackageName'
    -> APKsAddExternallyHostedRequest -- ^ 'eapkaPayload'
    -> Text -- ^ 'eapkaEditId'
    -> EditsAPKsAddexternallyhosted
editsAPKsAddexternallyhosted pEapkaPackageName_ pEapkaPayload_ pEapkaEditId_ =
  EditsAPKsAddexternallyhosted'
    { _eapkaXgafv = Nothing
    , _eapkaUploadProtocol = Nothing
    , _eapkaPackageName = pEapkaPackageName_
    , _eapkaAccessToken = Nothing
    , _eapkaUploadType = Nothing
    , _eapkaPayload = pEapkaPayload_
    , _eapkaEditId = pEapkaEditId_
    , _eapkaCallback = Nothing
    }


-- | V1 error format.
eapkaXgafv :: Lens' EditsAPKsAddexternallyhosted (Maybe Xgafv)
eapkaXgafv
  = lens _eapkaXgafv (\ s a -> s{_eapkaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
eapkaUploadProtocol :: Lens' EditsAPKsAddexternallyhosted (Maybe Text)
eapkaUploadProtocol
  = lens _eapkaUploadProtocol
      (\ s a -> s{_eapkaUploadProtocol = a})

-- | Package name of the app.
eapkaPackageName :: Lens' EditsAPKsAddexternallyhosted Text
eapkaPackageName
  = lens _eapkaPackageName
      (\ s a -> s{_eapkaPackageName = a})

-- | OAuth access token.
eapkaAccessToken :: Lens' EditsAPKsAddexternallyhosted (Maybe Text)
eapkaAccessToken
  = lens _eapkaAccessToken
      (\ s a -> s{_eapkaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
eapkaUploadType :: Lens' EditsAPKsAddexternallyhosted (Maybe Text)
eapkaUploadType
  = lens _eapkaUploadType
      (\ s a -> s{_eapkaUploadType = a})

-- | Multipart request metadata.
eapkaPayload :: Lens' EditsAPKsAddexternallyhosted APKsAddExternallyHostedRequest
eapkaPayload
  = lens _eapkaPayload (\ s a -> s{_eapkaPayload = a})

-- | Identifier of the edit.
eapkaEditId :: Lens' EditsAPKsAddexternallyhosted Text
eapkaEditId
  = lens _eapkaEditId (\ s a -> s{_eapkaEditId = a})

-- | JSONP
eapkaCallback :: Lens' EditsAPKsAddexternallyhosted (Maybe Text)
eapkaCallback
  = lens _eapkaCallback
      (\ s a -> s{_eapkaCallback = a})

instance GoogleRequest EditsAPKsAddexternallyhosted
         where
        type Rs EditsAPKsAddexternallyhosted =
             APKsAddExternallyHostedResponse
        type Scopes EditsAPKsAddexternallyhosted =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsAPKsAddexternallyhosted'{..}
          = go _eapkaPackageName _eapkaEditId _eapkaXgafv
              _eapkaUploadProtocol
              _eapkaAccessToken
              _eapkaUploadType
              _eapkaCallback
              (Just AltJSON)
              _eapkaPayload
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsAPKsAddexternallyhostedResource)
                      mempty
