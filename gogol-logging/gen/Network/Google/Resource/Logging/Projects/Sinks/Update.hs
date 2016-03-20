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
-- Module      : Network.Google.Resource.Logging.Projects.Sinks.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates or updates a sink.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Google Cloud Logging API Reference> for @logging.projects.sinks.update@.
module Network.Google.Resource.Logging.Projects.Sinks.Update
    (
    -- * REST Resource
      ProjectsSinksUpdateResource

    -- * Creating a Request
    , projectsSinksUpdate
    , ProjectsSinksUpdate

    -- * Request Lenses
    , psuXgafv
    , psuUploadProtocol
    , psuPp
    , psuAccessToken
    , psuUploadType
    , psuPayload
    , psuBearerToken
    , psuSinkName
    , psuCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.projects.sinks.update@ method which the
-- 'ProjectsSinksUpdate' request conforms to.
type ProjectsSinksUpdateResource =
     "v2beta1" :>
       Capture "sinkName" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] LogSink :> Put '[JSON] LogSink

-- | Creates or updates a sink.
--
-- /See:/ 'projectsSinksUpdate' smart constructor.
data ProjectsSinksUpdate = ProjectsSinksUpdate
    { _psuXgafv          :: !(Maybe Text)
    , _psuUploadProtocol :: !(Maybe Text)
    , _psuPp             :: !Bool
    , _psuAccessToken    :: !(Maybe Text)
    , _psuUploadType     :: !(Maybe Text)
    , _psuPayload        :: !LogSink
    , _psuBearerToken    :: !(Maybe Text)
    , _psuSinkName       :: !Text
    , _psuCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsSinksUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psuXgafv'
--
-- * 'psuUploadProtocol'
--
-- * 'psuPp'
--
-- * 'psuAccessToken'
--
-- * 'psuUploadType'
--
-- * 'psuPayload'
--
-- * 'psuBearerToken'
--
-- * 'psuSinkName'
--
-- * 'psuCallback'
projectsSinksUpdate
    :: LogSink -- ^ 'psuPayload'
    -> Text -- ^ 'psuSinkName'
    -> ProjectsSinksUpdate
projectsSinksUpdate pPsuPayload_ pPsuSinkName_ =
    ProjectsSinksUpdate
    { _psuXgafv = Nothing
    , _psuUploadProtocol = Nothing
    , _psuPp = True
    , _psuAccessToken = Nothing
    , _psuUploadType = Nothing
    , _psuPayload = pPsuPayload_
    , _psuBearerToken = Nothing
    , _psuSinkName = pPsuSinkName_
    , _psuCallback = Nothing
    }

-- | V1 error format.
psuXgafv :: Lens' ProjectsSinksUpdate (Maybe Text)
psuXgafv = lens _psuXgafv (\ s a -> s{_psuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psuUploadProtocol :: Lens' ProjectsSinksUpdate (Maybe Text)
psuUploadProtocol
  = lens _psuUploadProtocol
      (\ s a -> s{_psuUploadProtocol = a})

-- | Pretty-print response.
psuPp :: Lens' ProjectsSinksUpdate Bool
psuPp = lens _psuPp (\ s a -> s{_psuPp = a})

-- | OAuth access token.
psuAccessToken :: Lens' ProjectsSinksUpdate (Maybe Text)
psuAccessToken
  = lens _psuAccessToken
      (\ s a -> s{_psuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psuUploadType :: Lens' ProjectsSinksUpdate (Maybe Text)
psuUploadType
  = lens _psuUploadType
      (\ s a -> s{_psuUploadType = a})

-- | Multipart request metadata.
psuPayload :: Lens' ProjectsSinksUpdate LogSink
psuPayload
  = lens _psuPayload (\ s a -> s{_psuPayload = a})

-- | OAuth bearer token.
psuBearerToken :: Lens' ProjectsSinksUpdate (Maybe Text)
psuBearerToken
  = lens _psuBearerToken
      (\ s a -> s{_psuBearerToken = a})

-- | The resource name of the sink to update. Example:
-- \`\"projects\/my-project-id\/sinks\/my-sink-id\"\`. The updated sink
-- must be provided in the request and have the same name that is specified
-- in \`sinkName\`. If the sink does not exist, it is created.
psuSinkName :: Lens' ProjectsSinksUpdate Text
psuSinkName
  = lens _psuSinkName (\ s a -> s{_psuSinkName = a})

-- | JSONP
psuCallback :: Lens' ProjectsSinksUpdate (Maybe Text)
psuCallback
  = lens _psuCallback (\ s a -> s{_psuCallback = a})

instance GoogleRequest ProjectsSinksUpdate where
        type Rs ProjectsSinksUpdate = LogSink
        requestClient ProjectsSinksUpdate{..}
          = go _psuSinkName _psuXgafv _psuUploadProtocol
              (Just _psuPp)
              _psuAccessToken
              _psuUploadType
              _psuBearerToken
              _psuCallback
              (Just AltJSON)
              _psuPayload
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSinksUpdateResource)
                      mempty
