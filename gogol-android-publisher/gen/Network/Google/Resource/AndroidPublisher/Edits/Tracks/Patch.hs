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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Tracks.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches a track.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.tracks.patch@.
module Network.Google.Resource.AndroidPublisher.Edits.Tracks.Patch
    (
    -- * REST Resource
      EditsTracksPatchResource

    -- * Creating a Request
    , editsTracksPatch
    , EditsTracksPatch

    -- * Request Lenses
    , etptXgafv
    , etptTrack
    , etptUploadProtocol
    , etptPackageName
    , etptAccessToken
    , etptUploadType
    , etptPayload
    , etptEditId
    , etptCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.tracks.patch@ method which the
-- 'EditsTracksPatch' request conforms to.
type EditsTracksPatchResource =
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
                                 ReqBody '[JSON] Track :> Patch '[JSON] Track

-- | Patches a track.
--
-- /See:/ 'editsTracksPatch' smart constructor.
data EditsTracksPatch =
  EditsTracksPatch'
    { _etptXgafv :: !(Maybe Xgafv)
    , _etptTrack :: !Text
    , _etptUploadProtocol :: !(Maybe Text)
    , _etptPackageName :: !Text
    , _etptAccessToken :: !(Maybe Text)
    , _etptUploadType :: !(Maybe Text)
    , _etptPayload :: !Track
    , _etptEditId :: !Text
    , _etptCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EditsTracksPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etptXgafv'
--
-- * 'etptTrack'
--
-- * 'etptUploadProtocol'
--
-- * 'etptPackageName'
--
-- * 'etptAccessToken'
--
-- * 'etptUploadType'
--
-- * 'etptPayload'
--
-- * 'etptEditId'
--
-- * 'etptCallback'
editsTracksPatch
    :: Text -- ^ 'etptTrack'
    -> Text -- ^ 'etptPackageName'
    -> Track -- ^ 'etptPayload'
    -> Text -- ^ 'etptEditId'
    -> EditsTracksPatch
editsTracksPatch pEtptTrack_ pEtptPackageName_ pEtptPayload_ pEtptEditId_ =
  EditsTracksPatch'
    { _etptXgafv = Nothing
    , _etptTrack = pEtptTrack_
    , _etptUploadProtocol = Nothing
    , _etptPackageName = pEtptPackageName_
    , _etptAccessToken = Nothing
    , _etptUploadType = Nothing
    , _etptPayload = pEtptPayload_
    , _etptEditId = pEtptEditId_
    , _etptCallback = Nothing
    }


-- | V1 error format.
etptXgafv :: Lens' EditsTracksPatch (Maybe Xgafv)
etptXgafv
  = lens _etptXgafv (\ s a -> s{_etptXgafv = a})

-- | Identifier of the track.
etptTrack :: Lens' EditsTracksPatch Text
etptTrack
  = lens _etptTrack (\ s a -> s{_etptTrack = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
etptUploadProtocol :: Lens' EditsTracksPatch (Maybe Text)
etptUploadProtocol
  = lens _etptUploadProtocol
      (\ s a -> s{_etptUploadProtocol = a})

-- | Package name of the app.
etptPackageName :: Lens' EditsTracksPatch Text
etptPackageName
  = lens _etptPackageName
      (\ s a -> s{_etptPackageName = a})

-- | OAuth access token.
etptAccessToken :: Lens' EditsTracksPatch (Maybe Text)
etptAccessToken
  = lens _etptAccessToken
      (\ s a -> s{_etptAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
etptUploadType :: Lens' EditsTracksPatch (Maybe Text)
etptUploadType
  = lens _etptUploadType
      (\ s a -> s{_etptUploadType = a})

-- | Multipart request metadata.
etptPayload :: Lens' EditsTracksPatch Track
etptPayload
  = lens _etptPayload (\ s a -> s{_etptPayload = a})

-- | Identifier of the edit.
etptEditId :: Lens' EditsTracksPatch Text
etptEditId
  = lens _etptEditId (\ s a -> s{_etptEditId = a})

-- | JSONP
etptCallback :: Lens' EditsTracksPatch (Maybe Text)
etptCallback
  = lens _etptCallback (\ s a -> s{_etptCallback = a})

instance GoogleRequest EditsTracksPatch where
        type Rs EditsTracksPatch = Track
        type Scopes EditsTracksPatch =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsTracksPatch'{..}
          = go _etptPackageName _etptEditId _etptTrack
              _etptXgafv
              _etptUploadProtocol
              _etptAccessToken
              _etptUploadType
              _etptCallback
              (Just AltJSON)
              _etptPayload
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsTracksPatchResource)
                      mempty
