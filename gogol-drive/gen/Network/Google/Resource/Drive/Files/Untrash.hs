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
    , fUserIP
    , fKey
    , fFileId
    , fOAuthToken
    , fFields
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
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Post '[JSON] File

-- | Restores a file from the trash.
--
-- /See:/ 'filesUntrash'' smart constructor.
data FilesUntrash' = FilesUntrash'
    { _fQuotaUser   :: !(Maybe Text)
    , _fPrettyPrint :: !Bool
    , _fUserIP      :: !(Maybe Text)
    , _fKey         :: !(Maybe AuthKey)
    , _fFileId      :: !Text
    , _fOAuthToken  :: !(Maybe OAuthToken)
    , _fFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilesUntrash'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fQuotaUser'
--
-- * 'fPrettyPrint'
--
-- * 'fUserIP'
--
-- * 'fKey'
--
-- * 'fFileId'
--
-- * 'fOAuthToken'
--
-- * 'fFields'
filesUntrash'
    :: Text -- ^ 'fileId'
    -> FilesUntrash'
filesUntrash' pFFileId_ =
    FilesUntrash'
    { _fQuotaUser = Nothing
    , _fPrettyPrint = True
    , _fUserIP = Nothing
    , _fKey = Nothing
    , _fFileId = pFFileId_
    , _fOAuthToken = Nothing
    , _fFields = Nothing
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
fUserIP :: Lens' FilesUntrash' (Maybe Text)
fUserIP = lens _fUserIP (\ s a -> s{_fUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fKey :: Lens' FilesUntrash' (Maybe AuthKey)
fKey = lens _fKey (\ s a -> s{_fKey = a})

-- | The ID of the file to untrash.
fFileId :: Lens' FilesUntrash' Text
fFileId = lens _fFileId (\ s a -> s{_fFileId = a})

-- | OAuth 2.0 token for the current user.
fOAuthToken :: Lens' FilesUntrash' (Maybe OAuthToken)
fOAuthToken
  = lens _fOAuthToken (\ s a -> s{_fOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
fFields :: Lens' FilesUntrash' (Maybe Text)
fFields = lens _fFields (\ s a -> s{_fFields = a})

instance GoogleAuth FilesUntrash' where
        authKey = fKey . _Just
        authToken = fOAuthToken . _Just

instance GoogleRequest FilesUntrash' where
        type Rs FilesUntrash' = File
        request = requestWithRoute defReq driveURL
        requestWithRoute r u FilesUntrash'{..}
          = go _fFileId _fQuotaUser (Just _fPrettyPrint)
              _fUserIP
              _fFields
              _fKey
              _fOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy FilesUntrashResource)
                      r
                      u
