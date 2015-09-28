{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Drive.Files.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates file metadata and\/or content.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.files.update@.
module Network.Google.API.Drive.Files.Update
    (
    -- * REST Resource
      FilesUpdateAPI

    -- * Creating a Request
    , filesUpdate'
    , FilesUpdate'

    -- * Request Lenses
    , fQuotaUser
    , fNewRevision
    , fPrettyPrint
    , fUserIp
    , fPinned
    , fTimedTextLanguage
    , fUpdateViewedDate
    , fRemoveParents
    , fModifiedDateBehavior
    , fUseContentAsIndexableText
    , fTimedTextTrackName
    , fOcrLanguage
    , fKey
    , fConvert
    , fSetModifiedDate
    , fFileId
    , fOauthToken
    , fAddParents
    , fOcr
    , fFields
    , fAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for drive.files.update which the
-- 'FilesUpdate'' request conforms to.
type FilesUpdateAPI =
     "files" :>
       Capture "fileId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "newRevision" Bool :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "pinned" Bool :>
                   QueryParam "timedTextLanguage" Text :>
                     QueryParam "updateViewedDate" Bool :>
                       QueryParam "removeParents" Text :>
                         QueryParam "modifiedDateBehavior"
                           FilesUpdate'ModifiedDateBehavior
                           :>
                           QueryParam "useContentAsIndexableText" Bool :>
                             QueryParam "timedTextTrackName" Text :>
                               QueryParam "ocrLanguage" Text :>
                                 QueryParam "key" Text :>
                                   QueryParam "convert" Bool :>
                                     QueryParam "setModifiedDate" Bool :>
                                       QueryParam "oauth_token" Text :>
                                         QueryParam "addParents" Text :>
                                           QueryParam "ocr" Bool :>
                                             QueryParam "fields" Text :>
                                               QueryParam "alt" Alt :>
                                                 Put '[JSON] File

-- | Updates file metadata and\/or content.
--
-- /See:/ 'filesUpdate'' smart constructor.
data FilesUpdate' = FilesUpdate'
    { _fQuotaUser                 :: !(Maybe Text)
    , _fNewRevision               :: !Bool
    , _fPrettyPrint               :: !Bool
    , _fUserIp                    :: !(Maybe Text)
    , _fPinned                    :: !Bool
    , _fTimedTextLanguage         :: !(Maybe Text)
    , _fUpdateViewedDate          :: !Bool
    , _fRemoveParents             :: !(Maybe Text)
    , _fModifiedDateBehavior      :: !(Maybe FilesUpdate'ModifiedDateBehavior)
    , _fUseContentAsIndexableText :: !Bool
    , _fTimedTextTrackName        :: !(Maybe Text)
    , _fOcrLanguage               :: !(Maybe Text)
    , _fKey                       :: !(Maybe Text)
    , _fConvert                   :: !Bool
    , _fSetModifiedDate           :: !Bool
    , _fFileId                    :: !Text
    , _fOauthToken                :: !(Maybe Text)
    , _fAddParents                :: !(Maybe Text)
    , _fOcr                       :: !Bool
    , _fFields                    :: !(Maybe Text)
    , _fAlt                       :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fQuotaUser'
--
-- * 'fNewRevision'
--
-- * 'fPrettyPrint'
--
-- * 'fUserIp'
--
-- * 'fPinned'
--
-- * 'fTimedTextLanguage'
--
-- * 'fUpdateViewedDate'
--
-- * 'fRemoveParents'
--
-- * 'fModifiedDateBehavior'
--
-- * 'fUseContentAsIndexableText'
--
-- * 'fTimedTextTrackName'
--
-- * 'fOcrLanguage'
--
-- * 'fKey'
--
-- * 'fConvert'
--
-- * 'fSetModifiedDate'
--
-- * 'fFileId'
--
-- * 'fOauthToken'
--
-- * 'fAddParents'
--
-- * 'fOcr'
--
-- * 'fFields'
--
-- * 'fAlt'
filesUpdate'
    :: Text -- ^ 'fileId'
    -> FilesUpdate'
filesUpdate' pFFileId_ =
    FilesUpdate'
    { _fQuotaUser = Nothing
    , _fNewRevision = True
    , _fPrettyPrint = True
    , _fUserIp = Nothing
    , _fPinned = False
    , _fTimedTextLanguage = Nothing
    , _fUpdateViewedDate = True
    , _fRemoveParents = Nothing
    , _fModifiedDateBehavior = Nothing
    , _fUseContentAsIndexableText = False
    , _fTimedTextTrackName = Nothing
    , _fOcrLanguage = Nothing
    , _fKey = Nothing
    , _fConvert = False
    , _fSetModifiedDate = False
    , _fFileId = pFFileId_
    , _fOauthToken = Nothing
    , _fAddParents = Nothing
    , _fOcr = False
    , _fFields = Nothing
    , _fAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
fQuotaUser :: Lens' FilesUpdate' (Maybe Text)
fQuotaUser
  = lens _fQuotaUser (\ s a -> s{_fQuotaUser = a})

-- | Whether a blob upload should create a new revision. If false, the blob
-- data in the current head revision is replaced. If true or not set, a new
-- blob is created as head revision, and previous unpinned revisions are
-- preserved for a short period of time. Pinned revisions are stored
-- indefinitely, using additional storage quota, up to a maximum of 200
-- revisions. For details on how revisions are retained, see the Drive Help
-- Center.
fNewRevision :: Lens' FilesUpdate' Bool
fNewRevision
  = lens _fNewRevision (\ s a -> s{_fNewRevision = a})

-- | Returns response with indentations and line breaks.
fPrettyPrint :: Lens' FilesUpdate' Bool
fPrettyPrint
  = lens _fPrettyPrint (\ s a -> s{_fPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
fUserIp :: Lens' FilesUpdate' (Maybe Text)
fUserIp = lens _fUserIp (\ s a -> s{_fUserIp = a})

-- | Whether to pin the new revision. A file can have a maximum of 200 pinned
-- revisions.
fPinned :: Lens' FilesUpdate' Bool
fPinned = lens _fPinned (\ s a -> s{_fPinned = a})

-- | The language of the timed text.
fTimedTextLanguage :: Lens' FilesUpdate' (Maybe Text)
fTimedTextLanguage
  = lens _fTimedTextLanguage
      (\ s a -> s{_fTimedTextLanguage = a})

-- | Whether to update the view date after successfully updating the file.
fUpdateViewedDate :: Lens' FilesUpdate' Bool
fUpdateViewedDate
  = lens _fUpdateViewedDate
      (\ s a -> s{_fUpdateViewedDate = a})

-- | Comma-separated list of parent IDs to remove.
fRemoveParents :: Lens' FilesUpdate' (Maybe Text)
fRemoveParents
  = lens _fRemoveParents
      (\ s a -> s{_fRemoveParents = a})

-- | Determines the behavior in which modifiedDate is updated. This overrides
-- setModifiedDate.
fModifiedDateBehavior :: Lens' FilesUpdate' (Maybe FilesUpdate'ModifiedDateBehavior)
fModifiedDateBehavior
  = lens _fModifiedDateBehavior
      (\ s a -> s{_fModifiedDateBehavior = a})

-- | Whether to use the content as indexable text.
fUseContentAsIndexableText :: Lens' FilesUpdate' Bool
fUseContentAsIndexableText
  = lens _fUseContentAsIndexableText
      (\ s a -> s{_fUseContentAsIndexableText = a})

-- | The timed text track name.
fTimedTextTrackName :: Lens' FilesUpdate' (Maybe Text)
fTimedTextTrackName
  = lens _fTimedTextTrackName
      (\ s a -> s{_fTimedTextTrackName = a})

-- | If ocr is true, hints at the language to use. Valid values are BCP 47
-- codes.
fOcrLanguage :: Lens' FilesUpdate' (Maybe Text)
fOcrLanguage
  = lens _fOcrLanguage (\ s a -> s{_fOcrLanguage = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fKey :: Lens' FilesUpdate' (Maybe Text)
fKey = lens _fKey (\ s a -> s{_fKey = a})

-- | This parameter is deprecated and has no function.
fConvert :: Lens' FilesUpdate' Bool
fConvert = lens _fConvert (\ s a -> s{_fConvert = a})

-- | Whether to set the modified date with the supplied modified date.
fSetModifiedDate :: Lens' FilesUpdate' Bool
fSetModifiedDate
  = lens _fSetModifiedDate
      (\ s a -> s{_fSetModifiedDate = a})

-- | The ID of the file to update.
fFileId :: Lens' FilesUpdate' Text
fFileId = lens _fFileId (\ s a -> s{_fFileId = a})

-- | OAuth 2.0 token for the current user.
fOauthToken :: Lens' FilesUpdate' (Maybe Text)
fOauthToken
  = lens _fOauthToken (\ s a -> s{_fOauthToken = a})

-- | Comma-separated list of parent IDs to add.
fAddParents :: Lens' FilesUpdate' (Maybe Text)
fAddParents
  = lens _fAddParents (\ s a -> s{_fAddParents = a})

-- | Whether to attempt OCR on .jpg, .png, .gif, or .pdf uploads.
fOcr :: Lens' FilesUpdate' Bool
fOcr = lens _fOcr (\ s a -> s{_fOcr = a})

-- | Selector specifying which fields to include in a partial response.
fFields :: Lens' FilesUpdate' (Maybe Text)
fFields = lens _fFields (\ s a -> s{_fFields = a})

-- | Data format for the response.
fAlt :: Lens' FilesUpdate' Alt
fAlt = lens _fAlt (\ s a -> s{_fAlt = a})

instance GoogleRequest FilesUpdate' where
        type Rs FilesUpdate' = File
        request = requestWithRoute defReq driveURL
        requestWithRoute r u FilesUpdate'{..}
          = go _fQuotaUser (Just _fNewRevision)
              (Just _fPrettyPrint)
              _fUserIp
              (Just _fPinned)
              _fTimedTextLanguage
              (Just _fUpdateViewedDate)
              _fRemoveParents
              _fModifiedDateBehavior
              (Just _fUseContentAsIndexableText)
              _fTimedTextTrackName
              _fOcrLanguage
              _fKey
              (Just _fConvert)
              (Just _fSetModifiedDate)
              _fFileId
              _fOauthToken
              _fAddParents
              (Just _fOcr)
              _fFields
              (Just _fAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy FilesUpdateAPI) r u
