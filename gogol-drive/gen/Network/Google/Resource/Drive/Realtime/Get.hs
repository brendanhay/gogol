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
-- Module      : Network.Google.Resource.Drive.Realtime.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Exports the contents of the Realtime API data model associated with this
-- file as JSON.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.realtime.get@.
module Network.Google.Resource.Drive.Realtime.Get
    (
    -- * REST Resource
      RealtimeGetResource

    -- * Creating a Request
    , realtimeGet
    , RealtimeGet

    -- * Request Lenses
    , rrFileId
    , rrRevision
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.realtime.get@ method which the
-- 'RealtimeGet' request conforms to.
type RealtimeGetResource =
     "files" :>
       Capture "fileId" Text :>
         "realtime" :>
           QueryParam "revision" Int32 :>
             QueryParam "alt" AltJSON :> Get '[JSON] ()
       :<|>
       "files" :>
         Capture "fileId" Text :>
           "realtime" :>
             QueryParam "revision" Int32 :>
               QueryParam "alt" AltMedia :>
                 Get '[OctetStream] Stream

-- | Exports the contents of the Realtime API data model associated with this
-- file as JSON.
--
-- /See:/ 'realtimeGet' smart constructor.
data RealtimeGet = RealtimeGet
    { _rrFileId   :: !Text
    , _rrRevision :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RealtimeGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrFileId'
--
-- * 'rrRevision'
realtimeGet
    :: Text -- ^ 'rrFileId'
    -> RealtimeGet
realtimeGet pRrFileId_ =
    RealtimeGet
    { _rrFileId = pRrFileId_
    , _rrRevision = Nothing
    }

-- | The ID of the file that the Realtime API data model is associated with.
rrFileId :: Lens' RealtimeGet Text
rrFileId = lens _rrFileId (\ s a -> s{_rrFileId = a})

-- | The revision of the Realtime API data model to export. Revisions start
-- at 1 (the initial empty data model) and are incremented with each
-- change. If this parameter is excluded, the most recent data model will
-- be returned.
rrRevision :: Lens' RealtimeGet (Maybe Int32)
rrRevision
  = lens _rrRevision (\ s a -> s{_rrRevision = a})

instance GoogleRequest RealtimeGet where
        type Rs RealtimeGet = ()
        requestClient RealtimeGet{..}
          = go _rrFileId _rrRevision (Just AltJSON)
              driveService
          where go :<|> _
                  = buildClient (Proxy :: Proxy RealtimeGetResource)
                      mempty

instance GoogleRequest (Download RealtimeGet) where
        type Rs (Download RealtimeGet) = Stream
        requestClient (Download RealtimeGet{..})
          = go _rrFileId _rrRevision (Just AltMedia)
              driveService
          where _ :<|> go
                  = buildClient (Proxy :: Proxy RealtimeGetResource)
                      mempty
