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
-- Module      : Network.Google.Resource.Drive.Files.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates file metadata and\/or content. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.files.patch@.
module Network.Google.Resource.Drive.Files.Patch
    (
    -- * REST Resource
      FilesPatchResource

    -- * Creating a Request
    , filesPatch
    , FilesPatch

    -- * Request Lenses
    , fpNewRevision
    , fpPinned
    , fpTimedTextLanguage
    , fpPayload
    , fpUpdateViewedDate
    , fpRemoveParents
    , fpModifiedDateBehavior
    , fpUseContentAsIndexableText
    , fpTimedTextTrackName
    , fpOCRLanguage
    , fpConvert
    , fpSetModifiedDate
    , fpFileId
    , fpAddParents
    , fpOCR
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.files.patch@ method which the
-- 'FilesPatch' request conforms to.
type FilesPatchResource =
     "drive" :>
       "v2" :>
         "files" :>
           Capture "fileId" Text :>
             QueryParam "newRevision" Bool :>
               QueryParam "pinned" Bool :>
                 QueryParam "timedTextLanguage" Text :>
                   QueryParam "updateViewedDate" Bool :>
                     QueryParam "removeParents" Text :>
                       QueryParam "modifiedDateBehavior"
                         FilesPatchModifiedDateBehavior
                         :>
                         QueryParam "useContentAsIndexableText" Bool :>
                           QueryParam "timedTextTrackName" Text :>
                             QueryParam "ocrLanguage" Text :>
                               QueryParam "convert" Bool :>
                                 QueryParam "setModifiedDate" Bool :>
                                   QueryParam "addParents" Text :>
                                     QueryParam "ocr" Bool :>
                                       QueryParam "alt" AltJSON :>
                                         ReqBody '[JSON] File :>
                                           Patch '[JSON] File

-- | Updates file metadata and\/or content. This method supports patch
-- semantics.
--
-- /See:/ 'filesPatch' smart constructor.
data FilesPatch = FilesPatch
    { _fpNewRevision               :: !Bool
    , _fpPinned                    :: !Bool
    , _fpTimedTextLanguage         :: !(Maybe Text)
    , _fpPayload                   :: !File
    , _fpUpdateViewedDate          :: !Bool
    , _fpRemoveParents             :: !(Maybe Text)
    , _fpModifiedDateBehavior      :: !(Maybe FilesPatchModifiedDateBehavior)
    , _fpUseContentAsIndexableText :: !Bool
    , _fpTimedTextTrackName        :: !(Maybe Text)
    , _fpOCRLanguage               :: !(Maybe Text)
    , _fpConvert                   :: !Bool
    , _fpSetModifiedDate           :: !Bool
    , _fpFileId                    :: !Text
    , _fpAddParents                :: !(Maybe Text)
    , _fpOCR                       :: !Bool
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fpNewRevision'
--
-- * 'fpPinned'
--
-- * 'fpTimedTextLanguage'
--
-- * 'fpPayload'
--
-- * 'fpUpdateViewedDate'
--
-- * 'fpRemoveParents'
--
-- * 'fpModifiedDateBehavior'
--
-- * 'fpUseContentAsIndexableText'
--
-- * 'fpTimedTextTrackName'
--
-- * 'fpOCRLanguage'
--
-- * 'fpConvert'
--
-- * 'fpSetModifiedDate'
--
-- * 'fpFileId'
--
-- * 'fpAddParents'
--
-- * 'fpOCR'
filesPatch
    :: File -- ^ 'fpPayload'
    -> Text -- ^ 'fpFileId'
    -> FilesPatch
filesPatch pFpPayload_ pFpFileId_ =
    FilesPatch
    { _fpNewRevision = True
    , _fpPinned = False
    , _fpTimedTextLanguage = Nothing
    , _fpPayload = pFpPayload_
    , _fpUpdateViewedDate = True
    , _fpRemoveParents = Nothing
    , _fpModifiedDateBehavior = Nothing
    , _fpUseContentAsIndexableText = False
    , _fpTimedTextTrackName = Nothing
    , _fpOCRLanguage = Nothing
    , _fpConvert = False
    , _fpSetModifiedDate = False
    , _fpFileId = pFpFileId_
    , _fpAddParents = Nothing
    , _fpOCR = False
    }

-- | Whether a blob upload should create a new revision. If false, the blob
-- data in the current head revision is replaced. If true or not set, a new
-- blob is created as head revision, and previous unpinned revisions are
-- preserved for a short period of time. Pinned revisions are stored
-- indefinitely, using additional storage quota, up to a maximum of 200
-- revisions. For details on how revisions are retained, see the Drive Help
-- Center.
fpNewRevision :: Lens' FilesPatch Bool
fpNewRevision
  = lens _fpNewRevision
      (\ s a -> s{_fpNewRevision = a})

-- | Whether to pin the new revision. A file can have a maximum of 200 pinned
-- revisions.
fpPinned :: Lens' FilesPatch Bool
fpPinned = lens _fpPinned (\ s a -> s{_fpPinned = a})

-- | The language of the timed text.
fpTimedTextLanguage :: Lens' FilesPatch (Maybe Text)
fpTimedTextLanguage
  = lens _fpTimedTextLanguage
      (\ s a -> s{_fpTimedTextLanguage = a})

-- | Multipart request metadata.
fpPayload :: Lens' FilesPatch File
fpPayload
  = lens _fpPayload (\ s a -> s{_fpPayload = a})

-- | Whether to update the view date after successfully updating the file.
fpUpdateViewedDate :: Lens' FilesPatch Bool
fpUpdateViewedDate
  = lens _fpUpdateViewedDate
      (\ s a -> s{_fpUpdateViewedDate = a})

-- | Comma-separated list of parent IDs to remove.
fpRemoveParents :: Lens' FilesPatch (Maybe Text)
fpRemoveParents
  = lens _fpRemoveParents
      (\ s a -> s{_fpRemoveParents = a})

-- | Determines the behavior in which modifiedDate is updated. This overrides
-- setModifiedDate.
fpModifiedDateBehavior :: Lens' FilesPatch (Maybe FilesPatchModifiedDateBehavior)
fpModifiedDateBehavior
  = lens _fpModifiedDateBehavior
      (\ s a -> s{_fpModifiedDateBehavior = a})

-- | Whether to use the content as indexable text.
fpUseContentAsIndexableText :: Lens' FilesPatch Bool
fpUseContentAsIndexableText
  = lens _fpUseContentAsIndexableText
      (\ s a -> s{_fpUseContentAsIndexableText = a})

-- | The timed text track name.
fpTimedTextTrackName :: Lens' FilesPatch (Maybe Text)
fpTimedTextTrackName
  = lens _fpTimedTextTrackName
      (\ s a -> s{_fpTimedTextTrackName = a})

-- | If ocr is true, hints at the language to use. Valid values are BCP 47
-- codes.
fpOCRLanguage :: Lens' FilesPatch (Maybe Text)
fpOCRLanguage
  = lens _fpOCRLanguage
      (\ s a -> s{_fpOCRLanguage = a})

-- | This parameter is deprecated and has no function.
fpConvert :: Lens' FilesPatch Bool
fpConvert
  = lens _fpConvert (\ s a -> s{_fpConvert = a})

-- | Whether to set the modified date with the supplied modified date.
fpSetModifiedDate :: Lens' FilesPatch Bool
fpSetModifiedDate
  = lens _fpSetModifiedDate
      (\ s a -> s{_fpSetModifiedDate = a})

-- | The ID of the file to update.
fpFileId :: Lens' FilesPatch Text
fpFileId = lens _fpFileId (\ s a -> s{_fpFileId = a})

-- | Comma-separated list of parent IDs to add.
fpAddParents :: Lens' FilesPatch (Maybe Text)
fpAddParents
  = lens _fpAddParents (\ s a -> s{_fpAddParents = a})

-- | Whether to attempt OCR on .jpg, .png, .gif, or .pdf uploads.
fpOCR :: Lens' FilesPatch Bool
fpOCR = lens _fpOCR (\ s a -> s{_fpOCR = a})

instance GoogleRequest FilesPatch where
        type Rs FilesPatch = File
        type Scopes FilesPatch =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.appdata",
               "https://www.googleapis.com/auth/drive.apps.readonly",
               "https://www.googleapis.com/auth/drive.file",
               "https://www.googleapis.com/auth/drive.metadata",
               "https://www.googleapis.com/auth/drive.scripts"]
        requestClient FilesPatch{..}
          = go _fpFileId (Just _fpNewRevision) (Just _fpPinned)
              _fpTimedTextLanguage
              (Just _fpUpdateViewedDate)
              _fpRemoveParents
              _fpModifiedDateBehavior
              (Just _fpUseContentAsIndexableText)
              _fpTimedTextTrackName
              _fpOCRLanguage
              (Just _fpConvert)
              (Just _fpSetModifiedDate)
              _fpAddParents
              (Just _fpOCR)
              (Just AltJSON)
              _fpPayload
              driveService
          where go
                  = buildClient (Proxy :: Proxy FilesPatchResource)
                      mempty
