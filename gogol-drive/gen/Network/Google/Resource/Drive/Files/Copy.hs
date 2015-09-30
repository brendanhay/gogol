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
-- Module      : Network.Google.Resource.Drive.Files.Copy
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a copy of the specified file.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveFilesCopy@.
module Network.Google.Resource.Drive.Files.Copy
    (
    -- * REST Resource
      FilesCopyResource

    -- * Creating a Request
    , filesCopy'
    , FilesCopy'

    -- * Request Lenses
    , fcQuotaUser
    , fcPrettyPrint
    , fcUserIp
    , fcPinned
    , fcVisibility
    , fcTimedTextLanguage
    , fcTimedTextTrackName
    , fcOcrLanguage
    , fcKey
    , fcConvert
    , fcFileId
    , fcOauthToken
    , fcOcr
    , fcFields
    , fcAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveFilesCopy@ which the
-- 'FilesCopy'' request conforms to.
type FilesCopyResource =
     "files" :>
       Capture "fileId" Text :>
         "copy" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "pinned" Bool :>
                   QueryParam "visibility" DriveFilesCopyVisibility :>
                     QueryParam "timedTextLanguage" Text :>
                       QueryParam "timedTextTrackName" Text :>
                         QueryParam "ocrLanguage" Text :>
                           QueryParam "key" Text :>
                             QueryParam "convert" Bool :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "ocr" Bool :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Alt :> Post '[JSON] File

-- | Creates a copy of the specified file.
--
-- /See:/ 'filesCopy'' smart constructor.
data FilesCopy' = FilesCopy'
    { _fcQuotaUser          :: !(Maybe Text)
    , _fcPrettyPrint        :: !Bool
    , _fcUserIp             :: !(Maybe Text)
    , _fcPinned             :: !Bool
    , _fcVisibility         :: !DriveFilesCopyVisibility
    , _fcTimedTextLanguage  :: !(Maybe Text)
    , _fcTimedTextTrackName :: !(Maybe Text)
    , _fcOcrLanguage        :: !(Maybe Text)
    , _fcKey                :: !(Maybe Text)
    , _fcConvert            :: !Bool
    , _fcFileId             :: !Text
    , _fcOauthToken         :: !(Maybe Text)
    , _fcOcr                :: !Bool
    , _fcFields             :: !(Maybe Text)
    , _fcAlt                :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilesCopy'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fcQuotaUser'
--
-- * 'fcPrettyPrint'
--
-- * 'fcUserIp'
--
-- * 'fcPinned'
--
-- * 'fcVisibility'
--
-- * 'fcTimedTextLanguage'
--
-- * 'fcTimedTextTrackName'
--
-- * 'fcOcrLanguage'
--
-- * 'fcKey'
--
-- * 'fcConvert'
--
-- * 'fcFileId'
--
-- * 'fcOauthToken'
--
-- * 'fcOcr'
--
-- * 'fcFields'
--
-- * 'fcAlt'
filesCopy'
    :: Text -- ^ 'fileId'
    -> FilesCopy'
filesCopy' pFcFileId_ =
    FilesCopy'
    { _fcQuotaUser = Nothing
    , _fcPrettyPrint = True
    , _fcUserIp = Nothing
    , _fcPinned = False
    , _fcVisibility = Default
    , _fcTimedTextLanguage = Nothing
    , _fcTimedTextTrackName = Nothing
    , _fcOcrLanguage = Nothing
    , _fcKey = Nothing
    , _fcConvert = False
    , _fcFileId = pFcFileId_
    , _fcOauthToken = Nothing
    , _fcOcr = False
    , _fcFields = Nothing
    , _fcAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
fcQuotaUser :: Lens' FilesCopy' (Maybe Text)
fcQuotaUser
  = lens _fcQuotaUser (\ s a -> s{_fcQuotaUser = a})

-- | Returns response with indentations and line breaks.
fcPrettyPrint :: Lens' FilesCopy' Bool
fcPrettyPrint
  = lens _fcPrettyPrint
      (\ s a -> s{_fcPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
fcUserIp :: Lens' FilesCopy' (Maybe Text)
fcUserIp = lens _fcUserIp (\ s a -> s{_fcUserIp = a})

-- | Whether to pin the head revision of the new copy. A file can have a
-- maximum of 200 pinned revisions.
fcPinned :: Lens' FilesCopy' Bool
fcPinned = lens _fcPinned (\ s a -> s{_fcPinned = a})

-- | The visibility of the new file. This parameter is only relevant when the
-- source is not a native Google Doc and convert=false.
fcVisibility :: Lens' FilesCopy' DriveFilesCopyVisibility
fcVisibility
  = lens _fcVisibility (\ s a -> s{_fcVisibility = a})

-- | The language of the timed text.
fcTimedTextLanguage :: Lens' FilesCopy' (Maybe Text)
fcTimedTextLanguage
  = lens _fcTimedTextLanguage
      (\ s a -> s{_fcTimedTextLanguage = a})

-- | The timed text track name.
fcTimedTextTrackName :: Lens' FilesCopy' (Maybe Text)
fcTimedTextTrackName
  = lens _fcTimedTextTrackName
      (\ s a -> s{_fcTimedTextTrackName = a})

-- | If ocr is true, hints at the language to use. Valid values are BCP 47
-- codes.
fcOcrLanguage :: Lens' FilesCopy' (Maybe Text)
fcOcrLanguage
  = lens _fcOcrLanguage
      (\ s a -> s{_fcOcrLanguage = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fcKey :: Lens' FilesCopy' (Maybe Text)
fcKey = lens _fcKey (\ s a -> s{_fcKey = a})

-- | Whether to convert this file to the corresponding Google Docs format.
fcConvert :: Lens' FilesCopy' Bool
fcConvert
  = lens _fcConvert (\ s a -> s{_fcConvert = a})

-- | The ID of the file to copy.
fcFileId :: Lens' FilesCopy' Text
fcFileId = lens _fcFileId (\ s a -> s{_fcFileId = a})

-- | OAuth 2.0 token for the current user.
fcOauthToken :: Lens' FilesCopy' (Maybe Text)
fcOauthToken
  = lens _fcOauthToken (\ s a -> s{_fcOauthToken = a})

-- | Whether to attempt OCR on .jpg, .png, .gif, or .pdf uploads.
fcOcr :: Lens' FilesCopy' Bool
fcOcr = lens _fcOcr (\ s a -> s{_fcOcr = a})

-- | Selector specifying which fields to include in a partial response.
fcFields :: Lens' FilesCopy' (Maybe Text)
fcFields = lens _fcFields (\ s a -> s{_fcFields = a})

-- | Data format for the response.
fcAlt :: Lens' FilesCopy' Alt
fcAlt = lens _fcAlt (\ s a -> s{_fcAlt = a})

instance GoogleRequest FilesCopy' where
        type Rs FilesCopy' = File
        request = requestWithRoute defReq driveURL
        requestWithRoute r u FilesCopy'{..}
          = go _fcQuotaUser (Just _fcPrettyPrint) _fcUserIp
              (Just _fcPinned)
              (Just _fcVisibility)
              _fcTimedTextLanguage
              _fcTimedTextTrackName
              _fcOcrLanguage
              _fcKey
              (Just _fcConvert)
              _fcFileId
              _fcOauthToken
              (Just _fcOcr)
              _fcFields
              (Just _fcAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy FilesCopyResource)
                      r
                      u
