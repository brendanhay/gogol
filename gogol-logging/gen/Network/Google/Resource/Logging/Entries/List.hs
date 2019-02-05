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
-- Module      : Network.Google.Resource.Logging.Entries.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists log entries. Use this method to retrieve log entries that
-- originated from a project\/folder\/organization\/billing account. For
-- ways to export log entries, see Exporting Logs.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Stackdriver Logging API Reference> for @logging.entries.list@.
module Network.Google.Resource.Logging.Entries.List
    (
    -- * REST Resource
      EntriesListResource

    -- * Creating a Request
    , entriesList
    , EntriesList

    -- * Request Lenses
    , elXgafv
    , elUploadProtocol
    , elAccessToken
    , elUploadType
    , elPayload
    , elCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.entries.list@ method which the
-- 'EntriesList' request conforms to.
type EntriesListResource =
     "v2" :>
       "entries:list" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ListLogEntriesRequest :>
                       Post '[JSON] ListLogEntriesResponse

-- | Lists log entries. Use this method to retrieve log entries that
-- originated from a project\/folder\/organization\/billing account. For
-- ways to export log entries, see Exporting Logs.
--
-- /See:/ 'entriesList' smart constructor.
data EntriesList = EntriesList'
    { _elXgafv          :: !(Maybe Xgafv)
    , _elUploadProtocol :: !(Maybe Text)
    , _elAccessToken    :: !(Maybe Text)
    , _elUploadType     :: !(Maybe Text)
    , _elPayload        :: !ListLogEntriesRequest
    , _elCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EntriesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'elXgafv'
--
-- * 'elUploadProtocol'
--
-- * 'elAccessToken'
--
-- * 'elUploadType'
--
-- * 'elPayload'
--
-- * 'elCallback'
entriesList
    :: ListLogEntriesRequest -- ^ 'elPayload'
    -> EntriesList
entriesList pElPayload_ =
    EntriesList'
    { _elXgafv = Nothing
    , _elUploadProtocol = Nothing
    , _elAccessToken = Nothing
    , _elUploadType = Nothing
    , _elPayload = pElPayload_
    , _elCallback = Nothing
    }

-- | V1 error format.
elXgafv :: Lens' EntriesList (Maybe Xgafv)
elXgafv = lens _elXgafv (\ s a -> s{_elXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
elUploadProtocol :: Lens' EntriesList (Maybe Text)
elUploadProtocol
  = lens _elUploadProtocol
      (\ s a -> s{_elUploadProtocol = a})

-- | OAuth access token.
elAccessToken :: Lens' EntriesList (Maybe Text)
elAccessToken
  = lens _elAccessToken
      (\ s a -> s{_elAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
elUploadType :: Lens' EntriesList (Maybe Text)
elUploadType
  = lens _elUploadType (\ s a -> s{_elUploadType = a})

-- | Multipart request metadata.
elPayload :: Lens' EntriesList ListLogEntriesRequest
elPayload
  = lens _elPayload (\ s a -> s{_elPayload = a})

-- | JSONP
elCallback :: Lens' EntriesList (Maybe Text)
elCallback
  = lens _elCallback (\ s a -> s{_elCallback = a})

instance GoogleRequest EntriesList where
        type Rs EntriesList = ListLogEntriesResponse
        type Scopes EntriesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient EntriesList'{..}
          = go _elXgafv _elUploadProtocol _elAccessToken
              _elUploadType
              _elCallback
              (Just AltJSON)
              _elPayload
              loggingService
          where go
                  = buildClient (Proxy :: Proxy EntriesListResource)
                      mempty
