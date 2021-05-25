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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Testers.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches testers.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.testers.patch@.
module Network.Google.Resource.AndroidPublisher.Edits.Testers.Patch
    (
    -- * REST Resource
      EditsTestersPatchResource

    -- * Creating a Request
    , editsTestersPatch
    , EditsTestersPatch

    -- * Request Lenses
    , etpXgafv
    , etpTrack
    , etpUploadProtocol
    , etpPackageName
    , etpAccessToken
    , etpUploadType
    , etpPayload
    , etpEditId
    , etpCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.testers.patch@ method which the
-- 'EditsTestersPatch' request conforms to.
type EditsTestersPatchResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "testers" :>
                   Capture "track" Text :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] Testers :>
                                   Patch '[JSON] Testers

-- | Patches testers.
--
-- /See:/ 'editsTestersPatch' smart constructor.
data EditsTestersPatch =
  EditsTestersPatch'
    { _etpXgafv :: !(Maybe Xgafv)
    , _etpTrack :: !Text
    , _etpUploadProtocol :: !(Maybe Text)
    , _etpPackageName :: !Text
    , _etpAccessToken :: !(Maybe Text)
    , _etpUploadType :: !(Maybe Text)
    , _etpPayload :: !Testers
    , _etpEditId :: !Text
    , _etpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EditsTestersPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etpXgafv'
--
-- * 'etpTrack'
--
-- * 'etpUploadProtocol'
--
-- * 'etpPackageName'
--
-- * 'etpAccessToken'
--
-- * 'etpUploadType'
--
-- * 'etpPayload'
--
-- * 'etpEditId'
--
-- * 'etpCallback'
editsTestersPatch
    :: Text -- ^ 'etpTrack'
    -> Text -- ^ 'etpPackageName'
    -> Testers -- ^ 'etpPayload'
    -> Text -- ^ 'etpEditId'
    -> EditsTestersPatch
editsTestersPatch pEtpTrack_ pEtpPackageName_ pEtpPayload_ pEtpEditId_ =
  EditsTestersPatch'
    { _etpXgafv = Nothing
    , _etpTrack = pEtpTrack_
    , _etpUploadProtocol = Nothing
    , _etpPackageName = pEtpPackageName_
    , _etpAccessToken = Nothing
    , _etpUploadType = Nothing
    , _etpPayload = pEtpPayload_
    , _etpEditId = pEtpEditId_
    , _etpCallback = Nothing
    }


-- | V1 error format.
etpXgafv :: Lens' EditsTestersPatch (Maybe Xgafv)
etpXgafv = lens _etpXgafv (\ s a -> s{_etpXgafv = a})

-- | The track to update.
etpTrack :: Lens' EditsTestersPatch Text
etpTrack = lens _etpTrack (\ s a -> s{_etpTrack = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
etpUploadProtocol :: Lens' EditsTestersPatch (Maybe Text)
etpUploadProtocol
  = lens _etpUploadProtocol
      (\ s a -> s{_etpUploadProtocol = a})

-- | Package name of the app.
etpPackageName :: Lens' EditsTestersPatch Text
etpPackageName
  = lens _etpPackageName
      (\ s a -> s{_etpPackageName = a})

-- | OAuth access token.
etpAccessToken :: Lens' EditsTestersPatch (Maybe Text)
etpAccessToken
  = lens _etpAccessToken
      (\ s a -> s{_etpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
etpUploadType :: Lens' EditsTestersPatch (Maybe Text)
etpUploadType
  = lens _etpUploadType
      (\ s a -> s{_etpUploadType = a})

-- | Multipart request metadata.
etpPayload :: Lens' EditsTestersPatch Testers
etpPayload
  = lens _etpPayload (\ s a -> s{_etpPayload = a})

-- | Identifier of the edit.
etpEditId :: Lens' EditsTestersPatch Text
etpEditId
  = lens _etpEditId (\ s a -> s{_etpEditId = a})

-- | JSONP
etpCallback :: Lens' EditsTestersPatch (Maybe Text)
etpCallback
  = lens _etpCallback (\ s a -> s{_etpCallback = a})

instance GoogleRequest EditsTestersPatch where
        type Rs EditsTestersPatch = Testers
        type Scopes EditsTestersPatch =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsTestersPatch'{..}
          = go _etpPackageName _etpEditId _etpTrack _etpXgafv
              _etpUploadProtocol
              _etpAccessToken
              _etpUploadType
              _etpCallback
              (Just AltJSON)
              _etpPayload
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsTestersPatchResource)
                      mempty
