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
module Network.Google.Resource.Drive.Files.Update
    (
    -- * REST Resource
      FilesUpdateResource

    -- * Creating a Request
    , filesUpdate'
    , FilesUpdate'

    -- * Request Lenses
    , fuQuotaUser
    , fuNewRevision
    , fuPrettyPrint
    , fuUserIp
    , fuPinned
    , fuTimedTextLanguage
    , fuUpdateViewedDate
    , fuRemoveParents
    , fuModifiedDateBehavior
    , fuUseContentAsIndexableText
    , fuTimedTextTrackName
    , fuOcrLanguage
    , fuKey
    , fuConvert
    , fuSetModifiedDate
    , fuFileId
    , fuOauthToken
    , fuAddParents
    , fuOcr
    , fuFields
    , fuAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveFilesUpdate@ which the
-- 'FilesUpdate'' request conforms to.
type FilesUpdateResource =
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
                           DriveFilesUpdateModifiedDateBehavior
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
    { _fuQuotaUser                 :: !(Maybe Text)
    , _fuNewRevision               :: !Bool
    , _fuPrettyPrint               :: !Bool
    , _fuUserIp                    :: !(Maybe Text)
    , _fuPinned                    :: !Bool
    , _fuTimedTextLanguage         :: !(Maybe Text)
    , _fuUpdateViewedDate          :: !Bool
    , _fuRemoveParents             :: !(Maybe Text)
    , _fuModifiedDateBehavior      :: !(Maybe DriveFilesUpdateModifiedDateBehavior)
    , _fuUseContentAsIndexableText :: !Bool
    , _fuTimedTextTrackName        :: !(Maybe Text)
    , _fuOcrLanguage               :: !(Maybe Text)
    , _fuKey                       :: !(Maybe Text)
    , _fuConvert                   :: !Bool
    , _fuSetModifiedDate           :: !Bool
    , _fuFileId                    :: !Text
    , _fuOauthToken                :: !(Maybe Text)
    , _fuAddParents                :: !(Maybe Text)
    , _fuOcr                       :: !Bool
    , _fuFields                    :: !(Maybe Text)
    , _fuAlt                       :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fuQuotaUser'
--
-- * 'fuNewRevision'
--
-- * 'fuPrettyPrint'
--
-- * 'fuUserIp'
--
-- * 'fuPinned'
--
-- * 'fuTimedTextLanguage'
--
-- * 'fuUpdateViewedDate'
--
-- * 'fuRemoveParents'
--
-- * 'fuModifiedDateBehavior'
--
-- * 'fuUseContentAsIndexableText'
--
-- * 'fuTimedTextTrackName'
--
-- * 'fuOcrLanguage'
--
-- * 'fuKey'
--
-- * 'fuConvert'
--
-- * 'fuSetModifiedDate'
--
-- * 'fuFileId'
--
-- * 'fuOauthToken'
--
-- * 'fuAddParents'
--
-- * 'fuOcr'
--
-- * 'fuFields'
--
-- * 'fuAlt'
filesUpdate'
    :: Text -- ^ 'fileId'
    -> FilesUpdate'
filesUpdate' pFuFileId_ =
    FilesUpdate'
    { _fuQuotaUser = Nothing
    , _fuNewRevision = True
    , _fuPrettyPrint = True
    , _fuUserIp = Nothing
    , _fuPinned = False
    , _fuTimedTextLanguage = Nothing
    , _fuUpdateViewedDate = True
    , _fuRemoveParents = Nothing
    , _fuModifiedDateBehavior = Nothing
    , _fuUseContentAsIndexableText = False
    , _fuTimedTextTrackName = Nothing
    , _fuOcrLanguage = Nothing
    , _fuKey = Nothing
    , _fuConvert = False
    , _fuSetModifiedDate = False
    , _fuFileId = pFuFileId_
    , _fuOauthToken = Nothing
    , _fuAddParents = Nothing
    , _fuOcr = False
    , _fuFields = Nothing
    , _fuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
fuQuotaUser :: Lens' FilesUpdate' (Maybe Text)
fuQuotaUser
  = lens _fuQuotaUser (\ s a -> s{_fuQuotaUser = a})

-- | Whether a blob upload should create a new revision. If false, the blob
-- data in the current head revision is replaced. If true or not set, a new
-- blob is created as head revision, and previous unpinned revisions are
-- preserved for a short period of time. Pinned revisions are stored
-- indefinitely, using additional storage quota, up to a maximum of 200
-- revisions. For details on how revisions are retained, see the Drive Help
-- Center.
fuNewRevision :: Lens' FilesUpdate' Bool
fuNewRevision
  = lens _fuNewRevision
      (\ s a -> s{_fuNewRevision = a})

-- | Returns response with indentations and line breaks.
fuPrettyPrint :: Lens' FilesUpdate' Bool
fuPrettyPrint
  = lens _fuPrettyPrint
      (\ s a -> s{_fuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
fuUserIp :: Lens' FilesUpdate' (Maybe Text)
fuUserIp = lens _fuUserIp (\ s a -> s{_fuUserIp = a})

-- | Whether to pin the new revision. A file can have a maximum of 200 pinned
-- revisions.
fuPinned :: Lens' FilesUpdate' Bool
fuPinned = lens _fuPinned (\ s a -> s{_fuPinned = a})

-- | The language of the timed text.
fuTimedTextLanguage :: Lens' FilesUpdate' (Maybe Text)
fuTimedTextLanguage
  = lens _fuTimedTextLanguage
      (\ s a -> s{_fuTimedTextLanguage = a})

-- | Whether to update the view date after successfully updating the file.
fuUpdateViewedDate :: Lens' FilesUpdate' Bool
fuUpdateViewedDate
  = lens _fuUpdateViewedDate
      (\ s a -> s{_fuUpdateViewedDate = a})

-- | Comma-separated list of parent IDs to remove.
fuRemoveParents :: Lens' FilesUpdate' (Maybe Text)
fuRemoveParents
  = lens _fuRemoveParents
      (\ s a -> s{_fuRemoveParents = a})

-- | Determines the behavior in which modifiedDate is updated. This overrides
-- setModifiedDate.
fuModifiedDateBehavior :: Lens' FilesUpdate' (Maybe DriveFilesUpdateModifiedDateBehavior)
fuModifiedDateBehavior
  = lens _fuModifiedDateBehavior
      (\ s a -> s{_fuModifiedDateBehavior = a})

-- | Whether to use the content as indexable text.
fuUseContentAsIndexableText :: Lens' FilesUpdate' Bool
fuUseContentAsIndexableText
  = lens _fuUseContentAsIndexableText
      (\ s a -> s{_fuUseContentAsIndexableText = a})

-- | The timed text track name.
fuTimedTextTrackName :: Lens' FilesUpdate' (Maybe Text)
fuTimedTextTrackName
  = lens _fuTimedTextTrackName
      (\ s a -> s{_fuTimedTextTrackName = a})

-- | If ocr is true, hints at the language to use. Valid values are BCP 47
-- codes.
fuOcrLanguage :: Lens' FilesUpdate' (Maybe Text)
fuOcrLanguage
  = lens _fuOcrLanguage
      (\ s a -> s{_fuOcrLanguage = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fuKey :: Lens' FilesUpdate' (Maybe Text)
fuKey = lens _fuKey (\ s a -> s{_fuKey = a})

-- | This parameter is deprecated and has no function.
fuConvert :: Lens' FilesUpdate' Bool
fuConvert
  = lens _fuConvert (\ s a -> s{_fuConvert = a})

-- | Whether to set the modified date with the supplied modified date.
fuSetModifiedDate :: Lens' FilesUpdate' Bool
fuSetModifiedDate
  = lens _fuSetModifiedDate
      (\ s a -> s{_fuSetModifiedDate = a})

-- | The ID of the file to update.
fuFileId :: Lens' FilesUpdate' Text
fuFileId = lens _fuFileId (\ s a -> s{_fuFileId = a})

-- | OAuth 2.0 token for the current user.
fuOauthToken :: Lens' FilesUpdate' (Maybe Text)
fuOauthToken
  = lens _fuOauthToken (\ s a -> s{_fuOauthToken = a})

-- | Comma-separated list of parent IDs to add.
fuAddParents :: Lens' FilesUpdate' (Maybe Text)
fuAddParents
  = lens _fuAddParents (\ s a -> s{_fuAddParents = a})

-- | Whether to attempt OCR on .jpg, .png, .gif, or .pdf uploads.
fuOcr :: Lens' FilesUpdate' Bool
fuOcr = lens _fuOcr (\ s a -> s{_fuOcr = a})

-- | Selector specifying which fields to include in a partial response.
fuFields :: Lens' FilesUpdate' (Maybe Text)
fuFields = lens _fuFields (\ s a -> s{_fuFields = a})

-- | Data format for the response.
fuAlt :: Lens' FilesUpdate' Alt
fuAlt = lens _fuAlt (\ s a -> s{_fuAlt = a})

instance GoogleRequest FilesUpdate' where
        type Rs FilesUpdate' = File
        request = requestWithRoute defReq driveURL
        requestWithRoute r u FilesUpdate'{..}
          = go _fuQuotaUser (Just _fuNewRevision)
              (Just _fuPrettyPrint)
              _fuUserIp
              (Just _fuPinned)
              _fuTimedTextLanguage
              (Just _fuUpdateViewedDate)
              _fuRemoveParents
              _fuModifiedDateBehavior
              (Just _fuUseContentAsIndexableText)
              _fuTimedTextTrackName
              _fuOcrLanguage
              _fuKey
              (Just _fuConvert)
              (Just _fuSetModifiedDate)
              _fuFileId
              _fuOauthToken
              _fuAddParents
              (Just _fuOcr)
              _fuFields
              (Just _fuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy FilesUpdateResource)
                      r
                      u
