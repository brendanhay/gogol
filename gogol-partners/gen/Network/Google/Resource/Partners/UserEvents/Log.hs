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
-- Module      : Network.Google.Resource.Partners.UserEvents.Log
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Logs a user event.
--
-- /See:/ <https://developers.google.com/partners/ Google Partners API Reference> for @PartnersUserEventsLog@.
module Network.Google.Resource.Partners.UserEvents.Log
    (
    -- * REST Resource
      UserEventsLogResource

    -- * Creating a Request
    , userEventsLog'
    , UserEventsLog'

    -- * Request Lenses
    , uelXgafv
    , uelQuotaUser
    , uelPrettyPrint
    , uelUploadProtocol
    , uelPp
    , uelAccessToken
    , uelUploadType
    , uelPayload
    , uelBearerToken
    , uelKey
    , uelOAuthToken
    , uelFields
    , uelCallback
    ) where

import           Network.Google.Partners.Types
import           Network.Google.Prelude

-- | A resource alias for @PartnersUserEventsLog@ method which the
-- 'UserEventsLog'' request conforms to.
type UserEventsLogResource =
     "v2" :>
       "userEvents:log" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "fields" Text :>
                             QueryParam "key" AuthKey :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] LogUserEventRequest :>
                                     Post '[JSON] LogUserEventResponse

-- | Logs a user event.
--
-- /See:/ 'userEventsLog'' smart constructor.
data UserEventsLog' = UserEventsLog'
    { _uelXgafv          :: !(Maybe Text)
    , _uelQuotaUser      :: !(Maybe Text)
    , _uelPrettyPrint    :: !Bool
    , _uelUploadProtocol :: !(Maybe Text)
    , _uelPp             :: !Bool
    , _uelAccessToken    :: !(Maybe Text)
    , _uelUploadType     :: !(Maybe Text)
    , _uelPayload        :: !LogUserEventRequest
    , _uelBearerToken    :: !(Maybe Text)
    , _uelKey            :: !(Maybe AuthKey)
    , _uelOAuthToken     :: !(Maybe OAuthToken)
    , _uelFields         :: !(Maybe Text)
    , _uelCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserEventsLog'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uelXgafv'
--
-- * 'uelQuotaUser'
--
-- * 'uelPrettyPrint'
--
-- * 'uelUploadProtocol'
--
-- * 'uelPp'
--
-- * 'uelAccessToken'
--
-- * 'uelUploadType'
--
-- * 'uelPayload'
--
-- * 'uelBearerToken'
--
-- * 'uelKey'
--
-- * 'uelOAuthToken'
--
-- * 'uelFields'
--
-- * 'uelCallback'
userEventsLog'
    :: LogUserEventRequest -- ^ 'payload'
    -> UserEventsLog'
userEventsLog' pUelPayload_ =
    UserEventsLog'
    { _uelXgafv = Nothing
    , _uelQuotaUser = Nothing
    , _uelPrettyPrint = True
    , _uelUploadProtocol = Nothing
    , _uelPp = True
    , _uelAccessToken = Nothing
    , _uelUploadType = Nothing
    , _uelPayload = pUelPayload_
    , _uelBearerToken = Nothing
    , _uelKey = Nothing
    , _uelOAuthToken = Nothing
    , _uelFields = Nothing
    , _uelCallback = Nothing
    }

-- | V1 error format.
uelXgafv :: Lens' UserEventsLog' (Maybe Text)
uelXgafv = lens _uelXgafv (\ s a -> s{_uelXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
uelQuotaUser :: Lens' UserEventsLog' (Maybe Text)
uelQuotaUser
  = lens _uelQuotaUser (\ s a -> s{_uelQuotaUser = a})

-- | Returns response with indentations and line breaks.
uelPrettyPrint :: Lens' UserEventsLog' Bool
uelPrettyPrint
  = lens _uelPrettyPrint
      (\ s a -> s{_uelPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
uelUploadProtocol :: Lens' UserEventsLog' (Maybe Text)
uelUploadProtocol
  = lens _uelUploadProtocol
      (\ s a -> s{_uelUploadProtocol = a})

-- | Pretty-print response.
uelPp :: Lens' UserEventsLog' Bool
uelPp = lens _uelPp (\ s a -> s{_uelPp = a})

-- | OAuth access token.
uelAccessToken :: Lens' UserEventsLog' (Maybe Text)
uelAccessToken
  = lens _uelAccessToken
      (\ s a -> s{_uelAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
uelUploadType :: Lens' UserEventsLog' (Maybe Text)
uelUploadType
  = lens _uelUploadType
      (\ s a -> s{_uelUploadType = a})

-- | Multipart request metadata.
uelPayload :: Lens' UserEventsLog' LogUserEventRequest
uelPayload
  = lens _uelPayload (\ s a -> s{_uelPayload = a})

-- | OAuth bearer token.
uelBearerToken :: Lens' UserEventsLog' (Maybe Text)
uelBearerToken
  = lens _uelBearerToken
      (\ s a -> s{_uelBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uelKey :: Lens' UserEventsLog' (Maybe AuthKey)
uelKey = lens _uelKey (\ s a -> s{_uelKey = a})

-- | OAuth 2.0 token for the current user.
uelOAuthToken :: Lens' UserEventsLog' (Maybe OAuthToken)
uelOAuthToken
  = lens _uelOAuthToken
      (\ s a -> s{_uelOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
uelFields :: Lens' UserEventsLog' (Maybe Text)
uelFields
  = lens _uelFields (\ s a -> s{_uelFields = a})

-- | JSONP
uelCallback :: Lens' UserEventsLog' (Maybe Text)
uelCallback
  = lens _uelCallback (\ s a -> s{_uelCallback = a})

instance GoogleAuth UserEventsLog' where
        _AuthKey = uelKey . _Just
        _AuthToken = uelOAuthToken . _Just

instance GoogleRequest UserEventsLog' where
        type Rs UserEventsLog' = LogUserEventResponse
        request = requestWith partnersRequest
        requestWith rq UserEventsLog'{..}
          = go _uelXgafv _uelUploadProtocol (Just _uelPp)
              _uelAccessToken
              _uelUploadType
              _uelBearerToken
              _uelCallback
              _uelQuotaUser
              (Just _uelPrettyPrint)
              _uelFields
              _uelKey
              _uelOAuthToken
              (Just AltJSON)
              _uelPayload
          where go
                  = clientBuild (Proxy :: Proxy UserEventsLogResource)
                      rq
