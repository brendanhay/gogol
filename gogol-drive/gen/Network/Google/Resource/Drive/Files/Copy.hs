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
    , fcUserIP
    , fcPinned
    , fcVisibility
    , fcTimedTextLanguage
    , fcPayload
    , fcTimedTextTrackName
    , fcOCRLanguage
    , fcKey
    , fcConvert
    , fcFileId
    , fcOAuthToken
    , fcOCR
    , fcFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveFilesCopy@ which the
-- 'FilesCopy'' request conforms to.
type FilesCopyResource =
     "files" :>
       Capture "fileId" Text :>
         "copy" :>
           QueryParam "pinned" Bool :>
             QueryParam "visibility" FilesCopyVisibility :>
               QueryParam "timedTextLanguage" Text :>
                 QueryParam "timedTextTrackName" Text :>
                   QueryParam "ocrLanguage" Text :>
                     QueryParam "convert" Bool :>
                       QueryParam "ocr" Bool :>
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "userIp" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "key" AuthKey :>
                                   QueryParam "oauth_token" OAuthToken :>
                                     QueryParam "alt" AltJSON :>
                                       ReqBody '[JSON] File :> Post '[JSON] File

-- | Creates a copy of the specified file.
--
-- /See:/ 'filesCopy'' smart constructor.
data FilesCopy' = FilesCopy'
    { _fcQuotaUser          :: !(Maybe Text)
    , _fcPrettyPrint        :: !Bool
    , _fcUserIP             :: !(Maybe Text)
    , _fcPinned             :: !Bool
    , _fcVisibility         :: !FilesCopyVisibility
    , _fcTimedTextLanguage  :: !(Maybe Text)
    , _fcPayload            :: !File
    , _fcTimedTextTrackName :: !(Maybe Text)
    , _fcOCRLanguage        :: !(Maybe Text)
    , _fcKey                :: !(Maybe AuthKey)
    , _fcConvert            :: !Bool
    , _fcFileId             :: !Text
    , _fcOAuthToken         :: !(Maybe OAuthToken)
    , _fcOCR                :: !Bool
    , _fcFields             :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilesCopy'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fcQuotaUser'
--
-- * 'fcPrettyPrint'
--
-- * 'fcUserIP'
--
-- * 'fcPinned'
--
-- * 'fcVisibility'
--
-- * 'fcTimedTextLanguage'
--
-- * 'fcPayload'
--
-- * 'fcTimedTextTrackName'
--
-- * 'fcOCRLanguage'
--
-- * 'fcKey'
--
-- * 'fcConvert'
--
-- * 'fcFileId'
--
-- * 'fcOAuthToken'
--
-- * 'fcOCR'
--
-- * 'fcFields'
filesCopy'
    :: File -- ^ 'payload'
    -> Text -- ^ 'fileId'
    -> FilesCopy'
filesCopy' pFcPayload_ pFcFileId_ =
    FilesCopy'
    { _fcQuotaUser = Nothing
    , _fcPrettyPrint = True
    , _fcUserIP = Nothing
    , _fcPinned = False
    , _fcVisibility = FCVDefault
    , _fcTimedTextLanguage = Nothing
    , _fcPayload = pFcPayload_
    , _fcTimedTextTrackName = Nothing
    , _fcOCRLanguage = Nothing
    , _fcKey = Nothing
    , _fcConvert = False
    , _fcFileId = pFcFileId_
    , _fcOAuthToken = Nothing
    , _fcOCR = False
    , _fcFields = Nothing
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
fcUserIP :: Lens' FilesCopy' (Maybe Text)
fcUserIP = lens _fcUserIP (\ s a -> s{_fcUserIP = a})

-- | Whether to pin the head revision of the new copy. A file can have a
-- maximum of 200 pinned revisions.
fcPinned :: Lens' FilesCopy' Bool
fcPinned = lens _fcPinned (\ s a -> s{_fcPinned = a})

-- | The visibility of the new file. This parameter is only relevant when the
-- source is not a native Google Doc and convert=false.
fcVisibility :: Lens' FilesCopy' FilesCopyVisibility
fcVisibility
  = lens _fcVisibility (\ s a -> s{_fcVisibility = a})

-- | The language of the timed text.
fcTimedTextLanguage :: Lens' FilesCopy' (Maybe Text)
fcTimedTextLanguage
  = lens _fcTimedTextLanguage
      (\ s a -> s{_fcTimedTextLanguage = a})

-- | Multipart request metadata.
fcPayload :: Lens' FilesCopy' File
fcPayload
  = lens _fcPayload (\ s a -> s{_fcPayload = a})

-- | The timed text track name.
fcTimedTextTrackName :: Lens' FilesCopy' (Maybe Text)
fcTimedTextTrackName
  = lens _fcTimedTextTrackName
      (\ s a -> s{_fcTimedTextTrackName = a})

-- | If ocr is true, hints at the language to use. Valid values are BCP 47
-- codes.
fcOCRLanguage :: Lens' FilesCopy' (Maybe Text)
fcOCRLanguage
  = lens _fcOCRLanguage
      (\ s a -> s{_fcOCRLanguage = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fcKey :: Lens' FilesCopy' (Maybe AuthKey)
fcKey = lens _fcKey (\ s a -> s{_fcKey = a})

-- | Whether to convert this file to the corresponding Google Docs format.
fcConvert :: Lens' FilesCopy' Bool
fcConvert
  = lens _fcConvert (\ s a -> s{_fcConvert = a})

-- | The ID of the file to copy.
fcFileId :: Lens' FilesCopy' Text
fcFileId = lens _fcFileId (\ s a -> s{_fcFileId = a})

-- | OAuth 2.0 token for the current user.
fcOAuthToken :: Lens' FilesCopy' (Maybe OAuthToken)
fcOAuthToken
  = lens _fcOAuthToken (\ s a -> s{_fcOAuthToken = a})

-- | Whether to attempt OCR on .jpg, .png, .gif, or .pdf uploads.
fcOCR :: Lens' FilesCopy' Bool
fcOCR = lens _fcOCR (\ s a -> s{_fcOCR = a})

-- | Selector specifying which fields to include in a partial response.
fcFields :: Lens' FilesCopy' (Maybe Text)
fcFields = lens _fcFields (\ s a -> s{_fcFields = a})

instance GoogleAuth FilesCopy' where
        _AuthKey = fcKey . _Just
        _AuthToken = fcOAuthToken . _Just

instance GoogleRequest FilesCopy' where
        type Rs FilesCopy' = File
        request = requestWith driveRequest
        requestWith rq FilesCopy'{..}
          = go _fcFileId (Just _fcPinned) (Just _fcVisibility)
              _fcTimedTextLanguage
              _fcTimedTextTrackName
              _fcOCRLanguage
              (Just _fcConvert)
              (Just _fcOCR)
              _fcQuotaUser
              (Just _fcPrettyPrint)
              _fcUserIP
              _fcFields
              _fcKey
              _fcOAuthToken
              (Just AltJSON)
              _fcPayload
          where go
                  = clientBuild (Proxy :: Proxy FilesCopyResource) rq
