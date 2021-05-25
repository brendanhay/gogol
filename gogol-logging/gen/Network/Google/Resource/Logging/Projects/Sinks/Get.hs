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
-- Module      : Network.Google.Resource.Logging.Projects.Sinks.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a sink.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.projects.sinks.get@.
module Network.Google.Resource.Logging.Projects.Sinks.Get
    (
    -- * REST Resource
      ProjectsSinksGetResource

    -- * Creating a Request
    , projectsSinksGet
    , ProjectsSinksGet

    -- * Request Lenses
    , psgXgafv
    , psgUploadProtocol
    , psgAccessToken
    , psgUploadType
    , psgSinkName
    , psgCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.projects.sinks.get@ method which the
-- 'ProjectsSinksGet' request conforms to.
type ProjectsSinksGetResource =
     "v2" :>
       Capture "sinkName" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] LogSink

-- | Gets a sink.
--
-- /See:/ 'projectsSinksGet' smart constructor.
data ProjectsSinksGet =
  ProjectsSinksGet'
    { _psgXgafv :: !(Maybe Xgafv)
    , _psgUploadProtocol :: !(Maybe Text)
    , _psgAccessToken :: !(Maybe Text)
    , _psgUploadType :: !(Maybe Text)
    , _psgSinkName :: !Text
    , _psgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSinksGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psgXgafv'
--
-- * 'psgUploadProtocol'
--
-- * 'psgAccessToken'
--
-- * 'psgUploadType'
--
-- * 'psgSinkName'
--
-- * 'psgCallback'
projectsSinksGet
    :: Text -- ^ 'psgSinkName'
    -> ProjectsSinksGet
projectsSinksGet pPsgSinkName_ =
  ProjectsSinksGet'
    { _psgXgafv = Nothing
    , _psgUploadProtocol = Nothing
    , _psgAccessToken = Nothing
    , _psgUploadType = Nothing
    , _psgSinkName = pPsgSinkName_
    , _psgCallback = Nothing
    }


-- | V1 error format.
psgXgafv :: Lens' ProjectsSinksGet (Maybe Xgafv)
psgXgafv = lens _psgXgafv (\ s a -> s{_psgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psgUploadProtocol :: Lens' ProjectsSinksGet (Maybe Text)
psgUploadProtocol
  = lens _psgUploadProtocol
      (\ s a -> s{_psgUploadProtocol = a})

-- | OAuth access token.
psgAccessToken :: Lens' ProjectsSinksGet (Maybe Text)
psgAccessToken
  = lens _psgAccessToken
      (\ s a -> s{_psgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psgUploadType :: Lens' ProjectsSinksGet (Maybe Text)
psgUploadType
  = lens _psgUploadType
      (\ s a -> s{_psgUploadType = a})

-- | Required. The resource name of the sink:
-- \"projects\/[PROJECT_ID]\/sinks\/[SINK_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/sinks\/[SINK_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/sinks\/[SINK_ID]\"
-- \"folders\/[FOLDER_ID]\/sinks\/[SINK_ID]\" Example:
-- \"projects\/my-project-id\/sinks\/my-sink-id\".
psgSinkName :: Lens' ProjectsSinksGet Text
psgSinkName
  = lens _psgSinkName (\ s a -> s{_psgSinkName = a})

-- | JSONP
psgCallback :: Lens' ProjectsSinksGet (Maybe Text)
psgCallback
  = lens _psgCallback (\ s a -> s{_psgCallback = a})

instance GoogleRequest ProjectsSinksGet where
        type Rs ProjectsSinksGet = LogSink
        type Scopes ProjectsSinksGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient ProjectsSinksGet'{..}
          = go _psgSinkName _psgXgafv _psgUploadProtocol
              _psgAccessToken
              _psgUploadType
              _psgCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSinksGetResource)
                      mempty
