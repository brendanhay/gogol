{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Drive.Files.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a file\'s metadata by ID.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveFilesGet@.
module Drive.Files.Get
    (
    -- * REST Resource
      FilesGetAPI

    -- * Creating a Request
    , filesGet
    , FilesGet

    -- * Request Lenses
    , fgQuotaUser
    , fgPrettyPrint
    , fgUserIp
    , fgUpdateViewedDate
    , fgKey
    , fgProjection
    , fgAcknowledgeAbuse
    , fgFileId
    , fgOauthToken
    , fgRevisionId
    , fgFields
    , fgAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveFilesGet@ which the
-- 'FilesGet' request conforms to.
type FilesGetAPI =
     "files" :>
       Capture "fileId" Text :>
         QueryParam "updateViewedDate" Bool :>
           QueryParam "projection" Text :>
             QueryParam "acknowledgeAbuse" Bool :>
               QueryParam "revisionId" Text :> Get '[JSON] File

-- | Gets a file\'s metadata by ID.
--
-- /See:/ 'filesGet' smart constructor.
data FilesGet = FilesGet
    { _fgQuotaUser        :: !(Maybe Text)
    , _fgPrettyPrint      :: !Bool
    , _fgUserIp           :: !(Maybe Text)
    , _fgUpdateViewedDate :: !Bool
    , _fgKey              :: !(Maybe Text)
    , _fgProjection       :: !(Maybe Text)
    , _fgAcknowledgeAbuse :: !Bool
    , _fgFileId           :: !Text
    , _fgOauthToken       :: !(Maybe Text)
    , _fgRevisionId       :: !(Maybe Text)
    , _fgFields           :: !(Maybe Text)
    , _fgAlt              :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fgQuotaUser'
--
-- * 'fgPrettyPrint'
--
-- * 'fgUserIp'
--
-- * 'fgUpdateViewedDate'
--
-- * 'fgKey'
--
-- * 'fgProjection'
--
-- * 'fgAcknowledgeAbuse'
--
-- * 'fgFileId'
--
-- * 'fgOauthToken'
--
-- * 'fgRevisionId'
--
-- * 'fgFields'
--
-- * 'fgAlt'
filesGet
    :: Text -- ^ 'fileId'
    -> FilesGet
filesGet pFgFileId_ =
    FilesGet
    { _fgQuotaUser = Nothing
    , _fgPrettyPrint = True
    , _fgUserIp = Nothing
    , _fgUpdateViewedDate = False
    , _fgKey = Nothing
    , _fgProjection = Nothing
    , _fgAcknowledgeAbuse = False
    , _fgFileId = pFgFileId_
    , _fgOauthToken = Nothing
    , _fgRevisionId = Nothing
    , _fgFields = Nothing
    , _fgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
fgQuotaUser :: Lens' FilesGet' (Maybe Text)
fgQuotaUser
  = lens _fgQuotaUser (\ s a -> s{_fgQuotaUser = a})

-- | Returns response with indentations and line breaks.
fgPrettyPrint :: Lens' FilesGet' Bool
fgPrettyPrint
  = lens _fgPrettyPrint
      (\ s a -> s{_fgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
fgUserIp :: Lens' FilesGet' (Maybe Text)
fgUserIp = lens _fgUserIp (\ s a -> s{_fgUserIp = a})

-- | Deprecated: Use files.update with modifiedDateBehavior=noChange,
-- updateViewedDate=true and an empty request body.
fgUpdateViewedDate :: Lens' FilesGet' Bool
fgUpdateViewedDate
  = lens _fgUpdateViewedDate
      (\ s a -> s{_fgUpdateViewedDate = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fgKey :: Lens' FilesGet' (Maybe Text)
fgKey = lens _fgKey (\ s a -> s{_fgKey = a})

-- | This parameter is deprecated and has no function.
fgProjection :: Lens' FilesGet' (Maybe Text)
fgProjection
  = lens _fgProjection (\ s a -> s{_fgProjection = a})

-- | Whether the user is acknowledging the risk of downloading known malware
-- or other abusive files.
fgAcknowledgeAbuse :: Lens' FilesGet' Bool
fgAcknowledgeAbuse
  = lens _fgAcknowledgeAbuse
      (\ s a -> s{_fgAcknowledgeAbuse = a})

-- | The ID for the file in question.
fgFileId :: Lens' FilesGet' Text
fgFileId = lens _fgFileId (\ s a -> s{_fgFileId = a})

-- | OAuth 2.0 token for the current user.
fgOauthToken :: Lens' FilesGet' (Maybe Text)
fgOauthToken
  = lens _fgOauthToken (\ s a -> s{_fgOauthToken = a})

-- | Specifies the Revision ID that should be downloaded. Ignored unless
-- alt=media is specified.
fgRevisionId :: Lens' FilesGet' (Maybe Text)
fgRevisionId
  = lens _fgRevisionId (\ s a -> s{_fgRevisionId = a})

-- | Selector specifying which fields to include in a partial response.
fgFields :: Lens' FilesGet' (Maybe Text)
fgFields = lens _fgFields (\ s a -> s{_fgFields = a})

-- | Data format for the response.
fgAlt :: Lens' FilesGet' Text
fgAlt = lens _fgAlt (\ s a -> s{_fgAlt = a})

instance GoogleRequest FilesGet' where
        type Rs FilesGet' = File
        request = requestWithRoute defReq driveURL
        requestWithRoute r u FilesGet{..}
          = go _fgQuotaUser _fgPrettyPrint _fgUserIp
              (Just _fgUpdateViewedDate)
              _fgKey
              _fgProjection
              (Just _fgAcknowledgeAbuse)
              _fgFileId
              _fgOauthToken
              _fgRevisionId
              _fgFields
              _fgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy FilesGetAPI) r u
