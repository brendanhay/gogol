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
-- Module      : Network.Google.Resource.Analytics.Management.Segments.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists segments to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementSegmentsList@.
module Network.Google.Resource.Analytics.Management.Segments.List
    (
    -- * REST Resource
      ManagementSegmentsListResource

    -- * Creating a Request
    , managementSegmentsList'
    , ManagementSegmentsList'

    -- * Request Lenses
    , mslQuotaUser
    , mslPrettyPrint
    , mslUserIP
    , mslKey
    , mslOAuthToken
    , mslStartIndex
    , mslMaxResults
    , mslFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementSegmentsList@ which the
-- 'ManagementSegmentsList'' request conforms to.
type ManagementSegmentsListResource =
     "management" :>
       "segments" :>
         QueryParam "start-index" Int32 :>
           QueryParam "max-results" Int32 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Segments

-- | Lists segments to which the user has access.
--
-- /See:/ 'managementSegmentsList'' smart constructor.
data ManagementSegmentsList' = ManagementSegmentsList'
    { _mslQuotaUser   :: !(Maybe Text)
    , _mslPrettyPrint :: !Bool
    , _mslUserIP      :: !(Maybe Text)
    , _mslKey         :: !(Maybe Key)
    , _mslOAuthToken  :: !(Maybe OAuthToken)
    , _mslStartIndex  :: !(Maybe Int32)
    , _mslMaxResults  :: !(Maybe Int32)
    , _mslFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementSegmentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mslQuotaUser'
--
-- * 'mslPrettyPrint'
--
-- * 'mslUserIP'
--
-- * 'mslKey'
--
-- * 'mslOAuthToken'
--
-- * 'mslStartIndex'
--
-- * 'mslMaxResults'
--
-- * 'mslFields'
managementSegmentsList'
    :: ManagementSegmentsList'
managementSegmentsList' =
    ManagementSegmentsList'
    { _mslQuotaUser = Nothing
    , _mslPrettyPrint = False
    , _mslUserIP = Nothing
    , _mslKey = Nothing
    , _mslOAuthToken = Nothing
    , _mslStartIndex = Nothing
    , _mslMaxResults = Nothing
    , _mslFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mslQuotaUser :: Lens' ManagementSegmentsList' (Maybe Text)
mslQuotaUser
  = lens _mslQuotaUser (\ s a -> s{_mslQuotaUser = a})

-- | Returns response with indentations and line breaks.
mslPrettyPrint :: Lens' ManagementSegmentsList' Bool
mslPrettyPrint
  = lens _mslPrettyPrint
      (\ s a -> s{_mslPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mslUserIP :: Lens' ManagementSegmentsList' (Maybe Text)
mslUserIP
  = lens _mslUserIP (\ s a -> s{_mslUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mslKey :: Lens' ManagementSegmentsList' (Maybe Key)
mslKey = lens _mslKey (\ s a -> s{_mslKey = a})

-- | OAuth 2.0 token for the current user.
mslOAuthToken :: Lens' ManagementSegmentsList' (Maybe OAuthToken)
mslOAuthToken
  = lens _mslOAuthToken
      (\ s a -> s{_mslOAuthToken = a})

-- | An index of the first segment to retrieve. Use this parameter as a
-- pagination mechanism along with the max-results parameter.
mslStartIndex :: Lens' ManagementSegmentsList' (Maybe Int32)
mslStartIndex
  = lens _mslStartIndex
      (\ s a -> s{_mslStartIndex = a})

-- | The maximum number of segments to include in this response.
mslMaxResults :: Lens' ManagementSegmentsList' (Maybe Int32)
mslMaxResults
  = lens _mslMaxResults
      (\ s a -> s{_mslMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
mslFields :: Lens' ManagementSegmentsList' (Maybe Text)
mslFields
  = lens _mslFields (\ s a -> s{_mslFields = a})

instance GoogleAuth ManagementSegmentsList' where
        authKey = mslKey . _Just
        authToken = mslOAuthToken . _Just

instance GoogleRequest ManagementSegmentsList' where
        type Rs ManagementSegmentsList' = Segments
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementSegmentsList'{..}
          = go _mslStartIndex _mslMaxResults _mslQuotaUser
              (Just _mslPrettyPrint)
              _mslUserIP
              _mslFields
              _mslKey
              _mslOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementSegmentsListResource)
                      r
                      u
