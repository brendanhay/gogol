{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Partners.ClientMessages.Log
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Logs a generic message from the client, such as \`Failed to render
-- component\`, \`Profile page is running slow\`, \`More than 500 users
-- have accessed this result.\`, etc.
--
-- /See:/ <https://developers.google.com/partners/ Google Partners API Reference> for @PartnersClientMessagesLog@.
module Partners.ClientMessages.Log
    (
    -- * REST Resource
      ClientMessagesLogAPI

    -- * Creating a Request
    , clientMessagesLog
    , ClientMessagesLog

    -- * Request Lenses
    , cmlXgafv
    , cmlQuotaUser
    , cmlPrettyPrint
    , cmlUploadProtocol
    , cmlPp
    , cmlAccessToken
    , cmlUploadType
    , cmlBearerToken
    , cmlKey
    , cmlOauthToken
    , cmlFields
    , cmlCallback
    , cmlAlt
    ) where

import           Network.Google.Partners.Types
import           Network.Google.Prelude

-- | A resource alias for @PartnersClientMessagesLog@ which the
-- 'ClientMessagesLog' request conforms to.
type ClientMessagesLogAPI =
     "v2" :>
       "clientMessages:log" :>
         Post '[JSON] LogMessageResponse

-- | Logs a generic message from the client, such as \`Failed to render
-- component\`, \`Profile page is running slow\`, \`More than 500 users
-- have accessed this result.\`, etc.
--
-- /See:/ 'clientMessagesLog' smart constructor.
data ClientMessagesLog = ClientMessagesLog
    { _cmlXgafv          :: !(Maybe Text)
    , _cmlQuotaUser      :: !(Maybe Text)
    , _cmlPrettyPrint    :: !Bool
    , _cmlUploadProtocol :: !(Maybe Text)
    , _cmlPp             :: !Bool
    , _cmlAccessToken    :: !(Maybe Text)
    , _cmlUploadType     :: !(Maybe Text)
    , _cmlBearerToken    :: !(Maybe Text)
    , _cmlKey            :: !(Maybe Text)
    , _cmlOauthToken     :: !(Maybe Text)
    , _cmlFields         :: !(Maybe Text)
    , _cmlCallback       :: !(Maybe Text)
    , _cmlAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ClientMessagesLog'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmlXgafv'
--
-- * 'cmlQuotaUser'
--
-- * 'cmlPrettyPrint'
--
-- * 'cmlUploadProtocol'
--
-- * 'cmlPp'
--
-- * 'cmlAccessToken'
--
-- * 'cmlUploadType'
--
-- * 'cmlBearerToken'
--
-- * 'cmlKey'
--
-- * 'cmlOauthToken'
--
-- * 'cmlFields'
--
-- * 'cmlCallback'
--
-- * 'cmlAlt'
clientMessagesLog
    :: ClientMessagesLog
clientMessagesLog =
    ClientMessagesLog
    { _cmlXgafv = Nothing
    , _cmlQuotaUser = Nothing
    , _cmlPrettyPrint = True
    , _cmlUploadProtocol = Nothing
    , _cmlPp = True
    , _cmlAccessToken = Nothing
    , _cmlUploadType = Nothing
    , _cmlBearerToken = Nothing
    , _cmlKey = Nothing
    , _cmlOauthToken = Nothing
    , _cmlFields = Nothing
    , _cmlCallback = Nothing
    , _cmlAlt = "json"
    }

-- | V1 error format.
cmlXgafv :: Lens' ClientMessagesLog' (Maybe Text)
cmlXgafv = lens _cmlXgafv (\ s a -> s{_cmlXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
cmlQuotaUser :: Lens' ClientMessagesLog' (Maybe Text)
cmlQuotaUser
  = lens _cmlQuotaUser (\ s a -> s{_cmlQuotaUser = a})

-- | Returns response with indentations and line breaks.
cmlPrettyPrint :: Lens' ClientMessagesLog' Bool
cmlPrettyPrint
  = lens _cmlPrettyPrint
      (\ s a -> s{_cmlPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cmlUploadProtocol :: Lens' ClientMessagesLog' (Maybe Text)
cmlUploadProtocol
  = lens _cmlUploadProtocol
      (\ s a -> s{_cmlUploadProtocol = a})

-- | Pretty-print response.
cmlPp :: Lens' ClientMessagesLog' Bool
cmlPp = lens _cmlPp (\ s a -> s{_cmlPp = a})

-- | OAuth access token.
cmlAccessToken :: Lens' ClientMessagesLog' (Maybe Text)
cmlAccessToken
  = lens _cmlAccessToken
      (\ s a -> s{_cmlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cmlUploadType :: Lens' ClientMessagesLog' (Maybe Text)
cmlUploadType
  = lens _cmlUploadType
      (\ s a -> s{_cmlUploadType = a})

-- | OAuth bearer token.
cmlBearerToken :: Lens' ClientMessagesLog' (Maybe Text)
cmlBearerToken
  = lens _cmlBearerToken
      (\ s a -> s{_cmlBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cmlKey :: Lens' ClientMessagesLog' (Maybe Text)
cmlKey = lens _cmlKey (\ s a -> s{_cmlKey = a})

-- | OAuth 2.0 token for the current user.
cmlOauthToken :: Lens' ClientMessagesLog' (Maybe Text)
cmlOauthToken
  = lens _cmlOauthToken
      (\ s a -> s{_cmlOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cmlFields :: Lens' ClientMessagesLog' (Maybe Text)
cmlFields
  = lens _cmlFields (\ s a -> s{_cmlFields = a})

-- | JSONP
cmlCallback :: Lens' ClientMessagesLog' (Maybe Text)
cmlCallback
  = lens _cmlCallback (\ s a -> s{_cmlCallback = a})

-- | Data format for response.
cmlAlt :: Lens' ClientMessagesLog' Text
cmlAlt = lens _cmlAlt (\ s a -> s{_cmlAlt = a})

instance GoogleRequest ClientMessagesLog' where
        type Rs ClientMessagesLog' = LogMessageResponse
        request = requestWithRoute defReq partnersURL
        requestWithRoute r u ClientMessagesLog{..}
          = go _cmlXgafv _cmlQuotaUser _cmlPrettyPrint
              _cmlUploadProtocol
              _cmlPp
              _cmlAccessToken
              _cmlUploadType
              _cmlBearerToken
              _cmlKey
              _cmlOauthToken
              _cmlFields
              _cmlCallback
              _cmlAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ClientMessagesLogAPI)
                      r
                      u
