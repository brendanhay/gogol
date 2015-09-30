{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Drive.Files.Trash
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Moves a file to the trash. The currently authenticated user must own the
-- file.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveFilesTrash@.
module Drive.Files.Trash
    (
    -- * REST Resource
      FilesTrashAPI

    -- * Creating a Request
    , filesTrash
    , FilesTrash

    -- * Request Lenses
    , ftQuotaUser
    , ftPrettyPrint
    , ftUserIp
    , ftKey
    , ftFileId
    , ftOauthToken
    , ftFields
    , ftAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveFilesTrash@ which the
-- 'FilesTrash' request conforms to.
type FilesTrashAPI =
     "files" :>
       Capture "fileId" Text :> "trash" :> Post '[JSON] File

-- | Moves a file to the trash. The currently authenticated user must own the
-- file.
--
-- /See:/ 'filesTrash' smart constructor.
data FilesTrash = FilesTrash
    { _ftQuotaUser   :: !(Maybe Text)
    , _ftPrettyPrint :: !Bool
    , _ftUserIp      :: !(Maybe Text)
    , _ftKey         :: !(Maybe Text)
    , _ftFileId      :: !Text
    , _ftOauthToken  :: !(Maybe Text)
    , _ftFields      :: !(Maybe Text)
    , _ftAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilesTrash'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ftQuotaUser'
--
-- * 'ftPrettyPrint'
--
-- * 'ftUserIp'
--
-- * 'ftKey'
--
-- * 'ftFileId'
--
-- * 'ftOauthToken'
--
-- * 'ftFields'
--
-- * 'ftAlt'
filesTrash
    :: Text -- ^ 'fileId'
    -> FilesTrash
filesTrash pFtFileId_ =
    FilesTrash
    { _ftQuotaUser = Nothing
    , _ftPrettyPrint = True
    , _ftUserIp = Nothing
    , _ftKey = Nothing
    , _ftFileId = pFtFileId_
    , _ftOauthToken = Nothing
    , _ftFields = Nothing
    , _ftAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ftQuotaUser :: Lens' FilesTrash' (Maybe Text)
ftQuotaUser
  = lens _ftQuotaUser (\ s a -> s{_ftQuotaUser = a})

-- | Returns response with indentations and line breaks.
ftPrettyPrint :: Lens' FilesTrash' Bool
ftPrettyPrint
  = lens _ftPrettyPrint
      (\ s a -> s{_ftPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ftUserIp :: Lens' FilesTrash' (Maybe Text)
ftUserIp = lens _ftUserIp (\ s a -> s{_ftUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ftKey :: Lens' FilesTrash' (Maybe Text)
ftKey = lens _ftKey (\ s a -> s{_ftKey = a})

-- | The ID of the file to trash.
ftFileId :: Lens' FilesTrash' Text
ftFileId = lens _ftFileId (\ s a -> s{_ftFileId = a})

-- | OAuth 2.0 token for the current user.
ftOauthToken :: Lens' FilesTrash' (Maybe Text)
ftOauthToken
  = lens _ftOauthToken (\ s a -> s{_ftOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ftFields :: Lens' FilesTrash' (Maybe Text)
ftFields = lens _ftFields (\ s a -> s{_ftFields = a})

-- | Data format for the response.
ftAlt :: Lens' FilesTrash' Text
ftAlt = lens _ftAlt (\ s a -> s{_ftAlt = a})

instance GoogleRequest FilesTrash' where
        type Rs FilesTrash' = File
        request = requestWithRoute defReq driveURL
        requestWithRoute r u FilesTrash{..}
          = go _ftQuotaUser _ftPrettyPrint _ftUserIp _ftKey
              _ftFileId
              _ftOauthToken
              _ftFields
              _ftAlt
          where go
                  = clientWithRoute (Proxy :: Proxy FilesTrashAPI) r u
