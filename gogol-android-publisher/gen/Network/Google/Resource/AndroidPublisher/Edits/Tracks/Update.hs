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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the track configuration for the specified track type. When
-- halted, the rollout track cannot be updated without adding new APKs, and
-- adding new APKs will cause it to resume.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.tracks.update@.
module Network.Google.Resource.AndroidPublisher.Edits.Tracks.Update
    (
    -- * REST Resource
      EditsTracksUpdateResource

    -- * Creating a Request
    , editsTracksUpdate
    , EditsTracksUpdate

    -- * Request Lenses
    , etuTrack
    , etuPackageName
    , etuPayload
    , etuEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.tracks.update@ method which the
-- 'EditsTracksUpdate' request conforms to.
type EditsTracksUpdateResource =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "tracks" :>
                   Capture "track" EditsTracksUpdateTrack :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Track :> Put '[JSON] Track

-- | Updates the track configuration for the specified track type. When
-- halted, the rollout track cannot be updated without adding new APKs, and
-- adding new APKs will cause it to resume.
--
-- /See:/ 'editsTracksUpdate' smart constructor.
data EditsTracksUpdate = EditsTracksUpdate'
    { _etuTrack       :: !EditsTracksUpdateTrack
    , _etuPackageName :: !Text
    , _etuPayload     :: !Track
    , _etuEditId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsTracksUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etuTrack'
--
-- * 'etuPackageName'
--
-- * 'etuPayload'
--
-- * 'etuEditId'
editsTracksUpdate
    :: EditsTracksUpdateTrack -- ^ 'etuTrack'
    -> Text -- ^ 'etuPackageName'
    -> Track -- ^ 'etuPayload'
    -> Text -- ^ 'etuEditId'
    -> EditsTracksUpdate
editsTracksUpdate pEtuTrack_ pEtuPackageName_ pEtuPayload_ pEtuEditId_ =
    EditsTracksUpdate'
    { _etuTrack = pEtuTrack_
    , _etuPackageName = pEtuPackageName_
    , _etuPayload = pEtuPayload_
    , _etuEditId = pEtuEditId_
    }

-- | The track type to read or modify.
etuTrack :: Lens' EditsTracksUpdate EditsTracksUpdateTrack
etuTrack = lens _etuTrack (\ s a -> s{_etuTrack = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
etuPackageName :: Lens' EditsTracksUpdate Text
etuPackageName
  = lens _etuPackageName
      (\ s a -> s{_etuPackageName = a})

-- | Multipart request metadata.
etuPayload :: Lens' EditsTracksUpdate Track
etuPayload
  = lens _etuPayload (\ s a -> s{_etuPayload = a})

-- | Unique identifier for this edit.
etuEditId :: Lens' EditsTracksUpdate Text
etuEditId
  = lens _etuEditId (\ s a -> s{_etuEditId = a})

instance GoogleRequest EditsTracksUpdate where
        type Rs EditsTracksUpdate = Track
        type Scopes EditsTracksUpdate =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsTracksUpdate'{..}
          = go _etuPackageName _etuEditId _etuTrack
              (Just AltJSON)
              _etuPayload
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsTracksUpdateResource)
                      mempty
