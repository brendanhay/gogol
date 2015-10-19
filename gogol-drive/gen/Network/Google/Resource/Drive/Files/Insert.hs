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
-- Module      : Network.Google.Resource.Drive.Files.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Insert a new file.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.files.insert@.
module Network.Google.Resource.Drive.Files.Insert
    (
    -- * REST Resource
      FilesInsertResource

    -- * Creating a Request
    , filesInsert'
    , FilesInsert'

    -- * Request Lenses
    , fiPinned
    , fiVisibility
    , fiTimedTextLanguage
    , fiPayload
    , fiUseContentAsIndexableText
    , fiMedia
    , fiTimedTextTrackName
    , fiOCRLanguage
    , fiConvert
    , fiOCR
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.files.insert@ method which the
-- 'FilesInsert'' request conforms to.
type FilesInsertResource =
     "files" :>
       QueryParam "pinned" Bool :>
         QueryParam "visibility" FilesInsertVisibility :>
           QueryParam "timedTextLanguage" Text :>
             QueryParam "useContentAsIndexableText" Bool :>
               QueryParam "timedTextTrackName" Text :>
                 QueryParam "ocrLanguage" Text :>
                   QueryParam "convert" Bool :>
                     QueryParam "ocr" Bool :>
                       QueryParam "alt" AltJSON :>
                         MultipartRelated '[JSON] File Body :>
                           Post '[JSON] File

-- | Insert a new file.
--
-- /See:/ 'filesInsert'' smart constructor.
data FilesInsert' = FilesInsert'
    { _fiPinned                    :: !Bool
    , _fiVisibility                :: !FilesInsertVisibility
    , _fiTimedTextLanguage         :: !(Maybe Text)
    , _fiPayload                   :: !File
    , _fiUseContentAsIndexableText :: !Bool
    , _fiMedia                     :: !Body
    , _fiTimedTextTrackName        :: !(Maybe Text)
    , _fiOCRLanguage               :: !(Maybe Text)
    , _fiConvert                   :: !Bool
    , _fiOCR                       :: !Bool
    }

-- | Creates a value of 'FilesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fiPinned'
--
-- * 'fiVisibility'
--
-- * 'fiTimedTextLanguage'
--
-- * 'fiPayload'
--
-- * 'fiUseContentAsIndexableText'
--
-- * 'fiMedia'
--
-- * 'fiTimedTextTrackName'
--
-- * 'fiOCRLanguage'
--
-- * 'fiConvert'
--
-- * 'fiOCR'
filesInsert'
    :: File -- ^ 'fiPayload'
    -> Body -- ^ 'fiMedia'
    -> FilesInsert'
filesInsert' pFiPayload_ pFiMedia_ =
    FilesInsert'
    { _fiPinned = False
    , _fiVisibility = Default
    , _fiTimedTextLanguage = Nothing
    , _fiPayload = pFiPayload_
    , _fiUseContentAsIndexableText = False
    , _fiMedia = pFiMedia_
    , _fiTimedTextTrackName = Nothing
    , _fiOCRLanguage = Nothing
    , _fiConvert = False
    , _fiOCR = False
    }

-- | Whether to pin the head revision of the uploaded file. A file can have a
-- maximum of 200 pinned revisions.
fiPinned :: Lens' FilesInsert' Bool
fiPinned = lens _fiPinned (\ s a -> s{_fiPinned = a})

-- | The visibility of the new file. This parameter is only relevant when
-- convert=false.
fiVisibility :: Lens' FilesInsert' FilesInsertVisibility
fiVisibility
  = lens _fiVisibility (\ s a -> s{_fiVisibility = a})

-- | The language of the timed text.
fiTimedTextLanguage :: Lens' FilesInsert' (Maybe Text)
fiTimedTextLanguage
  = lens _fiTimedTextLanguage
      (\ s a -> s{_fiTimedTextLanguage = a})

-- | Multipart request metadata.
fiPayload :: Lens' FilesInsert' File
fiPayload
  = lens _fiPayload (\ s a -> s{_fiPayload = a})

-- | Whether to use the content as indexable text.
fiUseContentAsIndexableText :: Lens' FilesInsert' Bool
fiUseContentAsIndexableText
  = lens _fiUseContentAsIndexableText
      (\ s a -> s{_fiUseContentAsIndexableText = a})

fiMedia :: Lens' FilesInsert' Body
fiMedia = lens _fiMedia (\ s a -> s{_fiMedia = a})

-- | The timed text track name.
fiTimedTextTrackName :: Lens' FilesInsert' (Maybe Text)
fiTimedTextTrackName
  = lens _fiTimedTextTrackName
      (\ s a -> s{_fiTimedTextTrackName = a})

-- | If ocr is true, hints at the language to use. Valid values are BCP 47
-- codes.
fiOCRLanguage :: Lens' FilesInsert' (Maybe Text)
fiOCRLanguage
  = lens _fiOCRLanguage
      (\ s a -> s{_fiOCRLanguage = a})

-- | Whether to convert this file to the corresponding Google Docs format.
fiConvert :: Lens' FilesInsert' Bool
fiConvert
  = lens _fiConvert (\ s a -> s{_fiConvert = a})

-- | Whether to attempt OCR on .jpg, .png, .gif, or .pdf uploads.
fiOCR :: Lens' FilesInsert' Bool
fiOCR = lens _fiOCR (\ s a -> s{_fiOCR = a})

instance GoogleRequest FilesInsert' where
        type Rs FilesInsert' = File
        requestClient FilesInsert'{..}
          = go (Just _fiPinned) (Just _fiVisibility)
              _fiTimedTextLanguage
              (Just _fiUseContentAsIndexableText)
              _fiTimedTextTrackName
              _fiOCRLanguage
              (Just _fiConvert)
              (Just _fiOCR)
              (Just AltJSON)
              _fiPayload
              _fiMedia
              driveService
          where go
                  = buildClient (Proxy :: Proxy FilesInsertResource)
                      mempty
