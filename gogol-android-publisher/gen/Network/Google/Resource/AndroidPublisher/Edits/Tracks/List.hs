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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the track configurations for this edit.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.tracks.list@.
module Network.Google.Resource.AndroidPublisher.Edits.Tracks.List
    (
    -- * REST Resource
      EditsTracksListResource

    -- * Creating a Request
    , editsTracksList
    , EditsTracksList

    -- * Request Lenses
    , etlPackageName
    , etlEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.tracks.list@ method which the
-- 'EditsTracksList' request conforms to.
type EditsTracksListResource =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "tracks" :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] TracksListResponse

-- | Lists all the track configurations for this edit.
--
-- /See:/ 'editsTracksList' smart constructor.
data EditsTracksList = EditsTracksList'
    { _etlPackageName :: !Text
    , _etlEditId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsTracksList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etlPackageName'
--
-- * 'etlEditId'
editsTracksList
    :: Text -- ^ 'etlPackageName'
    -> Text -- ^ 'etlEditId'
    -> EditsTracksList
editsTracksList pEtlPackageName_ pEtlEditId_ =
    EditsTracksList'
    { _etlPackageName = pEtlPackageName_
    , _etlEditId = pEtlEditId_
    }

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
etlPackageName :: Lens' EditsTracksList Text
etlPackageName
  = lens _etlPackageName
      (\ s a -> s{_etlPackageName = a})

-- | Unique identifier for this edit.
etlEditId :: Lens' EditsTracksList Text
etlEditId
  = lens _etlEditId (\ s a -> s{_etlEditId = a})

instance GoogleRequest EditsTracksList where
        type Rs EditsTracksList = TracksListResponse
        type Scopes EditsTracksList =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsTracksList'{..}
          = go _etlPackageName _etlEditId (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsTracksListResource)
                      mempty
