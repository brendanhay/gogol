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
-- Module      : Network.Google.Resource.AdSense.AdUnits.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all ad units in the specified ad client for this AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseAdUnitsList@.
module Network.Google.Resource.AdSense.AdUnits.List
    (
    -- * REST Resource
      AdUnitsListResource

    -- * Creating a Request
    , adUnitsList'
    , AdUnitsList'

    -- * Request Lenses
    , aulQuotaUser
    , aulPrettyPrint
    , aulIncludeInactive
    , aulUserIP
    , aulAdClientId
    , aulKey
    , aulPageToken
    , aulOAuthToken
    , aulMaxResults
    , aulFields
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseAdUnitsList@ method which the
-- 'AdUnitsList'' request conforms to.
type AdUnitsListResource =
     "adclients" :>
       Capture "adClientId" Text :>
         "adunits" :>
           QueryParam "includeInactive" Bool :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Int32 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :> Get '[JSON] AdUnits

-- | List all ad units in the specified ad client for this AdSense account.
--
-- /See:/ 'adUnitsList'' smart constructor.
data AdUnitsList' = AdUnitsList'
    { _aulQuotaUser       :: !(Maybe Text)
    , _aulPrettyPrint     :: !Bool
    , _aulIncludeInactive :: !(Maybe Bool)
    , _aulUserIP          :: !(Maybe Text)
    , _aulAdClientId      :: !Text
    , _aulKey             :: !(Maybe AuthKey)
    , _aulPageToken       :: !(Maybe Text)
    , _aulOAuthToken      :: !(Maybe OAuthToken)
    , _aulMaxResults      :: !(Maybe Int32)
    , _aulFields          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdUnitsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aulQuotaUser'
--
-- * 'aulPrettyPrint'
--
-- * 'aulIncludeInactive'
--
-- * 'aulUserIP'
--
-- * 'aulAdClientId'
--
-- * 'aulKey'
--
-- * 'aulPageToken'
--
-- * 'aulOAuthToken'
--
-- * 'aulMaxResults'
--
-- * 'aulFields'
adUnitsList'
    :: Text -- ^ 'adClientId'
    -> AdUnitsList'
adUnitsList' pAulAdClientId_ =
    AdUnitsList'
    { _aulQuotaUser = Nothing
    , _aulPrettyPrint = True
    , _aulIncludeInactive = Nothing
    , _aulUserIP = Nothing
    , _aulAdClientId = pAulAdClientId_
    , _aulKey = Nothing
    , _aulPageToken = Nothing
    , _aulOAuthToken = Nothing
    , _aulMaxResults = Nothing
    , _aulFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aulQuotaUser :: Lens' AdUnitsList' (Maybe Text)
aulQuotaUser
  = lens _aulQuotaUser (\ s a -> s{_aulQuotaUser = a})

-- | Returns response with indentations and line breaks.
aulPrettyPrint :: Lens' AdUnitsList' Bool
aulPrettyPrint
  = lens _aulPrettyPrint
      (\ s a -> s{_aulPrettyPrint = a})

-- | Whether to include inactive ad units. Default: true.
aulIncludeInactive :: Lens' AdUnitsList' (Maybe Bool)
aulIncludeInactive
  = lens _aulIncludeInactive
      (\ s a -> s{_aulIncludeInactive = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aulUserIP :: Lens' AdUnitsList' (Maybe Text)
aulUserIP
  = lens _aulUserIP (\ s a -> s{_aulUserIP = a})

-- | Ad client for which to list ad units.
aulAdClientId :: Lens' AdUnitsList' Text
aulAdClientId
  = lens _aulAdClientId
      (\ s a -> s{_aulAdClientId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aulKey :: Lens' AdUnitsList' (Maybe AuthKey)
aulKey = lens _aulKey (\ s a -> s{_aulKey = a})

-- | A continuation token, used to page through ad units. To retrieve the
-- next page, set this parameter to the value of \"nextPageToken\" from the
-- previous response.
aulPageToken :: Lens' AdUnitsList' (Maybe Text)
aulPageToken
  = lens _aulPageToken (\ s a -> s{_aulPageToken = a})

-- | OAuth 2.0 token for the current user.
aulOAuthToken :: Lens' AdUnitsList' (Maybe OAuthToken)
aulOAuthToken
  = lens _aulOAuthToken
      (\ s a -> s{_aulOAuthToken = a})

-- | The maximum number of ad units to include in the response, used for
-- paging.
aulMaxResults :: Lens' AdUnitsList' (Maybe Int32)
aulMaxResults
  = lens _aulMaxResults
      (\ s a -> s{_aulMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
aulFields :: Lens' AdUnitsList' (Maybe Text)
aulFields
  = lens _aulFields (\ s a -> s{_aulFields = a})

instance GoogleAuth AdUnitsList' where
        _AuthKey = aulKey . _Just
        _AuthToken = aulOAuthToken . _Just

instance GoogleRequest AdUnitsList' where
        type Rs AdUnitsList' = AdUnits
        request = requestWith adSenseRequest
        requestWith rq AdUnitsList'{..}
          = go _aulAdClientId _aulIncludeInactive _aulPageToken
              _aulMaxResults
              _aulQuotaUser
              (Just _aulPrettyPrint)
              _aulUserIP
              _aulFields
              _aulKey
              _aulOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy AdUnitsListResource) rq
