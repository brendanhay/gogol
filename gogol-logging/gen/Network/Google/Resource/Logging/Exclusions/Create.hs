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
-- Module      : Network.Google.Resource.Logging.Exclusions.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new exclusion in a specified parent resource. Only log entries
-- belonging to that resource can be excluded. You can have up to 10
-- exclusions in a resource.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.exclusions.create@.
module Network.Google.Resource.Logging.Exclusions.Create
    (
    -- * REST Resource
      ExclusionsCreateResource

    -- * Creating a Request
    , exclusionsCreate
    , ExclusionsCreate

    -- * Request Lenses
    , eParent
    , eXgafv
    , eUploadProtocol
    , eAccessToken
    , eUploadType
    , ePayload
    , eCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.exclusions.create@ method which the
-- 'ExclusionsCreate' request conforms to.
type ExclusionsCreateResource =
     "v2" :>
       Capture "parent" Text :>
         "exclusions" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] LogExclusion :>
                         Post '[JSON] LogExclusion

-- | Creates a new exclusion in a specified parent resource. Only log entries
-- belonging to that resource can be excluded. You can have up to 10
-- exclusions in a resource.
--
-- /See:/ 'exclusionsCreate' smart constructor.
data ExclusionsCreate =
  ExclusionsCreate'
    { _eParent :: !Text
    , _eXgafv :: !(Maybe Xgafv)
    , _eUploadProtocol :: !(Maybe Text)
    , _eAccessToken :: !(Maybe Text)
    , _eUploadType :: !(Maybe Text)
    , _ePayload :: !LogExclusion
    , _eCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExclusionsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eParent'
--
-- * 'eXgafv'
--
-- * 'eUploadProtocol'
--
-- * 'eAccessToken'
--
-- * 'eUploadType'
--
-- * 'ePayload'
--
-- * 'eCallback'
exclusionsCreate
    :: Text -- ^ 'eParent'
    -> LogExclusion -- ^ 'ePayload'
    -> ExclusionsCreate
exclusionsCreate pEParent_ pEPayload_ =
  ExclusionsCreate'
    { _eParent = pEParent_
    , _eXgafv = Nothing
    , _eUploadProtocol = Nothing
    , _eAccessToken = Nothing
    , _eUploadType = Nothing
    , _ePayload = pEPayload_
    , _eCallback = Nothing
    }


-- | Required. The parent resource in which to create the exclusion:
-- \"projects\/[PROJECT_ID]\" \"organizations\/[ORGANIZATION_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\" \"folders\/[FOLDER_ID]\"
-- Examples: \"projects\/my-logging-project\",
-- \"organizations\/123456789\".
eParent :: Lens' ExclusionsCreate Text
eParent = lens _eParent (\ s a -> s{_eParent = a})

-- | V1 error format.
eXgafv :: Lens' ExclusionsCreate (Maybe Xgafv)
eXgafv = lens _eXgafv (\ s a -> s{_eXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
eUploadProtocol :: Lens' ExclusionsCreate (Maybe Text)
eUploadProtocol
  = lens _eUploadProtocol
      (\ s a -> s{_eUploadProtocol = a})

-- | OAuth access token.
eAccessToken :: Lens' ExclusionsCreate (Maybe Text)
eAccessToken
  = lens _eAccessToken (\ s a -> s{_eAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
eUploadType :: Lens' ExclusionsCreate (Maybe Text)
eUploadType
  = lens _eUploadType (\ s a -> s{_eUploadType = a})

-- | Multipart request metadata.
ePayload :: Lens' ExclusionsCreate LogExclusion
ePayload = lens _ePayload (\ s a -> s{_ePayload = a})

-- | JSONP
eCallback :: Lens' ExclusionsCreate (Maybe Text)
eCallback
  = lens _eCallback (\ s a -> s{_eCallback = a})

instance GoogleRequest ExclusionsCreate where
        type Rs ExclusionsCreate = LogExclusion
        type Scopes ExclusionsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient ExclusionsCreate'{..}
          = go _eParent _eXgafv _eUploadProtocol _eAccessToken
              _eUploadType
              _eCallback
              (Just AltJSON)
              _ePayload
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy ExclusionsCreateResource)
                      mempty
