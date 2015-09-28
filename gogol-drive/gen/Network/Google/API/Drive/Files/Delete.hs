{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Drive.Files.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Permanently deletes a file by ID. Skips the trash. The currently
-- authenticated user must own the file.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.files.delete@.
module Network.Google.API.Drive.Files.Delete
    (
    -- * REST Resource
      FilesDeleteAPI

    -- * Creating a Request
    , filesDelete'
    , FilesDelete'

    -- * Request Lenses
    , fdQuotaUser
    , fdPrettyPrint
    , fdUserIp
    , fdKey
    , fdFileId
    , fdOauthToken
    , fdFields
    , fdAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for drive.files.delete which the
-- 'FilesDelete'' request conforms to.
type FilesDeleteAPI =
     "files" :>
       Capture "fileId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Permanently deletes a file by ID. Skips the trash. The currently
-- authenticated user must own the file.
--
-- /See:/ 'filesDelete'' smart constructor.
data FilesDelete' = FilesDelete'
    { _fdQuotaUser   :: !(Maybe Text)
    , _fdPrettyPrint :: !Bool
    , _fdUserIp      :: !(Maybe Text)
    , _fdKey         :: !(Maybe Text)
    , _fdFileId      :: !Text
    , _fdOauthToken  :: !(Maybe Text)
    , _fdFields      :: !(Maybe Text)
    , _fdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fdQuotaUser'
--
-- * 'fdPrettyPrint'
--
-- * 'fdUserIp'
--
-- * 'fdKey'
--
-- * 'fdFileId'
--
-- * 'fdOauthToken'
--
-- * 'fdFields'
--
-- * 'fdAlt'
filesDelete'
    :: Text -- ^ 'fileId'
    -> FilesDelete'
filesDelete' pFdFileId_ =
    FilesDelete'
    { _fdQuotaUser = Nothing
    , _fdPrettyPrint = True
    , _fdUserIp = Nothing
    , _fdKey = Nothing
    , _fdFileId = pFdFileId_
    , _fdOauthToken = Nothing
    , _fdFields = Nothing
    , _fdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
fdQuotaUser :: Lens' FilesDelete' (Maybe Text)
fdQuotaUser
  = lens _fdQuotaUser (\ s a -> s{_fdQuotaUser = a})

-- | Returns response with indentations and line breaks.
fdPrettyPrint :: Lens' FilesDelete' Bool
fdPrettyPrint
  = lens _fdPrettyPrint
      (\ s a -> s{_fdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
fdUserIp :: Lens' FilesDelete' (Maybe Text)
fdUserIp = lens _fdUserIp (\ s a -> s{_fdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fdKey :: Lens' FilesDelete' (Maybe Text)
fdKey = lens _fdKey (\ s a -> s{_fdKey = a})

-- | The ID of the file to delete.
fdFileId :: Lens' FilesDelete' Text
fdFileId = lens _fdFileId (\ s a -> s{_fdFileId = a})

-- | OAuth 2.0 token for the current user.
fdOauthToken :: Lens' FilesDelete' (Maybe Text)
fdOauthToken
  = lens _fdOauthToken (\ s a -> s{_fdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
fdFields :: Lens' FilesDelete' (Maybe Text)
fdFields = lens _fdFields (\ s a -> s{_fdFields = a})

-- | Data format for the response.
fdAlt :: Lens' FilesDelete' Alt
fdAlt = lens _fdAlt (\ s a -> s{_fdAlt = a})

instance GoogleRequest FilesDelete' where
        type Rs FilesDelete' = ()
        request = requestWithRoute defReq driveURL
        requestWithRoute r u FilesDelete'{..}
          = go _fdQuotaUser (Just _fdPrettyPrint) _fdUserIp
              _fdKey
              _fdFileId
              _fdOauthToken
              _fdFields
              (Just _fdAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy FilesDeleteAPI) r u
