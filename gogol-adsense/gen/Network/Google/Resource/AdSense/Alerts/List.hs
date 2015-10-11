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
-- Module      : Network.Google.Resource.AdSense.Alerts.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List the alerts for this AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseAlertsList@.
module Network.Google.Resource.AdSense.Alerts.List
    (
    -- * REST Resource
      AlertsListResource

    -- * Creating a Request
    , alertsList'
    , AlertsList'

    -- * Request Lenses
    , aQuotaUser
    , aPrettyPrint
    , aUserIP
    , aLocale
    , aKey
    , aOAuthToken
    , aFields
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseAlertsList@ method which the
-- 'AlertsList'' request conforms to.
type AlertsListResource =
     "alerts" :>
       QueryParam "locale" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   Header "Authorization" OAuthToken :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Alerts

-- | List the alerts for this AdSense account.
--
-- /See:/ 'alertsList'' smart constructor.
data AlertsList' = AlertsList'
    { _aQuotaUser   :: !(Maybe Text)
    , _aPrettyPrint :: !Bool
    , _aUserIP      :: !(Maybe Text)
    , _aLocale      :: !(Maybe Text)
    , _aKey         :: !(Maybe AuthKey)
    , _aOAuthToken  :: !(Maybe OAuthToken)
    , _aFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AlertsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aQuotaUser'
--
-- * 'aPrettyPrint'
--
-- * 'aUserIP'
--
-- * 'aLocale'
--
-- * 'aKey'
--
-- * 'aOAuthToken'
--
-- * 'aFields'
alertsList'
    :: AlertsList'
alertsList' =
    AlertsList'
    { _aQuotaUser = Nothing
    , _aPrettyPrint = True
    , _aUserIP = Nothing
    , _aLocale = Nothing
    , _aKey = Nothing
    , _aOAuthToken = Nothing
    , _aFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aQuotaUser :: Lens' AlertsList' (Maybe Text)
aQuotaUser
  = lens _aQuotaUser (\ s a -> s{_aQuotaUser = a})

-- | Returns response with indentations and line breaks.
aPrettyPrint :: Lens' AlertsList' Bool
aPrettyPrint
  = lens _aPrettyPrint (\ s a -> s{_aPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aUserIP :: Lens' AlertsList' (Maybe Text)
aUserIP = lens _aUserIP (\ s a -> s{_aUserIP = a})

-- | The locale to use for translating alert messages. The account locale
-- will be used if this is not supplied. The AdSense default (English) will
-- be used if the supplied locale is invalid or unsupported.
aLocale :: Lens' AlertsList' (Maybe Text)
aLocale = lens _aLocale (\ s a -> s{_aLocale = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aKey :: Lens' AlertsList' (Maybe AuthKey)
aKey = lens _aKey (\ s a -> s{_aKey = a})

-- | OAuth 2.0 token for the current user.
aOAuthToken :: Lens' AlertsList' (Maybe OAuthToken)
aOAuthToken
  = lens _aOAuthToken (\ s a -> s{_aOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
aFields :: Lens' AlertsList' (Maybe Text)
aFields = lens _aFields (\ s a -> s{_aFields = a})

instance GoogleAuth AlertsList' where
        _AuthKey = aKey . _Just
        _AuthToken = aOAuthToken . _Just

instance GoogleRequest AlertsList' where
        type Rs AlertsList' = Alerts
        request = requestWith adSenseRequest
        requestWith rq AlertsList'{..}
          = go _aLocale _aQuotaUser (Just _aPrettyPrint)
              _aUserIP
              _aFields
              _aKey
              _aOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy AlertsListResource) rq
