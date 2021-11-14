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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Tracks.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all tracks.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.tracks.list@.
module Network.Google.Resource.AndroidPublisher.Edits.Tracks.List
    (
    -- * REST Resource
      EditsTracksListResource

    -- * Creating a Request
    , editsTracksList
    , EditsTracksList

    -- * Request Lenses
    , etlXgafv
    , etlUploadProtocol
    , etlPackageName
    , etlAccessToken
    , etlUploadType
    , etlEditId
    , etlCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.tracks.list@ method which the
-- 'EditsTracksList' request conforms to.
type EditsTracksListResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "tracks" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] TracksListResponse

-- | Lists all tracks.
--
-- /See:/ 'editsTracksList' smart constructor.
data EditsTracksList =
  EditsTracksList'
    { _etlXgafv :: !(Maybe Xgafv)
    , _etlUploadProtocol :: !(Maybe Text)
    , _etlPackageName :: !Text
    , _etlAccessToken :: !(Maybe Text)
    , _etlUploadType :: !(Maybe Text)
    , _etlEditId :: !Text
    , _etlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EditsTracksList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etlXgafv'
--
-- * 'etlUploadProtocol'
--
-- * 'etlPackageName'
--
-- * 'etlAccessToken'
--
-- * 'etlUploadType'
--
-- * 'etlEditId'
--
-- * 'etlCallback'
editsTracksList
    :: Text -- ^ 'etlPackageName'
    -> Text -- ^ 'etlEditId'
    -> EditsTracksList
editsTracksList pEtlPackageName_ pEtlEditId_ =
  EditsTracksList'
    { _etlXgafv = Nothing
    , _etlUploadProtocol = Nothing
    , _etlPackageName = pEtlPackageName_
    , _etlAccessToken = Nothing
    , _etlUploadType = Nothing
    , _etlEditId = pEtlEditId_
    , _etlCallback = Nothing
    }


-- | V1 error format.
etlXgafv :: Lens' EditsTracksList (Maybe Xgafv)
etlXgafv = lens _etlXgafv (\ s a -> s{_etlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
etlUploadProtocol :: Lens' EditsTracksList (Maybe Text)
etlUploadProtocol
  = lens _etlUploadProtocol
      (\ s a -> s{_etlUploadProtocol = a})

-- | Package name of the app.
etlPackageName :: Lens' EditsTracksList Text
etlPackageName
  = lens _etlPackageName
      (\ s a -> s{_etlPackageName = a})

-- | OAuth access token.
etlAccessToken :: Lens' EditsTracksList (Maybe Text)
etlAccessToken
  = lens _etlAccessToken
      (\ s a -> s{_etlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
etlUploadType :: Lens' EditsTracksList (Maybe Text)
etlUploadType
  = lens _etlUploadType
      (\ s a -> s{_etlUploadType = a})

-- | Identifier of the edit.
etlEditId :: Lens' EditsTracksList Text
etlEditId
  = lens _etlEditId (\ s a -> s{_etlEditId = a})

-- | JSONP
etlCallback :: Lens' EditsTracksList (Maybe Text)
etlCallback
  = lens _etlCallback (\ s a -> s{_etlCallback = a})

instance GoogleRequest EditsTracksList where
        type Rs EditsTracksList = TracksListResponse
        type Scopes EditsTracksList =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsTracksList'{..}
          = go _etlPackageName _etlEditId _etlXgafv
              _etlUploadProtocol
              _etlAccessToken
              _etlUploadType
              _etlCallback
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsTracksListResource)
                      mempty
