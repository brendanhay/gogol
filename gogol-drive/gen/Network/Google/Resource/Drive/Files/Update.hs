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
-- Module      : Network.Google.Resource.Drive.Files.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a file\'s metadata and\/or content with patch semantics.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.files.update@.
module Network.Google.Resource.Drive.Files.Update
    (
    -- * REST Resource
      FilesUpdateResource

    -- * Creating a Request
    , filesUpdate
    , FilesUpdate

    -- * Request Lenses
    , fuPayload
    , fuRemoveParents
    , fuUseContentAsIndexableText
    , fuOCRLanguage
    , fuKeepRevisionForever
    , fuFileId
    , fuAddParents
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.files.update@ method which the
-- 'FilesUpdate' request conforms to.
type FilesUpdateResource =
     "drive" :>
       "v3" :>
         "files" :>
           Capture "fileId" Text :>
             QueryParam "removeParents" Text :>
               QueryParam "useContentAsIndexableText" Bool :>
                 QueryParam "ocrLanguage" Text :>
                   QueryParam "keepRevisionForever" Bool :>
                     QueryParam "addParents" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] File :> Patch '[JSON] File
       :<|>
       "upload" :>
         "drive" :>
           "v3" :>
             "files" :>
               Capture "fileId" Text :>
                 QueryParam "removeParents" Text :>
                   QueryParam "useContentAsIndexableText" Bool :>
                     QueryParam "ocrLanguage" Text :>
                       QueryParam "keepRevisionForever" Bool :>
                         QueryParam "addParents" Text :>
                           QueryParam "alt" AltJSON :>
                             QueryParam "uploadType" AltMedia :>
                               MultipartRelated '[JSON] File RequestBody :>
                                 Patch '[JSON] File

-- | Updates a file\'s metadata and\/or content with patch semantics.
--
-- /See:/ 'filesUpdate' smart constructor.
data FilesUpdate = FilesUpdate
    { _fuPayload                   :: !File
    , _fuRemoveParents             :: !(Maybe Text)
    , _fuUseContentAsIndexableText :: !Bool
    , _fuOCRLanguage               :: !(Maybe Text)
    , _fuKeepRevisionForever       :: !Bool
    , _fuFileId                    :: !Text
    , _fuAddParents                :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fuPayload'
--
-- * 'fuRemoveParents'
--
-- * 'fuUseContentAsIndexableText'
--
-- * 'fuOCRLanguage'
--
-- * 'fuKeepRevisionForever'
--
-- * 'fuFileId'
--
-- * 'fuAddParents'
filesUpdate
    :: File -- ^ 'fuPayload'
    -> Text -- ^ 'fuFileId'
    -> FilesUpdate
filesUpdate pFuPayload_ pFuFileId_ =
    FilesUpdate
    { _fuPayload = pFuPayload_
    , _fuRemoveParents = Nothing
    , _fuUseContentAsIndexableText = False
    , _fuOCRLanguage = Nothing
    , _fuKeepRevisionForever = False
    , _fuFileId = pFuFileId_
    , _fuAddParents = Nothing
    }

-- | Multipart request metadata.
fuPayload :: Lens' FilesUpdate File
fuPayload
  = lens _fuPayload (\ s a -> s{_fuPayload = a})

-- | A comma-separated list of parent IDs to remove.
fuRemoveParents :: Lens' FilesUpdate (Maybe Text)
fuRemoveParents
  = lens _fuRemoveParents
      (\ s a -> s{_fuRemoveParents = a})

-- | Whether to use the uploaded content as indexable text.
fuUseContentAsIndexableText :: Lens' FilesUpdate Bool
fuUseContentAsIndexableText
  = lens _fuUseContentAsIndexableText
      (\ s a -> s{_fuUseContentAsIndexableText = a})

-- | A language hint for OCR processing during image import (ISO 639-1 code).
fuOCRLanguage :: Lens' FilesUpdate (Maybe Text)
fuOCRLanguage
  = lens _fuOCRLanguage
      (\ s a -> s{_fuOCRLanguage = a})

-- | Whether to set the \'keepForever\' field in the new head revision. This
-- is only applicable to files with binary content in Drive.
fuKeepRevisionForever :: Lens' FilesUpdate Bool
fuKeepRevisionForever
  = lens _fuKeepRevisionForever
      (\ s a -> s{_fuKeepRevisionForever = a})

-- | The ID of the file.
fuFileId :: Lens' FilesUpdate Text
fuFileId = lens _fuFileId (\ s a -> s{_fuFileId = a})

-- | A comma-separated list of parent IDs to add.
fuAddParents :: Lens' FilesUpdate (Maybe Text)
fuAddParents
  = lens _fuAddParents (\ s a -> s{_fuAddParents = a})

instance GoogleRequest FilesUpdate where
        type Rs FilesUpdate = File
        requestClient FilesUpdate{..}
          = go _fuFileId _fuRemoveParents
              (Just _fuUseContentAsIndexableText)
              _fuOCRLanguage
              (Just _fuKeepRevisionForever)
              _fuAddParents
              (Just AltJSON)
              _fuPayload
              driveService
          where go :<|> _
                  = buildClient (Proxy :: Proxy FilesUpdateResource)
                      mempty

instance GoogleRequest (MediaUpload FilesUpdate)
         where
        type Rs (MediaUpload FilesUpdate) = File
        requestClient (MediaUpload FilesUpdate{..} body)
          = go _fuFileId _fuRemoveParents
              (Just _fuUseContentAsIndexableText)
              _fuOCRLanguage
              (Just _fuKeepRevisionForever)
              _fuAddParents
              (Just AltJSON)
              (Just AltMedia)
              _fuPayload
              body
              driveService
          where _ :<|> go
                  = buildClient (Proxy :: Proxy FilesUpdateResource)
                      mempty
