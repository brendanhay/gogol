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
-- Module      : Network.Google.Resource.Logging.Folders.Sinks.Create
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
-- /See:/ <https://cloud.google.com/logging/docs/ Stackdriver Logging API Reference> for @logging.folders.sinks.create@.
module Network.Google.Resource.Logging.Folders.Sinks.Create
    (
    -- * REST Resource
      FoldersSinksCreateResource

    -- * Creating a Request
    , foldersSinksCreate
    , FoldersSinksCreate

    -- * Request Lenses
    , fscParent
    , fscXgafv
    , fscUniqueWriterIdentity
    , fscUploadProtocol
    , fscAccessToken
    , fscUploadType
    , fscPayload
    , fscCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.folders.sinks.create@ method which the
-- 'FoldersSinksCreate' request conforms to.
type FoldersSinksCreateResource =
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
-- /See:/ 'foldersSinksCreate' smart constructor.
data FoldersSinksCreate =
  FoldersSinksCreate'
    { _fscParent               :: !Text
    , _fscXgafv                :: !(Maybe Xgafv)
    , _fscUniqueWriterIdentity :: !(Maybe Bool)
    , _fscUploadProtocol       :: !(Maybe Text)
    , _fscAccessToken          :: !(Maybe Text)
    , _fscUploadType           :: !(Maybe Text)
    , _fscPayload              :: !LogSink
    , _fscCallback             :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FoldersSinksCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fscParent'
--
-- * 'fscXgafv'
--
-- * 'fscUniqueWriterIdentity'
--
-- * 'fscUploadProtocol'
--
-- * 'fscAccessToken'
--
-- * 'fscUploadType'
--
-- * 'fscPayload'
--
-- * 'fscCallback'
foldersSinksCreate
    :: Text -- ^ 'fscParent'
    -> LogSink -- ^ 'fscPayload'
    -> FoldersSinksCreate
foldersSinksCreate pFscParent_ pFscPayload_ =
  FoldersSinksCreate'
    { _fscParent = pFscParent_
    , _fscXgafv = Nothing
    , _fscUniqueWriterIdentity = Nothing
    , _fscUploadProtocol = Nothing
    , _fscAccessToken = Nothing
    , _fscUploadType = Nothing
    , _fscPayload = pFscPayload_
    , _fscCallback = Nothing
    }


-- | Required. The resource in which to create the sink:
-- \"projects\/[PROJECT_ID]\" \"organizations\/[ORGANIZATION_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\" \"folders\/[FOLDER_ID]\"
-- Examples: \"projects\/my-logging-project\",
-- \"organizations\/123456789\".
fscParent :: Lens' FoldersSinksCreate Text
fscParent
  = lens _fscParent (\ s a -> s{_fscParent = a})

-- | V1 error format.
fscXgafv :: Lens' FoldersSinksCreate (Maybe Xgafv)
fscXgafv = lens _fscXgafv (\ s a -> s{_fscXgafv = a})

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
fscUniqueWriterIdentity :: Lens' FoldersSinksCreate (Maybe Bool)
fscUniqueWriterIdentity
  = lens _fscUniqueWriterIdentity
      (\ s a -> s{_fscUniqueWriterIdentity = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fscUploadProtocol :: Lens' FoldersSinksCreate (Maybe Text)
fscUploadProtocol
  = lens _fscUploadProtocol
      (\ s a -> s{_fscUploadProtocol = a})

-- | OAuth access token.
fscAccessToken :: Lens' FoldersSinksCreate (Maybe Text)
fscAccessToken
  = lens _fscAccessToken
      (\ s a -> s{_fscAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fscUploadType :: Lens' FoldersSinksCreate (Maybe Text)
fscUploadType
  = lens _fscUploadType
      (\ s a -> s{_fscUploadType = a})

-- | Multipart request metadata.
fscPayload :: Lens' FoldersSinksCreate LogSink
fscPayload
  = lens _fscPayload (\ s a -> s{_fscPayload = a})

-- | JSONP
fscCallback :: Lens' FoldersSinksCreate (Maybe Text)
fscCallback
  = lens _fscCallback (\ s a -> s{_fscCallback = a})

instance GoogleRequest FoldersSinksCreate where
        type Rs FoldersSinksCreate = LogSink
        type Scopes FoldersSinksCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient FoldersSinksCreate'{..}
          = go _fscParent _fscXgafv _fscUniqueWriterIdentity
              _fscUploadProtocol
              _fscAccessToken
              _fscUploadType
              _fscCallback
              (Just AltJSON)
              _fscPayload
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy FoldersSinksCreateResource)
                      mempty
