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
-- Module      : Network.Google.Resource.Logging.Entries.Write
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Writes log entries to Logging. This API method is the only way to send
-- log entries to Logging. This method is used, directly or indirectly, by
-- the Logging agent (fluentd) and all logging libraries configured to use
-- Logging. A single request may contain log entries for a maximum of 1000
-- different resources (projects, organizations, billing accounts or
-- folders)
--
-- /See:/ <https://cloud.google.com/logging/docs/ Stackdriver Logging API Reference> for @logging.entries.write@.
module Network.Google.Resource.Logging.Entries.Write
    (
    -- * REST Resource
      EntriesWriteResource

    -- * Creating a Request
    , entriesWrite
    , EntriesWrite

    -- * Request Lenses
    , ewXgafv
    , ewUploadProtocol
    , ewAccessToken
    , ewUploadType
    , ewPayload
    , ewCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.entries.write@ method which the
-- 'EntriesWrite' request conforms to.
type EntriesWriteResource =
     "v2" :>
       "entries:write" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] WriteLogEntriesRequest :>
                       Post '[JSON] WriteLogEntriesResponse

-- | Writes log entries to Logging. This API method is the only way to send
-- log entries to Logging. This method is used, directly or indirectly, by
-- the Logging agent (fluentd) and all logging libraries configured to use
-- Logging. A single request may contain log entries for a maximum of 1000
-- different resources (projects, organizations, billing accounts or
-- folders)
--
-- /See:/ 'entriesWrite' smart constructor.
data EntriesWrite = EntriesWrite'
    { _ewXgafv          :: !(Maybe Xgafv)
    , _ewUploadProtocol :: !(Maybe Text)
    , _ewAccessToken    :: !(Maybe Text)
    , _ewUploadType     :: !(Maybe Text)
    , _ewPayload        :: !WriteLogEntriesRequest
    , _ewCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EntriesWrite' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ewXgafv'
--
-- * 'ewUploadProtocol'
--
-- * 'ewAccessToken'
--
-- * 'ewUploadType'
--
-- * 'ewPayload'
--
-- * 'ewCallback'
entriesWrite
    :: WriteLogEntriesRequest -- ^ 'ewPayload'
    -> EntriesWrite
entriesWrite pEwPayload_ =
    EntriesWrite'
    { _ewXgafv = Nothing
    , _ewUploadProtocol = Nothing
    , _ewAccessToken = Nothing
    , _ewUploadType = Nothing
    , _ewPayload = pEwPayload_
    , _ewCallback = Nothing
    }

-- | V1 error format.
ewXgafv :: Lens' EntriesWrite (Maybe Xgafv)
ewXgafv = lens _ewXgafv (\ s a -> s{_ewXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ewUploadProtocol :: Lens' EntriesWrite (Maybe Text)
ewUploadProtocol
  = lens _ewUploadProtocol
      (\ s a -> s{_ewUploadProtocol = a})

-- | OAuth access token.
ewAccessToken :: Lens' EntriesWrite (Maybe Text)
ewAccessToken
  = lens _ewAccessToken
      (\ s a -> s{_ewAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ewUploadType :: Lens' EntriesWrite (Maybe Text)
ewUploadType
  = lens _ewUploadType (\ s a -> s{_ewUploadType = a})

-- | Multipart request metadata.
ewPayload :: Lens' EntriesWrite WriteLogEntriesRequest
ewPayload
  = lens _ewPayload (\ s a -> s{_ewPayload = a})

-- | JSONP
ewCallback :: Lens' EntriesWrite (Maybe Text)
ewCallback
  = lens _ewCallback (\ s a -> s{_ewCallback = a})

instance GoogleRequest EntriesWrite where
        type Rs EntriesWrite = WriteLogEntriesResponse
        type Scopes EntriesWrite =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.write"]
        requestClient EntriesWrite'{..}
          = go _ewXgafv _ewUploadProtocol _ewAccessToken
              _ewUploadType
              _ewCallback
              (Just AltJSON)
              _ewPayload
              loggingService
          where go
                  = buildClient (Proxy :: Proxy EntriesWriteResource)
                      mempty
