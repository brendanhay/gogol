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
-- Module      : Network.Google.Resource.Drive.Realtime.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Overwrites the Realtime API data model associated with this file with
-- the provided JSON data model.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveRealtimeUpdate@.
module Network.Google.Resource.Drive.Realtime.Update
    (
    -- * REST Resource
      RealtimeUpdateResource

    -- * Creating a Request
    , realtimeUpdate'
    , RealtimeUpdate'

    -- * Request Lenses
    , rBaseRevision
    , rMedia
    , rFileId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveRealtimeUpdate@ method which the
-- 'RealtimeUpdate'' request conforms to.
type RealtimeUpdateResource =
     "files" :>
       Capture "fileId" Text :>
         "realtime" :>
           QueryParam "baseRevision" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[OctetStream] RequestBody :> Put '[JSON] ()

-- | Overwrites the Realtime API data model associated with this file with
-- the provided JSON data model.
--
-- /See:/ 'realtimeUpdate'' smart constructor.
data RealtimeUpdate' = RealtimeUpdate'
    { _rBaseRevision :: !(Maybe Text)
    , _rMedia        :: !Stream
    , _rFileId       :: !Text
    }

-- | Creates a value of 'RealtimeUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rBaseRevision'
--
-- * 'rMedia'
--
-- * 'rFileId'
realtimeUpdate'
    :: Stream -- ^ 'media'
    -> Text -- ^ 'fileId'
    -> RealtimeUpdate'
realtimeUpdate' pRMedia_ pRFileId_ =
    RealtimeUpdate'
    { _rBaseRevision = Nothing
    , _rMedia = pRMedia_
    , _rFileId = pRFileId_
    }

-- | The revision of the model to diff the uploaded model against. If set,
-- the uploaded model is diffed against the provided revision and those
-- differences are merged with any changes made to the model after the
-- provided revision. If not set, the uploaded model replaces the current
-- model on the server.
rBaseRevision :: Lens' RealtimeUpdate' (Maybe Text)
rBaseRevision
  = lens _rBaseRevision
      (\ s a -> s{_rBaseRevision = a})

rMedia :: Lens' RealtimeUpdate' Stream
rMedia = lens _rMedia (\ s a -> s{_rMedia = a})

-- | The ID of the file that the Realtime API data model is associated with.
rFileId :: Lens' RealtimeUpdate' Text
rFileId = lens _rFileId (\ s a -> s{_rFileId = a})

instance GoogleRequest RealtimeUpdate' where
        type Rs RealtimeUpdate' = ()
        requestClient RealtimeUpdate'{..}
          = go _rFileId _rBaseRevision (Just AltJSON) _rMedia
              driveService
          where go
                  = buildClient (Proxy :: Proxy RealtimeUpdateResource)
                      mempty
