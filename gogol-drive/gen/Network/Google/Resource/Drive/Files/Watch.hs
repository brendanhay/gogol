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
-- Module      : Network.Google.Resource.Drive.Files.Watch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Subscribe to changes on a file
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.files.watch@.
module Network.Google.Resource.Drive.Files.Watch
    (
    -- * REST Resource
      FilesWatchResource

    -- * Creating a Request
    , filesWatch
    , FilesWatch

    -- * Request Lenses
    , fwPayload
    , fwUpdateViewedDate
    , fwProjection
    , fwAcknowledgeAbuse
    , fwFileId
    , fwRevisionId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.files.watch@ method which the
-- 'FilesWatch' request conforms to.
type FilesWatchResource =
     "drive" :>
       "v2" :>
         "files" :>
           Capture "fileId" Text :>
             "watch" :>
               QueryParam "updateViewedDate" Bool :>
                 QueryParam "projection" FilesWatchProjection :>
                   QueryParam "acknowledgeAbuse" Bool :>
                     QueryParam "revisionId" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Channel :> Post '[JSON] Channel
       :<|>
       "drive" :>
         "v2" :>
           "files" :>
             Capture "fileId" Text :>
               "watch" :>
                 QueryParam "updateViewedDate" Bool :>
                   QueryParam "projection" FilesWatchProjection :>
                     QueryParam "acknowledgeAbuse" Bool :>
                       QueryParam "revisionId" Text :>
                         QueryParam "alt" AltMedia :>
                           Post '[OctetStream] Stream

-- | Subscribe to changes on a file
--
-- /See:/ 'filesWatch' smart constructor.
data FilesWatch = FilesWatch
    { _fwPayload          :: !Channel
    , _fwUpdateViewedDate :: !Bool
    , _fwProjection       :: !(Maybe FilesWatchProjection)
    , _fwAcknowledgeAbuse :: !Bool
    , _fwFileId           :: !Text
    , _fwRevisionId       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilesWatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fwPayload'
--
-- * 'fwUpdateViewedDate'
--
-- * 'fwProjection'
--
-- * 'fwAcknowledgeAbuse'
--
-- * 'fwFileId'
--
-- * 'fwRevisionId'
filesWatch
    :: Channel -- ^ 'fwPayload'
    -> Text -- ^ 'fwFileId'
    -> FilesWatch
filesWatch pFwPayload_ pFwFileId_ =
    FilesWatch
    { _fwPayload = pFwPayload_
    , _fwUpdateViewedDate = False
    , _fwProjection = Nothing
    , _fwAcknowledgeAbuse = False
    , _fwFileId = pFwFileId_
    , _fwRevisionId = Nothing
    }

-- | Multipart request metadata.
fwPayload :: Lens' FilesWatch Channel
fwPayload
  = lens _fwPayload (\ s a -> s{_fwPayload = a})

-- | Deprecated: Use files.update with modifiedDateBehavior=noChange,
-- updateViewedDate=true and an empty request body.
fwUpdateViewedDate :: Lens' FilesWatch Bool
fwUpdateViewedDate
  = lens _fwUpdateViewedDate
      (\ s a -> s{_fwUpdateViewedDate = a})

-- | This parameter is deprecated and has no function.
fwProjection :: Lens' FilesWatch (Maybe FilesWatchProjection)
fwProjection
  = lens _fwProjection (\ s a -> s{_fwProjection = a})

-- | Whether the user is acknowledging the risk of downloading known malware
-- or other abusive files.
fwAcknowledgeAbuse :: Lens' FilesWatch Bool
fwAcknowledgeAbuse
  = lens _fwAcknowledgeAbuse
      (\ s a -> s{_fwAcknowledgeAbuse = a})

-- | The ID for the file in question.
fwFileId :: Lens' FilesWatch Text
fwFileId = lens _fwFileId (\ s a -> s{_fwFileId = a})

-- | Specifies the Revision ID that should be downloaded. Ignored unless
-- alt=media is specified.
fwRevisionId :: Lens' FilesWatch (Maybe Text)
fwRevisionId
  = lens _fwRevisionId (\ s a -> s{_fwRevisionId = a})

instance GoogleRequest FilesWatch where
        type Rs FilesWatch = Channel
        requestClient FilesWatch{..}
          = go _fwFileId (Just _fwUpdateViewedDate)
              _fwProjection
              (Just _fwAcknowledgeAbuse)
              _fwRevisionId
              (Just AltJSON)
              _fwPayload
              driveService
          where go :<|> _
                  = buildClient (Proxy :: Proxy FilesWatchResource)
                      mempty

instance GoogleRequest (MediaDownload FilesWatch)
         where
        type Rs (MediaDownload FilesWatch) = Stream
        requestClient (MediaDownload FilesWatch{..})
          = go _fwFileId (Just _fwUpdateViewedDate)
              _fwProjection
              (Just _fwAcknowledgeAbuse)
              _fwRevisionId
              (Just AltMedia)
              driveService
          where _ :<|> go
                  = buildClient (Proxy :: Proxy FilesWatchResource)
                      mempty
