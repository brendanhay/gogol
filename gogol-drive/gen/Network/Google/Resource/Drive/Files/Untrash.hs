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
-- Module      : Network.Google.Resource.Drive.Files.Untrash
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Restores a file from the trash.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveFilesUntrash@.
module Network.Google.Resource.Drive.Files.Untrash
    (
    -- * REST Resource
      FilesUntrashResource

    -- * Creating a Request
    , filesUntrash'
    , FilesUntrash'

    -- * Request Lenses
    , fQuotaUser
    , fPrettyPrint
    , fUserIp
    , fKey
    , fFileId
    , fOauthToken
    , fFields
    , fAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveFilesUntrash@ which the
-- 'FilesUntrash'' request conforms to.
type FilesUntrashResource =
     "files" :>
       Capture "fileId" Text :>
         "untrash" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] File

-- | Restores a file from the trash.
--
-- /See:/ 'filesUntrash'' smart constructor.
data FilesUntrash' = FilesUntrash'
    { _fQuotaUser   :: !(Maybe Text)
    , _fPrettyPrint :: !Bool
    , _fUserIp      :: !(Maybe Text)
    , _fKey         :: !(Maybe Text)
    , _fFileId      :: !Text
    , _fOauthToken  :: !(Maybe Text)
    , _fFields      :: !(Maybe Text)
    , _fAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilesUntrash'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fQuotaUser'
--
-- * 'fPrettyPrint'
--
-- * 'fUserIp'
--
-- * 'fKey'
--
-- * 'fFileId'
--
-- * 'fOauthToken'
--
-- * 'fFields'
--
-- * 'fAlt'
filesUntrash'
    :: Text -- ^ 'fileId'
    -> FilesUntrash'
filesUntrash' pFFileId_ =
    FilesUntrash'
    { _fQuotaUser = Nothing
    , _fPrettyPrint = True
    , _fUserIp = Nothing
    , _fKey = Nothing
    , _fFileId = pFFileId_
    , _fOauthToken = Nothing
    , _fFields = Nothing
    , _fAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
fQuotaUser :: Lens' FilesUntrash' (Maybe Text)
fQuotaUser
  = lens _fQuotaUser (\ s a -> s{_fQuotaUser = a})

-- | Returns response with indentations and line breaks.
fPrettyPrint :: Lens' FilesUntrash' Bool
fPrettyPrint
  = lens _fPrettyPrint (\ s a -> s{_fPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
fUserIp :: Lens' FilesUntrash' (Maybe Text)
fUserIp = lens _fUserIp (\ s a -> s{_fUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fKey :: Lens' FilesUntrash' (Maybe Text)
fKey = lens _fKey (\ s a -> s{_fKey = a})

-- | The ID of the file to untrash.
fFileId :: Lens' FilesUntrash' Text
fFileId = lens _fFileId (\ s a -> s{_fFileId = a})

-- | OAuth 2.0 token for the current user.
fOauthToken :: Lens' FilesUntrash' (Maybe Text)
fOauthToken
  = lens _fOauthToken (\ s a -> s{_fOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
fFields :: Lens' FilesUntrash' (Maybe Text)
fFields = lens _fFields (\ s a -> s{_fFields = a})

-- | Data format for the response.
fAlt :: Lens' FilesUntrash' Alt
fAlt = lens _fAlt (\ s a -> s{_fAlt = a})

instance GoogleRequest FilesUntrash' where
        type Rs FilesUntrash' = File
        request = requestWithRoute defReq driveURL
        requestWithRoute r u FilesUntrash'{..}
          = go _fQuotaUser (Just _fPrettyPrint) _fUserIp _fKey
              _fFileId
              _fOauthToken
              _fFields
              (Just _fAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy FilesUntrashResource)
                      r
                      u
