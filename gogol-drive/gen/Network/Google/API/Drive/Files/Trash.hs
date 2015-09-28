{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Drive.Files.Trash
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Moves a file to the trash. The currently authenticated user must own the
-- file.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.files.trash@.
module Network.Google.API.Drive.Files.Trash
    (
    -- * REST Resource
      FilesTrashAPI

    -- * Creating a Request
    , filesTrash'
    , FilesTrash'

    -- * Request Lenses
    , filQuotaUser
    , filPrettyPrint
    , filUserIp
    , filKey
    , filFileId
    , filOauthToken
    , filFields
    , filAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for drive.files.trash which the
-- 'FilesTrash'' request conforms to.
type FilesTrashAPI =
     "files" :>
       Capture "fileId" Text :>
         "trash" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] File

-- | Moves a file to the trash. The currently authenticated user must own the
-- file.
--
-- /See:/ 'filesTrash'' smart constructor.
data FilesTrash' = FilesTrash'
    { _filQuotaUser   :: !(Maybe Text)
    , _filPrettyPrint :: !Bool
    , _filUserIp      :: !(Maybe Text)
    , _filKey         :: !(Maybe Text)
    , _filFileId      :: !Text
    , _filOauthToken  :: !(Maybe Text)
    , _filFields      :: !(Maybe Text)
    , _filAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilesTrash'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'filQuotaUser'
--
-- * 'filPrettyPrint'
--
-- * 'filUserIp'
--
-- * 'filKey'
--
-- * 'filFileId'
--
-- * 'filOauthToken'
--
-- * 'filFields'
--
-- * 'filAlt'
filesTrash'
    :: Text -- ^ 'fileId'
    -> FilesTrash'
filesTrash' pFilFileId_ =
    FilesTrash'
    { _filQuotaUser = Nothing
    , _filPrettyPrint = True
    , _filUserIp = Nothing
    , _filKey = Nothing
    , _filFileId = pFilFileId_
    , _filOauthToken = Nothing
    , _filFields = Nothing
    , _filAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
filQuotaUser :: Lens' FilesTrash' (Maybe Text)
filQuotaUser
  = lens _filQuotaUser (\ s a -> s{_filQuotaUser = a})

-- | Returns response with indentations and line breaks.
filPrettyPrint :: Lens' FilesTrash' Bool
filPrettyPrint
  = lens _filPrettyPrint
      (\ s a -> s{_filPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
filUserIp :: Lens' FilesTrash' (Maybe Text)
filUserIp
  = lens _filUserIp (\ s a -> s{_filUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
filKey :: Lens' FilesTrash' (Maybe Text)
filKey = lens _filKey (\ s a -> s{_filKey = a})

-- | The ID of the file to trash.
filFileId :: Lens' FilesTrash' Text
filFileId
  = lens _filFileId (\ s a -> s{_filFileId = a})

-- | OAuth 2.0 token for the current user.
filOauthToken :: Lens' FilesTrash' (Maybe Text)
filOauthToken
  = lens _filOauthToken
      (\ s a -> s{_filOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
filFields :: Lens' FilesTrash' (Maybe Text)
filFields
  = lens _filFields (\ s a -> s{_filFields = a})

-- | Data format for the response.
filAlt :: Lens' FilesTrash' Alt
filAlt = lens _filAlt (\ s a -> s{_filAlt = a})

instance GoogleRequest FilesTrash' where
        type Rs FilesTrash' = File
        request = requestWithRoute defReq driveURL
        requestWithRoute r u FilesTrash'{..}
          = go _filQuotaUser (Just _filPrettyPrint) _filUserIp
              _filKey
              _filFileId
              _filOauthToken
              _filFields
              (Just _filAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy FilesTrashAPI) r u
