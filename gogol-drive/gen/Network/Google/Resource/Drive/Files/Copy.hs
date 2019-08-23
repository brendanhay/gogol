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
-- Module      : Network.Google.Resource.Drive.Files.Copy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a copy of a file and applies any requested updates with patch
-- semantics.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.files.copy@.
module Network.Google.Resource.Drive.Files.Copy
    (
    -- * REST Resource
      FilesCopyResource

    -- * Creating a Request
    , filesCopy
    , FilesCopy

    -- * Request Lenses
    , fPayload
    , fOCRLanguage
    , fKeepRevisionForever
    , fSupportsAllDrives
    , fIgnoreDefaultVisibility
    , fFileId
    , fSupportsTeamDrives
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.files.copy@ method which the
-- 'FilesCopy' request conforms to.
type FilesCopyResource =
     "drive" :>
       "v3" :>
         "files" :>
           Capture "fileId" Text :>
             "copy" :>
               QueryParam "ocrLanguage" Text :>
                 QueryParam "keepRevisionForever" Bool :>
                   QueryParam "supportsAllDrives" Bool :>
                     QueryParam "ignoreDefaultVisibility" Bool :>
                       QueryParam "supportsTeamDrives" Bool :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] File :> Post '[JSON] File

-- | Creates a copy of a file and applies any requested updates with patch
-- semantics.
--
-- /See:/ 'filesCopy' smart constructor.
data FilesCopy =
  FilesCopy'
    { _fPayload                 :: !File
    , _fOCRLanguage             :: !(Maybe Text)
    , _fKeepRevisionForever     :: !Bool
    , _fSupportsAllDrives       :: !Bool
    , _fIgnoreDefaultVisibility :: !Bool
    , _fFileId                  :: !Text
    , _fSupportsTeamDrives      :: !Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FilesCopy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fPayload'
--
-- * 'fOCRLanguage'
--
-- * 'fKeepRevisionForever'
--
-- * 'fSupportsAllDrives'
--
-- * 'fIgnoreDefaultVisibility'
--
-- * 'fFileId'
--
-- * 'fSupportsTeamDrives'
filesCopy
    :: File -- ^ 'fPayload'
    -> Text -- ^ 'fFileId'
    -> FilesCopy
filesCopy pFPayload_ pFFileId_ =
  FilesCopy'
    { _fPayload = pFPayload_
    , _fOCRLanguage = Nothing
    , _fKeepRevisionForever = False
    , _fSupportsAllDrives = False
    , _fIgnoreDefaultVisibility = False
    , _fFileId = pFFileId_
    , _fSupportsTeamDrives = False
    }


-- | Multipart request metadata.
fPayload :: Lens' FilesCopy File
fPayload = lens _fPayload (\ s a -> s{_fPayload = a})

-- | A language hint for OCR processing during image import (ISO 639-1 code).
fOCRLanguage :: Lens' FilesCopy (Maybe Text)
fOCRLanguage
  = lens _fOCRLanguage (\ s a -> s{_fOCRLanguage = a})

-- | Whether to set the \'keepForever\' field in the new head revision. This
-- is only applicable to files with binary content in Google Drive.
fKeepRevisionForever :: Lens' FilesCopy Bool
fKeepRevisionForever
  = lens _fKeepRevisionForever
      (\ s a -> s{_fKeepRevisionForever = a})

-- | Whether the requesting application supports both My Drives and shared
-- drives.
fSupportsAllDrives :: Lens' FilesCopy Bool
fSupportsAllDrives
  = lens _fSupportsAllDrives
      (\ s a -> s{_fSupportsAllDrives = a})

-- | Whether to ignore the domain\'s default visibility settings for the
-- created file. Domain administrators can choose to make all uploaded
-- files visible to the domain by default; this parameter bypasses that
-- behavior for the request. Permissions are still inherited from parent
-- folders.
fIgnoreDefaultVisibility :: Lens' FilesCopy Bool
fIgnoreDefaultVisibility
  = lens _fIgnoreDefaultVisibility
      (\ s a -> s{_fIgnoreDefaultVisibility = a})

-- | The ID of the file.
fFileId :: Lens' FilesCopy Text
fFileId = lens _fFileId (\ s a -> s{_fFileId = a})

-- | Deprecated use supportsAllDrives instead.
fSupportsTeamDrives :: Lens' FilesCopy Bool
fSupportsTeamDrives
  = lens _fSupportsTeamDrives
      (\ s a -> s{_fSupportsTeamDrives = a})

instance GoogleRequest FilesCopy where
        type Rs FilesCopy = File
        type Scopes FilesCopy =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.appdata",
               "https://www.googleapis.com/auth/drive.file",
               "https://www.googleapis.com/auth/drive.photos.readonly"]
        requestClient FilesCopy'{..}
          = go _fFileId _fOCRLanguage
              (Just _fKeepRevisionForever)
              (Just _fSupportsAllDrives)
              (Just _fIgnoreDefaultVisibility)
              (Just _fSupportsTeamDrives)
              (Just AltJSON)
              _fPayload
              driveService
          where go
                  = buildClient (Proxy :: Proxy FilesCopyResource)
                      mempty
