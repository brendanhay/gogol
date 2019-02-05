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
-- Module      : Network.Google.Resource.Drive.Files.Export
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Exports a Google Doc to the requested MIME type and returns the exported
-- content. Please note that the exported content is limited to 10MB.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.files.export@.
module Network.Google.Resource.Drive.Files.Export
    (
    -- * REST Resource
      FilesExportResource

    -- * Creating a Request
    , filesExport
    , FilesExport

    -- * Request Lenses
    , feMimeType
    , feFileId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.files.export@ method which the
-- 'FilesExport' request conforms to.
type FilesExportResource =
     "drive" :>
       "v3" :>
         "files" :>
           Capture "fileId" Text :>
             "export" :>
               QueryParam "mimeType" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] ()
       :<|>
       "drive" :>
         "v3" :>
           "files" :>
             Capture "fileId" Text :>
               "export" :>
                 QueryParam "mimeType" Text :>
                   QueryParam "alt" AltMedia :>
                     Get '[OctetStream] Stream

-- | Exports a Google Doc to the requested MIME type and returns the exported
-- content. Please note that the exported content is limited to 10MB.
--
-- /See:/ 'filesExport' smart constructor.
data FilesExport = FilesExport'
    { _feMimeType :: !Text
    , _feFileId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilesExport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'feMimeType'
--
-- * 'feFileId'
filesExport
    :: Text -- ^ 'feMimeType'
    -> Text -- ^ 'feFileId'
    -> FilesExport
filesExport pFeMimeType_ pFeFileId_ =
    FilesExport'
    { _feMimeType = pFeMimeType_
    , _feFileId = pFeFileId_
    }

-- | The MIME type of the format requested for this export.
feMimeType :: Lens' FilesExport Text
feMimeType
  = lens _feMimeType (\ s a -> s{_feMimeType = a})

-- | The ID of the file.
feFileId :: Lens' FilesExport Text
feFileId = lens _feFileId (\ s a -> s{_feFileId = a})

instance GoogleRequest FilesExport where
        type Rs FilesExport = ()
        type Scopes FilesExport =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file",
               "https://www.googleapis.com/auth/drive.readonly"]
        requestClient FilesExport'{..}
          = go _feFileId (Just _feMimeType) (Just AltJSON)
              driveService
          where go :<|> _
                  = buildClient (Proxy :: Proxy FilesExportResource)
                      mempty

instance GoogleRequest (MediaDownload FilesExport)
         where
        type Rs (MediaDownload FilesExport) = Stream
        type Scopes (MediaDownload FilesExport) =
             Scopes FilesExport
        requestClient (MediaDownload FilesExport'{..})
          = go _feFileId (Just _feMimeType) (Just AltMedia)
              driveService
          where _ :<|> go
                  = buildClient (Proxy :: Proxy FilesExportResource)
                      mempty
