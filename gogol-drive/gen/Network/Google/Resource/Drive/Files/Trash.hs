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
module Network.Google.Resource.Drive.Files.Trash
    (
    -- * REST Resource
      FilesTrashResource

    -- * Creating a Request
    , filesTrash'
    , FilesTrash'

    -- * Request Lenses
    , filQuotaUser
    , filPrettyPrint
    , filUserIP
    , filKey
    , filFileId
    , filOAuthToken
    , filFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveFilesTrash@ which the
-- 'FilesTrash'' request conforms to.
type FilesTrashResource =
     "files" :>
       Capture "fileId" Text :>
         "trash" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Post '[JSON] File

-- | Moves a file to the trash. The currently authenticated user must own the
-- file.
--
-- /See:/ 'filesTrash'' smart constructor.
data FilesTrash' = FilesTrash'
    { _filQuotaUser   :: !(Maybe Text)
    , _filPrettyPrint :: !Bool
    , _filUserIP      :: !(Maybe Text)
    , _filKey         :: !(Maybe AuthKey)
    , _filFileId      :: !Text
    , _filOAuthToken  :: !(Maybe OAuthToken)
    , _filFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilesTrash'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'filQuotaUser'
--
-- * 'filPrettyPrint'
--
-- * 'filUserIP'
--
-- * 'filKey'
--
-- * 'filFileId'
--
-- * 'filOAuthToken'
--
-- * 'filFields'
filesTrash'
    :: Text -- ^ 'fileId'
    -> FilesTrash'
filesTrash' pFilFileId_ =
    FilesTrash'
    { _filQuotaUser = Nothing
    , _filPrettyPrint = True
    , _filUserIP = Nothing
    , _filKey = Nothing
    , _filFileId = pFilFileId_
    , _filOAuthToken = Nothing
    , _filFields = Nothing
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
filUserIP :: Lens' FilesTrash' (Maybe Text)
filUserIP
  = lens _filUserIP (\ s a -> s{_filUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
filKey :: Lens' FilesTrash' (Maybe AuthKey)
filKey = lens _filKey (\ s a -> s{_filKey = a})

-- | The ID of the file to trash.
filFileId :: Lens' FilesTrash' Text
filFileId
  = lens _filFileId (\ s a -> s{_filFileId = a})

-- | OAuth 2.0 token for the current user.
filOAuthToken :: Lens' FilesTrash' (Maybe OAuthToken)
filOAuthToken
  = lens _filOAuthToken
      (\ s a -> s{_filOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
filFields :: Lens' FilesTrash' (Maybe Text)
filFields
  = lens _filFields (\ s a -> s{_filFields = a})

instance GoogleAuth FilesTrash' where
        authKey = filKey . _Just
        authToken = filOAuthToken . _Just

instance GoogleRequest FilesTrash' where
        type Rs FilesTrash' = File
        request = requestWith driveRequest
        requestWith rq FilesTrash'{..}
          = go _filFileId _filQuotaUser (Just _filPrettyPrint)
              _filUserIP
              _filFields
              _filKey
              _filOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy FilesTrashResource) rq
