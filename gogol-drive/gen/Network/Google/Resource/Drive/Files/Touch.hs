{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Drive.Files.Touch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Set the file\'s updated time to the current server time.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveFilesTouch@.
module Drive.Files.Touch
    (
    -- * REST Resource
      FilesTouchAPI

    -- * Creating a Request
    , filesTouch
    , FilesTouch

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

-- | A resource alias for @DriveFilesTouch@ which the
-- 'FilesTouch' request conforms to.
type FilesTouchAPI =
     "files" :>
       Capture "fileId" Text :> "touch" :> Post '[JSON] File

-- | Set the file\'s updated time to the current server time.
--
-- /See:/ 'filesTouch' smart constructor.
data FilesTouch = FilesTouch
    { _fQuotaUser   :: !(Maybe Text)
    , _fPrettyPrint :: !Bool
    , _fUserIp      :: !(Maybe Text)
    , _fKey         :: !(Maybe Text)
    , _fFileId      :: !Text
    , _fOauthToken  :: !(Maybe Text)
    , _fFields      :: !(Maybe Text)
    , _fAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilesTouch'' with the minimum fields required to make a request.
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
filesTouch
    :: Text -- ^ 'fileId'
    -> FilesTouch
filesTouch pFFileId_ =
    FilesTouch
    { _fQuotaUser = Nothing
    , _fPrettyPrint = True
    , _fUserIp = Nothing
    , _fKey = Nothing
    , _fFileId = pFFileId_
    , _fOauthToken = Nothing
    , _fFields = Nothing
    , _fAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
fQuotaUser :: Lens' FilesTouch' (Maybe Text)
fQuotaUser
  = lens _fQuotaUser (\ s a -> s{_fQuotaUser = a})

-- | Returns response with indentations and line breaks.
fPrettyPrint :: Lens' FilesTouch' Bool
fPrettyPrint
  = lens _fPrettyPrint (\ s a -> s{_fPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
fUserIp :: Lens' FilesTouch' (Maybe Text)
fUserIp = lens _fUserIp (\ s a -> s{_fUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fKey :: Lens' FilesTouch' (Maybe Text)
fKey = lens _fKey (\ s a -> s{_fKey = a})

-- | The ID of the file to update.
fFileId :: Lens' FilesTouch' Text
fFileId = lens _fFileId (\ s a -> s{_fFileId = a})

-- | OAuth 2.0 token for the current user.
fOauthToken :: Lens' FilesTouch' (Maybe Text)
fOauthToken
  = lens _fOauthToken (\ s a -> s{_fOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
fFields :: Lens' FilesTouch' (Maybe Text)
fFields = lens _fFields (\ s a -> s{_fFields = a})

-- | Data format for the response.
fAlt :: Lens' FilesTouch' Text
fAlt = lens _fAlt (\ s a -> s{_fAlt = a})

instance GoogleRequest FilesTouch' where
        type Rs FilesTouch' = File
        request = requestWithRoute defReq driveURL
        requestWithRoute r u FilesTouch{..}
          = go _fQuotaUser _fPrettyPrint _fUserIp _fKey
              _fFileId
              _fOauthToken
              _fFields
              _fAlt
          where go
                  = clientWithRoute (Proxy :: Proxy FilesTouchAPI) r u
