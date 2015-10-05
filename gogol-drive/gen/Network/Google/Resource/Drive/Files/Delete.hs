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
-- Module      : Network.Google.Resource.Drive.Files.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Permanently deletes a file by ID. Skips the trash. The currently
-- authenticated user must own the file.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveFilesDelete@.
module Network.Google.Resource.Drive.Files.Delete
    (
    -- * REST Resource
      FilesDeleteResource

    -- * Creating a Request
    , filesDelete'
    , FilesDelete'

    -- * Request Lenses
    , fdQuotaUser
    , fdPrettyPrint
    , fdUserIP
    , fdKey
    , fdFileId
    , fdOAuthToken
    , fdFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveFilesDelete@ which the
-- 'FilesDelete'' request conforms to.
type FilesDeleteResource =
     "files" :>
       Capture "fileId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Permanently deletes a file by ID. Skips the trash. The currently
-- authenticated user must own the file.
--
-- /See:/ 'filesDelete'' smart constructor.
data FilesDelete' = FilesDelete'
    { _fdQuotaUser   :: !(Maybe Text)
    , _fdPrettyPrint :: !Bool
    , _fdUserIP      :: !(Maybe Text)
    , _fdKey         :: !(Maybe AuthKey)
    , _fdFileId      :: !Text
    , _fdOAuthToken  :: !(Maybe OAuthToken)
    , _fdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fdQuotaUser'
--
-- * 'fdPrettyPrint'
--
-- * 'fdUserIP'
--
-- * 'fdKey'
--
-- * 'fdFileId'
--
-- * 'fdOAuthToken'
--
-- * 'fdFields'
filesDelete'
    :: Text -- ^ 'fileId'
    -> FilesDelete'
filesDelete' pFdFileId_ =
    FilesDelete'
    { _fdQuotaUser = Nothing
    , _fdPrettyPrint = True
    , _fdUserIP = Nothing
    , _fdKey = Nothing
    , _fdFileId = pFdFileId_
    , _fdOAuthToken = Nothing
    , _fdFields = Nothing
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
fdUserIP :: Lens' FilesDelete' (Maybe Text)
fdUserIP = lens _fdUserIP (\ s a -> s{_fdUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fdKey :: Lens' FilesDelete' (Maybe AuthKey)
fdKey = lens _fdKey (\ s a -> s{_fdKey = a})

-- | The ID of the file to delete.
fdFileId :: Lens' FilesDelete' Text
fdFileId = lens _fdFileId (\ s a -> s{_fdFileId = a})

-- | OAuth 2.0 token for the current user.
fdOAuthToken :: Lens' FilesDelete' (Maybe OAuthToken)
fdOAuthToken
  = lens _fdOAuthToken (\ s a -> s{_fdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
fdFields :: Lens' FilesDelete' (Maybe Text)
fdFields = lens _fdFields (\ s a -> s{_fdFields = a})

instance GoogleAuth FilesDelete' where
        authKey = fdKey . _Just
        authToken = fdOAuthToken . _Just

instance GoogleRequest FilesDelete' where
        type Rs FilesDelete' = ()
        request = requestWithRoute defReq driveURL
        requestWithRoute r u FilesDelete'{..}
          = go _fdFileId _fdQuotaUser (Just _fdPrettyPrint)
              _fdUserIP
              _fdFields
              _fdKey
              _fdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy FilesDeleteResource)
                      r
                      u
