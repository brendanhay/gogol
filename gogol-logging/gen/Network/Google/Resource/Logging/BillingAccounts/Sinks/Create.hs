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
-- Module      : Network.Google.Resource.Logging.BillingAccounts.Sinks.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a sink that exports specified log entries to a destination. The
-- export of newly-ingested log entries begins immediately, unless the
-- current time is outside the sink\'s start and end times or the sink\'s
-- writer_identity is not permitted to write to the destination. A sink can
-- export log entries only from the resource owning the sink.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Stackdriver Logging API Reference> for @logging.billingAccounts.sinks.create@.
module Network.Google.Resource.Logging.BillingAccounts.Sinks.Create
    (
    -- * REST Resource
      BillingAccountsSinksCreateResource

    -- * Creating a Request
    , billingAccountsSinksCreate
    , BillingAccountsSinksCreate

    -- * Request Lenses
    , bascParent
    , bascXgafv
    , bascUniqueWriterIdentity
    , bascUploadProtocol
    , bascPp
    , bascAccessToken
    , bascUploadType
    , bascPayload
    , bascBearerToken
    , bascCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.billingAccounts.sinks.create@ method which the
-- 'BillingAccountsSinksCreate' request conforms to.
type BillingAccountsSinksCreateResource =
     "v2" :>
       Capture "parent" Text :>
         "sinks" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "uniqueWriterIdentity" Bool :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] LogSink :> Post '[JSON] LogSink

-- | Creates a sink that exports specified log entries to a destination. The
-- export of newly-ingested log entries begins immediately, unless the
-- current time is outside the sink\'s start and end times or the sink\'s
-- writer_identity is not permitted to write to the destination. A sink can
-- export log entries only from the resource owning the sink.
--
-- /See:/ 'billingAccountsSinksCreate' smart constructor.
data BillingAccountsSinksCreate = BillingAccountsSinksCreate'
    { _bascParent               :: !Text
    , _bascXgafv                :: !(Maybe Xgafv)
    , _bascUniqueWriterIdentity :: !(Maybe Bool)
    , _bascUploadProtocol       :: !(Maybe Text)
    , _bascPp                   :: !Bool
    , _bascAccessToken          :: !(Maybe Text)
    , _bascUploadType           :: !(Maybe Text)
    , _bascPayload              :: !LogSink
    , _bascBearerToken          :: !(Maybe Text)
    , _bascCallback             :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BillingAccountsSinksCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bascParent'
--
-- * 'bascXgafv'
--
-- * 'bascUniqueWriterIdentity'
--
-- * 'bascUploadProtocol'
--
-- * 'bascPp'
--
-- * 'bascAccessToken'
--
-- * 'bascUploadType'
--
-- * 'bascPayload'
--
-- * 'bascBearerToken'
--
-- * 'bascCallback'
billingAccountsSinksCreate
    :: Text -- ^ 'bascParent'
    -> LogSink -- ^ 'bascPayload'
    -> BillingAccountsSinksCreate
billingAccountsSinksCreate pBascParent_ pBascPayload_ =
    BillingAccountsSinksCreate'
    { _bascParent = pBascParent_
    , _bascXgafv = Nothing
    , _bascUniqueWriterIdentity = Nothing
    , _bascUploadProtocol = Nothing
    , _bascPp = True
    , _bascAccessToken = Nothing
    , _bascUploadType = Nothing
    , _bascPayload = pBascPayload_
    , _bascBearerToken = Nothing
    , _bascCallback = Nothing
    }

-- | Required. The resource in which to create the sink:
-- \"projects\/[PROJECT_ID]\" \"organizations\/[ORGANIZATION_ID]\"
-- Examples: \"projects\/my-logging-project\",
-- \"organizations\/123456789\".
bascParent :: Lens' BillingAccountsSinksCreate Text
bascParent
  = lens _bascParent (\ s a -> s{_bascParent = a})

-- | V1 error format.
bascXgafv :: Lens' BillingAccountsSinksCreate (Maybe Xgafv)
bascXgafv
  = lens _bascXgafv (\ s a -> s{_bascXgafv = a})

-- | Optional. Determines the kind of IAM identity returned as
-- writer_identity in the new sink. If this value is omitted or set to
-- false, and if the sink\'s parent is a project, then the value returned
-- as writer_identity is cloud-logs\'google.com, the same identity used
-- before the addition of writer identities to this API. The sink\'s
-- destination must be in the same project as the sink itself.If this field
-- is set to true, or if the sink is owned by a non-project resource such
-- as an organization, then the value of writer_identity will be a unique
-- service account used only for exports from the new sink. For more
-- information, see writer_identity in LogSink.
bascUniqueWriterIdentity :: Lens' BillingAccountsSinksCreate (Maybe Bool)
bascUniqueWriterIdentity
  = lens _bascUniqueWriterIdentity
      (\ s a -> s{_bascUniqueWriterIdentity = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bascUploadProtocol :: Lens' BillingAccountsSinksCreate (Maybe Text)
bascUploadProtocol
  = lens _bascUploadProtocol
      (\ s a -> s{_bascUploadProtocol = a})

-- | Pretty-print response.
bascPp :: Lens' BillingAccountsSinksCreate Bool
bascPp = lens _bascPp (\ s a -> s{_bascPp = a})

-- | OAuth access token.
bascAccessToken :: Lens' BillingAccountsSinksCreate (Maybe Text)
bascAccessToken
  = lens _bascAccessToken
      (\ s a -> s{_bascAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bascUploadType :: Lens' BillingAccountsSinksCreate (Maybe Text)
bascUploadType
  = lens _bascUploadType
      (\ s a -> s{_bascUploadType = a})

-- | Multipart request metadata.
bascPayload :: Lens' BillingAccountsSinksCreate LogSink
bascPayload
  = lens _bascPayload (\ s a -> s{_bascPayload = a})

-- | OAuth bearer token.
bascBearerToken :: Lens' BillingAccountsSinksCreate (Maybe Text)
bascBearerToken
  = lens _bascBearerToken
      (\ s a -> s{_bascBearerToken = a})

-- | JSONP
bascCallback :: Lens' BillingAccountsSinksCreate (Maybe Text)
bascCallback
  = lens _bascCallback (\ s a -> s{_bascCallback = a})

instance GoogleRequest BillingAccountsSinksCreate
         where
        type Rs BillingAccountsSinksCreate = LogSink
        type Scopes BillingAccountsSinksCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient BillingAccountsSinksCreate'{..}
          = go _bascParent _bascXgafv _bascUniqueWriterIdentity
              _bascUploadProtocol
              (Just _bascPp)
              _bascAccessToken
              _bascUploadType
              _bascBearerToken
              _bascCallback
              (Just AltJSON)
              _bascPayload
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy BillingAccountsSinksCreateResource)
                      mempty
