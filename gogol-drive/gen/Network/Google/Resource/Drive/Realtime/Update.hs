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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Overwrites the Realtime API data model associated with this file with
-- the provided JSON data model.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.realtime.update@.
module Network.Google.Resource.Drive.Realtime.Update
    (
    -- * REST Resource
      RealtimeUpdateResource

    -- * Creating a Request
    , realtimeUpdate
    , RealtimeUpdate

    -- * Request Lenses
    , reaBaseRevision
    , reaFileId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.realtime.update@ method which the
-- 'RealtimeUpdate' request conforms to.
type RealtimeUpdateResource =
     "drive" :>
       "v2" :>
         "files" :>
           Capture "fileId" Text :>
             "realtime" :>
               QueryParam "baseRevision" Text :>
                 QueryParam "alt" AltJSON :> Put '[JSON] ()
       :<|>
       "upload" :>
         "drive" :>
           "v2" :>
             "files" :>
               Capture "fileId" Text :>
                 "realtime" :>
                   QueryParam "baseRevision" Text :>
                     QueryParam "alt" AltJSON :>
                       QueryParam "uploadType" AltMedia :>
                         ReqBody '[OctetStream] RequestBody :> Put '[JSON] ()

-- | Overwrites the Realtime API data model associated with this file with
-- the provided JSON data model.
--
-- /See:/ 'realtimeUpdate' smart constructor.
data RealtimeUpdate = RealtimeUpdate
    { _reaBaseRevision :: !(Maybe Text)
    , _reaFileId       :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RealtimeUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'reaBaseRevision'
--
-- * 'reaFileId'
realtimeUpdate
    :: Text -- ^ 'reaFileId'
    -> RealtimeUpdate
realtimeUpdate pReaFileId_ =
    RealtimeUpdate
    { _reaBaseRevision = Nothing
    , _reaFileId = pReaFileId_
    }

-- | The revision of the model to diff the uploaded model against. If set,
-- the uploaded model is diffed against the provided revision and those
-- differences are merged with any changes made to the model after the
-- provided revision. If not set, the uploaded model replaces the current
-- model on the server.
reaBaseRevision :: Lens' RealtimeUpdate (Maybe Text)
reaBaseRevision
  = lens _reaBaseRevision
      (\ s a -> s{_reaBaseRevision = a})

-- | The ID of the file that the Realtime API data model is associated with.
reaFileId :: Lens' RealtimeUpdate Text
reaFileId
  = lens _reaFileId (\ s a -> s{_reaFileId = a})

instance GoogleRequest RealtimeUpdate where
        type Rs RealtimeUpdate = ()
        type Scopes RealtimeUpdate =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file"]
        requestClient RealtimeUpdate{..}
          = go _reaFileId _reaBaseRevision (Just AltJSON)
              driveService
          where go :<|> _
                  = buildClient (Proxy :: Proxy RealtimeUpdateResource)
                      mempty

instance GoogleRequest (MediaUpload RealtimeUpdate)
         where
        type Rs (MediaUpload RealtimeUpdate) = ()
        type Scopes (MediaUpload RealtimeUpdate) =
             Scopes RealtimeUpdate
        requestClient (MediaUpload RealtimeUpdate{..} body)
          = go _reaFileId _reaBaseRevision (Just AltJSON)
              (Just AltMedia)
              body
              driveService
          where _ :<|> go
                  = buildClient (Proxy :: Proxy RealtimeUpdateResource)
                      mempty
