{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
    , fiUserIp
    , fiPinned
    , fiVisibility
    , fiTimedTextLanguage
    , fiUseContentAsIndexableText
    , fiTimedTextTrackName
    , fiOcrLanguage
    , fiKey
    , fiConvert
    , fiOauthToken
    , fiOcr
    , fiFields
    , fiAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveFilesInsert@ which the
-- 'FilesInsert'' request conforms to.
type FilesInsertResource =
     "files" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "pinned" Bool :>
               QueryParam "visibility" DriveFilesInsertVisibility :>
                 QueryParam "timedTextLanguage" Text :>
                   QueryParam "useContentAsIndexableText" Bool :>
                     QueryParam "timedTextTrackName" Text :>
                       QueryParam "ocrLanguage" Text :>
                         QueryParam "key" Text :>
                           QueryParam "convert" Bool :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "ocr" Bool :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Alt :> Post '[JSON] File

-- | Insert a new file.
--
-- /See:/ 'filesInsert'' smart constructor.
data FilesInsert' = FilesInsert'
    { _fiQuotaUser                 :: !(Maybe Text)
    , _fiPrettyPrint               :: !Bool
    , _fiUserIp                    :: !(Maybe Text)
    , _fiPinned                    :: !Bool
    , _fiVisibility                :: !DriveFilesInsertVisibility
    , _fiTimedTextLanguage         :: !(Maybe Text)
    , _fiUseContentAsIndexableText :: !Bool
    , _fiTimedTextTrackName        :: !(Maybe Text)
    , _fiOcrLanguage               :: !(Maybe Text)
    , _fiKey                       :: !(Maybe Text)
    , _fiConvert                   :: !Bool
    , _fiOauthToken                :: !(Maybe Text)
    , _fiOcr                       :: !Bool
    , _fiFields                    :: !(Maybe Text)
    , _fiAlt                       :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fiQuotaUser'
--
-- * 'fiPrettyPrint'
--
-- * 'fiUserIp'
--
-- * 'fiPinned'
--
-- * 'fiVisibility'
--
-- * 'fiTimedTextLanguage'
--
-- * 'fiUseContentAsIndexableText'
--
-- * 'fiTimedTextTrackName'
--
-- * 'fiOcrLanguage'
--
-- * 'fiKey'
--
-- * 'fiConvert'
--
-- * 'fiOauthToken'
--
-- * 'fiOcr'
--
-- * 'fiFields'
--
-- * 'fiAlt'
filesInsert'
    :: FilesInsert'
filesInsert' =
    FilesInsert'
    { _fiQuotaUser = Nothing
    , _fiPrettyPrint = True
    , _fiUserIp = Nothing
    , _fiPinned = False
    , _fiVisibility = DFIVDefault
    , _fiTimedTextLanguage = Nothing
    , _fiUseContentAsIndexableText = False
    , _fiTimedTextTrackName = Nothing
    , _fiOcrLanguage = Nothing
    , _fiKey = Nothing
    , _fiConvert = False
    , _fiOauthToken = Nothing
    , _fiOcr = False
    , _fiFields = Nothing
    , _fiAlt = JSON
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
fiUserIp :: Lens' FilesInsert' (Maybe Text)
fiUserIp = lens _fiUserIp (\ s a -> s{_fiUserIp = a})

-- | Whether to pin the head revision of the uploaded file. A file can have a
-- maximum of 200 pinned revisions.
fiPinned :: Lens' FilesInsert' Bool
fiPinned = lens _fiPinned (\ s a -> s{_fiPinned = a})

-- | The visibility of the new file. This parameter is only relevant when
-- convert=false.
fiVisibility :: Lens' FilesInsert' DriveFilesInsertVisibility
fiVisibility
  = lens _fiVisibility (\ s a -> s{_fiVisibility = a})

-- | The language of the timed text.
fiTimedTextLanguage :: Lens' FilesInsert' (Maybe Text)
fiTimedTextLanguage
  = lens _fiTimedTextLanguage
      (\ s a -> s{_fiTimedTextLanguage = a})

-- | Whether to use the content as indexable text.
fiUseContentAsIndexableText :: Lens' FilesInsert' Bool
fiUseContentAsIndexableText
  = lens _fiUseContentAsIndexableText
      (\ s a -> s{_fiUseContentAsIndexableText = a})

-- | The timed text track name.
fiTimedTextTrackName :: Lens' FilesInsert' (Maybe Text)
fiTimedTextTrackName
  = lens _fiTimedTextTrackName
      (\ s a -> s{_fiTimedTextTrackName = a})

-- | If ocr is true, hints at the language to use. Valid values are BCP 47
-- codes.
fiOcrLanguage :: Lens' FilesInsert' (Maybe Text)
fiOcrLanguage
  = lens _fiOcrLanguage
      (\ s a -> s{_fiOcrLanguage = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fiKey :: Lens' FilesInsert' (Maybe Text)
fiKey = lens _fiKey (\ s a -> s{_fiKey = a})

-- | Whether to convert this file to the corresponding Google Docs format.
fiConvert :: Lens' FilesInsert' Bool
fiConvert
  = lens _fiConvert (\ s a -> s{_fiConvert = a})

-- | OAuth 2.0 token for the current user.
fiOauthToken :: Lens' FilesInsert' (Maybe Text)
fiOauthToken
  = lens _fiOauthToken (\ s a -> s{_fiOauthToken = a})

-- | Whether to attempt OCR on .jpg, .png, .gif, or .pdf uploads.
fiOcr :: Lens' FilesInsert' Bool
fiOcr = lens _fiOcr (\ s a -> s{_fiOcr = a})

-- | Selector specifying which fields to include in a partial response.
fiFields :: Lens' FilesInsert' (Maybe Text)
fiFields = lens _fiFields (\ s a -> s{_fiFields = a})

-- | Data format for the response.
fiAlt :: Lens' FilesInsert' Alt
fiAlt = lens _fiAlt (\ s a -> s{_fiAlt = a})

instance GoogleRequest FilesInsert' where
        type Rs FilesInsert' = File
        request = requestWithRoute defReq driveURL
        requestWithRoute r u FilesInsert'{..}
          = go _fiQuotaUser (Just _fiPrettyPrint) _fiUserIp
              (Just _fiPinned)
              (Just _fiVisibility)
              _fiTimedTextLanguage
              (Just _fiUseContentAsIndexableText)
              _fiTimedTextTrackName
              _fiOcrLanguage
              _fiKey
              (Just _fiConvert)
              _fiOauthToken
              (Just _fiOcr)
              _fiFields
              (Just _fiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy FilesInsertResource)
                      r
                      u
