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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Tracks.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a track.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.tracks.get@.
module Network.Google.Resource.AndroidPublisher.Edits.Tracks.Get
    (
    -- * REST Resource
      EditsTracksGetResource

    -- * Creating a Request
    , editsTracksGet
    , EditsTracksGet

    -- * Request Lenses
    , etgtXgafv
    , etgtTrack
    , etgtUploadProtocol
    , etgtPackageName
    , etgtAccessToken
    , etgtUploadType
    , etgtEditId
    , etgtCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.tracks.get@ method which the
-- 'EditsTracksGet' request conforms to.
type EditsTracksGetResource =
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
                               QueryParam "alt" AltJSON :> Get '[JSON] Track

-- | Gets a track.
--
-- /See:/ 'editsTracksGet' smart constructor.
data EditsTracksGet =
  EditsTracksGet'
    { _etgtXgafv :: !(Maybe Xgafv)
    , _etgtTrack :: !Text
    , _etgtUploadProtocol :: !(Maybe Text)
    , _etgtPackageName :: !Text
    , _etgtAccessToken :: !(Maybe Text)
    , _etgtUploadType :: !(Maybe Text)
    , _etgtEditId :: !Text
    , _etgtCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EditsTracksGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etgtXgafv'
--
-- * 'etgtTrack'
--
-- * 'etgtUploadProtocol'
--
-- * 'etgtPackageName'
--
-- * 'etgtAccessToken'
--
-- * 'etgtUploadType'
--
-- * 'etgtEditId'
--
-- * 'etgtCallback'
editsTracksGet
    :: Text -- ^ 'etgtTrack'
    -> Text -- ^ 'etgtPackageName'
    -> Text -- ^ 'etgtEditId'
    -> EditsTracksGet
editsTracksGet pEtgtTrack_ pEtgtPackageName_ pEtgtEditId_ =
  EditsTracksGet'
    { _etgtXgafv = Nothing
    , _etgtTrack = pEtgtTrack_
    , _etgtUploadProtocol = Nothing
    , _etgtPackageName = pEtgtPackageName_
    , _etgtAccessToken = Nothing
    , _etgtUploadType = Nothing
    , _etgtEditId = pEtgtEditId_
    , _etgtCallback = Nothing
    }


-- | V1 error format.
etgtXgafv :: Lens' EditsTracksGet (Maybe Xgafv)
etgtXgafv
  = lens _etgtXgafv (\ s a -> s{_etgtXgafv = a})

-- | Identifier of the track.
etgtTrack :: Lens' EditsTracksGet Text
etgtTrack
  = lens _etgtTrack (\ s a -> s{_etgtTrack = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
etgtUploadProtocol :: Lens' EditsTracksGet (Maybe Text)
etgtUploadProtocol
  = lens _etgtUploadProtocol
      (\ s a -> s{_etgtUploadProtocol = a})

-- | Package name of the app.
etgtPackageName :: Lens' EditsTracksGet Text
etgtPackageName
  = lens _etgtPackageName
      (\ s a -> s{_etgtPackageName = a})

-- | OAuth access token.
etgtAccessToken :: Lens' EditsTracksGet (Maybe Text)
etgtAccessToken
  = lens _etgtAccessToken
      (\ s a -> s{_etgtAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
etgtUploadType :: Lens' EditsTracksGet (Maybe Text)
etgtUploadType
  = lens _etgtUploadType
      (\ s a -> s{_etgtUploadType = a})

-- | Identifier of the edit.
etgtEditId :: Lens' EditsTracksGet Text
etgtEditId
  = lens _etgtEditId (\ s a -> s{_etgtEditId = a})

-- | JSONP
etgtCallback :: Lens' EditsTracksGet (Maybe Text)
etgtCallback
  = lens _etgtCallback (\ s a -> s{_etgtCallback = a})

instance GoogleRequest EditsTracksGet where
        type Rs EditsTracksGet = Track
        type Scopes EditsTracksGet =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsTracksGet'{..}
          = go _etgtPackageName _etgtEditId _etgtTrack
              _etgtXgafv
              _etgtUploadProtocol
              _etgtAccessToken
              _etgtUploadType
              _etgtCallback
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient (Proxy :: Proxy EditsTracksGetResource)
                      mempty
