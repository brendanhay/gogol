{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Drive.Files.Untrash
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Restores a file from the trash.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.files.untrash@.
module Network.Google.API.Drive.Files.Untrash
    (
    -- * REST Resource
      FilesUntrashAPI

    -- * Creating a Request
    , filesUntrash'
    , FilesUntrash'

    -- * Request Lenses
    , fuQuotaUser
    , fuPrettyPrint
    , fuUserIp
    , fuKey
    , fuFileId
    , fuOauthToken
    , fuFields
    , fuAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for drive.files.untrash which the
-- 'FilesUntrash'' request conforms to.
type FilesUntrashAPI =
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
    { _fuQuotaUser   :: !(Maybe Text)
    , _fuPrettyPrint :: !Bool
    , _fuUserIp      :: !(Maybe Text)
    , _fuKey         :: !(Maybe Text)
    , _fuFileId      :: !Text
    , _fuOauthToken  :: !(Maybe Text)
    , _fuFields      :: !(Maybe Text)
    , _fuAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilesUntrash'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fuQuotaUser'
--
-- * 'fuPrettyPrint'
--
-- * 'fuUserIp'
--
-- * 'fuKey'
--
-- * 'fuFileId'
--
-- * 'fuOauthToken'
--
-- * 'fuFields'
--
-- * 'fuAlt'
filesUntrash'
    :: Text -- ^ 'fileId'
    -> FilesUntrash'
filesUntrash' pFuFileId_ =
    FilesUntrash'
    { _fuQuotaUser = Nothing
    , _fuPrettyPrint = True
    , _fuUserIp = Nothing
    , _fuKey = Nothing
    , _fuFileId = pFuFileId_
    , _fuOauthToken = Nothing
    , _fuFields = Nothing
    , _fuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
fuQuotaUser :: Lens' FilesUntrash' (Maybe Text)
fuQuotaUser
  = lens _fuQuotaUser (\ s a -> s{_fuQuotaUser = a})

-- | Returns response with indentations and line breaks.
fuPrettyPrint :: Lens' FilesUntrash' Bool
fuPrettyPrint
  = lens _fuPrettyPrint
      (\ s a -> s{_fuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
fuUserIp :: Lens' FilesUntrash' (Maybe Text)
fuUserIp = lens _fuUserIp (\ s a -> s{_fuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fuKey :: Lens' FilesUntrash' (Maybe Text)
fuKey = lens _fuKey (\ s a -> s{_fuKey = a})

-- | The ID of the file to untrash.
fuFileId :: Lens' FilesUntrash' Text
fuFileId = lens _fuFileId (\ s a -> s{_fuFileId = a})

-- | OAuth 2.0 token for the current user.
fuOauthToken :: Lens' FilesUntrash' (Maybe Text)
fuOauthToken
  = lens _fuOauthToken (\ s a -> s{_fuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
fuFields :: Lens' FilesUntrash' (Maybe Text)
fuFields = lens _fuFields (\ s a -> s{_fuFields = a})

-- | Data format for the response.
fuAlt :: Lens' FilesUntrash' Alt
fuAlt = lens _fuAlt (\ s a -> s{_fuAlt = a})

instance GoogleRequest FilesUntrash' where
        type Rs FilesUntrash' = File
        request = requestWithRoute defReq driveURL
        requestWithRoute r u FilesUntrash'{..}
          = go _fuQuotaUser (Just _fuPrettyPrint) _fuUserIp
              _fuKey
              _fuFileId
              _fuOauthToken
              _fuFields
              (Just _fuAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy FilesUntrashAPI) r
                      u
