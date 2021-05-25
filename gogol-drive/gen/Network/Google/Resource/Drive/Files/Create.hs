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
    , fcSupportsAllDrives
    , fcIncludePermissionsForView
    , fcIgnoreDefaultVisibility
    , fcEnforceSingleParent
    , fcSupportsTeamDrives
    ) where

import Network.Google.Drive.Types
import Network.Google.Prelude

-- | A resource alias for @drive.files.create@ method which the
-- 'FilesCreate' request conforms to.
type FilesCreateResource =
     "drive" :>
       "v3" :>
         "files" :>
           QueryParam "useContentAsIndexableText" Bool :>
             QueryParam "ocrLanguage" Text :>
               QueryParam "keepRevisionForever" Bool :>
                 QueryParam "supportsAllDrives" Bool :>
                   QueryParam "includePermissionsForView" Text :>
                     QueryParam "ignoreDefaultVisibility" Bool :>
                       QueryParam "enforceSingleParent" Bool :>
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
                     QueryParam "supportsAllDrives" Bool :>
                       QueryParam "includePermissionsForView" Text :>
                         QueryParam "ignoreDefaultVisibility" Bool :>
                           QueryParam "enforceSingleParent" Bool :>
                             QueryParam "supportsTeamDrives" Bool :>
                               QueryParam "alt" AltJSON :>
                                 QueryParam "uploadType" Multipart :>
                                   MultipartRelated '[JSON] File :>
                                     Post '[JSON] File

-- | Creates a new file.
--
-- /See:/ 'filesCreate' smart constructor.
data FilesCreate =
  FilesCreate'
    { _fcPayload :: !File
    , _fcUseContentAsIndexableText :: !Bool
    , _fcOCRLanguage :: !(Maybe Text)
    , _fcKeepRevisionForever :: !Bool
    , _fcSupportsAllDrives :: !Bool
    , _fcIncludePermissionsForView :: !(Maybe Text)
    , _fcIgnoreDefaultVisibility :: !Bool
    , _fcEnforceSingleParent :: !Bool
    , _fcSupportsTeamDrives :: !Bool
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
-- * 'fcSupportsAllDrives'
--
-- * 'fcIncludePermissionsForView'
--
-- * 'fcIgnoreDefaultVisibility'
--
-- * 'fcEnforceSingleParent'
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
    , _fcSupportsAllDrives = False
    , _fcIncludePermissionsForView = Nothing
    , _fcIgnoreDefaultVisibility = False
    , _fcEnforceSingleParent = False
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
-- is only applicable to files with binary content in Google Drive. Only
-- 200 revisions for the file can be kept forever. If the limit is reached,
-- try deleting pinned revisions.
fcKeepRevisionForever :: Lens' FilesCreate Bool
fcKeepRevisionForever
  = lens _fcKeepRevisionForever
      (\ s a -> s{_fcKeepRevisionForever = a})

-- | Whether the requesting application supports both My Drives and shared
-- drives.
fcSupportsAllDrives :: Lens' FilesCreate Bool
fcSupportsAllDrives
  = lens _fcSupportsAllDrives
      (\ s a -> s{_fcSupportsAllDrives = a})

-- | Specifies which additional view\'s permissions to include in the
-- response. Only \'published\' is supported.
fcIncludePermissionsForView :: Lens' FilesCreate (Maybe Text)
fcIncludePermissionsForView
  = lens _fcIncludePermissionsForView
      (\ s a -> s{_fcIncludePermissionsForView = a})

-- | Whether to ignore the domain\'s default visibility settings for the
-- created file. Domain administrators can choose to make all uploaded
-- files visible to the domain by default; this parameter bypasses that
-- behavior for the request. Permissions are still inherited from parent
-- folders.
fcIgnoreDefaultVisibility :: Lens' FilesCreate Bool
fcIgnoreDefaultVisibility
  = lens _fcIgnoreDefaultVisibility
      (\ s a -> s{_fcIgnoreDefaultVisibility = a})

-- | Deprecated. Creating files in multiple folders is no longer supported.
fcEnforceSingleParent :: Lens' FilesCreate Bool
fcEnforceSingleParent
  = lens _fcEnforceSingleParent
      (\ s a -> s{_fcEnforceSingleParent = a})

-- | Deprecated use supportsAllDrives instead.
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
              (Just _fcSupportsAllDrives)
              _fcIncludePermissionsForView
              (Just _fcIgnoreDefaultVisibility)
              (Just _fcEnforceSingleParent)
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
              (Just _fcSupportsAllDrives)
              _fcIncludePermissionsForView
              (Just _fcIgnoreDefaultVisibility)
              (Just _fcEnforceSingleParent)
              (Just _fcSupportsTeamDrives)
              (Just AltJSON)
              (Just Multipart)
              _fcPayload
              body
              driveService
          where _ :<|> go
                  = buildClient (Proxy :: Proxy FilesCreateResource)
                      mempty
