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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Testers.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates testers.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.testers.update@.
module Network.Google.Resource.AndroidPublisher.Edits.Testers.Update
    (
    -- * REST Resource
      EditsTestersUpdateResource

    -- * Creating a Request
    , editsTestersUpdate
    , EditsTestersUpdate

    -- * Request Lenses
    , etutXgafv
    , etutTrack
    , etutUploadProtocol
    , etutPackageName
    , etutAccessToken
    , etutUploadType
    , etutPayload
    , etutEditId
    , etutCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.testers.update@ method which the
-- 'EditsTestersUpdate' request conforms to.
type EditsTestersUpdateResource =
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
                                 ReqBody '[JSON] Testers :> Put '[JSON] Testers

-- | Updates testers.
--
-- /See:/ 'editsTestersUpdate' smart constructor.
data EditsTestersUpdate =
  EditsTestersUpdate'
    { _etutXgafv :: !(Maybe Xgafv)
    , _etutTrack :: !Text
    , _etutUploadProtocol :: !(Maybe Text)
    , _etutPackageName :: !Text
    , _etutAccessToken :: !(Maybe Text)
    , _etutUploadType :: !(Maybe Text)
    , _etutPayload :: !Testers
    , _etutEditId :: !Text
    , _etutCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EditsTestersUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etutXgafv'
--
-- * 'etutTrack'
--
-- * 'etutUploadProtocol'
--
-- * 'etutPackageName'
--
-- * 'etutAccessToken'
--
-- * 'etutUploadType'
--
-- * 'etutPayload'
--
-- * 'etutEditId'
--
-- * 'etutCallback'
editsTestersUpdate
    :: Text -- ^ 'etutTrack'
    -> Text -- ^ 'etutPackageName'
    -> Testers -- ^ 'etutPayload'
    -> Text -- ^ 'etutEditId'
    -> EditsTestersUpdate
editsTestersUpdate pEtutTrack_ pEtutPackageName_ pEtutPayload_ pEtutEditId_ =
  EditsTestersUpdate'
    { _etutXgafv = Nothing
    , _etutTrack = pEtutTrack_
    , _etutUploadProtocol = Nothing
    , _etutPackageName = pEtutPackageName_
    , _etutAccessToken = Nothing
    , _etutUploadType = Nothing
    , _etutPayload = pEtutPayload_
    , _etutEditId = pEtutEditId_
    , _etutCallback = Nothing
    }


-- | V1 error format.
etutXgafv :: Lens' EditsTestersUpdate (Maybe Xgafv)
etutXgafv
  = lens _etutXgafv (\ s a -> s{_etutXgafv = a})

-- | The track to update.
etutTrack :: Lens' EditsTestersUpdate Text
etutTrack
  = lens _etutTrack (\ s a -> s{_etutTrack = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
etutUploadProtocol :: Lens' EditsTestersUpdate (Maybe Text)
etutUploadProtocol
  = lens _etutUploadProtocol
      (\ s a -> s{_etutUploadProtocol = a})

-- | Package name of the app.
etutPackageName :: Lens' EditsTestersUpdate Text
etutPackageName
  = lens _etutPackageName
      (\ s a -> s{_etutPackageName = a})

-- | OAuth access token.
etutAccessToken :: Lens' EditsTestersUpdate (Maybe Text)
etutAccessToken
  = lens _etutAccessToken
      (\ s a -> s{_etutAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
etutUploadType :: Lens' EditsTestersUpdate (Maybe Text)
etutUploadType
  = lens _etutUploadType
      (\ s a -> s{_etutUploadType = a})

-- | Multipart request metadata.
etutPayload :: Lens' EditsTestersUpdate Testers
etutPayload
  = lens _etutPayload (\ s a -> s{_etutPayload = a})

-- | Identifier of the edit.
etutEditId :: Lens' EditsTestersUpdate Text
etutEditId
  = lens _etutEditId (\ s a -> s{_etutEditId = a})

-- | JSONP
etutCallback :: Lens' EditsTestersUpdate (Maybe Text)
etutCallback
  = lens _etutCallback (\ s a -> s{_etutCallback = a})

instance GoogleRequest EditsTestersUpdate where
        type Rs EditsTestersUpdate = Testers
        type Scopes EditsTestersUpdate =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsTestersUpdate'{..}
          = go _etutPackageName _etutEditId _etutTrack
              _etutXgafv
              _etutUploadProtocol
              _etutAccessToken
              _etutUploadType
              _etutCallback
              (Just AltJSON)
              _etutPayload
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsTestersUpdateResource)
                      mempty
