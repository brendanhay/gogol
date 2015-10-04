{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.OperatingSystems.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one operating system by DART ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingOperatingSystemsGet@.
module Network.Google.Resource.DFAReporting.OperatingSystems.Get
    (
    -- * REST Resource
      OperatingSystemsGetResource

    -- * Creating a Request
    , operatingSystemsGet'
    , OperatingSystemsGet'

    -- * Request Lenses
    , osgQuotaUser
    , osgPrettyPrint
    , osgUserIP
    , osgProFileId
    , osgKey
    , osgOAuthToken
    , osgDartId
    , osgFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingOperatingSystemsGet@ which the
-- 'OperatingSystemsGet'' request conforms to.
type OperatingSystemsGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "operatingSystems" :>
           Capture "dartId" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] OperatingSystem

-- | Gets one operating system by DART ID.
--
-- /See:/ 'operatingSystemsGet'' smart constructor.
data OperatingSystemsGet' = OperatingSystemsGet'
    { _osgQuotaUser   :: !(Maybe Text)
    , _osgPrettyPrint :: !Bool
    , _osgUserIP      :: !(Maybe Text)
    , _osgProFileId   :: !Int64
    , _osgKey         :: !(Maybe Key)
    , _osgOAuthToken  :: !(Maybe OAuthToken)
    , _osgDartId      :: !Int64
    , _osgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperatingSystemsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osgQuotaUser'
--
-- * 'osgPrettyPrint'
--
-- * 'osgUserIP'
--
-- * 'osgProFileId'
--
-- * 'osgKey'
--
-- * 'osgOAuthToken'
--
-- * 'osgDartId'
--
-- * 'osgFields'
operatingSystemsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'dartId'
    -> OperatingSystemsGet'
operatingSystemsGet' pOsgProFileId_ pOsgDartId_ =
    OperatingSystemsGet'
    { _osgQuotaUser = Nothing
    , _osgPrettyPrint = True
    , _osgUserIP = Nothing
    , _osgProFileId = pOsgProFileId_
    , _osgKey = Nothing
    , _osgOAuthToken = Nothing
    , _osgDartId = pOsgDartId_
    , _osgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
osgQuotaUser :: Lens' OperatingSystemsGet' (Maybe Text)
osgQuotaUser
  = lens _osgQuotaUser (\ s a -> s{_osgQuotaUser = a})

-- | Returns response with indentations and line breaks.
osgPrettyPrint :: Lens' OperatingSystemsGet' Bool
osgPrettyPrint
  = lens _osgPrettyPrint
      (\ s a -> s{_osgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
osgUserIP :: Lens' OperatingSystemsGet' (Maybe Text)
osgUserIP
  = lens _osgUserIP (\ s a -> s{_osgUserIP = a})

-- | User profile ID associated with this request.
osgProFileId :: Lens' OperatingSystemsGet' Int64
osgProFileId
  = lens _osgProFileId (\ s a -> s{_osgProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
osgKey :: Lens' OperatingSystemsGet' (Maybe Key)
osgKey = lens _osgKey (\ s a -> s{_osgKey = a})

-- | OAuth 2.0 token for the current user.
osgOAuthToken :: Lens' OperatingSystemsGet' (Maybe OAuthToken)
osgOAuthToken
  = lens _osgOAuthToken
      (\ s a -> s{_osgOAuthToken = a})

-- | Operating system DART ID.
osgDartId :: Lens' OperatingSystemsGet' Int64
osgDartId
  = lens _osgDartId (\ s a -> s{_osgDartId = a})

-- | Selector specifying which fields to include in a partial response.
osgFields :: Lens' OperatingSystemsGet' (Maybe Text)
osgFields
  = lens _osgFields (\ s a -> s{_osgFields = a})

instance GoogleAuth OperatingSystemsGet' where
        authKey = osgKey . _Just
        authToken = osgOAuthToken . _Just

instance GoogleRequest OperatingSystemsGet' where
        type Rs OperatingSystemsGet' = OperatingSystem
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u OperatingSystemsGet'{..}
          = go _osgProFileId _osgDartId _osgQuotaUser
              (Just _osgPrettyPrint)
              _osgUserIP
              _osgFields
              _osgKey
              _osgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OperatingSystemsGetResource)
                      r
                      u
