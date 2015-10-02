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
-- Module      : Network.Google.Resource.Drive.Files.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates file metadata and\/or content. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveFilesPatch@.
module Network.Google.Resource.Drive.Files.Patch
    (
    -- * REST Resource
      FilesPatchResource

    -- * Creating a Request
    , filesPatch'
    , FilesPatch'

    -- * Request Lenses
    , fpQuotaUser
    , fpNewRevision
    , fpPrettyPrint
    , fpUserIP
    , fpPinned
    , fpTimedTextLanguage
    , fpUpdateViewedDate
    , fpRemoveParents
    , fpModifiedDateBehavior
    , fpUseContentAsIndexableText
    , fpTimedTextTrackName
    , fpOCRLanguage
    , fpKey
    , fpConvert
    , fpSetModifiedDate
    , fpFileId
    , fpOAuthToken
    , fpAddParents
    , fpOCR
    , fpFile
    , fpFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveFilesPatch@ which the
-- 'FilesPatch'' request conforms to.
type FilesPatchResource =
     "files" :>
       Capture "fileId" Text :>
         QueryParam "addParents" Text :>
           QueryParam "convert" Bool :>
             QueryParam "modifiedDateBehavior"
               DriveFilesPatchModifiedDateBehavior
               :>
               QueryParam "newRevision" Bool :>
                 QueryParam "ocr" Bool :>
                   QueryParam "ocrLanguage" Text :>
                     QueryParam "pinned" Bool :>
                       QueryParam "removeParents" Text :>
                         QueryParam "setModifiedDate" Bool :>
                           QueryParam "timedTextLanguage" Text :>
                             QueryParam "timedTextTrackName" Text :>
                               QueryParam "updateViewedDate" Bool :>
                                 QueryParam "useContentAsIndexableText" Bool :>
                                   QueryParam "quotaUser" Text :>
                                     QueryParam "prettyPrint" Bool :>
                                       QueryParam "userIp" Text :>
                                         QueryParam "fields" Text :>
                                           QueryParam "key" Key :>
                                             QueryParam "oauth_token" OAuthToken
                                               :>
                                               QueryParam "alt" AltJSON :>
                                                 ReqBody '[JSON] File :>
                                                   Patch '[JSON] File

-- | Updates file metadata and\/or content. This method supports patch
-- semantics.
--
-- /See:/ 'filesPatch'' smart constructor.
data FilesPatch' = FilesPatch'
    { _fpQuotaUser                 :: !(Maybe Text)
    , _fpNewRevision               :: !Bool
    , _fpPrettyPrint               :: !Bool
    , _fpUserIP                    :: !(Maybe Text)
    , _fpPinned                    :: !Bool
    , _fpTimedTextLanguage         :: !(Maybe Text)
    , _fpUpdateViewedDate          :: !Bool
    , _fpRemoveParents             :: !(Maybe Text)
    , _fpModifiedDateBehavior      :: !(Maybe DriveFilesPatchModifiedDateBehavior)
    , _fpUseContentAsIndexableText :: !Bool
    , _fpTimedTextTrackName        :: !(Maybe Text)
    , _fpOCRLanguage               :: !(Maybe Text)
    , _fpKey                       :: !(Maybe Key)
    , _fpConvert                   :: !Bool
    , _fpSetModifiedDate           :: !Bool
    , _fpFileId                    :: !Text
    , _fpOAuthToken                :: !(Maybe OAuthToken)
    , _fpAddParents                :: !(Maybe Text)
    , _fpOCR                       :: !Bool
    , _fpFile                      :: !File
    , _fpFields                    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fpQuotaUser'
--
-- * 'fpNewRevision'
--
-- * 'fpPrettyPrint'
--
-- * 'fpUserIP'
--
-- * 'fpPinned'
--
-- * 'fpTimedTextLanguage'
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
-- * 'fpKey'
--
-- * 'fpConvert'
--
-- * 'fpSetModifiedDate'
--
-- * 'fpFileId'
--
-- * 'fpOAuthToken'
--
-- * 'fpAddParents'
--
-- * 'fpOCR'
--
-- * 'fpFile'
--
-- * 'fpFields'
filesPatch'
    :: Text -- ^ 'fileId'
    -> File -- ^ 'File'
    -> FilesPatch'
filesPatch' pFpFileId_ pFpFile_ =
    FilesPatch'
    { _fpQuotaUser = Nothing
    , _fpNewRevision = True
    , _fpPrettyPrint = True
    , _fpUserIP = Nothing
    , _fpPinned = False
    , _fpTimedTextLanguage = Nothing
    , _fpUpdateViewedDate = True
    , _fpRemoveParents = Nothing
    , _fpModifiedDateBehavior = Nothing
    , _fpUseContentAsIndexableText = False
    , _fpTimedTextTrackName = Nothing
    , _fpOCRLanguage = Nothing
    , _fpKey = Nothing
    , _fpConvert = False
    , _fpSetModifiedDate = False
    , _fpFileId = pFpFileId_
    , _fpOAuthToken = Nothing
    , _fpAddParents = Nothing
    , _fpOCR = False
    , _fpFile = pFpFile_
    , _fpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
fpQuotaUser :: Lens' FilesPatch' (Maybe Text)
fpQuotaUser
  = lens _fpQuotaUser (\ s a -> s{_fpQuotaUser = a})

-- | Whether a blob upload should create a new revision. If false, the blob
-- data in the current head revision is replaced. If true or not set, a new
-- blob is created as head revision, and previous unpinned revisions are
-- preserved for a short period of time. Pinned revisions are stored
-- indefinitely, using additional storage quota, up to a maximum of 200
-- revisions. For details on how revisions are retained, see the Drive Help
-- Center.
fpNewRevision :: Lens' FilesPatch' Bool
fpNewRevision
  = lens _fpNewRevision
      (\ s a -> s{_fpNewRevision = a})

-- | Returns response with indentations and line breaks.
fpPrettyPrint :: Lens' FilesPatch' Bool
fpPrettyPrint
  = lens _fpPrettyPrint
      (\ s a -> s{_fpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
fpUserIP :: Lens' FilesPatch' (Maybe Text)
fpUserIP = lens _fpUserIP (\ s a -> s{_fpUserIP = a})

-- | Whether to pin the new revision. A file can have a maximum of 200 pinned
-- revisions.
fpPinned :: Lens' FilesPatch' Bool
fpPinned = lens _fpPinned (\ s a -> s{_fpPinned = a})

-- | The language of the timed text.
fpTimedTextLanguage :: Lens' FilesPatch' (Maybe Text)
fpTimedTextLanguage
  = lens _fpTimedTextLanguage
      (\ s a -> s{_fpTimedTextLanguage = a})

-- | Whether to update the view date after successfully updating the file.
fpUpdateViewedDate :: Lens' FilesPatch' Bool
fpUpdateViewedDate
  = lens _fpUpdateViewedDate
      (\ s a -> s{_fpUpdateViewedDate = a})

-- | Comma-separated list of parent IDs to remove.
fpRemoveParents :: Lens' FilesPatch' (Maybe Text)
fpRemoveParents
  = lens _fpRemoveParents
      (\ s a -> s{_fpRemoveParents = a})

-- | Determines the behavior in which modifiedDate is updated. This overrides
-- setModifiedDate.
fpModifiedDateBehavior :: Lens' FilesPatch' (Maybe DriveFilesPatchModifiedDateBehavior)
fpModifiedDateBehavior
  = lens _fpModifiedDateBehavior
      (\ s a -> s{_fpModifiedDateBehavior = a})

-- | Whether to use the content as indexable text.
fpUseContentAsIndexableText :: Lens' FilesPatch' Bool
fpUseContentAsIndexableText
  = lens _fpUseContentAsIndexableText
      (\ s a -> s{_fpUseContentAsIndexableText = a})

-- | The timed text track name.
fpTimedTextTrackName :: Lens' FilesPatch' (Maybe Text)
fpTimedTextTrackName
  = lens _fpTimedTextTrackName
      (\ s a -> s{_fpTimedTextTrackName = a})

-- | If ocr is true, hints at the language to use. Valid values are BCP 47
-- codes.
fpOCRLanguage :: Lens' FilesPatch' (Maybe Text)
fpOCRLanguage
  = lens _fpOCRLanguage
      (\ s a -> s{_fpOCRLanguage = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fpKey :: Lens' FilesPatch' (Maybe Key)
fpKey = lens _fpKey (\ s a -> s{_fpKey = a})

-- | This parameter is deprecated and has no function.
fpConvert :: Lens' FilesPatch' Bool
fpConvert
  = lens _fpConvert (\ s a -> s{_fpConvert = a})

-- | Whether to set the modified date with the supplied modified date.
fpSetModifiedDate :: Lens' FilesPatch' Bool
fpSetModifiedDate
  = lens _fpSetModifiedDate
      (\ s a -> s{_fpSetModifiedDate = a})

-- | The ID of the file to update.
fpFileId :: Lens' FilesPatch' Text
fpFileId = lens _fpFileId (\ s a -> s{_fpFileId = a})

-- | OAuth 2.0 token for the current user.
fpOAuthToken :: Lens' FilesPatch' (Maybe OAuthToken)
fpOAuthToken
  = lens _fpOAuthToken (\ s a -> s{_fpOAuthToken = a})

-- | Comma-separated list of parent IDs to add.
fpAddParents :: Lens' FilesPatch' (Maybe Text)
fpAddParents
  = lens _fpAddParents (\ s a -> s{_fpAddParents = a})

-- | Whether to attempt OCR on .jpg, .png, .gif, or .pdf uploads.
fpOCR :: Lens' FilesPatch' Bool
fpOCR = lens _fpOCR (\ s a -> s{_fpOCR = a})

-- | Multipart request metadata.
fpFile :: Lens' FilesPatch' File
fpFile = lens _fpFile (\ s a -> s{_fpFile = a})

-- | Selector specifying which fields to include in a partial response.
fpFields :: Lens' FilesPatch' (Maybe Text)
fpFields = lens _fpFields (\ s a -> s{_fpFields = a})

instance GoogleAuth FilesPatch' where
        authKey = fpKey . _Just
        authToken = fpOAuthToken . _Just

instance GoogleRequest FilesPatch' where
        type Rs FilesPatch' = File
        request = requestWithRoute defReq driveURL
        requestWithRoute r u FilesPatch'{..}
          = go _fpAddParents (Just _fpConvert)
              _fpModifiedDateBehavior
              (Just _fpNewRevision)
              (Just _fpOCR)
              _fpOCRLanguage
              (Just _fpPinned)
              _fpRemoveParents
              (Just _fpSetModifiedDate)
              _fpTimedTextLanguage
              _fpTimedTextTrackName
              (Just _fpUpdateViewedDate)
              (Just _fpUseContentAsIndexableText)
              _fpFileId
              _fpQuotaUser
              (Just _fpPrettyPrint)
              _fpUserIP
              _fpFields
              _fpKey
              _fpOAuthToken
              (Just AltJSON)
              _fpFile
          where go
                  = clientWithRoute (Proxy :: Proxy FilesPatchResource)
                      r
                      u
