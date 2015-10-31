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
-- Updates the track configuration for the specified track type. When
-- halted, the rollout track cannot be updated without adding new APKs, and
-- adding new APKs will cause it to resume. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.tracks.patch@.
module Network.Google.Resource.AndroidPublisher.Edits.Tracks.Patch
    (
    -- * REST Resource
      EditsTracksPatchResource

    -- * Creating a Request
    , editsTracksPatch
    , EditsTracksPatch

    -- * Request Lenses
    , etptTrack
    , etptPackageName
    , etptPayload
    , etptEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.tracks.patch@ method which the
-- 'EditsTracksPatch' request conforms to.
type EditsTracksPatchResource =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "tracks" :>
                   Capture "track" EditsTracksPatchTrack :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Track :> Patch '[JSON] Track

-- | Updates the track configuration for the specified track type. When
-- halted, the rollout track cannot be updated without adding new APKs, and
-- adding new APKs will cause it to resume. This method supports patch
-- semantics.
--
-- /See:/ 'editsTracksPatch' smart constructor.
data EditsTracksPatch = EditsTracksPatch
    { _etptTrack       :: !EditsTracksPatchTrack
    , _etptPackageName :: !Text
    , _etptPayload     :: !Track
    , _etptEditId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsTracksPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etptTrack'
--
-- * 'etptPackageName'
--
-- * 'etptPayload'
--
-- * 'etptEditId'
editsTracksPatch
    :: EditsTracksPatchTrack -- ^ 'etptTrack'
    -> Text -- ^ 'etptPackageName'
    -> Track -- ^ 'etptPayload'
    -> Text -- ^ 'etptEditId'
    -> EditsTracksPatch
editsTracksPatch pEtptTrack_ pEtptPackageName_ pEtptPayload_ pEtptEditId_ =
    EditsTracksPatch
    { _etptTrack = pEtptTrack_
    , _etptPackageName = pEtptPackageName_
    , _etptPayload = pEtptPayload_
    , _etptEditId = pEtptEditId_
    }

-- | The track type to read or modify.
etptTrack :: Lens' EditsTracksPatch EditsTracksPatchTrack
etptTrack
  = lens _etptTrack (\ s a -> s{_etptTrack = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
etptPackageName :: Lens' EditsTracksPatch Text
etptPackageName
  = lens _etptPackageName
      (\ s a -> s{_etptPackageName = a})

-- | Multipart request metadata.
etptPayload :: Lens' EditsTracksPatch Track
etptPayload
  = lens _etptPayload (\ s a -> s{_etptPayload = a})

-- | Unique identifier for this edit.
etptEditId :: Lens' EditsTracksPatch Text
etptEditId
  = lens _etptEditId (\ s a -> s{_etptEditId = a})

instance GoogleRequest EditsTracksPatch where
        type Rs EditsTracksPatch = Track
        type Scopes EditsTracksPatch =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsTracksPatch{..}
          = go _etptPackageName _etptEditId _etptTrack
              (Just AltJSON)
              _etptPayload
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsTracksPatchResource)
                      mempty
