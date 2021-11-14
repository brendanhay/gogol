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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Tracks.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a track.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.tracks.update@.
module Network.Google.Resource.AndroidPublisher.Edits.Tracks.Update
    (
    -- * REST Resource
      EditsTracksUpdateResource

    -- * Creating a Request
    , editsTracksUpdate
    , EditsTracksUpdate

    -- * Request Lenses
    , etuXgafv
    , etuTrack
    , etuUploadProtocol
    , etuPackageName
    , etuAccessToken
    , etuUploadType
    , etuPayload
    , etuEditId
    , etuCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.tracks.update@ method which the
-- 'EditsTracksUpdate' request conforms to.
type EditsTracksUpdateResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "tracks" :>
                   Capture "track" Text :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] Track :> Put '[JSON] Track

-- | Updates a track.
--
-- /See:/ 'editsTracksUpdate' smart constructor.
data EditsTracksUpdate =
  EditsTracksUpdate'
    { _etuXgafv :: !(Maybe Xgafv)
    , _etuTrack :: !Text
    , _etuUploadProtocol :: !(Maybe Text)
    , _etuPackageName :: !Text
    , _etuAccessToken :: !(Maybe Text)
    , _etuUploadType :: !(Maybe Text)
    , _etuPayload :: !Track
    , _etuEditId :: !Text
    , _etuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EditsTracksUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etuXgafv'
--
-- * 'etuTrack'
--
-- * 'etuUploadProtocol'
--
-- * 'etuPackageName'
--
-- * 'etuAccessToken'
--
-- * 'etuUploadType'
--
-- * 'etuPayload'
--
-- * 'etuEditId'
--
-- * 'etuCallback'
editsTracksUpdate
    :: Text -- ^ 'etuTrack'
    -> Text -- ^ 'etuPackageName'
    -> Track -- ^ 'etuPayload'
    -> Text -- ^ 'etuEditId'
    -> EditsTracksUpdate
editsTracksUpdate pEtuTrack_ pEtuPackageName_ pEtuPayload_ pEtuEditId_ =
  EditsTracksUpdate'
    { _etuXgafv = Nothing
    , _etuTrack = pEtuTrack_
    , _etuUploadProtocol = Nothing
    , _etuPackageName = pEtuPackageName_
    , _etuAccessToken = Nothing
    , _etuUploadType = Nothing
    , _etuPayload = pEtuPayload_
    , _etuEditId = pEtuEditId_
    , _etuCallback = Nothing
    }


-- | V1 error format.
etuXgafv :: Lens' EditsTracksUpdate (Maybe Xgafv)
etuXgafv = lens _etuXgafv (\ s a -> s{_etuXgafv = a})

-- | Identifier of the track.
etuTrack :: Lens' EditsTracksUpdate Text
etuTrack = lens _etuTrack (\ s a -> s{_etuTrack = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
etuUploadProtocol :: Lens' EditsTracksUpdate (Maybe Text)
etuUploadProtocol
  = lens _etuUploadProtocol
      (\ s a -> s{_etuUploadProtocol = a})

-- | Package name of the app.
etuPackageName :: Lens' EditsTracksUpdate Text
etuPackageName
  = lens _etuPackageName
      (\ s a -> s{_etuPackageName = a})

-- | OAuth access token.
etuAccessToken :: Lens' EditsTracksUpdate (Maybe Text)
etuAccessToken
  = lens _etuAccessToken
      (\ s a -> s{_etuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
etuUploadType :: Lens' EditsTracksUpdate (Maybe Text)
etuUploadType
  = lens _etuUploadType
      (\ s a -> s{_etuUploadType = a})

-- | Multipart request metadata.
etuPayload :: Lens' EditsTracksUpdate Track
etuPayload
  = lens _etuPayload (\ s a -> s{_etuPayload = a})

-- | Identifier of the edit.
etuEditId :: Lens' EditsTracksUpdate Text
etuEditId
  = lens _etuEditId (\ s a -> s{_etuEditId = a})

-- | JSONP
etuCallback :: Lens' EditsTracksUpdate (Maybe Text)
etuCallback
  = lens _etuCallback (\ s a -> s{_etuCallback = a})

instance GoogleRequest EditsTracksUpdate where
        type Rs EditsTracksUpdate = Track
        type Scopes EditsTracksUpdate =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsTracksUpdate'{..}
          = go _etuPackageName _etuEditId _etuTrack _etuXgafv
              _etuUploadProtocol
              _etuAccessToken
              _etuUploadType
              _etuCallback
              (Just AltJSON)
              _etuPayload
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsTracksUpdateResource)
                      mempty
