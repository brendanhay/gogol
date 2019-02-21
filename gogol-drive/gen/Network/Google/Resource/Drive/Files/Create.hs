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
-- Module      : Network.Google.Resource.Drive.Files.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new file.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.files.create@.
module Network.Google.Resource.Drive.Files.Create
    (
    -- * REST Resource
      FilesCreateResource

    -- * Creating a Request
    , filesCreate
    , FilesCreate

    -- * Request Lenses
    , fcPayload
    , fcUseContentAsIndexableText
    , fcOCRLanguage
    , fcKeepRevisionForever
    , fcIgnoreDefaultVisibility
    , fcSupportsTeamDrives
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.files.create@ method which the
-- 'FilesCreate' request conforms to.
type FilesCreateResource =
     "drive" :>
       "v3" :>
         "files" :>
           QueryParam "useContentAsIndexableText" Bool :>
             QueryParam "ocrLanguage" Text :>
               QueryParam "keepRevisionForever" Bool :>
                 QueryParam "ignoreDefaultVisibility" Bool :>
                   QueryParam "supportsTeamDrives" Bool :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] File :> Post '[JSON] File
       :<|>
       "upload" :>
         "drive" :>
           "v3" :>
             "files" :>
               QueryParam "useContentAsIndexableText" Bool :>
                 QueryParam "ocrLanguage" Text :>
                   QueryParam "keepRevisionForever" Bool :>
                     QueryParam "ignoreDefaultVisibility" Bool :>
                       QueryParam "supportsTeamDrives" Bool :>
                         QueryParam "alt" AltJSON :>
                           QueryParam "uploadType" Multipart :>
                             MultipartRelated '[JSON] File :> Post '[JSON] File

-- | Creates a new file.
--
-- /See:/ 'filesCreate' smart constructor.
data FilesCreate =
  FilesCreate'
    { _fcPayload                   :: !File
    , _fcUseContentAsIndexableText :: !Bool
    , _fcOCRLanguage               :: !(Maybe Text)
    , _fcKeepRevisionForever       :: !Bool
    , _fcIgnoreDefaultVisibility   :: !Bool
    , _fcSupportsTeamDrives        :: !Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FilesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fcPayload'
--
-- * 'fcUseContentAsIndexableText'
--
-- * 'fcOCRLanguage'
--
-- * 'fcKeepRevisionForever'
--
-- * 'fcIgnoreDefaultVisibility'
--
-- * 'fcSupportsTeamDrives'
filesCreate
    :: File -- ^ 'fcPayload'
    -> FilesCreate
filesCreate pFcPayload_ =
  FilesCreate'
    { _fcPayload = pFcPayload_
    , _fcUseContentAsIndexableText = False
    , _fcOCRLanguage = Nothing
    , _fcKeepRevisionForever = False
    , _fcIgnoreDefaultVisibility = False
    , _fcSupportsTeamDrives = False
    }


-- | Multipart request metadata.
fcPayload :: Lens' FilesCreate File
fcPayload
  = lens _fcPayload (\ s a -> s{_fcPayload = a})

-- | Whether to use the uploaded content as indexable text.
fcUseContentAsIndexableText :: Lens' FilesCreate Bool
fcUseContentAsIndexableText
  = lens _fcUseContentAsIndexableText
      (\ s a -> s{_fcUseContentAsIndexableText = a})

-- | A language hint for OCR processing during image import (ISO 639-1 code).
fcOCRLanguage :: Lens' FilesCreate (Maybe Text)
fcOCRLanguage
  = lens _fcOCRLanguage
      (\ s a -> s{_fcOCRLanguage = a})

-- | Whether to set the \'keepForever\' field in the new head revision. This
-- is only applicable to files with binary content in Drive.
fcKeepRevisionForever :: Lens' FilesCreate Bool
fcKeepRevisionForever
  = lens _fcKeepRevisionForever
      (\ s a -> s{_fcKeepRevisionForever = a})

-- | Whether to ignore the domain\'s default visibility settings for the
-- created file. Domain administrators can choose to make all uploaded
-- files visible to the domain by default; this parameter bypasses that
-- behavior for the request. Permissions are still inherited from parent
-- folders.
fcIgnoreDefaultVisibility :: Lens' FilesCreate Bool
fcIgnoreDefaultVisibility
  = lens _fcIgnoreDefaultVisibility
      (\ s a -> s{_fcIgnoreDefaultVisibility = a})

-- | Whether the requesting application supports Team Drives.
fcSupportsTeamDrives :: Lens' FilesCreate Bool
fcSupportsTeamDrives
  = lens _fcSupportsTeamDrives
      (\ s a -> s{_fcSupportsTeamDrives = a})

instance GoogleRequest FilesCreate where
        type Rs FilesCreate = File
        type Scopes FilesCreate =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.appdata",
               "https://www.googleapis.com/auth/drive.file"]
        requestClient FilesCreate'{..}
          = go (Just _fcUseContentAsIndexableText)
              _fcOCRLanguage
              (Just _fcKeepRevisionForever)
              (Just _fcIgnoreDefaultVisibility)
              (Just _fcSupportsTeamDrives)
              (Just AltJSON)
              _fcPayload
              driveService
          where go :<|> _
                  = buildClient (Proxy :: Proxy FilesCreateResource)
                      mempty

instance GoogleRequest (MediaUpload FilesCreate)
         where
        type Rs (MediaUpload FilesCreate) = File
        type Scopes (MediaUpload FilesCreate) =
             Scopes FilesCreate
        requestClient (MediaUpload FilesCreate'{..} body)
          = go (Just _fcUseContentAsIndexableText)
              _fcOCRLanguage
              (Just _fcKeepRevisionForever)
              (Just _fcIgnoreDefaultVisibility)
              (Just _fcSupportsTeamDrives)
              (Just AltJSON)
              (Just Multipart)
              _fcPayload
              body
              driveService
          where _ :<|> go
                  = buildClient (Proxy :: Proxy FilesCreateResource)
                      mempty
