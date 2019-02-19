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
-- Module      : Network.Google.Resource.Logging.Sinks.Create
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
-- /See:/ <https://cloud.google.com/logging/docs/ Stackdriver Logging API Reference> for @logging.sinks.create@.
module Network.Google.Resource.Logging.Sinks.Create
    (
    -- * REST Resource
      SinksCreateResource

    -- * Creating a Request
    , sinksCreate
    , SinksCreate

    -- * Request Lenses
    , scParent
    , scXgafv
    , scUniqueWriterIdentity
    , scUploadProtocol
    , scAccessToken
    , scUploadType
    , scPayload
    , scCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.sinks.create@ method which the
-- 'SinksCreate' request conforms to.
type SinksCreateResource =
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
-- /See:/ 'sinksCreate' smart constructor.
data SinksCreate =
  SinksCreate'
    { _scParent               :: !Text
    , _scXgafv                :: !(Maybe Xgafv)
    , _scUniqueWriterIdentity :: !(Maybe Bool)
    , _scUploadProtocol       :: !(Maybe Text)
    , _scAccessToken          :: !(Maybe Text)
    , _scUploadType           :: !(Maybe Text)
    , _scPayload              :: !LogSink
    , _scCallback             :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SinksCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scParent'
--
-- * 'scXgafv'
--
-- * 'scUniqueWriterIdentity'
--
-- * 'scUploadProtocol'
--
-- * 'scAccessToken'
--
-- * 'scUploadType'
--
-- * 'scPayload'
--
-- * 'scCallback'
sinksCreate
    :: Text -- ^ 'scParent'
    -> LogSink -- ^ 'scPayload'
    -> SinksCreate
sinksCreate pScParent_ pScPayload_ =
  SinksCreate'
    { _scParent = pScParent_
    , _scXgafv = Nothing
    , _scUniqueWriterIdentity = Nothing
    , _scUploadProtocol = Nothing
    , _scAccessToken = Nothing
    , _scUploadType = Nothing
    , _scPayload = pScPayload_
    , _scCallback = Nothing
    }


-- | Required. The resource in which to create the sink:
-- \"projects\/[PROJECT_ID]\" \"organizations\/[ORGANIZATION_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\" \"folders\/[FOLDER_ID]\"
-- Examples: \"projects\/my-logging-project\",
-- \"organizations\/123456789\".
scParent :: Lens' SinksCreate Text
scParent = lens _scParent (\ s a -> s{_scParent = a})

-- | V1 error format.
scXgafv :: Lens' SinksCreate (Maybe Xgafv)
scXgafv = lens _scXgafv (\ s a -> s{_scXgafv = a})

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
scUniqueWriterIdentity :: Lens' SinksCreate (Maybe Bool)
scUniqueWriterIdentity
  = lens _scUniqueWriterIdentity
      (\ s a -> s{_scUniqueWriterIdentity = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
scUploadProtocol :: Lens' SinksCreate (Maybe Text)
scUploadProtocol
  = lens _scUploadProtocol
      (\ s a -> s{_scUploadProtocol = a})

-- | OAuth access token.
scAccessToken :: Lens' SinksCreate (Maybe Text)
scAccessToken
  = lens _scAccessToken
      (\ s a -> s{_scAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
scUploadType :: Lens' SinksCreate (Maybe Text)
scUploadType
  = lens _scUploadType (\ s a -> s{_scUploadType = a})

-- | Multipart request metadata.
scPayload :: Lens' SinksCreate LogSink
scPayload
  = lens _scPayload (\ s a -> s{_scPayload = a})

-- | JSONP
scCallback :: Lens' SinksCreate (Maybe Text)
scCallback
  = lens _scCallback (\ s a -> s{_scCallback = a})

instance GoogleRequest SinksCreate where
        type Rs SinksCreate = LogSink
        type Scopes SinksCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient SinksCreate'{..}
          = go _scParent _scXgafv _scUniqueWriterIdentity
              _scUploadProtocol
              _scAccessToken
              _scUploadType
              _scCallback
              (Just AltJSON)
              _scPayload
              loggingService
          where go
                  = buildClient (Proxy :: Proxy SinksCreateResource)
                      mempty
