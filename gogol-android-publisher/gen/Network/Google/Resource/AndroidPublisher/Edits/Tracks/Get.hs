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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Fetches the track configuration for the specified track type. Includes
-- the APK version codes that are in this track.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsTracksGet@.
module Network.Google.Resource.AndroidPublisher.Edits.Tracks.Get
    (
    -- * REST Resource
      EditsTracksGetResource

    -- * Creating a Request
    , editsTracksGet'
    , EditsTracksGet'

    -- * Request Lenses
    , etgTrack
    , etgPackageName
    , etgEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsTracksGet@ method which the
-- 'EditsTracksGet'' request conforms to.
type EditsTracksGetResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "tracks" :>
             Capture "track" EditsTracksGetTrack :>
               QueryParam "alt" AltJSON :> Get '[JSON] Track

-- | Fetches the track configuration for the specified track type. Includes
-- the APK version codes that are in this track.
--
-- /See:/ 'editsTracksGet'' smart constructor.
data EditsTracksGet' = EditsTracksGet'
    { _etgTrack       :: !EditsTracksGetTrack
    , _etgPackageName :: !Text
    , _etgEditId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsTracksGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etgTrack'
--
-- * 'etgPackageName'
--
-- * 'etgEditId'
editsTracksGet'
    :: EditsTracksGetTrack -- ^ 'track'
    -> Text -- ^ 'packageName'
    -> Text -- ^ 'editId'
    -> EditsTracksGet'
editsTracksGet' pEtgTrack_ pEtgPackageName_ pEtgEditId_ =
    EditsTracksGet'
    { _etgTrack = pEtgTrack_
    , _etgPackageName = pEtgPackageName_
    , _etgEditId = pEtgEditId_
    }

-- | The track type to read or modify.
etgTrack :: Lens' EditsTracksGet' EditsTracksGetTrack
etgTrack = lens _etgTrack (\ s a -> s{_etgTrack = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
etgPackageName :: Lens' EditsTracksGet' Text
etgPackageName
  = lens _etgPackageName
      (\ s a -> s{_etgPackageName = a})

-- | Unique identifier for this edit.
etgEditId :: Lens' EditsTracksGet' Text
etgEditId
  = lens _etgEditId (\ s a -> s{_etgEditId = a})

instance GoogleRequest EditsTracksGet' where
        type Rs EditsTracksGet' = Track
        requestClient EditsTracksGet'{..}
          = go _etgPackageName _etgEditId _etgTrack
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient (Proxy :: Proxy EditsTracksGetResource)
                      mempty
