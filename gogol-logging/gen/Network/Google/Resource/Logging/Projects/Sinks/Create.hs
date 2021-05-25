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
-- Module      : Network.Google.Resource.Logging.Projects.Sinks.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a sink that exports specified log entries to a destination. The
-- export of newly-ingested log entries begins immediately, unless the
-- sink\'s writer_identity is not permitted to write to the destination. A
-- sink can export log entries only from the resource owning the sink.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.projects.sinks.create@.
module Network.Google.Resource.Logging.Projects.Sinks.Create
    (
    -- * REST Resource
      ProjectsSinksCreateResource

    -- * Creating a Request
    , projectsSinksCreate
    , ProjectsSinksCreate

    -- * Request Lenses
    , pscParent
    , pscXgafv
    , pscUniqueWriterIdentity
    , pscUploadProtocol
    , pscAccessToken
    , pscUploadType
    , pscPayload
    , pscCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.projects.sinks.create@ method which the
-- 'ProjectsSinksCreate' request conforms to.
type ProjectsSinksCreateResource =
     "v2" :>
       Capture "parent" Text :>
         "sinks" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "uniqueWriterIdentity" Bool :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] LogSink :> Post '[JSON] LogSink

-- | Creates a sink that exports specified log entries to a destination. The
-- export of newly-ingested log entries begins immediately, unless the
-- sink\'s writer_identity is not permitted to write to the destination. A
-- sink can export log entries only from the resource owning the sink.
--
-- /See:/ 'projectsSinksCreate' smart constructor.
data ProjectsSinksCreate =
  ProjectsSinksCreate'
    { _pscParent :: !Text
    , _pscXgafv :: !(Maybe Xgafv)
    , _pscUniqueWriterIdentity :: !(Maybe Bool)
    , _pscUploadProtocol :: !(Maybe Text)
    , _pscAccessToken :: !(Maybe Text)
    , _pscUploadType :: !(Maybe Text)
    , _pscPayload :: !LogSink
    , _pscCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSinksCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pscParent'
--
-- * 'pscXgafv'
--
-- * 'pscUniqueWriterIdentity'
--
-- * 'pscUploadProtocol'
--
-- * 'pscAccessToken'
--
-- * 'pscUploadType'
--
-- * 'pscPayload'
--
-- * 'pscCallback'
projectsSinksCreate
    :: Text -- ^ 'pscParent'
    -> LogSink -- ^ 'pscPayload'
    -> ProjectsSinksCreate
projectsSinksCreate pPscParent_ pPscPayload_ =
  ProjectsSinksCreate'
    { _pscParent = pPscParent_
    , _pscXgafv = Nothing
    , _pscUniqueWriterIdentity = Nothing
    , _pscUploadProtocol = Nothing
    , _pscAccessToken = Nothing
    , _pscUploadType = Nothing
    , _pscPayload = pPscPayload_
    , _pscCallback = Nothing
    }


-- | Required. The resource in which to create the sink:
-- \"projects\/[PROJECT_ID]\" \"organizations\/[ORGANIZATION_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\" \"folders\/[FOLDER_ID]\"
-- Examples: \"projects\/my-logging-project\",
-- \"organizations\/123456789\".
pscParent :: Lens' ProjectsSinksCreate Text
pscParent
  = lens _pscParent (\ s a -> s{_pscParent = a})

-- | V1 error format.
pscXgafv :: Lens' ProjectsSinksCreate (Maybe Xgafv)
pscXgafv = lens _pscXgafv (\ s a -> s{_pscXgafv = a})

-- | Optional. Determines the kind of IAM identity returned as
-- writer_identity in the new sink. If this value is omitted or set to
-- false, and if the sink\'s parent is a project, then the value returned
-- as writer_identity is the same group or service account used by Logging
-- before the addition of writer identities to this API. The sink\'s
-- destination must be in the same project as the sink itself.If this field
-- is set to true, or if the sink is owned by a non-project resource such
-- as an organization, then the value of writer_identity will be a unique
-- service account used only for exports from the new sink. For more
-- information, see writer_identity in LogSink.
pscUniqueWriterIdentity :: Lens' ProjectsSinksCreate (Maybe Bool)
pscUniqueWriterIdentity
  = lens _pscUniqueWriterIdentity
      (\ s a -> s{_pscUniqueWriterIdentity = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pscUploadProtocol :: Lens' ProjectsSinksCreate (Maybe Text)
pscUploadProtocol
  = lens _pscUploadProtocol
      (\ s a -> s{_pscUploadProtocol = a})

-- | OAuth access token.
pscAccessToken :: Lens' ProjectsSinksCreate (Maybe Text)
pscAccessToken
  = lens _pscAccessToken
      (\ s a -> s{_pscAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pscUploadType :: Lens' ProjectsSinksCreate (Maybe Text)
pscUploadType
  = lens _pscUploadType
      (\ s a -> s{_pscUploadType = a})

-- | Multipart request metadata.
pscPayload :: Lens' ProjectsSinksCreate LogSink
pscPayload
  = lens _pscPayload (\ s a -> s{_pscPayload = a})

-- | JSONP
pscCallback :: Lens' ProjectsSinksCreate (Maybe Text)
pscCallback
  = lens _pscCallback (\ s a -> s{_pscCallback = a})

instance GoogleRequest ProjectsSinksCreate where
        type Rs ProjectsSinksCreate = LogSink
        type Scopes ProjectsSinksCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient ProjectsSinksCreate'{..}
          = go _pscParent _pscXgafv _pscUniqueWriterIdentity
              _pscUploadProtocol
              _pscAccessToken
              _pscUploadType
              _pscCallback
              (Just AltJSON)
              _pscPayload
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSinksCreateResource)
                      mempty
