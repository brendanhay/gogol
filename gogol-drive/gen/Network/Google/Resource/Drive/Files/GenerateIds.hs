{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Drive.Files.GenerateIds
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Generates a set of file IDs which can be provided in insert requests.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveFilesGenerateIds@.
module Drive.Files.GenerateIds
    (
    -- * REST Resource
      FilesGenerateIdsAPI

    -- * Creating a Request
    , filesGenerateIds
    , FilesGenerateIds

    -- * Request Lenses
    , fgiSpace
    , fgiQuotaUser
    , fgiPrettyPrint
    , fgiUserIp
    , fgiKey
    , fgiOauthToken
    , fgiMaxResults
    , fgiFields
    , fgiAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveFilesGenerateIds@ which the
-- 'FilesGenerateIds' request conforms to.
type FilesGenerateIdsAPI =
     "files" :>
       "generateIds" :>
         QueryParam "space" Text :>
           QueryParam "maxResults" Int32 :>
             Get '[JSON] GeneratedIds

-- | Generates a set of file IDs which can be provided in insert requests.
--
-- /See:/ 'filesGenerateIds' smart constructor.
data FilesGenerateIds = FilesGenerateIds
    { _fgiSpace       :: !Text
    , _fgiQuotaUser   :: !(Maybe Text)
    , _fgiPrettyPrint :: !Bool
    , _fgiUserIp      :: !(Maybe Text)
    , _fgiKey         :: !(Maybe Text)
    , _fgiOauthToken  :: !(Maybe Text)
    , _fgiMaxResults  :: !Int32
    , _fgiFields      :: !(Maybe Text)
    , _fgiAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilesGenerateIds'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fgiSpace'
--
-- * 'fgiQuotaUser'
--
-- * 'fgiPrettyPrint'
--
-- * 'fgiUserIp'
--
-- * 'fgiKey'
--
-- * 'fgiOauthToken'
--
-- * 'fgiMaxResults'
--
-- * 'fgiFields'
--
-- * 'fgiAlt'
filesGenerateIds
    :: FilesGenerateIds
filesGenerateIds =
    FilesGenerateIds
    { _fgiSpace = "drive"
    , _fgiQuotaUser = Nothing
    , _fgiPrettyPrint = True
    , _fgiUserIp = Nothing
    , _fgiKey = Nothing
    , _fgiOauthToken = Nothing
    , _fgiMaxResults = 10
    , _fgiFields = Nothing
    , _fgiAlt = "json"
    }

-- | The space in which the IDs can be used to create new files. Supported
-- values are \'drive\' and \'appDataFolder\'.
fgiSpace :: Lens' FilesGenerateIds' Text
fgiSpace = lens _fgiSpace (\ s a -> s{_fgiSpace = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
fgiQuotaUser :: Lens' FilesGenerateIds' (Maybe Text)
fgiQuotaUser
  = lens _fgiQuotaUser (\ s a -> s{_fgiQuotaUser = a})

-- | Returns response with indentations and line breaks.
fgiPrettyPrint :: Lens' FilesGenerateIds' Bool
fgiPrettyPrint
  = lens _fgiPrettyPrint
      (\ s a -> s{_fgiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
fgiUserIp :: Lens' FilesGenerateIds' (Maybe Text)
fgiUserIp
  = lens _fgiUserIp (\ s a -> s{_fgiUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fgiKey :: Lens' FilesGenerateIds' (Maybe Text)
fgiKey = lens _fgiKey (\ s a -> s{_fgiKey = a})

-- | OAuth 2.0 token for the current user.
fgiOauthToken :: Lens' FilesGenerateIds' (Maybe Text)
fgiOauthToken
  = lens _fgiOauthToken
      (\ s a -> s{_fgiOauthToken = a})

-- | Maximum number of IDs to return.
fgiMaxResults :: Lens' FilesGenerateIds' Int32
fgiMaxResults
  = lens _fgiMaxResults
      (\ s a -> s{_fgiMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
fgiFields :: Lens' FilesGenerateIds' (Maybe Text)
fgiFields
  = lens _fgiFields (\ s a -> s{_fgiFields = a})

-- | Data format for the response.
fgiAlt :: Lens' FilesGenerateIds' Text
fgiAlt = lens _fgiAlt (\ s a -> s{_fgiAlt = a})

instance GoogleRequest FilesGenerateIds' where
        type Rs FilesGenerateIds' = GeneratedIds
        request = requestWithRoute defReq driveURL
        requestWithRoute r u FilesGenerateIds{..}
          = go (Just _fgiSpace) _fgiQuotaUser _fgiPrettyPrint
              _fgiUserIp
              _fgiKey
              _fgiOauthToken
              (Just _fgiMaxResults)
              _fgiFields
              _fgiAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy FilesGenerateIdsAPI)
                      r
                      u
