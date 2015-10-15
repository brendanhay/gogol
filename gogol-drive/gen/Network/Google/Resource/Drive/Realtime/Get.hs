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
-- | Exports the contents of the Realtime API data model associated with this
-- file as JSON.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveRealtimeGet@.
module Network.Google.Resource.Drive.Realtime.Get
    (
    -- * REST Resource
      RealtimeGetResource

    -- * Creating a Request
    , realtimeGet'
    , RealtimeGet'

    -- * Request Lenses
    , reaFileId
    , reaRevision
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveRealtimeGet@ method which the
-- 'RealtimeGet'' request conforms to.
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
-- /See:/ 'realtimeGet'' smart constructor.
data RealtimeGet' = RealtimeGet'
    { _reaFileId   :: !Text
    , _reaRevision :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RealtimeGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'reaFileId'
--
-- * 'reaRevision'
realtimeGet'
    :: Text -- ^ 'fileId'
    -> RealtimeGet'
realtimeGet' pReaFileId_ =
    RealtimeGet'
    { _reaFileId = pReaFileId_
    , _reaRevision = Nothing
    }

-- | The ID of the file that the Realtime API data model is associated with.
reaFileId :: Lens' RealtimeGet' Text
reaFileId
  = lens _reaFileId (\ s a -> s{_reaFileId = a})

-- | The revision of the Realtime API data model to export. Revisions start
-- at 1 (the initial empty data model) and are incremented with each
-- change. If this parameter is excluded, the most recent data model will
-- be returned.
reaRevision :: Lens' RealtimeGet' (Maybe Int32)
reaRevision
  = lens _reaRevision (\ s a -> s{_reaRevision = a})

instance GoogleRequest RealtimeGet' where
        type Rs RealtimeGet' = ()
        requestClient RealtimeGet'{..}
          = go _reaFileId _reaRevision (Just AltJSON) drive
          where go :<|> _
                  = buildClient (Proxy :: Proxy RealtimeGetResource)
                      mempty

instance GoogleRequest (MediaDownload RealtimeGet')
         where
        type Rs (MediaDownload RealtimeGet') = Stream
        requestClient (MediaDownload RealtimeGet'{..})
          = go _reaFileId _reaRevision (Just AltMedia) drive
          where _ :<|> go
                  = buildClient (Proxy :: Proxy RealtimeGetResource)
                      mempty
