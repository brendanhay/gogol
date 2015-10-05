{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Drive.Files.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Insert a new file.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveFilesInsert@.
module Network.Google.Resource.Drive.Files.Insert
    (
    -- * REST Resource
      FilesInsertResource

    -- * Creating a Request
    , filesInsert'
    , FilesInsert'

    -- * Request Lenses
    , fiQuotaUser
    , fiPrettyPrint
    , fiUserIP
    , fiPinned
    , fiVisibility
    , fiTimedTextLanguage
    , fiPayload
    , fiUseContentAsIndexableText
    , fiMedia
    , fiTimedTextTrackName
    , fiOCRLanguage
    , fiKey
    , fiConvert
    , fiOAuthToken
    , fiOCR
    , fiFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveFilesInsert@ which the
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
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "key" Key :>
                                 QueryParam "oauth_token" OAuthToken :>
                                   QueryParam "alt" AltJSON :>
                                     MultipartRelated '[JSON] File Body :>
                                       Post '[JSON] File

-- | Insert a new file.
--
-- /See:/ 'filesInsert'' smart constructor.
data FilesInsert' = FilesInsert'
    { _fiQuotaUser                 :: !(Maybe Text)
    , _fiPrettyPrint               :: !Bool
    , _fiUserIP                    :: !(Maybe Text)
    , _fiPinned                    :: !Bool
    , _fiVisibility                :: !FilesInsertVisibility
    , _fiTimedTextLanguage         :: !(Maybe Text)
    , _fiPayload                   :: !File
    , _fiUseContentAsIndexableText :: !Bool
    , _fiMedia                     :: !Body
    , _fiTimedTextTrackName        :: !(Maybe Text)
    , _fiOCRLanguage               :: !(Maybe Text)
    , _fiKey                       :: !(Maybe Key)
    , _fiConvert                   :: !Bool
    , _fiOAuthToken                :: !(Maybe OAuthToken)
    , _fiOCR                       :: !Bool
    , _fiFields                    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fiQuotaUser'
--
-- * 'fiPrettyPrint'
--
-- * 'fiUserIP'
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
-- * 'fiKey'
--
-- * 'fiConvert'
--
-- * 'fiOAuthToken'
--
-- * 'fiOCR'
--
-- * 'fiFields'
filesInsert'
    :: File -- ^ 'payload'
    -> Body -- ^ 'media'
    -> FilesInsert'
filesInsert' pFiPayload_ pFiMedia_ =
    FilesInsert'
    { _fiQuotaUser = Nothing
    , _fiPrettyPrint = True
    , _fiUserIP = Nothing
    , _fiPinned = False
    , _fiVisibility = Default
    , _fiTimedTextLanguage = Nothing
    , _fiPayload = pFiPayload_
    , _fiUseContentAsIndexableText = False
    , _fiMedia = pFiMedia_
    , _fiTimedTextTrackName = Nothing
    , _fiOCRLanguage = Nothing
    , _fiKey = Nothing
    , _fiConvert = False
    , _fiOAuthToken = Nothing
    , _fiOCR = False
    , _fiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
fiQuotaUser :: Lens' FilesInsert' (Maybe Text)
fiQuotaUser
  = lens _fiQuotaUser (\ s a -> s{_fiQuotaUser = a})

-- | Returns response with indentations and line breaks.
fiPrettyPrint :: Lens' FilesInsert' Bool
fiPrettyPrint
  = lens _fiPrettyPrint
      (\ s a -> s{_fiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
fiUserIP :: Lens' FilesInsert' (Maybe Text)
fiUserIP = lens _fiUserIP (\ s a -> s{_fiUserIP = a})

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

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fiKey :: Lens' FilesInsert' (Maybe Key)
fiKey = lens _fiKey (\ s a -> s{_fiKey = a})

-- | Whether to convert this file to the corresponding Google Docs format.
fiConvert :: Lens' FilesInsert' Bool
fiConvert
  = lens _fiConvert (\ s a -> s{_fiConvert = a})

-- | OAuth 2.0 token for the current user.
fiOAuthToken :: Lens' FilesInsert' (Maybe OAuthToken)
fiOAuthToken
  = lens _fiOAuthToken (\ s a -> s{_fiOAuthToken = a})

-- | Whether to attempt OCR on .jpg, .png, .gif, or .pdf uploads.
fiOCR :: Lens' FilesInsert' Bool
fiOCR = lens _fiOCR (\ s a -> s{_fiOCR = a})

-- | Selector specifying which fields to include in a partial response.
fiFields :: Lens' FilesInsert' (Maybe Text)
fiFields = lens _fiFields (\ s a -> s{_fiFields = a})

instance GoogleAuth FilesInsert' where
        authKey = fiKey . _Just
        authToken = fiOAuthToken . _Just

instance GoogleRequest FilesInsert' where
        type Rs FilesInsert' = File
        request = requestWithRoute defReq driveURL
        requestWithRoute r u FilesInsert'{..}
          = go (Just _fiPinned) (Just _fiVisibility)
              _fiTimedTextLanguage
              (Just _fiUseContentAsIndexableText)
              _fiTimedTextTrackName
              _fiOCRLanguage
              (Just _fiConvert)
              (Just _fiOCR)
              _fiQuotaUser
              (Just _fiPrettyPrint)
              _fiUserIP
              _fiFields
              _fiKey
              _fiOAuthToken
              (Just AltJSON)
              _fiPayload
              _fiMedia
          where go
                  = clientWithRoute
                      (Proxy :: Proxy FilesInsertResource)
                      r
                      u
