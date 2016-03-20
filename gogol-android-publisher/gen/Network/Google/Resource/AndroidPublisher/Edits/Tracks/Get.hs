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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fetches the track configuration for the specified track type. Includes
-- the APK version codes that are in this track.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.tracks.get@.
module Network.Google.Resource.AndroidPublisher.Edits.Tracks.Get
    (
    -- * REST Resource
      EditsTracksGetResource

    -- * Creating a Request
    , editsTracksGet
    , EditsTracksGet

    -- * Request Lenses
    , etgtTrack
    , etgtPackageName
    , etgtEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.tracks.get@ method which the
-- 'EditsTracksGet' request conforms to.
type EditsTracksGetResource =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "tracks" :>
                   Capture "track" EditsTracksGetTrack :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Track

-- | Fetches the track configuration for the specified track type. Includes
-- the APK version codes that are in this track.
--
-- /See:/ 'editsTracksGet' smart constructor.
data EditsTracksGet = EditsTracksGet
    { _etgtTrack       :: !EditsTracksGetTrack
    , _etgtPackageName :: !Text
    , _etgtEditId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsTracksGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etgtTrack'
--
-- * 'etgtPackageName'
--
-- * 'etgtEditId'
editsTracksGet
    :: EditsTracksGetTrack -- ^ 'etgtTrack'
    -> Text -- ^ 'etgtPackageName'
    -> Text -- ^ 'etgtEditId'
    -> EditsTracksGet
editsTracksGet pEtgtTrack_ pEtgtPackageName_ pEtgtEditId_ =
    EditsTracksGet
    { _etgtTrack = pEtgtTrack_
    , _etgtPackageName = pEtgtPackageName_
    , _etgtEditId = pEtgtEditId_
    }

-- | The track type to read or modify.
etgtTrack :: Lens' EditsTracksGet EditsTracksGetTrack
etgtTrack
  = lens _etgtTrack (\ s a -> s{_etgtTrack = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
etgtPackageName :: Lens' EditsTracksGet Text
etgtPackageName
  = lens _etgtPackageName
      (\ s a -> s{_etgtPackageName = a})

-- | Unique identifier for this edit.
etgtEditId :: Lens' EditsTracksGet Text
etgtEditId
  = lens _etgtEditId (\ s a -> s{_etgtEditId = a})

instance GoogleRequest EditsTracksGet where
        type Rs EditsTracksGet = Track
        requestClient EditsTracksGet{..}
          = go _etgtPackageName _etgtEditId _etgtTrack
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient (Proxy :: Proxy EditsTracksGetResource)
                      mempty
