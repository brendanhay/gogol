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
module Network.Google.Resource.Drive.About.Get
    (
    -- * REST Resource
      AboutGetResource

    -- * Creating a Request
    , aboutGet'
    , AboutGet'

    -- * Request Lenses
    , agQuotaUser
    , agPrettyPrint
    , agUserIP
    , agIncludeSubscribed
    , agStartChangeId
    , agMaxChangeIdCount
    , agKey
    , agOAuthToken
    , agFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveAboutGet@ which the
-- 'AboutGet'' request conforms to.
type AboutGetResource =
     "about" :>
       QueryParam "includeSubscribed" Bool :>
         QueryParam "startChangeId" Int64 :>
           QueryParam "maxChangeIdCount" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] About

-- | Gets the information about the current user along with Drive API
-- settings
--
-- /See:/ 'aboutGet'' smart constructor.
data AboutGet' = AboutGet'
    { _agQuotaUser         :: !(Maybe Text)
    , _agPrettyPrint       :: !Bool
    , _agUserIP            :: !(Maybe Text)
    , _agIncludeSubscribed :: !Bool
    , _agStartChangeId     :: !(Maybe Int64)
    , _agMaxChangeIdCount  :: !Int64
    , _agKey               :: !(Maybe AuthKey)
    , _agOAuthToken        :: !(Maybe OAuthToken)
    , _agFields            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AboutGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agQuotaUser'
--
-- * 'agPrettyPrint'
--
-- * 'agUserIP'
--
-- * 'agIncludeSubscribed'
--
-- * 'agStartChangeId'
--
-- * 'agMaxChangeIdCount'
--
-- * 'agKey'
--
-- * 'agOAuthToken'
--
-- * 'agFields'
aboutGet'
    :: AboutGet'
aboutGet' =
    AboutGet'
    { _agQuotaUser = Nothing
    , _agPrettyPrint = True
    , _agUserIP = Nothing
    , _agIncludeSubscribed = True
    , _agStartChangeId = Nothing
    , _agMaxChangeIdCount = 1
    , _agKey = Nothing
    , _agOAuthToken = Nothing
    , _agFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
agQuotaUser :: Lens' AboutGet' (Maybe Text)
agQuotaUser
  = lens _agQuotaUser (\ s a -> s{_agQuotaUser = a})

-- | Returns response with indentations and line breaks.
agPrettyPrint :: Lens' AboutGet' Bool
agPrettyPrint
  = lens _agPrettyPrint
      (\ s a -> s{_agPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
agUserIP :: Lens' AboutGet' (Maybe Text)
agUserIP = lens _agUserIP (\ s a -> s{_agUserIP = a})

-- | When calculating the number of remaining change IDs, whether to include
-- public files the user has opened and shared files. When set to false,
-- this counts only change IDs for owned files and any shared or public
-- files that the user has explicitly added to a folder they own.
agIncludeSubscribed :: Lens' AboutGet' Bool
agIncludeSubscribed
  = lens _agIncludeSubscribed
      (\ s a -> s{_agIncludeSubscribed = a})

-- | Change ID to start counting from when calculating number of remaining
-- change IDs
agStartChangeId :: Lens' AboutGet' (Maybe Int64)
agStartChangeId
  = lens _agStartChangeId
      (\ s a -> s{_agStartChangeId = a})

-- | Maximum number of remaining change IDs to count
agMaxChangeIdCount :: Lens' AboutGet' Int64
agMaxChangeIdCount
  = lens _agMaxChangeIdCount
      (\ s a -> s{_agMaxChangeIdCount = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
agKey :: Lens' AboutGet' (Maybe AuthKey)
agKey = lens _agKey (\ s a -> s{_agKey = a})

-- | OAuth 2.0 token for the current user.
agOAuthToken :: Lens' AboutGet' (Maybe OAuthToken)
agOAuthToken
  = lens _agOAuthToken (\ s a -> s{_agOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
agFields :: Lens' AboutGet' (Maybe Text)
agFields = lens _agFields (\ s a -> s{_agFields = a})

instance GoogleAuth AboutGet' where
        authKey = agKey . _Just
        authToken = agOAuthToken . _Just

instance GoogleRequest AboutGet' where
        type Rs AboutGet' = About
        request = requestWithRoute defReq driveURL
        requestWithRoute r u AboutGet'{..}
          = go (Just _agIncludeSubscribed) _agStartChangeId
              (Just _agMaxChangeIdCount)
              _agQuotaUser
              (Just _agPrettyPrint)
              _agUserIP
              _agFields
              _agKey
              _agOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy AboutGetResource) r
                      u
