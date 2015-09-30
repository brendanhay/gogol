{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Drive.About.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the information about the current user along with Drive API
-- settings
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveAboutGet@.
module Drive.About.Get
    (
    -- * REST Resource
      AboutGetAPI

    -- * Creating a Request
    , aboutGet
    , AboutGet

    -- * Request Lenses
    , aQuotaUser
    , aPrettyPrint
    , aUserIp
    , aIncludeSubscribed
    , aStartChangeId
    , aMaxChangeIdCount
    , aKey
    , aOauthToken
    , aFields
    , aAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveAboutGet@ which the
-- 'AboutGet' request conforms to.
type AboutGetAPI =
     "about" :>
       QueryParam "includeSubscribed" Bool :>
         QueryParam "startChangeId" Int64 :>
           QueryParam "maxChangeIdCount" Int64 :>
             Get '[JSON] About

-- | Gets the information about the current user along with Drive API
-- settings
--
-- /See:/ 'aboutGet' smart constructor.
data AboutGet = AboutGet
    { _aQuotaUser         :: !(Maybe Text)
    , _aPrettyPrint       :: !Bool
    , _aUserIp            :: !(Maybe Text)
    , _aIncludeSubscribed :: !Bool
    , _aStartChangeId     :: !(Maybe Int64)
    , _aMaxChangeIdCount  :: !Int64
    , _aKey               :: !(Maybe Text)
    , _aOauthToken        :: !(Maybe Text)
    , _aFields            :: !(Maybe Text)
    , _aAlt               :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AboutGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aQuotaUser'
--
-- * 'aPrettyPrint'
--
-- * 'aUserIp'
--
-- * 'aIncludeSubscribed'
--
-- * 'aStartChangeId'
--
-- * 'aMaxChangeIdCount'
--
-- * 'aKey'
--
-- * 'aOauthToken'
--
-- * 'aFields'
--
-- * 'aAlt'
aboutGet
    :: AboutGet
aboutGet =
    AboutGet
    { _aQuotaUser = Nothing
    , _aPrettyPrint = True
    , _aUserIp = Nothing
    , _aIncludeSubscribed = True
    , _aStartChangeId = Nothing
    , _aMaxChangeIdCount = 1
    , _aKey = Nothing
    , _aOauthToken = Nothing
    , _aFields = Nothing
    , _aAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aQuotaUser :: Lens' AboutGet' (Maybe Text)
aQuotaUser
  = lens _aQuotaUser (\ s a -> s{_aQuotaUser = a})

-- | Returns response with indentations and line breaks.
aPrettyPrint :: Lens' AboutGet' Bool
aPrettyPrint
  = lens _aPrettyPrint (\ s a -> s{_aPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aUserIp :: Lens' AboutGet' (Maybe Text)
aUserIp = lens _aUserIp (\ s a -> s{_aUserIp = a})

-- | When calculating the number of remaining change IDs, whether to include
-- public files the user has opened and shared files. When set to false,
-- this counts only change IDs for owned files and any shared or public
-- files that the user has explicitly added to a folder they own.
aIncludeSubscribed :: Lens' AboutGet' Bool
aIncludeSubscribed
  = lens _aIncludeSubscribed
      (\ s a -> s{_aIncludeSubscribed = a})

-- | Change ID to start counting from when calculating number of remaining
-- change IDs
aStartChangeId :: Lens' AboutGet' (Maybe Int64)
aStartChangeId
  = lens _aStartChangeId
      (\ s a -> s{_aStartChangeId = a})

-- | Maximum number of remaining change IDs to count
aMaxChangeIdCount :: Lens' AboutGet' Int64
aMaxChangeIdCount
  = lens _aMaxChangeIdCount
      (\ s a -> s{_aMaxChangeIdCount = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aKey :: Lens' AboutGet' (Maybe Text)
aKey = lens _aKey (\ s a -> s{_aKey = a})

-- | OAuth 2.0 token for the current user.
aOauthToken :: Lens' AboutGet' (Maybe Text)
aOauthToken
  = lens _aOauthToken (\ s a -> s{_aOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aFields :: Lens' AboutGet' (Maybe Text)
aFields = lens _aFields (\ s a -> s{_aFields = a})

-- | Data format for the response.
aAlt :: Lens' AboutGet' Text
aAlt = lens _aAlt (\ s a -> s{_aAlt = a})

instance GoogleRequest AboutGet' where
        type Rs AboutGet' = About
        request = requestWithRoute defReq driveURL
        requestWithRoute r u AboutGet{..}
          = go _aQuotaUser _aPrettyPrint _aUserIp
              (Just _aIncludeSubscribed)
              _aStartChangeId
              (Just _aMaxChangeIdCount)
              _aKey
              _aOauthToken
              _aFields
              _aAlt
          where go
                  = clientWithRoute (Proxy :: Proxy AboutGetAPI) r u
