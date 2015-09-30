{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
    , aleQuotaUser
    , alePrettyPrint
    , aleUserIp
    , aleLocale
    , aleKey
    , aleOauthToken
    , aleFields
    , aleAlt
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseAlertsList@ which the
-- 'AlertsList'' request conforms to.
type AlertsListResource =
     "alerts" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "locale" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Get '[JSON] Alerts

-- | List the alerts for this AdSense account.
--
-- /See:/ 'alertsList'' smart constructor.
data AlertsList' = AlertsList'
    { _aleQuotaUser   :: !(Maybe Text)
    , _alePrettyPrint :: !Bool
    , _aleUserIp      :: !(Maybe Text)
    , _aleLocale      :: !(Maybe Text)
    , _aleKey         :: !(Maybe Text)
    , _aleOauthToken  :: !(Maybe Text)
    , _aleFields      :: !(Maybe Text)
    , _aleAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AlertsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aleQuotaUser'
--
-- * 'alePrettyPrint'
--
-- * 'aleUserIp'
--
-- * 'aleLocale'
--
-- * 'aleKey'
--
-- * 'aleOauthToken'
--
-- * 'aleFields'
--
-- * 'aleAlt'
alertsList'
    :: AlertsList'
alertsList' =
    AlertsList'
    { _aleQuotaUser = Nothing
    , _alePrettyPrint = True
    , _aleUserIp = Nothing
    , _aleLocale = Nothing
    , _aleKey = Nothing
    , _aleOauthToken = Nothing
    , _aleFields = Nothing
    , _aleAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aleQuotaUser :: Lens' AlertsList' (Maybe Text)
aleQuotaUser
  = lens _aleQuotaUser (\ s a -> s{_aleQuotaUser = a})

-- | Returns response with indentations and line breaks.
alePrettyPrint :: Lens' AlertsList' Bool
alePrettyPrint
  = lens _alePrettyPrint
      (\ s a -> s{_alePrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aleUserIp :: Lens' AlertsList' (Maybe Text)
aleUserIp
  = lens _aleUserIp (\ s a -> s{_aleUserIp = a})

-- | The locale to use for translating alert messages. The account locale
-- will be used if this is not supplied. The AdSense default (English) will
-- be used if the supplied locale is invalid or unsupported.
aleLocale :: Lens' AlertsList' (Maybe Text)
aleLocale
  = lens _aleLocale (\ s a -> s{_aleLocale = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aleKey :: Lens' AlertsList' (Maybe Text)
aleKey = lens _aleKey (\ s a -> s{_aleKey = a})

-- | OAuth 2.0 token for the current user.
aleOauthToken :: Lens' AlertsList' (Maybe Text)
aleOauthToken
  = lens _aleOauthToken
      (\ s a -> s{_aleOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aleFields :: Lens' AlertsList' (Maybe Text)
aleFields
  = lens _aleFields (\ s a -> s{_aleFields = a})

-- | Data format for the response.
aleAlt :: Lens' AlertsList' Alt
aleAlt = lens _aleAlt (\ s a -> s{_aleAlt = a})

instance GoogleRequest AlertsList' where
        type Rs AlertsList' = Alerts
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u AlertsList'{..}
          = go _aleQuotaUser (Just _alePrettyPrint) _aleUserIp
              _aleLocale
              _aleKey
              _aleOauthToken
              _aleFields
              (Just _aleAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy AlertsListResource)
                      r
                      u
