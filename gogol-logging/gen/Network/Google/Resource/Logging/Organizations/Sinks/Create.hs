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
-- Module      : Network.Google.Resource.Logging.Organizations.Sinks.Create
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
-- /See:/ <https://cloud.google.com/logging/docs/ Stackdriver Logging API Reference> for @logging.organizations.sinks.create@.
module Network.Google.Resource.Logging.Organizations.Sinks.Create
    (
    -- * REST Resource
      OrganizationsSinksCreateResource

    -- * Creating a Request
    , organizationsSinksCreate
    , OrganizationsSinksCreate

    -- * Request Lenses
    , oscParent
    , oscXgafv
    , oscUniqueWriterIdentity
    , oscUploadProtocol
    , oscPp
    , oscAccessToken
    , oscUploadType
    , oscPayload
    , oscBearerToken
    , oscCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.organizations.sinks.create@ method which the
-- 'OrganizationsSinksCreate' request conforms to.
type OrganizationsSinksCreateResource =
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
-- /See:/ 'organizationsSinksCreate' smart constructor.
data OrganizationsSinksCreate = OrganizationsSinksCreate'
    { _oscParent               :: !Text
    , _oscXgafv                :: !(Maybe Xgafv)
    , _oscUniqueWriterIdentity :: !(Maybe Bool)
    , _oscUploadProtocol       :: !(Maybe Text)
    , _oscPp                   :: !Bool
    , _oscAccessToken          :: !(Maybe Text)
    , _oscUploadType           :: !(Maybe Text)
    , _oscPayload              :: !LogSink
    , _oscBearerToken          :: !(Maybe Text)
    , _oscCallback             :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrganizationsSinksCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oscParent'
--
-- * 'oscXgafv'
--
-- * 'oscUniqueWriterIdentity'
--
-- * 'oscUploadProtocol'
--
-- * 'oscPp'
--
-- * 'oscAccessToken'
--
-- * 'oscUploadType'
--
-- * 'oscPayload'
--
-- * 'oscBearerToken'
--
-- * 'oscCallback'
organizationsSinksCreate
    :: Text -- ^ 'oscParent'
    -> LogSink -- ^ 'oscPayload'
    -> OrganizationsSinksCreate
organizationsSinksCreate pOscParent_ pOscPayload_ =
    OrganizationsSinksCreate'
    { _oscParent = pOscParent_
    , _oscXgafv = Nothing
    , _oscUniqueWriterIdentity = Nothing
    , _oscUploadProtocol = Nothing
    , _oscPp = True
    , _oscAccessToken = Nothing
    , _oscUploadType = Nothing
    , _oscPayload = pOscPayload_
    , _oscBearerToken = Nothing
    , _oscCallback = Nothing
    }

-- | Required. The resource in which to create the sink:
-- \"projects\/[PROJECT_ID]\" \"organizations\/[ORGANIZATION_ID]\"
-- Examples: \"projects\/my-logging-project\",
-- \"organizations\/123456789\".
oscParent :: Lens' OrganizationsSinksCreate Text
oscParent
  = lens _oscParent (\ s a -> s{_oscParent = a})

-- | V1 error format.
oscXgafv :: Lens' OrganizationsSinksCreate (Maybe Xgafv)
oscXgafv = lens _oscXgafv (\ s a -> s{_oscXgafv = a})

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
oscUniqueWriterIdentity :: Lens' OrganizationsSinksCreate (Maybe Bool)
oscUniqueWriterIdentity
  = lens _oscUniqueWriterIdentity
      (\ s a -> s{_oscUniqueWriterIdentity = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oscUploadProtocol :: Lens' OrganizationsSinksCreate (Maybe Text)
oscUploadProtocol
  = lens _oscUploadProtocol
      (\ s a -> s{_oscUploadProtocol = a})

-- | Pretty-print response.
oscPp :: Lens' OrganizationsSinksCreate Bool
oscPp = lens _oscPp (\ s a -> s{_oscPp = a})

-- | OAuth access token.
oscAccessToken :: Lens' OrganizationsSinksCreate (Maybe Text)
oscAccessToken
  = lens _oscAccessToken
      (\ s a -> s{_oscAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oscUploadType :: Lens' OrganizationsSinksCreate (Maybe Text)
oscUploadType
  = lens _oscUploadType
      (\ s a -> s{_oscUploadType = a})

-- | Multipart request metadata.
oscPayload :: Lens' OrganizationsSinksCreate LogSink
oscPayload
  = lens _oscPayload (\ s a -> s{_oscPayload = a})

-- | OAuth bearer token.
oscBearerToken :: Lens' OrganizationsSinksCreate (Maybe Text)
oscBearerToken
  = lens _oscBearerToken
      (\ s a -> s{_oscBearerToken = a})

-- | JSONP
oscCallback :: Lens' OrganizationsSinksCreate (Maybe Text)
oscCallback
  = lens _oscCallback (\ s a -> s{_oscCallback = a})

instance GoogleRequest OrganizationsSinksCreate where
        type Rs OrganizationsSinksCreate = LogSink
        type Scopes OrganizationsSinksCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient OrganizationsSinksCreate'{..}
          = go _oscParent _oscXgafv _oscUniqueWriterIdentity
              _oscUploadProtocol
              (Just _oscPp)
              _oscAccessToken
              _oscUploadType
              _oscBearerToken
              _oscCallback
              (Just AltJSON)
              _oscPayload
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy OrganizationsSinksCreateResource)
                      mempty
