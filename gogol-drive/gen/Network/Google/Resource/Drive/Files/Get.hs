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
-- Module      : Network.Google.Resource.Drive.Files.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a file\'s metadata or content by ID.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.files.get@.
module Network.Google.Resource.Drive.Files.Get
    (
    -- * REST Resource
      FilesGetResource

    -- * Creating a Request
    , filesGet
    , FilesGet

    -- * Request Lenses
    , fgSupportsAllDrives
    , fgAcknowledgeAbuse
    , fgFileId
    , fgSupportsTeamDrives
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.files.get@ method which the
-- 'FilesGet' request conforms to.
type FilesGetResource =
     "drive" :>
       "v3" :>
         "files" :>
           Capture "fileId" Text :>
             QueryParam "supportsAllDrives" Bool :>
               QueryParam "acknowledgeAbuse" Bool :>
                 QueryParam "supportsTeamDrives" Bool :>
                   QueryParam "alt" AltJSON :> Get '[JSON] File
       :<|>
       "drive" :>
         "v3" :>
           "files" :>
             Capture "fileId" Text :>
               QueryParam "supportsAllDrives" Bool :>
                 QueryParam "acknowledgeAbuse" Bool :>
                   QueryParam "supportsTeamDrives" Bool :>
                     QueryParam "alt" AltMedia :>
                       Get '[OctetStream] Stream

-- | Gets a file\'s metadata or content by ID.
--
-- /See:/ 'filesGet' smart constructor.
data FilesGet =
  FilesGet'
    { _fgSupportsAllDrives  :: !Bool
    , _fgAcknowledgeAbuse   :: !Bool
    , _fgFileId             :: !Text
    , _fgSupportsTeamDrives :: !Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FilesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fgSupportsAllDrives'
--
-- * 'fgAcknowledgeAbuse'
--
-- * 'fgFileId'
--
-- * 'fgSupportsTeamDrives'
filesGet
    :: Text -- ^ 'fgFileId'
    -> FilesGet
filesGet pFgFileId_ =
  FilesGet'
    { _fgSupportsAllDrives = False
    , _fgAcknowledgeAbuse = False
    , _fgFileId = pFgFileId_
    , _fgSupportsTeamDrives = False
    }


-- | Whether the requesting application supports both My Drives and shared
-- drives.
fgSupportsAllDrives :: Lens' FilesGet Bool
fgSupportsAllDrives
  = lens _fgSupportsAllDrives
      (\ s a -> s{_fgSupportsAllDrives = a})

-- | Whether the user is acknowledging the risk of downloading known malware
-- or other abusive files. This is only applicable when alt=media.
fgAcknowledgeAbuse :: Lens' FilesGet Bool
fgAcknowledgeAbuse
  = lens _fgAcknowledgeAbuse
      (\ s a -> s{_fgAcknowledgeAbuse = a})

-- | The ID of the file.
fgFileId :: Lens' FilesGet Text
fgFileId = lens _fgFileId (\ s a -> s{_fgFileId = a})

-- | Deprecated use supportsAllDrives instead.
fgSupportsTeamDrives :: Lens' FilesGet Bool
fgSupportsTeamDrives
  = lens _fgSupportsTeamDrives
      (\ s a -> s{_fgSupportsTeamDrives = a})

instance GoogleRequest FilesGet where
        type Rs FilesGet = File
        type Scopes FilesGet =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.appdata",
               "https://www.googleapis.com/auth/drive.file",
               "https://www.googleapis.com/auth/drive.metadata",
               "https://www.googleapis.com/auth/drive.metadata.readonly",
               "https://www.googleapis.com/auth/drive.photos.readonly",
               "https://www.googleapis.com/auth/drive.readonly"]
        requestClient FilesGet'{..}
          = go _fgFileId (Just _fgSupportsAllDrives)
              (Just _fgAcknowledgeAbuse)
              (Just _fgSupportsTeamDrives)
              (Just AltJSON)
              driveService
          where go :<|> _
                  = buildClient (Proxy :: Proxy FilesGetResource)
                      mempty

instance GoogleRequest (MediaDownload FilesGet) where
        type Rs (MediaDownload FilesGet) = Stream
        type Scopes (MediaDownload FilesGet) =
             Scopes FilesGet
        requestClient (MediaDownload FilesGet'{..})
          = go _fgFileId (Just _fgSupportsAllDrives)
              (Just _fgAcknowledgeAbuse)
              (Just _fgSupportsTeamDrives)
              (Just AltMedia)
              driveService
          where _ :<|> go
                  = buildClient (Proxy :: Proxy FilesGetResource)
                      mempty
