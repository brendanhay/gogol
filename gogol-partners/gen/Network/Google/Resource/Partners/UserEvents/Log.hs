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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Logs a user event.
--
-- /See:/ <https://developers.google.com/partners/ Google Partners API Reference> for @partners.userEvents.log@.
module Network.Google.Resource.Partners.UserEvents.Log
    (
    -- * REST Resource
      UserEventsLogResource

    -- * Creating a Request
    , userEventsLog
    , UserEventsLog

    -- * Request Lenses
    , uelXgafv
    , uelUploadProtocol
    , uelAccessToken
    , uelUploadType
    , uelPayload
    , uelCallback
    ) where

import           Network.Google.Partners.Types
import           Network.Google.Prelude

-- | A resource alias for @partners.userEvents.log@ method which the
-- 'UserEventsLog' request conforms to.
type UserEventsLogResource =
     "v2" :>
       "userEvents:log" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] LogUserEventRequest :>
                       Post '[JSON] LogUserEventResponse

-- | Logs a user event.
--
-- /See:/ 'userEventsLog' smart constructor.
data UserEventsLog = UserEventsLog'
    { _uelXgafv          :: !(Maybe Xgafv)
    , _uelUploadProtocol :: !(Maybe Text)
    , _uelAccessToken    :: !(Maybe Text)
    , _uelUploadType     :: !(Maybe Text)
    , _uelPayload        :: !LogUserEventRequest
    , _uelCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserEventsLog' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uelXgafv'
--
-- * 'uelUploadProtocol'
--
-- * 'uelAccessToken'
--
-- * 'uelUploadType'
--
-- * 'uelPayload'
--
-- * 'uelCallback'
userEventsLog
    :: LogUserEventRequest -- ^ 'uelPayload'
    -> UserEventsLog
userEventsLog pUelPayload_ =
    UserEventsLog'
    { _uelXgafv = Nothing
    , _uelUploadProtocol = Nothing
    , _uelAccessToken = Nothing
    , _uelUploadType = Nothing
    , _uelPayload = pUelPayload_
    , _uelCallback = Nothing
    }

-- | V1 error format.
uelXgafv :: Lens' UserEventsLog (Maybe Xgafv)
uelXgafv = lens _uelXgafv (\ s a -> s{_uelXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
uelUploadProtocol :: Lens' UserEventsLog (Maybe Text)
uelUploadProtocol
  = lens _uelUploadProtocol
      (\ s a -> s{_uelUploadProtocol = a})

-- | OAuth access token.
uelAccessToken :: Lens' UserEventsLog (Maybe Text)
uelAccessToken
  = lens _uelAccessToken
      (\ s a -> s{_uelAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
uelUploadType :: Lens' UserEventsLog (Maybe Text)
uelUploadType
  = lens _uelUploadType
      (\ s a -> s{_uelUploadType = a})

-- | Multipart request metadata.
uelPayload :: Lens' UserEventsLog LogUserEventRequest
uelPayload
  = lens _uelPayload (\ s a -> s{_uelPayload = a})

-- | JSONP
uelCallback :: Lens' UserEventsLog (Maybe Text)
uelCallback
  = lens _uelCallback (\ s a -> s{_uelCallback = a})

instance GoogleRequest UserEventsLog where
        type Rs UserEventsLog = LogUserEventResponse
        type Scopes UserEventsLog = '[]
        requestClient UserEventsLog'{..}
          = go _uelXgafv _uelUploadProtocol _uelAccessToken
              _uelUploadType
              _uelCallback
              (Just AltJSON)
              _uelPayload
              partnersService
          where go
                  = buildClient (Proxy :: Proxy UserEventsLogResource)
                      mempty
