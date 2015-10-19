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
-- Copyright   : (c) 2015 Brendan Hay
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
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsTracksPatch@.
module Network.Google.Resource.AndroidPublisher.Edits.Tracks.Patch
    (
    -- * REST Resource
      EditsTracksPatchResource

    -- * Creating a Request
    , editsTracksPatch'
    , EditsTracksPatch'

    -- * Request Lenses
    , etpTrack
    , etpPackageName
    , etpPayload
    , etpEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsTracksPatch@ method which the
-- 'EditsTracksPatch'' request conforms to.
type EditsTracksPatchResource =
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
-- /See:/ 'editsTracksPatch'' smart constructor.
data EditsTracksPatch' = EditsTracksPatch'
    { _etpTrack       :: !EditsTracksPatchTrack
    , _etpPackageName :: !Text
    , _etpPayload     :: !Track
    , _etpEditId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsTracksPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etpTrack'
--
-- * 'etpPackageName'
--
-- * 'etpPayload'
--
-- * 'etpEditId'
editsTracksPatch'
    :: EditsTracksPatchTrack -- ^ 'track'
    -> Text -- ^ 'packageName'
    -> Track -- ^ 'payload'
    -> Text -- ^ 'editId'
    -> EditsTracksPatch'
editsTracksPatch' pEtpTrack_ pEtpPackageName_ pEtpPayload_ pEtpEditId_ =
    EditsTracksPatch'
    { _etpTrack = pEtpTrack_
    , _etpPackageName = pEtpPackageName_
    , _etpPayload = pEtpPayload_
    , _etpEditId = pEtpEditId_
    }

-- | The track type to read or modify.
etpTrack :: Lens' EditsTracksPatch' EditsTracksPatchTrack
etpTrack = lens _etpTrack (\ s a -> s{_etpTrack = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
etpPackageName :: Lens' EditsTracksPatch' Text
etpPackageName
  = lens _etpPackageName
      (\ s a -> s{_etpPackageName = a})

-- | Multipart request metadata.
etpPayload :: Lens' EditsTracksPatch' Track
etpPayload
  = lens _etpPayload (\ s a -> s{_etpPayload = a})

-- | Unique identifier for this edit.
etpEditId :: Lens' EditsTracksPatch' Text
etpEditId
  = lens _etpEditId (\ s a -> s{_etpEditId = a})

instance GoogleRequest EditsTracksPatch' where
        type Rs EditsTracksPatch' = Track
        requestClient EditsTracksPatch'{..}
          = go _etpPackageName _etpEditId _etpTrack
              (Just AltJSON)
              _etpPayload
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsTracksPatchResource)
                      mempty
