{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Drive.Files.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates file metadata and\/or content.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveFilesUpdate@.
module Drive.Files.Update
    (
    -- * REST Resource
      FilesUpdateAPI

    -- * Creating a Request
    , filesUpdate
    , FilesUpdate

    -- * Request Lenses
    , filQuotaUser
    , filNewRevision
    , filPrettyPrint
    , filUserIp
    , filPinned
    , filTimedTextLanguage
    , filUpdateViewedDate
    , filRemoveParents
    , filModifiedDateBehavior
    , filUseContentAsIndexableText
    , filTimedTextTrackName
    , filOcrLanguage
    , filKey
    , filConvert
    , filSetModifiedDate
    , filFileId
    , filOauthToken
    , filAddParents
    , filOcr
    , filFields
    , filAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveFilesUpdate@ which the
-- 'FilesUpdate' request conforms to.
type FilesUpdateAPI =
     "files" :>
       Capture "fileId" Text :>
         QueryParam "newRevision" Bool :>
           QueryParam "pinned" Bool :>
             QueryParam "timedTextLanguage" Text :>
               QueryParam "updateViewedDate" Bool :>
                 QueryParam "removeParents" Text :>
                   QueryParam "modifiedDateBehavior" Text :>
                     QueryParam "useContentAsIndexableText" Bool :>
                       QueryParam "timedTextTrackName" Text :>
                         QueryParam "ocrLanguage" Text :>
                           QueryParam "convert" Bool :>
                             QueryParam "setModifiedDate" Bool :>
                               QueryParam "addParents" Text :>
                                 QueryParam "ocr" Bool :> Put '[JSON] File

-- | Updates file metadata and\/or content.
--
-- /See:/ 'filesUpdate' smart constructor.
data FilesUpdate = FilesUpdate
    { _filQuotaUser                 :: !(Maybe Text)
    , _filNewRevision               :: !Bool
    , _filPrettyPrint               :: !Bool
    , _filUserIp                    :: !(Maybe Text)
    , _filPinned                    :: !Bool
    , _filTimedTextLanguage         :: !(Maybe Text)
    , _filUpdateViewedDate          :: !Bool
    , _filRemoveParents             :: !(Maybe Text)
    , _filModifiedDateBehavior      :: !(Maybe Text)
    , _filUseContentAsIndexableText :: !Bool
    , _filTimedTextTrackName        :: !(Maybe Text)
    , _filOcrLanguage               :: !(Maybe Text)
    , _filKey                       :: !(Maybe Text)
    , _filConvert                   :: !Bool
    , _filSetModifiedDate           :: !Bool
    , _filFileId                    :: !Text
    , _filOauthToken                :: !(Maybe Text)
    , _filAddParents                :: !(Maybe Text)
    , _filOcr                       :: !Bool
    , _filFields                    :: !(Maybe Text)
    , _filAlt                       :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'filQuotaUser'
--
-- * 'filNewRevision'
--
-- * 'filPrettyPrint'
--
-- * 'filUserIp'
--
-- * 'filPinned'
--
-- * 'filTimedTextLanguage'
--
-- * 'filUpdateViewedDate'
--
-- * 'filRemoveParents'
--
-- * 'filModifiedDateBehavior'
--
-- * 'filUseContentAsIndexableText'
--
-- * 'filTimedTextTrackName'
--
-- * 'filOcrLanguage'
--
-- * 'filKey'
--
-- * 'filConvert'
--
-- * 'filSetModifiedDate'
--
-- * 'filFileId'
--
-- * 'filOauthToken'
--
-- * 'filAddParents'
--
-- * 'filOcr'
--
-- * 'filFields'
--
-- * 'filAlt'
filesUpdate
    :: Text -- ^ 'fileId'
    -> FilesUpdate
filesUpdate pFilFileId_ =
    FilesUpdate
    { _filQuotaUser = Nothing
    , _filNewRevision = True
    , _filPrettyPrint = True
    , _filUserIp = Nothing
    , _filPinned = False
    , _filTimedTextLanguage = Nothing
    , _filUpdateViewedDate = True
    , _filRemoveParents = Nothing
    , _filModifiedDateBehavior = Nothing
    , _filUseContentAsIndexableText = False
    , _filTimedTextTrackName = Nothing
    , _filOcrLanguage = Nothing
    , _filKey = Nothing
    , _filConvert = False
    , _filSetModifiedDate = False
    , _filFileId = pFilFileId_
    , _filOauthToken = Nothing
    , _filAddParents = Nothing
    , _filOcr = False
    , _filFields = Nothing
    , _filAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
filQuotaUser :: Lens' FilesUpdate' (Maybe Text)
filQuotaUser
  = lens _filQuotaUser (\ s a -> s{_filQuotaUser = a})

-- | Whether a blob upload should create a new revision. If false, the blob
-- data in the current head revision is replaced. If true or not set, a new
-- blob is created as head revision, and previous unpinned revisions are
-- preserved for a short period of time. Pinned revisions are stored
-- indefinitely, using additional storage quota, up to a maximum of 200
-- revisions. For details on how revisions are retained, see the Drive Help
-- Center.
filNewRevision :: Lens' FilesUpdate' Bool
filNewRevision
  = lens _filNewRevision
      (\ s a -> s{_filNewRevision = a})

-- | Returns response with indentations and line breaks.
filPrettyPrint :: Lens' FilesUpdate' Bool
filPrettyPrint
  = lens _filPrettyPrint
      (\ s a -> s{_filPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
filUserIp :: Lens' FilesUpdate' (Maybe Text)
filUserIp
  = lens _filUserIp (\ s a -> s{_filUserIp = a})

-- | Whether to pin the new revision. A file can have a maximum of 200 pinned
-- revisions.
filPinned :: Lens' FilesUpdate' Bool
filPinned
  = lens _filPinned (\ s a -> s{_filPinned = a})

-- | The language of the timed text.
filTimedTextLanguage :: Lens' FilesUpdate' (Maybe Text)
filTimedTextLanguage
  = lens _filTimedTextLanguage
      (\ s a -> s{_filTimedTextLanguage = a})

-- | Whether to update the view date after successfully updating the file.
filUpdateViewedDate :: Lens' FilesUpdate' Bool
filUpdateViewedDate
  = lens _filUpdateViewedDate
      (\ s a -> s{_filUpdateViewedDate = a})

-- | Comma-separated list of parent IDs to remove.
filRemoveParents :: Lens' FilesUpdate' (Maybe Text)
filRemoveParents
  = lens _filRemoveParents
      (\ s a -> s{_filRemoveParents = a})

-- | Determines the behavior in which modifiedDate is updated. This overrides
-- setModifiedDate.
filModifiedDateBehavior :: Lens' FilesUpdate' (Maybe Text)
filModifiedDateBehavior
  = lens _filModifiedDateBehavior
      (\ s a -> s{_filModifiedDateBehavior = a})

-- | Whether to use the content as indexable text.
filUseContentAsIndexableText :: Lens' FilesUpdate' Bool
filUseContentAsIndexableText
  = lens _filUseContentAsIndexableText
      (\ s a -> s{_filUseContentAsIndexableText = a})

-- | The timed text track name.
filTimedTextTrackName :: Lens' FilesUpdate' (Maybe Text)
filTimedTextTrackName
  = lens _filTimedTextTrackName
      (\ s a -> s{_filTimedTextTrackName = a})

-- | If ocr is true, hints at the language to use. Valid values are BCP 47
-- codes.
filOcrLanguage :: Lens' FilesUpdate' (Maybe Text)
filOcrLanguage
  = lens _filOcrLanguage
      (\ s a -> s{_filOcrLanguage = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
filKey :: Lens' FilesUpdate' (Maybe Text)
filKey = lens _filKey (\ s a -> s{_filKey = a})

-- | This parameter is deprecated and has no function.
filConvert :: Lens' FilesUpdate' Bool
filConvert
  = lens _filConvert (\ s a -> s{_filConvert = a})

-- | Whether to set the modified date with the supplied modified date.
filSetModifiedDate :: Lens' FilesUpdate' Bool
filSetModifiedDate
  = lens _filSetModifiedDate
      (\ s a -> s{_filSetModifiedDate = a})

-- | The ID of the file to update.
filFileId :: Lens' FilesUpdate' Text
filFileId
  = lens _filFileId (\ s a -> s{_filFileId = a})

-- | OAuth 2.0 token for the current user.
filOauthToken :: Lens' FilesUpdate' (Maybe Text)
filOauthToken
  = lens _filOauthToken
      (\ s a -> s{_filOauthToken = a})

-- | Comma-separated list of parent IDs to add.
filAddParents :: Lens' FilesUpdate' (Maybe Text)
filAddParents
  = lens _filAddParents
      (\ s a -> s{_filAddParents = a})

-- | Whether to attempt OCR on .jpg, .png, .gif, or .pdf uploads.
filOcr :: Lens' FilesUpdate' Bool
filOcr = lens _filOcr (\ s a -> s{_filOcr = a})

-- | Selector specifying which fields to include in a partial response.
filFields :: Lens' FilesUpdate' (Maybe Text)
filFields
  = lens _filFields (\ s a -> s{_filFields = a})

-- | Data format for the response.
filAlt :: Lens' FilesUpdate' Text
filAlt = lens _filAlt (\ s a -> s{_filAlt = a})

instance GoogleRequest FilesUpdate' where
        type Rs FilesUpdate' = File
        request = requestWithRoute defReq driveURL
        requestWithRoute r u FilesUpdate{..}
          = go _filQuotaUser (Just _filNewRevision)
              _filPrettyPrint
              _filUserIp
              (Just _filPinned)
              _filTimedTextLanguage
              (Just _filUpdateViewedDate)
              _filRemoveParents
              _filModifiedDateBehavior
              (Just _filUseContentAsIndexableText)
              _filTimedTextTrackName
              _filOcrLanguage
              _filKey
              (Just _filConvert)
              (Just _filSetModifiedDate)
              _filFileId
              _filOauthToken
              _filAddParents
              (Just _filOcr)
              _filFields
              _filAlt
          where go
                  = clientWithRoute (Proxy :: Proxy FilesUpdateAPI) r u
