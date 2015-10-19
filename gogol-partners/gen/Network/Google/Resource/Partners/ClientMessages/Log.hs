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
-- Module      : Network.Google.Resource.Partners.ClientMessages.Log
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Logs a generic message from the client, such as \`Failed to render
-- component\`, \`Profile page is running slow\`, \`More than 500 users
-- have accessed this result.\`, etc.
--
-- /See:/ <https://developers.google.com/partners/ Google Partners API Reference> for @partners.clientMessages.log@.
module Network.Google.Resource.Partners.ClientMessages.Log
    (
    -- * REST Resource
      ClientMessagesLogResource

    -- * Creating a Request
    , clientMessagesLog'
    , ClientMessagesLog'

    -- * Request Lenses
    , cmlXgafv
    , cmlUploadProtocol
    , cmlPp
    , cmlAccessToken
    , cmlUploadType
    , cmlPayload
    , cmlBearerToken
    , cmlCallback
    ) where

import           Network.Google.Partners.Types
import           Network.Google.Prelude

-- | A resource alias for @partners.clientMessages.log@ method which the
-- 'ClientMessagesLog'' request conforms to.
type ClientMessagesLogResource =
     "v2" :>
       "clientMessages:log" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] LogMessageRequest :>
                           Post '[JSON] LogMessageResponse

-- | Logs a generic message from the client, such as \`Failed to render
-- component\`, \`Profile page is running slow\`, \`More than 500 users
-- have accessed this result.\`, etc.
--
-- /See:/ 'clientMessagesLog'' smart constructor.
data ClientMessagesLog' = ClientMessagesLog'
    { _cmlXgafv          :: !(Maybe Text)
    , _cmlUploadProtocol :: !(Maybe Text)
    , _cmlPp             :: !Bool
    , _cmlAccessToken    :: !(Maybe Text)
    , _cmlUploadType     :: !(Maybe Text)
    , _cmlPayload        :: !LogMessageRequest
    , _cmlBearerToken    :: !(Maybe Text)
    , _cmlCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ClientMessagesLog'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmlXgafv'
--
-- * 'cmlUploadProtocol'
--
-- * 'cmlPp'
--
-- * 'cmlAccessToken'
--
-- * 'cmlUploadType'
--
-- * 'cmlPayload'
--
-- * 'cmlBearerToken'
--
-- * 'cmlCallback'
clientMessagesLog'
    :: LogMessageRequest -- ^ 'cmlPayload'
    -> ClientMessagesLog'
clientMessagesLog' pCmlPayload_ =
    ClientMessagesLog'
    { _cmlXgafv = Nothing
    , _cmlUploadProtocol = Nothing
    , _cmlPp = True
    , _cmlAccessToken = Nothing
    , _cmlUploadType = Nothing
    , _cmlPayload = pCmlPayload_
    , _cmlBearerToken = Nothing
    , _cmlCallback = Nothing
    }

-- | V1 error format.
cmlXgafv :: Lens' ClientMessagesLog' (Maybe Text)
cmlXgafv = lens _cmlXgafv (\ s a -> s{_cmlXgafv = a})

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

-- | Multipart request metadata.
cmlPayload :: Lens' ClientMessagesLog' LogMessageRequest
cmlPayload
  = lens _cmlPayload (\ s a -> s{_cmlPayload = a})

-- | OAuth bearer token.
cmlBearerToken :: Lens' ClientMessagesLog' (Maybe Text)
cmlBearerToken
  = lens _cmlBearerToken
      (\ s a -> s{_cmlBearerToken = a})

-- | JSONP
cmlCallback :: Lens' ClientMessagesLog' (Maybe Text)
cmlCallback
  = lens _cmlCallback (\ s a -> s{_cmlCallback = a})

instance GoogleRequest ClientMessagesLog' where
        type Rs ClientMessagesLog' = LogMessageResponse
        requestClient ClientMessagesLog'{..}
          = go _cmlXgafv _cmlUploadProtocol (Just _cmlPp)
              _cmlAccessToken
              _cmlUploadType
              _cmlBearerToken
              _cmlCallback
              (Just AltJSON)
              _cmlPayload
              partnersService
          where go
                  = buildClient
                      (Proxy :: Proxy ClientMessagesLogResource)
                      mempty
